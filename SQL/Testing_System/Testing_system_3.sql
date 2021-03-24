 DROP DATABASE if exists  Testing_System_Assignment_3;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_3;
USE Testing_System_Assignment_1;

-- Question 1: Tạo view có chứa danh sách nhân viên thuộc phòng ban sale
CREATE VIEW AccountSale AS
SELECT * FROM department WHERE Department_Name='Sale';

-- Question 2: Tạo view có chứa thông tin các account tham gia vào nhiều group nhất
CREATE VIEW AccountGroup AS
SELECT * FROM groupaccount;
SELECT Account_ID, COUNT(group_id) a, GROUP_CONCAT(Group_ID)
FROM `groupaccount` GROUP BY Account_ID ORDER BY a DESC;

-- Question 3: Tạo view có chứa câu hỏi có những content quá dài (content quá 300 từ 
-- được coi là quá dài) và xóa nó đi
CREATE VIEW lenghtcontent AS
SELECT * FROM question;
SELECT Content,length(Content)
FROM question
WHERE length(Content) > 300;

-- Question 4: Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất
CREATE VIEW Department AS
SELECT Department_Name,COUNT(Account_ID) soluong
FROM department a
JOIN account b ON a.Department_ID=b.Department_ID
GROUP BY Department_Name ORDER BY soluong DESC;

-- Question 5: Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo
CREATE VIEW question AS
 SELECT a.Content, b.FullName
 FROM question a
 JOIN `account` b ON a.Creator_ID=b.Account_ID
 WHERE FullName LIKE 'Nguyễn%';
 
 