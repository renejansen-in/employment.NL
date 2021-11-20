SELECT * FROM uwv_e AS e
LEFT JOIN uwv_w w 
ON w.BEROEP_CD = e.BEROEP_CD
AND w.POSTCODEGEBIED = e.POSTCODEGEBIED
WHERE e.POSTCODEGEBIED <> 0 AND e.GEMEENTE <> 'NL' AND e.PROVINCIE <> 'NL'
-- returns NULL on right when there is E and no W
UNION ALL
SELECT * FROM uwv_e AS e
RIGHT JOIN uwv_w w 
ON w.BEROEP_CD = e.BEROEP_CD
AND w.POSTCODEGEBIED = e.POSTCODEGEBIED
WHERE e.BEROEP_CD IS NULL OR e.POSTCODEGEBIED <> 0 AND e.GEMEENTE <> 'NL' AND e.PROVINCIE <> 'NL'
-- returns NULL on left when there is W and no E
-- all together return job seekers e and w with postal code
;

