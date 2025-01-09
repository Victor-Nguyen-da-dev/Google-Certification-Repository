SELECT DISTINCT
    ahr.Id,
    ahr.day,
    ahr.value,
    totalminutesasleep,
    totaltimeinbed
FROM
    avgheartrate AS ahr
INNER JOIN
    sleepday_cleaned AS sd ON ahr.id = sd.id AND ahr.day = sd.sleepday
ORDER BY
    ahr.id ASC