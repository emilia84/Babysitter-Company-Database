
-- Query1: Update values to null to support the meaning of Query3, Query4, Query9
UPDATE Children SET Disability = NULL, Special_needs = NULL WHERE Fname = 'Biron';
UPDATE Children SET Disability = NULL, Special_needs = NULL WHERE Fname = 'Lurette' AND Child_name = 'Brittne';
UPDATE Children SET Disability = NULL, Special_needs = NULL WHERE Fname = 'Nikaniki' AND Child_name = 'Erick';
UPDATE Children SET Disability = NULL, Special_needs = NULL WHERE Fname = 'Salomi' AND Child_name = 'Mercedes';

-- Query2: Display the children name and the number of children  who know more than 1 language
SELECT Child_name, COUNT(Language)
FROM Children_Language
GROUP BY Child_name
HAVING COUNT(Language) >1;

-- Query3: Display the gender, the number of children who have special needs and categorize by gender
SELECT Gender, COUNT(Child_name) AS "Children have special needs"
FROM Children
WHERE Disability IS NOT NULL
GROUP BY Gender; 

-- Query4: Display the information of children with the date of birth in 2021 and having no disability or special needs
SELECT *
FROM Children
WHERE DOB LIKE '2021-%%-%%' AND Disability IS NULL;

-- Query5: Display First name, Last name and the number of children who has First name is "Salomi" and Last name is "Greatorex"
SELECT Fname, Lname, COUNT(Child_name) AS "Number of Children"
FROM Children_BePartOf_Contract
WHERE Fname = 'Salomi' OR Lname = 'Greatorex'
GROUP BY Fname, Lname;

-- Query6: Display the maxixum pay and the sin number of babysitter who has the highest pay
SELECT Babysitter_SIN, MAX(Expected_pay) AS "Highest Pay"
FROM Contract
WHERE Expected_pay = (
	SELECT MAX(Expected_pay) 
	FROM Contract)
GROUP BY Babysitter_SIN;

-- Query7: Display sin number of babysitter who has average pay higher than 100 and 
-- start date in the year 19%%, end date in the year 20%% 
SELECT Start_date, End_date, Babysitter_SIN, AVG(Expected_pay) AS "Average Pay"
FROM Contract
Where Start_date LIKE '19%%' AND End_date LIKE '20%%'
GROUP BY Babysitter_SIN, Start_date, End_date 
HAVING AVG(expected_pay) > 100;

-- Query8: Display a virtual table name ExtraParent which has First name and Last name columns
-- and their marital status must be "divorced" or "single"
-- GO to support MS SQL while mySQL does not need this command
GO
CREATE VIEW ExtraParent AS 
SELECT Fname, Lname
FROM Parent
WHERE Marital_status IN ('Divorced', 'Single');
GO
select * from ExtraParent

-- Query9: Display First name, Last name and children name who has special needs
SELECT DISTINCT Fname, Lname, Child_name, Special_needs
FROM Children NATURAL JOIN Children_Language
WHERE Special_needs IS NOT NULL;

-- Query10: Display the contract number, end date, start date, children name, language 
-- and average of expected pay which is higher than 156
--  Write in Cartesian style 
SELECT C.Number, End_date, Start_date, AVG(Expected_pay), Child_name, P.Language
FROM Contract C CROSS JOIN Children_BePartOf_Contract CBC CROSS JOIN Parent_Language P
WHERE C.Number = CBC.Contract_number AND CBC.Fname = P.Fname AND CBC.Lname = P.Lname
GROUP BY C.Number, Child_name, End_date, Start_date, P.Language
HAVING AVG(Expected_pay) > 156;

-- QUERY 11 : INNER JOIN QUERY (Combine the column values of two table): Display a new table with column Name, Number and DOB 
SELECT babysitter.Name, contract.Number, babysitter.DOB
FROM babysitter
INNER JOIN contract ON babysitter.SIN_ID=contract.Babysitter_SIN;

-- QUERY 12 : LEFT JOIN QUERY (returns all records from the table 1, and the matching records from the table2): Display a new table with column start_date, service, Terms_of aggreement
SELECT contract.start_date, contract_services.service, contract.Terms_of_aggreement
FROM contract
LEFT JOIN contract_services ON contract.Number=contract_services.Contract_number;

-- QUERY 13 : RIGHT JOIN QUERY (returns all records from the table 2, and the matching records from the table1): Display a new table with column Name, Manager_SIN, Nationality
SELECT babysitter.Name, manager_babysitter.Manager_SIN, babysitter.Nationality
FROM babysitter
RIGHT JOIN manager_babysitter ON babysitter.SIN_ID = manager_babysitter.Babysitter_SIN
ORDER BY manager_babysitter.Manager_SIN;

-- QUERY 14 : NESTED QUERY : Display all the records having Expected_pay greater than average of Expected_pay
SELECT *
FROM contract
WHERE Expected_pay > (
    SELECT AVG(Expected_pay)
    FROM contract);
    
-- QUERY 15 : NESTED QUERY WITH IN: Calculate the average of Expected_pay those who are male and did MBA in their highest qualification  
SELECT AVG(Expected_pay)
FROM contract
WHERE Babysitter_SIN IN (
    SELECT SIN_ID
    FROM babysitter
    WHERE Gender = 'Male' AND Highest_degree = 'MBA');

-- QUERY 16 : DELETE QUERY: Delete al the records having Expected_pay less than 110
DELETE FROM contract WHERE Expected_pay < '110';

-- QUERY 17 : COUNT QUERY : Display the total number of weekdays having start_time 10:00:00
SELECT COUNT(Week_day)
FROM babysitter_availabletime
WHERE Start_time = '10:00:00';

-- QUERY 18 : VIEW QUERY : Create a view named as babysitter_VIEW with column Name and Gender 
CREATE VIEW babysitter_VIEW AS
SELECT Name, Gender
FROM  babysitter;

-- QUERY 19 : MIN: Display a table with Start_date, End_Date, Expected_pay and min_price i.e., minimum of Expected_pay ordered in dec. manner
SELECT Start_date, End_date, Expected_pay,
  MIN(Expected_pay) OVER (ORDER BY Number DESC) AS min_price
FROM contract;

-- QUERY 20 : SUM : Display sum of Expected_pay of the records having tern_of_agreement>2
SELECT SUM(Expected_pay) AS "Total_payment" FROM contract WHERE Term_of_agreement>2;