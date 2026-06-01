-- =====================================
-- 【結合用キー作成】人口データの地域名を丸める（例：青山一丁目→青山）
--   →　新テーブル作成(_enriched：情報を追加した)
-- =====================================

-- 人口データの地域名は全て漢数字であるか確認
-- 数字を含むデータを表示
-- 5件あったが、「(※3)」などの注釈だった
-- (注釈の内容は（[地域名]を含む）という内容)
/*
SELECT 
	area_name
--COUNT(*) AS cnt
FROM dbo.population_cleaned
WHERE area_name LIKE '%[0-9]%';
*/


-- =====================================
-- 処理内容:〇丁目以前の文字列を取得
-- =====================================
SELECT 
    area_name,

    -- 場合分け
    CASE

        -- 「丁目」の前の漢数字が2文字目以降に存在する場合　→　それ以前の文字列取得
        WHEN PATINDEX('%[一二三四五六七八九十]丁目%', area_name) > 1
        THEN LEFT(area_name, PATINDEX('%[一二三四五六七八九十]丁目%', area_name) - 1)

        -- 一文字目が漢数字 or 漢数字が含まれていない場合　→　そのまま返す
        ELSE area_name

    END AS area

--INTO dbo.municipal_housing_enriched
FROM dbo.population_cleaned;