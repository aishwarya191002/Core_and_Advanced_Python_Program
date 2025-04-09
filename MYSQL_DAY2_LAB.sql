Lab 1: Create a Database & Table Using MySQL Command-Line Client

● Create a database with the name StudentManagementSystem. 

mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.02 sec)

mysql> USE StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student (
    ->     StudentID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     DateOfBirth DATE,
    ->     Gender ENUM('Male', 'Female', 'Other'),
    ->     Email VARCHAR(100),
    ->     Phone VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Course (
    ->     CourseID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CourseTitle VARCHAR(100),
    ->     Credits INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Instructor (
    ->     InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     Email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    ->     EnrollmentDate DATE,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     InstructorID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Score (
    ->     ScoreID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CourseID INT,
    ->     StudentID INT,
    ->     DateOfExam DATE,
    ->     CreditObtained INT,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Feedback (
    ->     FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
    ->     StudentID INT,
    ->     Date DATE,
    ->     InstructorName VARCHAR(100),
    ->     Feedback TEXT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone)
    -> VALUES
    -> ('John', 'Doe', '2000-01-15', 'Male', 'john.doe@example.com', '1234567890'),
    -> ('Jane', 'Smith', '1998-07-22', 'Female', 'jane.smith@example.com', '0987654321'),
    -> ('Mary', 'Johnson', '2001-11-10', 'Female', 'mary.johnson@example.com', '1122334455'),
    -> ('Michael', 'Brown', '1999-04-30', 'Male', 'michael.brown@example.com', '2233445566'),
    -> ('David', 'Davis', '2002-09-05', 'Male', 'david.davis@example.com', '3344556677');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course (CourseTitle, Credits)
    -> VALUES
    -> ('Introduction to Computer Science', 3),
    -> ('Data Structures and Algorithms', 4),
    -> ('Database Management Systems', 3),
    -> ('Operating Systems', 4),
    -> ('Software Engineering', 3);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Instructor (FirstName, LastName, Email)
    -> VALUES
    -> ('Dr. Alice', 'Williams', 'alice.williams@university.com'),
    -> ('Dr. Bob', 'Miller', 'bob.miller@university.com'),
    -> ('Dr. Charlie', 'Lee', 'charlie.lee@university.com'),
    -> ('Dr. Diana', 'Moore', 'diana.moore@university.com'),
    -> ('Dr. Edward', 'Taylor', 'edward.taylor@university.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID)
    -> VALUES
    -> ('2024-01-15', 1, 1, 1),
    -> ('2024-01-16', 2, 2, 2),
    -> ('2024-01-18', 3, 3, 3),
    -> ('2024-01-20', 4, 4, 4),
    -> ('2024-01-22', 5, 5, 5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Score (CourseID, StudentID, DateOfExam, CreditObtained)
    -> VALUES
    -> (1, 1, '2024-05-10', 3),
    -> (2, 2, '2024-05-15', 4),
    -> (3, 3, '2024-05-20', 3),
    -> (4, 4, '2024-05-25', 4),
    -> (5, 5, '2024-05-30', 3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Feedback (StudentID, Date, InstructorName, Feedback)
    -> VALUES
    -> (1, '2024-06-01', 'Dr. Alice Williams', 'Great instructor, very clear lectures.'),
    -> (2, '2024-06-02', 'Dr. Bob Miller', 'Helpful but sometimes difficult to follow.'),
    -> (3, '2024-06-03', 'Dr. Charlie Lee', 'Excellent teaching style, very engaging.'),
    -> (4, '2024-06-04', 'Dr. Diana Moore', 'Very knowledgeable and patient.'),
    -> (5, '2024-06-05', 'Dr. Edward Taylor', 'Good explanation, but could improve the pacing.');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | John      | Doe      | 2000-01-15  | Male   | john.doe@example.com      | 1234567890 |
|         2 | Jane      | Smith    | 1998-07-22  | Female | jane.smith@example.com    | 0987654321 |
|         3 | Mary      | Johnson  | 2001-11-10  | Female | mary.johnson@example.com  | 1122334455 |
|         4 | Michael   | Brown    | 1999-04-30  | Male   | michael.brown@example.com | 2233445566 |
|         5 | David     | Davis    | 2002-09-05  | Male   | david.davis@example.com   | 3344556677 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Course;
+----------+----------------------------------+---------+
| CourseID | CourseTitle                      | Credits |
+----------+----------------------------------+---------+
|        1 | Introduction to Computer Science |       3 |
|        2 | Data Structures and Algorithms   |       4 |
|        3 | Database Management Systems      |       3 |
|        4 | Operating Systems                |       4 |
|        5 | Software Engineering             |       3 |
+----------+----------------------------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-------------+----------+-------------------------------+
| InstructorID | FirstName   | LastName | Email                         |
+--------------+-------------+----------+-------------------------------+
|            1 | Dr. Alice   | Williams | alice.williams@university.com |
|            2 | Dr. Bob     | Miller   | bob.miller@university.com     |
|            3 | Dr. Charlie | Lee      | charlie.lee@university.com    |
|            4 | Dr. Diana   | Moore    | diana.moore@university.com    |
|            5 | Dr. Edward  | Taylor   | edward.taylor@university.com  |
+--------------+-------------+----------+-------------------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2024-01-15     |         1 |        1 |            1 |
|            2 | 2024-01-16     |         2 |        2 |            2 |
|            3 | 2024-01-18     |         3 |        3 |            3 |
|            4 | 2024-01-20     |         4 |        4 |            4 |
|            5 | 2024-01-22     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2024-05-10 |              3 |
|       2 |        2 |         2 | 2024-05-15 |              4 |
|       3 |        3 |         3 | 2024-05-20 |              3 |
|       4 |        4 |         4 | 2024-05-25 |              4 |
|       5 |        5 |         5 | 2024-05-30 |              3 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+--------------------+-------------------------------------------------+
| FeedbackID | StudentID | Date       | InstructorName     | Feedback                                        |
+------------+-----------+------------+--------------------+-------------------------------------------------+
|          1 |         1 | 2024-06-01 | Dr. Alice Williams | Great instructor, very clear lectures.          |
|          2 |         2 | 2024-06-02 | Dr. Bob Miller     | Helpful but sometimes difficult to follow.      |
|          3 |         3 | 2024-06-03 | Dr. Charlie Lee    | Excellent teaching style, very engaging.        |
|          4 |         4 | 2024-06-04 | Dr. Diana Moore    | Very knowledgeable and patient.                 |
|          5 |         5 | 2024-06-05 | Dr. Edward Taylor  | Good explanation, but could improve the pacing. |
+------------+-----------+------------+--------------------+-------------------------------------------------+
5 rows in set (0.00 sec)