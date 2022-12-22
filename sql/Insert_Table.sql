-- The code works perfectly on MS SQL

INSERT INTO Parent VALUES ('Salomi', 'Ellor', 'sellor0@scientificamerican.com', '3742 Hanson Center', 'Married', '9366370653', '6662487795');
INSERT INTO Parent VALUES ('Lurette', 'Lurriman', 'llurriman1@icq.com', '75 Acker Circle', 'Single', '7206984181',  '7826091979');
INSERT INTO Parent VALUES ('Gothart', 'Greatorex', 'ggreatorex2@jugem.jp', '60 Bellgrove Terrace', 'Divorced', '1469563975',  '1159608125');
INSERT INTO Parent VALUES ('Nikaniki', 'Zuanelli', 'nzuanelli3@businessinsider.com', '486 Dakota Point', 'Married', '3139128481', '7457072534');
INSERT INTO Parent VALUES ('Biron', 'Giovannetti', 'bgiovannetti4@unblog.fr', '164 Rigney Plaza', 'Married', '7479623076', '8163787509');

INSERT INTO Children VALUES ('Salomi', 'Ellor','Kellyann', '1/3/2021', 'Female', 'Visual','Reading');
INSERT INTO Children VALUES ('Salomi', 'Ellor','Mercedes', '11/24/2021', 'Female', '','');
INSERT INTO Children VALUES ('Lurette', 'Lurriman','Brittne', '2/21/2019', 'Female', '','');
INSERT INTO Children VALUES ('Lurette', 'Lurriman','Audi', '2/1/2022', 'Female', 'Learning','Teaching');
INSERT INTO Children VALUES ('Lurette', 'Lurriman','Lowell', '7/11/2020', 'Male', 'Emotional','Playing');
INSERT INTO Children VALUES ('Gothart', 'Greatorex','Miner', '5/10/2021', 'Male', 'Mental','Bathing');
INSERT INTO Children VALUES ('Nikaniki', 'Zuanelli','Erick', '5/5/2021', 'Male', '','');
INSERT INTO Children VALUES ('Nikaniki', 'Zuanelli','Chris', '4/13/2020', 'Male', 'Physical','Feeding');
INSERT INTO Children VALUES ('Biron', 'Giovannetti', 'Adelle', '6/19/2022', 'Female', '','');
INSERT INTO Children VALUES ('Biron', 'Giovannetti', 'Tremain', '9/14/2021', 'Male', '','');



INSERT INTO Children_BePartOf_Contract VALUES ('C101','Salomi', 'Ellor','Kellyann');
INSERT INTO Children_BePartOf_Contract VALUES ('C102','Salomi', 'Ellor','Mercedes');
INSERT INTO Children_BePartOf_Contract VALUES ('C103','Lurette', 'Lurriman','Brittne');
INSERT INTO Children_BePartOf_Contract VALUES ('C104','Lurette', 'Lurriman','Audi');
INSERT INTO Children_BePartOf_Contract VALUES ('C105','Lurette', 'Lurriman','Lowell');
INSERT INTO Children_BePartOf_Contract VALUES ('C106','Gothart', 'Greatorex','Miner');
INSERT INTO Children_BePartOf_Contract VALUES ('C107','Nikaniki', 'Zuanelli','Erick');
INSERT INTO Children_BePartOf_Contract VALUES ('C108','Nikaniki', 'Zuanelli','Chris');
INSERT INTO Children_BePartOf_Contract VALUES ('C109','Biron', 'Giovannetti', 'Adelle');
INSERT INTO Children_BePartOf_Contract VALUES ('C110','Biron', 'Giovannetti', 'Tremain');

INSERT INTO Parent_Language VALUES ('Salomi', 'Ellor', 'English');
INSERT INTO Parent_Language VALUES ('Salomi', 'Ellor', 'French');
INSERT INTO Parent_Language VALUES ('Lurette', 'Lurriman', 'English');
INSERT INTO Parent_Language VALUES ('Lurette', 'Lurriman', 'French');
INSERT INTO Parent_Language VALUES ('Lurette', 'Lurriman', 'Chinese');
INSERT INTO Parent_Language VALUES ('Gothart', 'Greatorex', 'Italian');
INSERT INTO Parent_Language VALUES ('Gothart', 'Greatorex', 'English');
INSERT INTO Parent_Language VALUES ('Nikaniki', 'Zuanelli', 'English');
INSERT INTO Parent_Language VALUES ('Biron', 'Giovannetti','Filipino');
INSERT INTO Parent_Language VALUES ('Biron', 'Giovannetti','English');

