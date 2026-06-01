-- =====================================
-- 地域ごとに人口を集計
-- =====================================
-- 「0_4歳男性」等の年齢別人口がnvarchar型で集計できず
-- TRY_CASTでINTに変換しながら集計した


-- INT変換できないカラムかどうかの確認
-- ※代表カラムだけチェック
-- 条件：
-- 1.TRY_CASTでNULLになった（元々NULL or INT変換できない文字列）
-- 2.元データがNULLではない
/*
SELECT *
FROM dbo.population_cleaned
WHERE TRY_CAST([female_0_4] AS INT) IS NULL
  AND [female_0_4] IS NOT NULL;
*/


SELECT 
    area,

    SUM(total_population) AS total_population,
    SUM(male_population) AS male_population,
    SUM(female_population) AS female_population,

    SUM(TRY_CAST(male_0_4 AS INT)) AS male_0_4,
    SUM(TRY_CAST(male_5_9 AS INT)) AS male_5_9,
    SUM(TRY_CAST(male_10_14 AS INT)) AS male_10_14,
    SUM(TRY_CAST(male_15_19 AS INT)) AS male_15_19,
    SUM(TRY_CAST(male_20_24 AS INT)) AS male_20_24,
    SUM(TRY_CAST(male_25_29 AS INT)) AS male_25_29,
    SUM(TRY_CAST(male_30_34 AS INT)) AS male_30_34,
    SUM(TRY_CAST(male_35_39 AS INT)) AS male_35_39,
    SUM(TRY_CAST(male_40_44 AS INT)) AS male_40_44,
    SUM(TRY_CAST(male_45_49 AS INT)) AS male_45_49,
    SUM(TRY_CAST(male_50_54 AS INT)) AS male_50_54,
    SUM(TRY_CAST(male_55_59 AS INT)) AS male_55_59,
    SUM(TRY_CAST(male_60_64 AS INT)) AS male_60_64,
    SUM(TRY_CAST(male_65_69 AS INT)) AS male_65_69,
    SUM(TRY_CAST(male_70_74 AS INT)) AS male_70_74,
    SUM(TRY_CAST(male_75_79 AS INT)) AS male_75_79,
    SUM(TRY_CAST(male_80_84 AS INT)) AS male_80_84,
    SUM(TRY_CAST(male_85_89 AS INT)) AS male_85_89,
    SUM(TRY_CAST(male_90_plus AS INT)) AS male_90_plus,

    SUM(TRY_CAST(female_0_4 AS INT)) AS female_0_4,
    SUM(TRY_CAST(female_5_9 AS INT)) AS female_5_9,
    SUM(TRY_CAST(female_10_14 AS INT)) AS female_10_14,
    SUM(TRY_CAST(female_15_19 AS INT)) AS female_15_19,
    SUM(TRY_CAST(female_20_24 AS INT)) AS female_20_24,
    SUM(TRY_CAST(female_25_29 AS INT)) AS female_25_29,
    SUM(TRY_CAST(female_30_34 AS INT)) AS female_30_34,
    SUM(TRY_CAST(female_35_39 AS INT)) AS female_35_39,
    SUM(TRY_CAST(female_40_44 AS INT)) AS female_40_44,
    SUM(TRY_CAST(female_45_49 AS INT)) AS female_45_49,
    SUM(TRY_CAST(female_50_54 AS INT)) AS female_50_54,
    SUM(TRY_CAST(female_55_59 AS INT)) AS female_55_59,
    SUM(TRY_CAST(female_60_64 AS INT)) AS female_60_64,
    SUM(TRY_CAST(female_65_69 AS INT)) AS female_65_69,
    SUM(TRY_CAST(female_70_74 AS INT)) AS female_70_74,
    SUM(TRY_CAST(female_75_79 AS INT)) AS female_75_79,
    SUM(TRY_CAST(female_80_84 AS INT)) AS female_80_84,
    SUM(TRY_CAST(female_85_89 AS INT)) AS female_85_89,
    SUM(TRY_CAST(female_90_plus AS INT)) AS female_90_plus

-- INTO dbo.population_sum_by_area
FROM dbo.population_enriched
GROUP BY area;