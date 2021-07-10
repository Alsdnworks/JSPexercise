USE ExerciseDB;

drop table student;

CREATE TABLE IF NOT EXISTS Student(
   num int NOT NULL,
   pwd  VARCHAR(20),
   depart  VARCHAR(20),
   name VARCHAR(30), 
   address VARCHAR(50), 
   phone VARCHAR(20),
   email VARCHAR(20),
   PRIMARY KEY (num)
);

INSERT INTO STUDENT (num, pwd, depart, name, address, phone, email) VALUES (2018100001, '12', '모바일과', '홍길동', '경기도','010-9002-1234', 'asd@zxc');


select * from student;