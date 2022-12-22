-- The code works perfectly on MS SQL & mySQL

CREATE database EmiliaDB;
use EmiliaDB;
CREATE TABLE Parent (
 Fname CHAR(20),
 Lname CHAR(25),
 Emails CHAR(35),
 Address CHAR(25),
 Marital_status CHAR(12),
 Phones CHAR(10),
 Emergency_contact CHAR(10),
 PRIMARY KEY (Fname,Lname)
);
CREATE TABLE Babysitter (
 SIN_ID CHAR(20),
 DOB DATE,
 Name CHAR(25),
 Gender CHAR(12),
 Highest_degree CHAR(12),
 Nationality CHAR(10),
 PRIMARY KEY (SIN_ID)
);
CREATE TABLE Contract (
 Number CHAR(20),
 Start_date DATE,
 End_date DATE,
 Expected_pay DECIMAL(4),
 Terms_of_aggreement CHAR(10),
 Babysitter_SIN CHAR(20),
 PRIMARY KEY (Number),
 FOREIGN KEY(Babysitter_SIN) REFERENCES Babysitter(SIN_ID) 

);
CREATE TABLE Children (
 Fname CHAR(20),
 Lname CHAR(25),
 Child_name CHAR(25),
 DOB DATE,
 Gender CHAR(25),
 Disability CHAR(10),
 Special_needs CHAR(10),
 PRIMARY KEY (Fname,Lname,Child_name),
 FOREIGN KEY(Fname,Lname) REFERENCES Parent(Fname,Lname) ON DELETE CASCADE

);
CREATE TABLE Children_BePartOf_Contract (
 Contract_Number CHAR(20),
 Fname CHAR(20),
 Lname CHAR(25),
 Child_Name CHAR (25),
 PRIMARY KEY (Contract_Number),
 FOREIGN KEY(Contract_Number) REFERENCES Contract(Number),
 FOREIGN KEY(Fname,Lname,Child_name) REFERENCES Children(Fname,Lname,Child_name)

);
CREATE TABLE Manager_Babysitter (
 Manager_SIN CHAR(20),
 Babysitter_SIN CHAR(20),
 PRIMARY KEY (Babysitter_SIN),
 FOREIGN KEY(Manager_SIN) REFERENCES Babysitter(SIN_ID),
 FOREIGN KEY(Babysitter_SIN) REFERENCES Babysitter(SIN_ID)

);
CREATE TABLE Parent_Language (
 Fname CHAR(20),
 Lname CHAR(25),
 Language CHAR(10),
 PRIMARY KEY (Fname,Lname,Language),
 FOREIGN KEY(Fname,Lname) REFERENCES Parent(Fname,Lname) ON DELETE CASCADE

);
CREATE TABLE Contract_Services (
 Contract_number CHAR(20),
 Service CHAR(25),
 PRIMARY KEY (Contract_number, Service),
 FOREIGN KEY(Contract_number) REFERENCES Contract(Number) ON DELETE CASCADE

);
CREATE TABLE Children_Language (
 Fname CHAR(20),
 Lname CHAR(25),
 Child_name CHAR(25),
 Language CHAR(10),
 PRIMARY KEY (Fname,Lname, Child_name,Language),
 FOREIGN KEY(Fname,Lname, Child_name) REFERENCES Children(Fname,Lname, Child_name) ON DELETE CASCADE

);
CREATE TABLE Babysitter_AvailableTime (
 SIN_ID CHAR(20),
 Start_time TIME,
 End_time TIME,
 Week_day CHAR(25),
 Language CHAR(10),
 PRIMARY KEY (SIN_ID,Start_time,End_time, Week_day),
 FOREIGN KEY(SIN_ID) REFERENCES Babysitter(SIN_ID) ON DELETE CASCADE

);
CREATE TABLE Babysitter_Skills(
 SIN_ID CHAR(20),
 Skills CHAR(25),
 PRIMARY KEY (SIN_ID,Skills),
 FOREIGN KEY(SIN_ID) REFERENCES Babysitter(SIN_ID) ON DELETE CASCADE

);


