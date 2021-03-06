SELECT aAge as 'Age', abs(aSUM - bSUM) as 'Difference',
CASE
WHEN aSUM > bSUM then 'Increased'
WHEN aSUM = bSUM then 'Remained the same'
WHEN aSUM < bSUM then 'Decreased'
END as 'Indicator'
FROM
(SELECT AGE as 'aAge', SUM(POPESTIMATE2011) as 'aSUM' 
FROM POP_ESTIMATE_STATE_AGE_SEX_RACE_ORIGIN
GROUP BY AGE),
(SELECT AGE as 'bAge', SUM(POPESTIMATE2010) as 'bSUM' 
FROM POP_ESTIMATE_STATE_AGE_SEX_RACE_ORIGIN
GROUP BY AGE)
WHERE aAge = bAge;
