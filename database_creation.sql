
---- CREATING DATABASE ----

CREATE DATABASE online_course_db;

USE online_course_db;


---- CREATING TABLES ----

CREATE TABLE Courses (
    CourseID VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(100),
    Category VARCHAR(50),
    Price INT
);

CREATE TABLE Students (
    StudentID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Enrollments (
    EnrollmentID VARCHAR(10) PRIMARY KEY,
    StudentID VARCHAR(10),
    CourseID VARCHAR(10),
    Enrollment_Date DATE,
    
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


---- INSERTING VALUES ----

INSERT INTO Courses (CourseID, Course_Name, Category, Price) VALUES
('C101','SQL for Beginners','Data Analytics',49),
('C102','Python for Data Analysis','Data Analytics',79),
('C103','Excel for Business','Productivity',39),
('C104','Power BI Dashboarding','Data Visualization',69),
('C105','Machine Learning Basics','AI',99),
('C106','Digital Marketing Fundamentals','Marketing',59),
('C107','Tableau for Data Visualization','Data Visualization',74),
('C108','Statistics for Data Science','Data Science',89),
('C109','Web Development Bootcamp','Programming',109),
('C110','Advanced SQL Queries','Data Analytics',59);

INSERT INTO Students (StudentID, Name, Email, Country) VALUES
('S001','Aarav Sharma','aarav.sharma@email.com','India'),
('S002','Emily Johnson','emily.johnson@email.com','USA'),
('S003','Liam Smith','liam.smith@email.com','UK'),
('S004','Noah Brown','noah.brown@email.com','Canada'),
('S005','Olivia Davis','olivia.davis@email.com','Australia'),
('S006','William Wilson','william.wilson@email.com','USA'),
('S007','Sophia Martinez','sophia.martinez@email.com','Spain'),
('S008','James Anderson','james.anderson@email.com','India'),
('S009','Isabella Thomas','isabella.thomas@email.com','Germany'),
('S010','Benjamin Taylor','benjamin.taylor@email.com','USA'),
('S011','Mia Moore','mia.moore@email.com','France'),
('S012','Ethan Jackson','ethan.jackson@email.com','India'),
('S013','Charlotte White','charlotte.white@email.com','UK'),
('S014','Lucas Harris','lucas.harris@email.com','Canada'),
('S015','Amelia Clark','amelia.clark@email.com','Australia');

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Enrollment_Date) VALUES
('E001','S001','C101','2024-01-05'),
('E002','S002','C102','2024-01-07'),
('E003','S003','C103','2024-01-09'),
('E004','S004','C101','2024-01-11'),
('E005','S005','C104','2024-01-15'),
('E006','S006','C102','2024-01-17'),
('E007','S007','C107','2024-01-18'),
('E008','S008','C101','2024-01-20'),
('E009','S009','C105','2024-01-22'),
('E010','S010','C109','2024-01-25'),
('E011','S011','C108','2024-01-28'),
('E012','S012','C110','2024-02-01'),
('E013','S013','C104','2024-02-03'),
('E014','S014','C103','2024-02-06'),
('E015','S015','C106','2024-02-08'),
('E016','S001','C102','2024-02-10'),
('E017','S003','C108','2024-02-12'),
('E018','S005','C101','2024-02-14'),
('E019','S007','C105','2024-02-16'),
('E020','S009','C104','2024-02-18'),
('E021','S011','C110','2024-02-21'),
('E022','S013','C107','2024-02-24'),
('E023','S015','C102','2024-02-26'),
('E024','S004','C106','2024-03-01'),
('E025','S006','C103','2024-03-03');

SELECT * FROM Courses;
SELECT * FROM Students;
SELECT * FROM Enrollments;
