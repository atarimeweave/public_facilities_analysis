-- =====================================
-- 公民館と公営住宅を結合
-- =====================================

-- 【没】
-- 両方のテーブルに作成したarea_name(地域)で内部結合
-- -- 14件中3件しか結合できず
/*
SELECT *
FROM dbo.public_facilities_enriched 
INNER JOIN dbo.municipal_housing_enriched 
ON dbo.public_facilities_enriched.area_name = dbo.municipal_housing_enriched.area_name;
*/

-- 【採用】
-- 公民館と公営住宅をクロス結合
-- ①全組み合わせの距離計算
-- ②公民館ごとに距離ランキング作成
-- ③一番距離が近い組み合わせだけ抽出

WITH distance_table AS (
-- =====================================
-- ①全組み合わせの距離計算
-- 処理内容:
-- 1. CROSS JOINで全組み合わせ作成
-- 2. geography::Point() で地理座標生成
-- 3. STDistance() で距離計算

-- 距離単位:
-- メートル(m)
--
-- SRID 4326:
-- GPS標準座標系(WGS84)
-- =====================================
SELECT 
    f.No AS facility_No,
	f.name AS facility_name,
    h.No AS housing_No,
	h.name AS housing_name,
    
    -- 4326は世界標準座標系(WGS84)
    -- Point(latitude, longitude, 4326)
    -- STDistance() はメートル返却
    geography::Point(
        f.latitude,
        f.longitude,
        4326
        ).STDistance(
    geography::Point(
        h.latitude,
        h.longitude,
        4326
        )
    ) AS distance_m
FROM dbo.public_facilities_enriched f
CROSS JOIN dbo.municipal_housing_enriched h

),

-- =====================================
-- ②公民館ごとに距離ランキング作成
-- 処理内容:
-- 1. ROW_NUMBERで連番作成
-- =====================================
ranked AS (

SELECT 
    *,

    -- 連番作成
    ROW_NUMBER() OVER (
            -- 公民館Noごとにグループ化
            PARTITION BY facility_No
            -- 並びかえる列は距離
            ORDER BY distance_m ASC
        ) AS rn

    FROM distance_table
),

nearest AS (
-- =====================================
-- ③一番距離が近い組み合わせだけ抽出
-- ランキングが1位のものだけ取得
-- =====================================
SELECT
    facility_No,
    facility_name,
    housing_No,
    housing_name,
    distance_m
FROM ranked
WHERE rn = 1

)

SELECT 
    n.facility_No,
    n.facility_name,
    f.available_days,
    f.area_name AS facility_area_name,
    n.housing_No,
    n.housing_name,
    h.area_name AS housing_area_name,
    n.distance_m AS distance_m_to_nearest_housing
FROM nearest n
LEFT JOIN dbo.public_facilities_enriched f
    ON n.facility_No = f.No
LEFT JOIN dbo.municipal_housing_enriched h
    ON n.housing_No = h.No;