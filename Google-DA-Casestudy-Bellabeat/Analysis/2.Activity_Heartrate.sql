SELECT
    da.id,
    da.activitydate,
    ahr.value,
    da.veryactiveminutes,
    da.fairlyactiveminutes,
    da.lightlyactiveminutes,
    da.sedentaryminutes
FROM
    dailyactivity_merged AS da
INNER JOIN
    avgheartrate AS ahr ON da.id = ahr.id AND da.activitydate = ahr.day