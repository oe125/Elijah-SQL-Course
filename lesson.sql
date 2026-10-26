/*
Example lesson stub
*/
SELECT		PS.PatientId,
			PS.Hospital,
			PS.Ward,
			DATEADD(WEEK, -2, PS.AdmittedDate) AS REMINDERDATE,
			PS.AdmittedDate,
			PS.DischargeDate,
			DATEDIFF(day, ps.AdmittedDate, ps.DischargeDate) AS Lenghtofstay,
			DATEADD(MONTH, 3, PS.DischargeDate) AS APPTDATE
FROM		Patientstay AS PS
WHERE		PS.Hospital IN ('kingston', 'PRUH')
			AND PS.Ward LIKE '%SURGERY'
			AND PS.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	PS.AdmittedDate, PS.DischargeDate;


-- SELECT DATEADD(MONTH, 3, '2026-10-26') AS Testvalue