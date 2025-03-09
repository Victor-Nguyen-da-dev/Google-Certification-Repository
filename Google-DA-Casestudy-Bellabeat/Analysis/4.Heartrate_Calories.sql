SELECT
    ahr.id,
    ahr.day,
    ahr.value,
    dc.calories
FROM
    avgheartrate as ahr
INNER JOIN
    dailycalories_merged AS dc ON dc.id = ahr.id AND dc.activityday = ahr.day
