DROP DATABASE IF EXISTS   fresher;
CREATE DATABASE IF NOT EXISTS fresher;
USE fresher;

CREATE TABLE Trainee (
    Trainee_ID  			INT NOT NULL,
    Full_Name  				VARCHAR(50),
    Birth_Date 				DATE,
    Gender				ENUM('Male','Female','unknown') DEFAULT NULL,
    ET_IQ				INTEGER(20),
    ET_Gmath				INTEGER(20),
    ET_English				INTEGER(50),
    Training_Class			VARCHAR(20),
    Evaluation_Notes		 	TEXT,
    VTI_Account				INT UNIQUE NOT NULL
);
CREATE TABLE Staff(
    ID				        INT,
    Name				VARCHAR(50),
    Code				VARCHAR(5),
    ModifiedDate			DATETIME
);
CREATE TABLE Staff1(
    ID				        INT,
    Name				VARCHAR(50),					
    BirthDate				DATETIME,
    Gender				BIT,
    IsDeletedFlag			BIT
);