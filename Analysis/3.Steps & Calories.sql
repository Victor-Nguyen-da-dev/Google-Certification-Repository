SELECT
    da.id,
    da.activitydate,
    da.totalsteps,
    dc.calories
FROM
    dailyactivity_merged AS da
INNER JOIN
    dailycalories_merged AS dc ON da.id = dc.id AND da.activitydate = dc.activityday