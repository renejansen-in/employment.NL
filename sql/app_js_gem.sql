-- Gemeente
SELECT p.BEROEP_CD, p.REFERENTIEBEROEP, p.BEROEPENCLUSTER_CD, p.BEROEPENCLUSTER, p.GEMEENTE, p.PROVINCIE, SUM(v.AANT_VA)
FROM js_gem AS p
LEFT JOIN va_total v
ON p.GEMEENTE = v.GEMEENTE
AND p.BEROEP_CD = v.BEROEP_CD
-- AND p.PROVINCIE = v.PROVINCIE
-- AND p.BEROEP_CD = v.BEROEP_CD
GROUP BY p.BEROEP_CD, p.REFERENTIEBEROEP, p.BEROEPENCLUSTER_CD, p.BEROEPENCLUSTER, p.GEMEENTE, p.PROVINCIE
;