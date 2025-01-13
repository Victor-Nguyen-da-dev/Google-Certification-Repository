SELECT DISTINCT
    sd.id,
    sd.sleepday,
    di.SedentaryMinutes,
    di.LightlyActiveMinutes,
    di.FairlyActiveMinutes,
    di.VeryActiveMinutes,
    totalminutesasleep,
    totaltimeinbed
FROM
    sleepday_cleaned AS sd
INNER JOIN
    dailyIntensities_merged AS di ON di.id = sd.id AND di.ActivityDay = sd.sleepday
ORDER BY
    sd.id ASC