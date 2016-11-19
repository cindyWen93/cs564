select division_desc as 'Division Name',count(*) as'Count'
from DIVISION, HOUSING_UNITS_STATE_LEVEL
where HOUSING_UNITS_STATE_LEVEL.division = division.division_cd group by division_cd;