INSERT INTO Children_Language VALUES ('Salomi', 'Ellor','Kellyann', 'English');
INSERT INTO Children_Language VALUES ('Salomi', 'Ellor','Kellyann', 'French');
INSERT INTO Children_Language VALUES ('Salomi', 'Ellor','Mercedes', 'French');
INSERT INTO Children_Language VALUES ('Lurette', 'Lurriman','Brittne', 'English');
INSERT INTO Children_Language VALUES ('Lurette', 'Lurriman','Audi', 'English');
INSERT INTO Children_Language VALUES ('Lurette', 'Lurriman','Audi', 'Chinese');
INSERT INTO Children_Language VALUES ('Lurette', 'Lurriman','Lowell', 'English');
INSERT INTO Children_Language VALUES ('Lurette', 'Lurriman','Lowell', 'Chinese');
INSERT INTO Children_Language VALUES ('Gothart', 'Greatorex','Miner', 'English');
INSERT INTO Children_Language VALUES ('Gothart', 'Greatorex','Miner', 'Italian');
INSERT INTO Children_Language VALUES ('Nikaniki', 'Zuanelli','Erick', 'English');
INSERT INTO Children_Language VALUES ('Nikaniki', 'Zuanelli','Chris', 'English');
INSERT INTO Children_Language VALUES ('Biron', 'Giovannetti', 'Adelle','English');
INSERT INTO Children_Language VALUES ('Biron', 'Giovannetti', 'Tremain', 'English');
INSERT INTO Children_Language VALUES ('Biron', 'Giovannetti', 'Tremain', 'Filipino');

INSERT INTO Babysitter VALUES ('101', '1990-10-03', 'Rick', 'Male', 'MBA', 'Canadian');
INSERT INTO Babysitter VALUES ('102', '1990-10-03', 'Ron', 'Male', 'MBA', 'Canadian');
INSERT INTO Babysitter VALUES ('103', '1996-03-03', 'Susan', 'Female', 'MBA', 'Canadian');
INSERT INTO Babysitter VALUES ('104', '1995-10-03', 'Isha', 'Female', 'MBA', 'Canadian');

INSERT INTO Manager_Babysitter VALUES ('101', '101');
INSERT INTO Manager_Babysitter VALUES ('101', '104');
INSERT INTO Manager_Babysitter VALUES ('102', '102');
INSERT INTO Manager_Babysitter VALUES ('102', '103');

INSERT INTO Babysitter_AvailableTime VALUES ('101', '10:00:00', '14:00:00', 'Wednesday', 'English');
INSERT INTO Babysitter_AvailableTime VALUES ('102', '9:00:00', '13:00:00', 'Monday', 'English');
INSERT INTO Babysitter_AvailableTime VALUES ('103', '7:00:00', '11:00:00', 'Tuesday', 'English');
INSERT INTO Babysitter_AvailableTime VALUES ('104', '10:00:00', '16:00:00', 'Sunday', 'English');

INSERT INTO Babysitter_Skills VALUES ('101', 'Changing diapers');
INSERT INTO Babysitter_Skills VALUES ('102', 'Caring ');
INSERT INTO Babysitter_Skills VALUES ('103', 'Emergency first aid');
INSERT INTO Babysitter_Skills VALUES ('104', 'Help in homework');


INSERT INTO Contract VALUES  ('C101', '2021-02-03', '2022-01-01', '200', '3 month', '101');
INSERT INTO Contract VALUES  ('C102', '2022-03-06', '2022-06-06', '100', '3 month', '102');
INSERT INTO Contract VALUES  ('C103', '1999-04-05', '2000-05-09', '189', '3 month', '103');
INSERT INTO Contract VALUES  ('C104', '1998-04-04', '1999-06-06', '156', '3 month', '104');
INSERT INTO Contract VALUES  ('C105', '1998-02-02', '1999-02-02', '234', '3 month', '101');
INSERT INTO Contract VALUES  ('C106', '1999-01-01', '2000-04-04', '289', '3 month', '102');
INSERT INTO Contract VALUES  ('C107', '2021-06-03', '2022-01-01', '156', '3 month', '104');

INSERT INTO Contract_Services VALUES ('C101', 'Medical');
INSERT INTO Contract_Services VALUES ('C102', 'Care');
INSERT INTO Contract_Services VALUES ('C103', 'Homeword');
INSERT INTO Contract_Services VALUES ('C104', 'Care');
INSERT INTO Contract_Services VALUES ('C105', 'Medical');
INSERT INTO Contract_Services VALUES ('C106', 'Care');
INSERT INTO Contract_Services VALUES ('C107', 'Homework');