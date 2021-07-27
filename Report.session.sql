SELECT 
  dpr.start_time,
  dpr.steel_id,
  steel.number_steel,
  steel.work_steel,
  dpr.shuttering_id,
  shuttering.number_shuttering,
  shuttering.work_shuttering,
  dpr.concrete_id,
  concrete.id,
  concrete.number_concrete,
  concrete.work_concrete,
  dpr.depart_id,
  depart.id,
  depart.number_depart,
  depart.work_depart,
  dpr.end_time,
  dpr.remark
from dpr
  LEFT JOIN depart on dpr.depart_id=depart.id
  LEFT JOIN concrete on dpr.concrete_id=concrete.id
  LEFT JOIN shuttering on DPR.shuttering_id = shuttering.id
  LEFT JOIN steel on DPR.steel_id=steel.id