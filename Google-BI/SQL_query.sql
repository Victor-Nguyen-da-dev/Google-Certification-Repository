SELECT *
FROM
  (
    SELECT *
    FROM bi-project-victor-453004-v4.fiber.market_1
    UNION ALL
    SELECT *
    FROM bi-project-victor-453004-v4.fiber.market_2
    UNION ALL
    SELECT *
    FROM bi-project-victor-453004-v4.fiber.market_3
  )