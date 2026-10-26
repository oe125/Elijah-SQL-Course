SELECT   ps.Hospital,
         ps.Ward,
         COUNT(*) AS Numberofpatients,
         SUM(ps.Tariff) AS tarrif
FROM     Patientstay AS PS
GROUP BY ps.Hospital, ps.Ward;