COPY dailyActivity_merged
FROM 'C:\Test\Github\SQL - Google DA\Data\mturkfitbit_export_4.12.16-5.12.16\Fitabase Data 4.12.16-5.12.16\dailyActivity_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY dailyCalories_merged
FROM 'C:\Test\Github\SQL - Google DA\Data\mturkfitbit_export_4.12.16-5.12.16\Fitabase Data 4.12.16-5.12.16\dailyCalories_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY dailyIntensities_merged
FROM 'C:\Test\Github\SQL - Google DA\Data\mturkfitbit_export_4.12.16-5.12.16\Fitabase Data 4.12.16-5.12.16\dailyIntensities_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY heartrate_cleaned
FROM 'C:\Test\Github\SQL - Google DA\Data\mturkfitbit_export_4.12.16-5.12.16\Fitabase Data 4.12.16-5.12.16\heartrate_cleaned.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY sleepDay_cleaned
FROM 'C:\Test\Github\SQL - Google DA\Data\mturkfitbit_export_4.12.16-5.12.16\Fitabase Data 4.12.16-5.12.16\sleepDay_cleaned.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');