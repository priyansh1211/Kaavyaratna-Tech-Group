-- TABLE

-- INDEX
-- TRIGGER
-- VIEW
SELECT DPR.id,
  DPR.start_time,
  steel.number_steel,
  steel.work_steel,
  DPR.end_time
from steel
  INNER JOIN DPR on DPR.steel_id = steel.id
  