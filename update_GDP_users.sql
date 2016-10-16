select *
from MONITOR_DW.MONDW_USERS 
where GEN_DIRECTORATE = '���'

update MONITOR_DW.MONDW_USERS
set GEN_DIRECTORATE = '���'
,DIRECTORATE = '���'
,LOGICAL_GROUP = '���'
,FUNCT_GROUP = 'Parametric User'
where GEN_DIRECTORATE = '���'

commit

select * 
from MONITOR_DW.MONDW_USERS
where username like 'PER!_%' escape '!'

update MONITOR_DW.MONDW_USERS
set GEN_DIRECTORATE = '���'
, directorate = '���'
, logical_group = '���'
, FUNCT_GROUP = 'Parametric User'
where username like 'PER!_%' escape '!'


commit


-- the following in order to hide these users from the monitor_dw BO reports
update MONITOR_DW.MONDW_USERS
set GEN_DIRECTORATE = '���'
,DIRECTORATE = null
,LOGICAL_GROUP = '���'
,FUNCT_GROUP = 'Parametric User'
where GEN_DIRECTORATE = '���'


-- 2/8/2010
-- update diam users and per

select *
from MONITOR_DW.MONDW_USERS
where GEN_DIRECTORATE is null
and username like 'DIAM!_%' escape '!'


update MONITOR_DW.MONDW_USERS
set GEN_DIRECTORATE = '���'
,DIRECTORATE = null
,LOGICAL_GROUP = '���'
,FUNCT_GROUP = 'Parametric User'
where GEN_DIRECTORATE is null
and username like 'DIAM!_%' escape '!'

commit

select *
from MONITOR_DW.MONDW_USERS
where GEN_DIRECTORATE is null
and username like 'PER%' 
and username not in ('PERIF_OWB', 'PERIF')


update MONITOR_DW.MONDW_USERS
set GEN_DIRECTORATE = '���'
,DIRECTORATE = null
,LOGICAL_GROUP = '���'
,FUNCT_GROUP = 'Parametric User'
where GEN_DIRECTORATE is null
and username like 'PER%' 
and username not in ('PERIF_OWB', 'PERIF')

commit

----------------------

