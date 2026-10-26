SELECT ps.PatientId,
       ps.Ward,
       h.HospitalType,
       h.Hospital
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = H.Hospital
WHERE  h.HospitalType = 'teaching';

SELECT   h.reach,
         COUNT(*) AS Numberofpatients
FROM     PatientStay AS ps
         INNER JOIN
         DimHospital AS h        
         
                SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME IN ('PatientStay', 'DimHospital')
        ORDER BY TABLE_NAME, ORDINAL_POSITION;
         ON ps.Hospital = H.Hospital
GROUP BY h.Reach;

SELECT ps.PatientId,
       ps.Ward,
       h.Hospital
FROM   PatientStay AS ps
       INNER JOIN DimHospital AS h
               ON ps.Hospital = h.Hospital
WHERE  h.Hospital = 'Kingston';



SELECT ps.PatientId,
       ps.Ward,
       ps.AdmissionDate,
       ps.DischargeDate,
       h.HospitalType,
       h.Hospital
FROM   PatientStay AS ps
       INNER JOIN DimHospital AS h
               ON ps.Hospital = h.Hospital
WHERE  h.HospitalType = 'teaching';

-- ...existing code...

SELECT ps.PatientId,
       ps.Ward,
       ps.AdmissionDate,
       ps.DischargeDate,
       h.Hospital
FROM   PatientStay AS ps
       INNER JOIN DimHospital AS h
               ON ps.Hospital = h.Hospital
WHERE  h.Hospital = 'Kingston';

