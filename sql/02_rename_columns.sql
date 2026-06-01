-- =====================================
-- カラム名変更
-- =====================================

-- 公民館データ
/*
EXEC sp_rename 'dbo.public_facilities_cleaned.no', 'No', 'COLUMN';
EXEC sp_rename 'dbo.public_facilities_cleaned.名称', 'name', 'COLUMN';
EXEC sp_rename 'dbo.public_facilities_cleaned.名称_カナ', 'name_kana', 'COLUMN';
EXEC sp_rename 'dbo.public_facilities_cleaned.住所', 'address', 'COLUMN';
EXEC sp_rename 'dbo.public_facilities_cleaned.緯度', 'latitude', 'COLUMN';
EXEC sp_rename 'dbo.public_facilities_cleaned.経度', 'longitude', 'COLUMN';
EXEC sp_rename 'dbo.public_facilities_cleaned.利用可能曜日', 'available_days', 'COLUMN';
EXEC sp_rename 'dbo.public_facilities_cleaned.所管課', 'managing_department', 'COLUMN';
*/

-- 市営住宅データ
/*
EXEC sp_rename 'dbo.municipal_housing_cleaned.NO', 'No', 'COLUMN';
EXEC sp_rename 'dbo.municipal_housing_cleaned.名称', 'name', 'COLUMN';
EXEC sp_rename 'dbo.municipal_housing_cleaned.名称_カナ', 'name_kana', 'COLUMN';
EXEC sp_rename 'dbo.municipal_housing_cleaned.住所', 'address', 'COLUMN';
EXEC sp_rename 'dbo.municipal_housing_cleaned.緯度', 'latitude', 'COLUMN';
EXEC sp_rename 'dbo.municipal_housing_cleaned.経度', 'longitude', 'COLUMN';
*/

-- 人口データ
/*
EXEC sp_rename 'dbo.population_cleaned.地域名', 'area_name', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned.総人口', 'total_population', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned.男性', 'male_population', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned.女性', 'female_population', 'COLUMN';

EXEC sp_rename 'dbo.population_cleaned._0_4歳の男性', 'male_0_4', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._5_9歳の男性', 'male_5_9', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._10_14歳の男性', 'male_10_14', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._15_19歳の男性', 'male_15_19', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._20_24歳の男性', 'male_20_24', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._25_29歳の男性', 'male_25_29', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._30_34歳の男性', 'male_30_34', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._35_39歳の男性', 'male_35_39', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._40_44歳の男性', 'male_40_44', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._45_49歳の男性', 'male_45_49', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._50_54歳の男性', 'male_50_54', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._55_59歳の男性', 'male_55_59', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._60_64歳の男性', 'male_60_64', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._65_69歳の男性', 'male_65_69', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._70_74歳の男性', 'male_70_74', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._75_79歳の男性', 'male_75_79', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._80_84歳の男性', 'male_80_84', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._85_89歳の男性', 'male_85_89', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._90歳以上の男性', 'male_90_plus', 'COLUMN';

EXEC sp_rename 'dbo.population_cleaned._0_4歳の女性', 'female_0_4', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._5_9歳の女性', 'female_5_9', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._10_14歳の女性', 'female_10_14', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._15_19歳の女性', 'female_15_19', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._20_24歳の女性', 'female_20_24', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._25_29歳の女性', 'female_25_29', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._30_34歳の女性', 'female_30_34', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._35_39歳の女性', 'female_35_39', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._40_44歳の女性', 'female_40_44', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._45_49歳の女性', 'female_45_49', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._50_54歳の女性', 'female_50_54', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._55_59歳の女性', 'female_55_59', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._60_64歳の女性', 'female_60_64', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._65_69歳の女性', 'female_65_69', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._70_74歳の女性', 'female_70_74', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._75_79歳の女性', 'female_75_79', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._80_84歳の女性', 'female_80_84', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._85_89歳の女性', 'female_85_89', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned._90歳以上の女性', 'female_90_plus', 'COLUMN';

EXEC sp_rename 'dbo.population_cleaned.世帯数', 'household_count', 'COLUMN';
EXEC sp_rename 'dbo.population_cleaned.備考', 'remarks', 'COLUMN';
*/

-- 県内転出入データ
/*
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.市区町村名', 'name', 'COLUMN';
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.転出先_転入元市区町村コード', 'municipality_code', 'COLUMN';
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.転出先_転入元市区町村名', 'municipality_name', 'COLUMN';
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.岩手県内市町村別転入者数_総数_人', 'intra_pref_in_mig_total', 'COLUMN';
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.岩手県内市町村別転入者数_男_人', 'intra_pref_in_mig_male', 'COLUMN';
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.岩手県内市町村別転入者数_女_人', 'intra_pref_in_mig_female', 'COLUMN';
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.岩手県内市町村別転出者数_総数_人', 'intra_pref_out_mig_total', 'COLUMN';
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.岩手県内市町村別転出者数_男_人', 'intra_pref_out_mig_male', 'COLUMN';
EXEC sp_rename 'dbo.intra_pref_migration_cleaned.岩手県内市町村別転出者数_女_人', 'intra_pref_out_mig_female', 'COLUMN';
*/

-- 県外転出入データ
/*
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.市区町村名', 'name', 'COLUMN';
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.転出先_転入元都道府県コード', 'prefecture_code', 'COLUMN';
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.転出先_転入元都道府県名', 'prefecture_name', 'COLUMN';
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.都道府県別転入者数_総数_人', 'inter_pref_in_mig_total', 'COLUMN';
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.都道府県別転入者数_男性_人', 'inter_pref_in_mig_male', 'COLUMN';
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.都道府県別転入者数_女性_人', 'inter_pref_in_mig_female', 'COLUMN';
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.都道府県別転出者数_総数_人', 'inter_pref_out_mig_total', 'COLUMN';
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.都道府県別転出者数_男性_人', 'inter_pref_out_mig_male', 'COLUMN';
EXEC sp_rename 'dbo.inter_pref_migration_cleaned.都道府県別転出者数_女性_人', 'inter_pref_out_mig_female', 'COLUMN';
*/

-- 年齢階級別転出入データ
/*
EXEC sp_rename 'dbo.migration_by_age_cleaned.市区町村名', 'name', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.年齢階級', 'age_group', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県内転入者数_総数_人', 'intra_pref_in_mig_total', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県内転入者数_男_人', 'intra_pref_in_mig_male', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県内転入者数_女_人', 'intra_pref_in_mig_female', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県外転入者数_総数_人', 'inter_pref_in_mig_total', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県外転入者数_男_人', 'inter_pref_in_mig_male', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県外転入者数_女_人', 'inter_pref_in_mig_female', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県内転出者数_総数_人', 'intra_pref_out_mig_total', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県内転出者数_男_人', 'intra_pref_out_mig_male', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県内転出者数_女_人', 'intra_pref_out_mig_female', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県外転出者数_総数_人', 'inter_pref_out_mig_total', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県外転出者数_男_人', 'inter_pref_out_mig_male', 'COLUMN';
EXEC sp_rename 'dbo.migration_by_age_cleaned.岩手県外転出者数_女_人', 'inter_pref_out_mig_female', 'COLUMN';
*/
