DROP DATABASE if exists  Testing_System_Assignment_2;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_2;
USE Testing_System_Assignment_1;

-- Question 1: lấy ra tất cả các phòng ban

SELECT * from Department;

-- Question 2: lấy ra id của phòng ban có tên là "Sale"

SELECT Department_id from Department WHERE Department_Name = 'Sale'  ;

-- Question 3: lấy ra thông tin account có full name dài nhất
SELECT * FROM `Account` ;
SELECT Account_ID, MAX(length(FullName)) max FROM `Account` ;

-- Question 4: Lấy ra tên group đã tham gia trước ngày 20/12/2019
 
select * from `group` ;
SELECT Group_Name FROM `group` WHERE Create_Date < '2019-12-20 00:00:00 '  ;

-- Question 5: Lấy ra ID của question có >= 4 câu trả lời

SELECT *FROM answer;
SELECT Question_ID FROM answer GROUP BY Question_ID HAVING COUNT(Question_ID) >= 4;

-- Question 6: Lấy ra 5 group được tạo gần đây nhất

SELECT Group_Name FROM `group` 
ORDER BY Create_Date DESC 
LIMIT 5;

-- Question 8: Xóa tất cả các exam được tạo trước ngày 20/12/2019

SELECT exam_ID, Create_Date FROM Exam ;
SELECT * FROM Exam WHERE Create_Date < ' 2019-12-20 00:00:00 ' ;
DELETE FROM Exam WHERE Create_Date < ' 2019-12-20 00:00:00 ' ;

-- Question 9: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và 
-- email thành loc.nguyenba@vti.com.vn

SELECT Account_ID,FullName,Email FROM `Account`;
UPDATE `Account` SET FullName = 'Nguyễn Bá Lộc', Email ='loc.nguyenba@vti.com.vn' Where Account_ID = 5;

-- Question 10: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ			join

SELECT * FROM `account`;
SELECT * FROM department;
SELECT		a.Username, a.FullName, b.Department_Name
	FROM `account` AS a
    JOIN Department AS b 
    ON a.Department_ID=b.Department_ID;
    
-- Question 11: Viết lệnh để lấy ra tất cả các developer 

SELECT * FROM position;
SELECT * FROM `account`;
SELECT b.FullName,a.Position_Name FROM position a 
	JOIN `account` b ON a.Position_ID=b.Position_ID WHERE Position_Name='Dev';
				
-- Question 12: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên    count * HAVING

SELECT * FROM `account`;
SELECT * FROM department;
SELECT b.Department_Name,COUNT(a.Department_ID)
	FROM `account` a 
	JOIN department b 
    ON a.Department_ID=b.Department_ID GROUP BY department_Name HAVING COUNT(a.Department_ID) >3 ;


-- Question 13: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất

SELECT * FROM examquestion;
SELECT * FROM question;
SELECT a.Content,COUNT(b.Question_ID) c
	FROM question a
    JOIN examquestion b ON a.Question_ID=b.Question_ID GROUP BY Content ORDER BY c DESC ;
    
-- Question 14: Thông kê mỗi category Question được sử dụng trong bao nhiêu Question		GROUP BY

SELECT * FROM categoryquestion;
SELECT * FROM question;
SELECT a.Category_Name,COUNT(b.Question_ID)
	FROM categoryquestion a
    JOIN question b ON a.Category_ID=b.Category_ID
    GROUP BY Category_Name;
    
-- Question 15: Lấy ra Question có nhiều câu trả lời nhất		count HAVING

SELECT * FROM question;
SELECT * FROM answer;
SELECT a.Content, COUNT(b.Question_ID)
FROM question a
JOIN answer b ON a.Question_ID=b.Question_ID  
GROUP BY Content ORDER BY COUNT(b.Question_ID) DESC LIMIT 1 ;

-- Question 16: Tìm chức vụ có ít người nhất  		GROUP BY

SELECT * FROM position;
SELECT * FROM `account`;
SELECT a.Position_Name, MIN(c)
FROM	(SELECT a.Position_Name, COUNT(*) c
	FROM Position a
    join `account` b
    on a.Position_ID=b.Position_ID 
	GROUP BY position_Name);




-- Question 17: Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM    GROUP BY

SELECT * FROM position;
SELECT * FROM `account`;
SELECT * FROM department;
SELECT b.Department_Name phongban, COUNT(c.Position_Name) soluong, c.position_Name chưcvu, GROUP_CONCAT(c.Position_Name)
	FROM `account` a
	JOIN department b ON a.Department_ID=b.Department_ID
    JOIN position c ON a.Position_ID=c.Position_ID
    GROUP BY Department_Name;


-- Question 18: Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của 
-- question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, …
SELECT * FROM answer;
SELECT * FROM question;
SELECT * FROM exam;
SELECT * FROM typequestion;
SELECT a.Content cauhoi, c.Type_Name  kiêu, a.Creator_ID IDNgTao,b.Content Traloi
FROM question a
JOIN answer b ON a.Question_ID=b.Question_ID
JOIN typequestion c ON a.Type_ID= c.Type_ID;



-- Question 19: Lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm  join
SELECT * FROM answer;
SELECT * FROM question;
SELECT * FROM exam;
SELECT * FROM typequestion;
SELECT b.Type_Name,COUNT(a.question_ID) soluongcauhoi
FROM question a
JOIN typequestion b ON a.Type_ID=b.Type_ID
GROUP BY Type_Name;