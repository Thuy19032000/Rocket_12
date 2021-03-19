DROP DATABASE if exists  Testing_System_Assignment_1;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department (
    	 Department_ID  		INT,
    	 Department_Name  		VARCHAR(50)
);

CREATE TABLE  Position (
	 Position_ID  			INT,
	 Position_Name  		VARCHAR(50)
);

CREATE TABLE  Account (
	 Account_ID  			INT,
     	 Email 				VARCHAR(50),
	 User_Name  			VARCHAR(50),
      	 Full_Name			VARCHAR(50),
      	 Departmen_ID			INT,
     	 Position_ID			INT,
     	 Create_Date			DATE
);

CREATE TABLE   Groupj (
	 Group_ID  			INT,
	 Group_Name  			VARCHAR(50),
     	 Create_ID			INT,
     	 Create_Date			DATE
);

CREATE TABLE GroupAccount  (
	 Group_ID  			INT,
	 Account_ID  			INT,
     	 Join_Date 			DATE
);

CREATE TABLE  TypeQuestion  (
	 Type_ID  			INT,
	 Type_Name  			VARCHAR(50)
);

CREATE TABLE Category_Question  (
	 Category_ID  			INT,
	 Category_Name  		VARCHAR(50)
);
CREATE TABLE Question (
	 Question_ID  			INT,
	 Content  			VARCHAR(50),
   	 Category_ID 			INT,
     	 Type_ID 			INT,
    	 Creator_ID 			INT,
    	 Create_Date 			DATE
);

CREATE TABLE  Answer (
	 Answer_ID 			INT,
	 Content  			VARCHAR(50),
     	 Question_ID 			INT,
     	 is_Correct 			VARCHAR(50)
);

CREATE TABLE Exam  (
	 Exam_ID  			INT,
	 Code  				VARCHAR(50),
     	 Title  			VARCHAR(50),
     	 Category_ID  			INT,
    	 Duration  			VARCHAR(10),
     	 Creator_ID 			INT,
     	 Create_Date 			DATE
);

CREATE TABLE ExamQuestion  (
	 Exam_ID	   		INT,
	 Question_ID  			INT
);
