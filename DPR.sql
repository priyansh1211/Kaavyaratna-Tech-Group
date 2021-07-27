CREATE TABLE DPR (
  id int not NULL,
  steel_id int,
  shuttering_id int,
  concrete_id int,
  depart_id INT,
  start_time datetime,
  end_time Datetime,
  remark varchar,
  PRIMARY key(id)
);
