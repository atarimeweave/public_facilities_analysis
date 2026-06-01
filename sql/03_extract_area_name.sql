-- =====================================
-- 【結合用キー作成】住所から地域名だけ抽出したカラム(area_name)作成
--   →　新テーブル作成(_enriched：情報を追加した)
-- =====================================

-- =====================================
-- 処理内容:
-- 1. '岩手県盛岡市' を削除
-- 2. 最初に数字が現れる位置を取得
-- 3. 数字以前の文字列を取得
--
-- 例:
-- 岩手県盛岡市愛宕町14-1
-- → 愛宕町
-- =====================================

/*
-- 公民館データ
SELECT 

    *,

    -- 左から指定文字列取得
    LEFT(

        -- 指定文字列の削除
        REPLACE(address, '岩手県盛岡市', ''),

        -- 数字が最初に現れる位置から1を引いた数値を返す
        PATINDEX(
            '%[0-9]%',
            REPLACE(address, '岩手県盛岡市', '')
        ) - 1

    ) AS area_name
INTO public_facilities_enriched
FROM dbo.public_facilities_cleaned;
*/

-- 市営住宅データ
SELECT 
    *,
    LEFT(
        REPLACE(address, '岩手県盛岡市', ''),
        PATINDEX(
            '%[0-9]%',
            REPLACE(address, '岩手県盛岡市', '')
        ) - 1
    ) AS area_name
INTO dbo.municipal_housing_enriched
FROM dbo.municipal_housing_cleaned;
