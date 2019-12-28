create schema IA_Project_Database;

#*******************table Candidate****************
create table `IA_Project_Database`.`candidate`
(
	`id` int not null AUTO_INCREMENT,
    `cand_password` VARCHAR(30) not null unique,
	`cand_email` VARCHAR(30) unique not null,
    `cand_username` VARCHAR(30) unique NOT NULL,
    `cand_phone` varchar(15),
    `total_score` int(30),
    PRIMARY KEY (`id`)
);
select * from candidate;
#******************table Job (position)***********************
create table `IA_Project_Database`.`job`
(
	`job_id` int(30) not null AUTO_INCREMENT,
    `job_name` VARCHAR(100) NOT NULL,
    `description` VARCHAR(1000) NOT NULL,
    PRIMARY KEY (`job_id`)
);
insert into job(job_name, description) values
('Java Developer', 'jgdgfjgjddidtff'),
('Python Developer','yitfyrfdttystrtrfjfhs'),
('R Developer', 'tyiftcuttcxrzwxyufvxzxyctccfd dr');
select * from job;
#******************table HR***********************
create table `IA_Project_Database`.`hr`
(
	`password` int not null ,
    `name` VARCHAR(20) NOT NULL,
    `email` VARCHAR(50) not null,
    PRIMARY KEY (`email`)
);
select * from hr;
#******************table Exam***********************
create table `IA_Project_Database`.`exam`
(
	`exam_id` int not null AUTO_INCREMENT,
    `exam_type` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`exam_id`)
);
insert into exam(ename) values
("IQ Exam."),
("JAVA Exam."),
("English Exam."),
("Python Exam."),
("DataBase Exam.");
select * from exam;
#******************table Questions*******************
create table `IA_Project_Database`.`question`
(
	`quest_id` int not null AUTO_INCREMENT,
    `exam_id` int not null,
    `text` VARCHAR(500) NOT NULL,
    PRIMARY KEY (`quest_id`)
);
insert into question(exam_id, text) values
('1', 'At a conference, 12 members shook hands with each other before & after the meeting. How many total number of hand shakes occurred?'),
('1', 'The day after the day after tomorrow is four days before Monday. What day is it today?'),
('1', 'Forest is to tree as tree is to ?'),
('1', 'Please enter the missing number: 4, 8, 14, 22, ?'),
('1', 'Please enter the missing number: 3, 6, 18, 72, ?'),
('3', 'Synonyms of Fostering is :'),
('3', 'Synonyms of Propel is :'),
('3', 'Synonyms of Massive is :'),
('3', 'Synonyms of Stumbling Block is :'),
('2', 'How many primitive types are there in java?'),
('2', 'What is the size of int in java is?'),
('2', 'Which of the following automatic type conversion will be possible?')
;
select * from question;
#*************************table Answers****************************
CREATE TABLE `IA_Project_Database`.`answer_quest`
 (
  `answer_id` INT NOT NULL AUTO_INCREMENT,
  `choice_content` VARCHAR(300) NOT NULL,
  `validity` BOOLEAN NOT NULL,
  `quest_id` int not null,
  PRIMARY KEY (`answer_id`)
  );
  
INSERT INTO answer_quest ( choice_content, validity ,quest_id ) VALUES
('100', false, '1'),
('Sumation(1,11)', true, '1'),
('145', false, '1'),
('132', true, '1'),
('146', false, '1'),
('No one', true, '1'),
('196', false, '1'),
('133', false, '1'),
('Monday', true, '2'),
('Tuesday', false, '2'),
('Wednesday', false, '2'),
('Satarday', false, '2'),
('Mon', true, '2'),
('Thursday', false, '2'),
('Friday', false, '2'),
('plant', false, '3'),
('leaf', true, '3'),
('branch', false, '3'),
('LEAF', true, '3'),
('tree', false, '3'),
('mangrove', false, '3'),
('Forest', false, '3'),
('23', false, '4'),
('32', true, '4'),
('26', false, '4'),
('(22+10)', true, '4'),
('43', false, '4'),
('30', false, '4'),
('144', false, '5'),
('214', false, '5'),
('360', true, '5'),
('630', false, '5'),
('531', false, '5'),
('(72*5)', true, '5'),
('Safeguarding', false, '6'),
('Neglecting', false, '6'),
('Ignoring', false, '6'),
('Safeuard', false, '6'),
('No one', false, '6'),
('Nurturing', true, '6'),
('NURTURING', true, '6'),
('Modify', false, '7'),
('Drive', true, '7'),
('Acclimatize', false, '7'),
('Burst', false, '7'),
('DRIVE', TRUE, '7'),
('Jettison ', false, '7'),
('Huge', true, '8'),
('Gaping', false, '8'),
('Little', false, '8'),
('Lump sum', false, '8'),
('HUGE', true, '8'),
('Strong', false, '8'),
('Argument', false, '9'),
('HURDLE', true, '9'),
('Advantage', false, '9'),
('Fallout', false, '9'),
('Frustration', false, '9'),
('Hurdle', true, '9'),
('7', false, '10'),
('9', false, '10'),
('8', true, '10'),
('12', false, '10'),
('eight', true, '10'),
('11', false, '10'),
('16 bit', false, '11'),
('32 bit', true, '11'),
('4 byte', true, '11'),
('8 byte', false, '11'),
('64 bit', false, '11'),
('12 byte', false, '11'),
('short to int', false, '12'),
('long to int', false, '12'),
('byte to int', false, '12'),
('int to float', true, '12'),
('int to long', true, '12'),
('double to int', false, '12')
;
select * from answer_quest;
#*************************table Candidate Answers****************************
CREATE TABLE `IA_Project_Database`.`cand_answer`
 (
  `cand_id`VARCHAR(50) NOT NULL,
  `exam_id` int not null,
  `quest_id` int not null,
  `cand_answer_id` int not null,
  `exam_score` int NOT NULL,
  `exam_type` VARCHAR(30) not null,
  `exam_date` date,
  PRIMARY KEY (`cand_id`)
  );

#*************************table CV****************************
CREATE TABLE `IA_Project_Database`.`cvs`
 (
  `can_id` VARCHAR(50) not null,
  `cand_cv` VARCHAR(50) not null,
  primary key(`can_id`)
 );
 select * from CVs;
#*************************table Notifications****************************
CREATE TABLE `IA_Project_Database`.`Notification`
 (
  `id` int not null auto_increment,
  `send_time` datetime not null,
  `cand_id` int not null,
  primary key(`id`)
 );
 
