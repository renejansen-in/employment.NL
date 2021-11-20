-- SQL Statement for most detailed aggregation POSTCODEGEBIED
SELECT * 
FROM jobseeker AS j
LEFT JOIN vacancy v 
ON v.BEROEP_CD = j.BEROEP_CD
AND v.POSTCODEGEBIED = j.POSTCODEGEBIED
WHERE j.POSTCODEGEBIED <> 0 AND j.GEMEENTE <> 'NL' AND j.PROVINCIE <> 'NL'
-- 11746 [filled pc] jobseekers - 3993 match with vacancy
;