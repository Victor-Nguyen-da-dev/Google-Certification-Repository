COPY dailyActivity_merged
FROM 'C:\Test\Github\SQL - Google DA\Data\Focus\dailyActivity_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY dailyCalories_merged
FROM 'C:\Test\Github\SQL - Google DA\Data\Focus\dailyCalories_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY dailyIntensities_merged
FROM 'C:\Test\Github\SQL - Google DA\Data\Focus\dailyIntensities_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY avgheartrate
FROM 'C:\Test\Github\SQL - Google DA\Data\Focus\avgheartrate.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY sleepDay_cleaned
FROM 'C:\Test\Github\SQL - Google DA\Data\Focus\sleepDay_cleaned.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');