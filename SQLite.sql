SELECT DPR1.id_date,steel.steel_id,shuttering.shuttering_id,concrete.concrete_id,depart.depart_id,DPR1.remark
FROM dates
INNER JOIN DPR1 ON DPR1.id_date=dates.create_date
from DPR2 
INNER JOIN steel on DPR2.number=steel.steel_id
from DPR2 
INNER JOIN steel on DPR2.work=steel.steel_id
from DPR2 
INNER JOIN shuttering on DPR2.number=shuttering.shuttering_id
from DPR2 
INNER JOIN shuttering on DPR2.work=shuttering.shuttering_id
from DPR2 
INNER JOIN concrete on DPR2.number=concrete.concrete_id
from DPR2 
INNER JOIN concrete on DPR2.work=concrete.concrete_id
from DPR2 
INNER JOIN depart on DPR2.number=depart.depart_id
from DPR2 
INNER JOIN depart on DPR2.work=depart.depart_id
FROM id_remark
INNER JOIN DPR1 on DPR1.remark=id_remark.create_remark