DROP DATABASE if exists  Testing_System_Assignment_1;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department (
	Department_ID  			INT,
    Department_Name  		VARCHAR(50)
);
INSERT INTO Department (Department_ID ,  Department_Name) values (1, N'sale'),
																 (2, N'maketing'),
																 (3, N'nhân sự'),
																 (4, N'kĩ thuật'),
																 (5, N'nhân sự'),
																 (6, N'bán hàng');

CREATE TABLE  Position (
	 Position_ID  			INT,
	 Position_Name  		VARCHAR(50)
);
INSERT INTO Position (Position_ID ,  Position_Name) values (1, N'sale'),
															(2, N'sale'),
															(3, N'sale'),
															(4, N'sale'),
															(5, N'sale'),
															(6, N'sale');

CREATE TABLE  Account (
	 Account_ID  			INT,
     Email 					VARCHAR(50),
	 User_Name  			VARCHAR(50),
     Full_Name				VARCHAR(50),
     Departmen_ID			INT,
     Position_ID			INT,
     Create_Date			DATE
);
INSERT INTO Account (Account_ID ,  Email, User_Name, Full_Name, Departmen_ID, Position_ID,Create_Date	) values (1, N'sale'),
																												 (2, N'sale'),
																												 (3, N'sale'),
																												 (4, N'sale'),
																												 (5, N'sale'),
																												 (6, N'sale');

CREATE TABLE   Groupj (
	  Group_ID  			INT,
	  Group_Name  			VARCHAR(50),
      Create_ID				INT,
      Create_Date			DATE
);
INSERT INTO Groupj (Group_ID ,  Group_Name, Create_ID, Create_Date) values (1, N'sale'),
																			 (2, N'sale'),
																			 (3, N'sale'),
																			 (4, N'sale'),
																			 (5, N'sale'),
																			 (6, N'sale');

CREATE TABLE GroupAccount  (
	 Group_ID  INT,
	 Account_ID  INT,
     Join_Date DATE
);
INSERT INTO GroupAccount (GroupID ,  AccountID, JoinDate) values (1, N'sale'),
																 (2, N'sale'),
																 (3, N'sale'),
																 (4, N'sale'),
																 (5, N'sale'),
																 (6, N'sale');

CREATE TABLE  TypeQuestion  (
	 Type_ID  INT,
	 Type_Name  VARCHAR(50)
);
INSERT INTO TypeQuestion (Type_ID ,  Type_Name) values (1, N'sale'),
																 (1, N'sale'),
																 (1, N'sale'),
																 (1, N'sale'),
																 (1, N'sale'),
																 (1, N'sale');

CREATE TABLE Category_Question  (
	 Category_ID  INT,
	 Category_Name  VARCHAR(50)
);
INSERT INTO Category_Question (Category_ID ,  Category_Name) values (1, N'sale'),
																 (1, N'sale'),
																 (1, N'sale'),
																 (1, N'sale'),
																 (1, N'sale'),
																 (1, N'sale');

CREATE TABLE Question (
	 Question_ID  INT,
	 Content  VARCHAR(50),
     Category_ID INT,
     Type_ID INT,
     Creator_ID INT,
     Create_Date DATE
);
INSERT INTO Question (Question_ID ,  Content, Category_ID, Type_ID, Creator_ID, Create_Date) values (1, N'sale'),
																									 (2, N'sale'),
																									 (3, N'sale'),
																									 (4, N'sale'),
																									 (5, N'sale'),
																									 (6, N'sale');

CREATE TABLE  Answer (
	 Answer_ID  INT,
	 Content  VARCHAR(50),
     Question_ID INT,
     is_Correct VARCHAR(50)
);
INSERT INTO Answer (Answer_ID ,  Content, Question_ID, is_Correct) values (1, N'sale'),
																		 (2, N'sale'),
																		 (3, N'sale'),
																		 (4, N'sale'),
																		 (5, N'sale'),
																		 (6, N'sale');

CREATE TABLE Exam  (
	 Exam_ID  INT,
	 Code  VARCHAR(50),
     Title  VARCHAR(50),
     Category_ID  INT,
     Duration  VARCHAR(10),
     Creator_ID INT,
     Create_Date DATE
);
INSERT INTO Exam (Exam_ID ,  Code, Title, Category_ID, Duration, Creator_ID, Create_Date) values (1, N'sale'),
																								 (1, N'sale'),
																								 (1, N'sale'),
																								 (1, N'sale'),
																								 (1, N'sale'),
																								 (1, N'sale');

CREATE TABLE ExamQuestion  (
	 Exam_ID	   INT,
	 Question_ID  INT
);
INSERT INTO ExamQuestion (Exam_ID ,  Question_ID) values (1, N'sale'),
														(2, N'sale'),
														(3, N'sale'),
														(4, N'sale'),
														(5, N'sale'),
														(6, N'sale');