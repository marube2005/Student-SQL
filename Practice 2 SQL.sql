CREATE DATABASE EGERTON;
USE EGERTON;

CREATE TABLE Courses(
name VARCHAR(30),
ID VARCHAR(50) NOT NULL primary key ,
location VARCHAR(50)
);

CREATE TABLE Faculty6(
name VARCHAR(30),
FACULTY_ID INT NOT NULL AUTO_INCREMENT,
location VARCHAR(50),
COURSE_ID VARCHAR(50) NOT NULL,
PRIMARY KEY  (FACULTY_ID),
FOREIGN KEY (COURSE_ID) REFERENCES Courses(ID)
);

INSERT INTO Courses (name,location,ID) 
VALUES ('Computer science','PST','tatton'),('Law','Njokerio','Victorai') , ('English Literature','Library','Buruburu'),('Civil Engineering','Lower Fields','Hollywood');

INSERT INTO Faculty6 (name,location, COURSE_ID)
 VALUES ('Science','Anhe','tatton'),('Law','Njokerio','Victorai'),('Fedcos','CBD','Buruburu')
 ,('Engineering','Hotspot','Hollywood');

SELECT *
FROM Courses as C LEFT JOIN Faculty6 as F
ON C.location = F.location;


