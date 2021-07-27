--- 05-07-2021 18:40:05
--- SQLite
create table DPR1 (
  id int not NULL,
  id_date DATETIME DEFAULT CURRENT_TIMESTAMP not NULL,
  remark VARCHAR not NULL,
  CONSTRAINT DPR1_PK PRIMARY key(id,id_date,remark)
  );

--- 05-07-2021 18:51:52
--- SQLite
/***** ERROR ******
table DPR1 already exists
 ----- 
create table DPR1 (
  id int not NULL,
  id_date DATETIME DEFAULT CURRENT_TIMESTAMP not NULL,
  remark VARCHAR not NULL,
  CONSTRAINT DPR1_PK PRIMARY key(id,id_date,remark)
  );
*****/

--- 05-07-2021 18:51:55
--- SQLite
SELECT * FROM DPR1;

--- 05-07-2021 18:52:38
--- SQLite
CREATE TABLE steel (
  steel_id int not NULL,
  PRIMARY KEY(steel_id)
  );

--- 05-07-2021 18:52:42
--- SQLite
SELECT * FROM steel;

--- 05-07-2021 18:52:52
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'steel' AND type LIKE 'table';

--- 05-07-2021 18:53:16
--- SQLite
CREATE TABLE shuttering (
  shuttering_id int not NULL,
  PRIMARY KEY(shuttering_id)
  );

--- 05-07-2021 18:53:47
--- SQLite
CREATE TABLE concrete (
  concrete_id int not NULL,
  PRIMARY KEY(concrete_id)
  );

--- 05-07-2021 18:54:18
--- SQLite
CREATE TABLE depart (
  depart_id int not NULL,
  PRIMARY KEY(depart_id)
  );

--- 05-07-2021 18:56:02
--- SQLite
CREATE TABLE dates (
  create_date int not NULL,
  FOREIGN KEY(create_date) REFERENCES DPR1(id_date)
  );

--- 05-07-2021 18:56:41
--- SQLite
CREATE TABLE id_remark (
  create_remark int not NULL,
  FOREIGN KEY(create_remark) REFERENCES DPR1(remark)
  );

--- 05-07-2021 18:58:12
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'id_remark' AND type LIKE 'table';

--- 05-07-2021 19:00:38
--- SQLite
CREATE TABLE DPR2 (
  number int not NULL,
  work varchar,
  FOREIGN KEY(number) REFERENCES steel(steel_id)
  FOREIGN KEY(number) REFERENCES shuttering(shuttering_id)
  FOREIGN KEY(number) REFERENCES concrete(concrete_id)
  FOREIGN KEY(number) REFERENCES depart(depart_id)
  FOREIGN key(work) REFERENCES steel(steel_id)
  FOREIGN key(work) REFERENCES shuttering(shuttering_id)
  FOREIGN key(work) REFERENCES concrete(concrete_id)
  FOREIGN key(work) REFERENCES depart(depart_id)
  );

--- 05-07-2021 19:02:59
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'DPR2' AND type LIKE 'table';

--- 05-07-2021 19:03:28
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'DPR2' AND type LIKE 'table';

--- 05-07-2021 19:08:32
--- SQLite
/***** ERROR ******
near "from": syntax error
 ----- 
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
INNER JOIN DPR1 on DPR1.remark=id_remark.create_remark;
*****/

--- 05-07-2021 19:12:05
--- SQLite
/***** ERROR ******
near "from": syntax error
 ----- 
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
INNER JOIN DPR1 on DPR1.remark=id_remark.create_remark;
*****/

--- 05-07-2021 19:13:17
--- SQLite
/***** ERROR ******
near "from": syntax error
 ----- 
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
INNER JOIN DPR1 on DPR1.remark=id_remark.create_remark;
*****/

