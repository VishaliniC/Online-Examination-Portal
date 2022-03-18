SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--User_Registration
create table if not exists `User_Registration` 
	(reg_no varchar(20) primary key, 
		name varchar(30), 
		dob date,
		gender varchar(10),
		email_id varchar(30), 
		password varchar(20), 
		phone_no numeric(10), 
		city varchar(30)
);

-- --User login
-- create table if not exists `User_Login`
-- 	(reg_no varchar(20), 
-- 		password varchar(20), 
-- 		foreign key (reg_no) references User_Registration(reg_no));


--Admin login
create table if not exists `Admin_Login`
	(user_name varchar(20), 
		password varchar(20));

insert into Admin_Login values("admin","1234");

-- Subject Details
create table if not exists `Subject_Details`
	(sub_id varchar(20), 
		sub_name varchar(20), 
		tques int,
		primary key(sub_id));

-- Question Details
create table if not exists `Question_Details`
	(sub_id varchar(20), 
		q_id int NOT NULL AUTO_INCREMENT, 
		question varchar(150), 
		opt1 varchar(75),
		opt2 varchar(75),
		opt3 varchar(75),
		opt4 varchar(75),
		correct_ans varchar(20), 
		primary key(q_id), 
		foreign key(sub_id) references Subject_Details(sub_id)
		);

-- Test Details
create table if not exists `Test_Details` 
	(test_id int(5) NOT NULL AUTO_INCREMENT,
		sub_id varchar(20),
		test_name varchar(30) DEFAULT NULL,
		test_date date,
		test_duration int,
		total_que varchar(15) DEFAULT NULL,
		primary key (test_id),
		foreign key(sub_id) references Subject_Details(sub_id)
		);

-- User Answer
create table if not exists `user_answer` (
  sess_id varchar(80) DEFAULT NULL,
  reg_no varchar(20) DEFAULT NULL,
  test_id int(11) DEFAULT NULL,
  que_des varchar(200) DEFAULT NULL,
  ans1 varchar(50) DEFAULT NULL,
  ans2 varchar(50) DEFAULT NULL,
  ans3 varchar(50) DEFAULT NULL,
  ans4 varchar(50) DEFAULT NULL,
  true_ans int(11) DEFAULT NULL,
  your_ans int(11) DEFAULT NULL
);

-- Result
create table if not exists `Result` (
  reg_no varchar(20) DEFAULT NULL,
  test_id int(5) DEFAULT NULL,
  test_date date DEFAULT NULL,
  score int(3) DEFAULT NULL
);

-- feedback
create table feedback(name varchar(30), email_id varchar(30), gender varchar(10), rating numeric);