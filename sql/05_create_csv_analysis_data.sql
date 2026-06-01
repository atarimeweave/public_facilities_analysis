
-- =====================================
-- 【分析用データ作成】 公民館を軸に
-- =====================================

-- =====================================
-- 公民館 - 一番近い公営住宅 - 人口データ　を結合
-- =====================================
SELECT *
FROM
	dbo.public_facilities_join_nearest_housing f
LEFT JOIN dbo.population_sum_by_area p
    ON f.facility_area_name = p.area
