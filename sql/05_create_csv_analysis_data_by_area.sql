-- =====================================
-- (追加)【分析用データ作成】 地域を軸に
-- =====================================

-- =====================================
-- 人口データ - 公民館 - 一番近い公営住宅　を結合
-- =====================================
SELECT *
FROM
	dbo.population_sum_by_area p
LEFT JOIN dbo.public_facilities_join_nearest_housing f
    ON f.facility_area_name = p.area
