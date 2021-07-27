-- TABLE
CREATE TABLE DPR1 (
  id int not NULL,
  id_date DATETIME DEFAULT CURRENT_TIMESTAMP not NULL,
  remark VARCHAR not NULL,
  CONSTRAINT DPR1_PK PRIMARY key(id,id_date,remark)
  );
CREATE TABLE DPR2 (
  number_steel int ,
  work_steel varchar, 
  number_shuttering int,
  work_shuttering VARCHAR, 
  number_concrete INT, 
  work_concrete VARCHAR,
  number_depart INT, 
  work_depart VARCHAR
  )
CREATE TABLE id_remark (
  create_remark int not NULL,
  FOREIGN KEY(create_remark) REFERENCES DPR1(remark)
  );  
CREATE TABLE steel (
  steel_id int not NULL,
  PRIMARY KEY(steel_id)
  );
  CREATE TABLE shuttering (
  shuttering_id int not NULL,
  PRIMARY KEY(shuttering_id)
  );
  CREATE TABLE concrete (
  concrete_id int not NULL,
  PRIMARY KEY(concrete_id)
  );
  CREATE TABLE depart (
  depart_id int not NULL,
  PRIMARY KEY(depart_id)
  );
  CREATE TABLE dates (
  create_date int not NULL,
  FOREIGN KEY(create_date) REFERENCES DPR1(id_date)
  );
-- INDEX
 
-- TRIGGER
 
-- VIEW
--inner joining all the tables  
SELECT DPR1.id_date,steel.steel_id,shuttering.shuttering_id,concrete.concrete_id,depart.depart_id,DPR1.remark
FROM DPR1
INNER JOIN dates ON DPR1.id_date=dates.create_date
from DPR2
INNER JOIN steel on DPR2.number=steel.steel_id
from DPR2
INNER JOIN steel on DPR2.work=steel.steel_id
from DPR2
INNER JOIN shuttering on DPR2.number_shuttering=shuttering.shuttering_id
from DPR2
INNER JOIN shuttering on DPR2.work_shuttering=shuttering.shuttering_id
from DPR2
INNER JOIN concrete on DPR2.number_concrete=concrete.concrete_id
from DPR2
INNER JOIN concrete on DPR2.work_concrete=concrete.concrete_id
from DPR2
INNER JOIN depart on DPR2.number_depart=depart.depart_id
from DPR2
INNER JOIN depart on DPR2.work_depart=depart.depart_id
FROM DPR1
INNER JOIN id_remark on DPR1.remark=id_remark.create_remark