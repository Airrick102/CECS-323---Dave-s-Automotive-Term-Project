/* EMPLOYEE INSERTION */
INSERT INTO Employee (empName,empPhone,empEmail) VALUES
/*-TECHNICIANS*/
('Marc Prato','361-929-4260','mguc@gmail.com'),
('Verna Celestin','402-387-6041','vCelest@gmail.com'),
('Aline Stfleur','607-898-5061','aStf@gmail.com'),
('Barbera Creech','618-231-4989','bCreech@gmail.com'),
('Delena Karter','662-452-3157','DKartz@gmail.com'),
('Toni Ellis','479-518-1668','ToniEllis@gmail.com'),
('Dennis Bush','201-943-4446','DBush@gmail.com'),
/*-MECHANICS*/
('Warren Williamson','203-400-5977','WWail@gmail.com'),
('Ralph Conner','512-842-2912','ConRalp@gmail.com'),
('Alan Baker','626-558-2684','BakeA@gmail.com'),
('Willis Lowe','303-399-2427','LoWi@gmail.com'),
('Max Curtis','218-652-2834','CurtMa@gmail.com'),
('Leroy Porter','430-990-5942','LerP@gmail.com'),
('Bob Waters','432-263-8610','WaterBob@gmail.com'),
('Glen Barnett','316-652-4422','BerGlen@gmail.com'),
('Ernesto Mckinney','671-635-5456','ErnestKin@gmail.com'),
('Ervin Saunders','306-695-9768','SaundErvin@gmail.com'),
('Gordon Bishop','216-774-2137','GordonBish@gmail.com'),
('Jesse Hodges','540-770-8366','JJHodge@gmail.com'),
/*BOTH*/
('Allan Aguilar','601-743-9810','AAguilar@gmail.com'),
('Otis Cain','484-245-7699', 'CainOtis@gmail.com'),
('Harold Torres','815-791-3400', 'HaroldTorez@gmail.com');






/*TIMECARD*/
INSERT INTO TimeCard (empName,empPhone,startPunch,endPunch,shiftDate) VALUES
/*-TECHNICIANS*/
('Marc Prato','361-929-4260','8:00:00','5:00:00','2017-04-08'),
('Verna Celestin','402-387-6041','9:00:00','15:30:00','2017-04-08'),
('Aline Stfleur','607-898-5061','12:30:00','20:45:00','2017-04-08'),
('Barbera Creech','618-231-4989','15:15:42','23:45:40','2017-04-08'),
('Delena Karter','662-452-3157','5:08:42','13:12:18','2017-04-08'),
('Toni Ellis','479-518-1668','11:43:00','20:10:33','2017-04-10'),
('Dennis Bush','201-943-4446','5:11:11','13:21:30','2017-04-12'),
/*-MECHANICS*/
('Warren Williamson','203-400-5977','5:15:00','13:30:00','2017-04-10'),
('Glen Barnett','316-652-4422','15:00:00','23:27:04','2017-04-10'),
('Ralph Conner','512-842-2912','15:16:10','23:03:09','2017-04-12'),
('Alan Baker','626-558-2684','8:20:00','5:45:00','2017-04-10'),
('Willis Lowe','303-399-2427','8:15:00','6:00:00','2017-04-12'),
('Max Curtis','218-652-2834','12:16:00','21:30:00','2017-04-10'),
('Leroy Porter','430-990-5942','10:24:52','18:50:00','2017-04-12'),
('Bob Waters','432-263-8610','7:42:00','4:00:00','2017-04-10'),
('Ernesto Mckinney','671-635-5456','7:12:00','15:45:00','2017-04-12'),
('Ervin Saunders','306-695-9768','8:32:00','18:00:00','2017-04-10'),
('Allan Aguilar','601-743-9810','9:15:00','19:00:20','2017-04-08'),
('Otis Cain','484-245-7699','10:03:00','18:32:02','2017-04-12'),
('Harold Torres','815-791-3400','11:20:00','20:11:00','2017-04-10'),
('Gordon Bishop','216-774-2137','14:13:00','22:32:00','2017-04-08'),
('Jesse Hodges','540-770-8366','07:20:40','16:16:20','2017-04-12');








/* Mechanic */
INSERT INTO Mechanic (mechName,mechPhone) VALUES
('Warren Williamson','203-400-5977'),
('Glen Barnett','316-652-4422'),
('Ralph Conner','512-842-2912'),
('Alan Baker','626-558-2684'),
('Willis Lowe','303-399-2427'),
('Max Curtis','218-652-2834'),
('Leroy Porter','430-990-5942'),
('Bob Waters','432-263-8610'),
('Ernesto Mckinney','671-635-5456'),
('Ervin Saunders','306-695-9768'),
('Allan Aguilar','601-743-9810'),
('Otis Cain','484-245-7699'),
('Harold Torres','815-791-3400'),
('Gordon Bishop','216-774-2137'),
('Jesse Hodges','540-770-8366');




/* Technician */
INSERT INTO Technician (techName,techPhone) VALUES
('Marc Prato','361-929-4260'),
('Verna Celestin','402-387-6041'),
('Aline Stfleur','607-898-5061'),
('Barbera Creech','618-231-4989'),
('Delena Karter','662-452-3157'),
('Toni Ellis','479-518-1668'),
('Dennis Bush','201-943-4446'),
('Allan Aguilar','601-743-9810'),
('Otis Cain','484-245-7699'),
('Harold Torres','815-791-3400');


/*SKILL*/
INSERT INTO Skill (skillName,skillLevel) VALUES
('Oil Check','basic'),
('Oil Check','intermediate'),
('Oil Check','expert'),
('Tire Check','basic'),
('Tire Check','intermediate'),
('Tire Check','expert'),
('Fluid Check','basic'),
('Fluid Check','intermediate'),
('Fluid Check','expert'),
('Timing Check','basic'),
('Timing Check','intermediate'),
('Timing Check','expert'),
('Battery Check','basic'),
('Battery Check','intermediate'),
('Battery Check','expert'),
('AirFilter Check','basic'),
('AirFilter Check','intermediate'),
('AirFilter Check','expert');




/*Skill Certification*/
INSERT INTO SkillCertification (mechName,mechPhone,skillName,skillLevel,dateOfCertification) VALUES
('Warren Williamson','203-400-5977','Oil Check','basic','2017-02-01'),
('Warren Williamson','203-400-5977','Tire Check','expert','2011-03-12'),
('Warren Williamson','203-400-5977','Timing Check','intermediate','2015-06-22'),


('Glen Barnett','316-652-4422','Oil Check','intermediate','2016-12-04'),
('Glen Barnett','316-652-4422','AirFilter Check','basic','2017-03-14'),
('Glen Barnett','316-652-4422','Fluid Check','intermediate','2015-12-11'),


('Ralph Conner','512-842-2912','Oil Check','expert','2009-05-18'),
('Ralph Conner','512-842-2912','Battery Check','expert','2010-02-11'),
('Ralph Conner','512-842-2912','Fluid Check','expert','2008-03-12'),


('Alan Baker','626-558-2684','Tire Check','intermediate','2014-05-21'),
('Alan Baker','626-558-2684','Oil Check','intermediate','2015-08-01'),
('Alan Baker','626-558-2684','AirFilter Check','basic','2017-11-02'),


('Willis Lowe','303-399-2427','Tire Check','expert','2012-07-14'),
('Willis Lowe','303-399-2427','Oil Check','expert','2011-06-29'),
('Willis Lowe','303-399-2427','Fluid Check','intermediate','2014-01-06'),


('Max Curtis','218-652-2834','Fluid Check','basic','2017-02-19'),
('Max Curtis','218-652-2834','Tire Check','basic','2017-01-07'),
('Max Curtis','218-652-2834','Battery Check','basic','2017-02-03'),


('Leroy Porter','430-990-5942','Fluid Check','intermediate','2015-05-16'),
('Leroy Porter','430-990-5942','Tire Check','intermediate','2015-02-11'),
('Leroy Porter','430-990-5942','Oil Check','basic','2016-07-12'),


('Bob Waters','432-263-8610','Fluid Check','expert','2012-04-12'),
('Bob Waters','432-263-8610','AirFilter Check','basic','2017-04-01'),
('Bob Waters','432-263-8610','Battery Check','intermediate','2015-07-03'),


('Ernesto Mckinney','671-635-5456','Timing Check','basic','2017-01-30'),
('Ernesto Mckinney','671-635-5456','Fluid Check','basic','2016-11-02'),
('Ernesto Mckinney','671-635-5456','Tire Check','basic','2016-10-11'),


('Ervin Saunders','306-695-9768','Timing Check','intermediate','2013-04-03'),
('Ervin Saunders','306-695-9768','Battery Check','intermediate','2015-02-11'),
('Ervin Saunders','306-695-9768','Oil Check','intermediate','2015-06-02'),


('Allan Aguilar','601-743-9810','Timing Check','expert','2012-02-12'),
('Allan Aguilar','601-743-9810','Tire Check','intermediate','2014-06-18'),
('Allan Aguilar','601-743-9810','AirFilter Check','intermediate','2015-02-01'),


('Otis Cain','484-245-7699','Battery Check','basic','2015-11-30'),
('Otis Cain','484-245-7699','AirFilter Check','expert','2007-04-15'),
('Otis Cain','484-245-7699','Timing Check','basic','2016-07-01'),


('Harold Torres','815-791-3400','Battery Check','expert','2009-04-22'),
('Harold Torres','815-791-3400','Tire Check','intermediate','2015-03-03'),
('Harold Torres','815-791-3400','Fluid Check','expert','2010-09-06'),


('Gordon Bishop','216-774-2137','AirFilter Check','basic','2016-12-12'),
('Gordon Bishop','216-774-2137','Battery Check','expert','2010-03-21'),
('Gordon Bishop','216-774-2137','Tire Check','basic','2017-01-17'),


('Jesse Hodges','540-770-8366','AirFilter Check','expert','2012-08-21'),
('Jesse Hodges','540-770-8366','Fluid Check','expert','2012-06-12'),
('Jesse Hodges','540-770-8366','Battery Check','intermediate','2016-04-04');


/* Mentorship */
INSERT INTO Mentorship (menteeName,menteePhone,mentorName,mentorPhone,skillLearn,skillLevel,startDate,endDate,hasLearnedSkill) VALUES
('Warren Williamson','203-400-5977','Willis Lowe','303-399-2427','Oil Check','expert','2016-10-01','2017-04-02',0),
('Glen Barnett','316-652-4422','Jesse Hodges','540-770-8366','AirFilter Check','expert','2016-11-01','2017-01-19',1),
('Gordon Bishop','216-774-2137','Jesse Hodges','540-770-8366','AirFilter Check','expert','2016-05-03','2016-08-19',1),
('Ernesto Mckinney','671-635-5456','Allan Aguilar','601-743-9810','Timing Check','expert','2016-06-03','2017-02-17',0);


/* Customer Insertion */
INSERT INTO Customer (custID, custEmail, custPhone) VALUES
/* Corporations */
(66534, 'pmutual@gmail.com', '251-546-9442'),
(39641, 'browardtrailers@yahoo.com', '714-546-4478'),
(10479, 'stantoncars@gmail.com', '619-446-8851'),
(83904, 'wford@hotmail.com', '671-925-1352'),
(92667, 'suncoast@icloud.com', '714-653-8008'),
/* Individuals */
(74976, 'sodapoppin@yahoo.com', '960-143-8153'),
(75341, 'shrood@gmail.com', '883-245-5801'),
(17004, 'jasonr@hotmail.com', '754-851-3373'),
(31156, 'imaqtpie@mac.com', '921-383-0224'),
(52018, 'jmorris@msn.com', '696-571-9522'),
/* Prospective Members */
(39964, 'multiplx@mac.com', '102-892-2257'),
(66828, 'bogjobber@yahoo.com', '677-614-8392'),
(65026, 'choset@msn.com', '523-123-5488'),
(73603, 'pedwards@hotmail.com', '490-550-2671'),
(13911, 'research@aol.com', '902-829-2912');




/* ExistingCustomer Insertion */
INSERT INTO ExistingCustomer (custID, dateJoined, referralPoints) VALUES
/* Corporations */
(66534, '2015-01-09', 201),
(39641, '2016-08-22', 227),
(10479, '2016-02-25', 439),
(83904, '2015-09-13', 136),
(92667, '2015-05-18', 122),
/* Individuals */
(74976, '2011-12-26', 102),
(75341, '2012-11-13', 722),
(17004, '2014-04-11', 349),
(31156, '2017-07-09', 631),
(52018, '2015-07-12', 212);




/* Name of Corporations */
INSERT INTO Corporation (custID, corporationName) VALUES
(66534, 'Power Mutual'),
(39641, 'Broward Trailers'),
(10479, 'Stanton Used Cars'),
(83904, 'Waikem Ford'),
(92667, 'Suncoast Inflatables');


/* Addresses of Corporations Insertion*/
INSERT INTO Addresses (custID, address) VALUES
(66534, '123 6th St. Melbourne, FL 32904'),
(39641, '731 Hall Drive Chandler, AZ 85224'),
(10479, '8403 Sunbeam Lane Soddy Daisy, TN 37379'),
(83904, '647 Williams St. Los Banos, CA 93635'),
(92667, '7196 Walt Whitman Ave. West Orange, NJ 07052'),
(92667, '123 6th St. Melbourne, FL 32904'),
(92667, '4 Goldfield Rd. Honolulu, HI 96815'),
(66534, '71 Pilgrim Avenue Chevy Chase, MD 20815'),
(39641, '44 Shirley Ave. West Chicago, IL 60185');


/* Name of Individuals */
INSERT INTO Individual (custID, iFirstName, iLastName, mainAddress) VALUES
(74976, 'Casey', 'Wright', '8336 Aspen Ave. Roanoke, VA 24012'),
(75341, 'Broward', 'Trailers', '409 Lincoln St. North Kingstown, RI 02852'),
(17004, 'Kendra', 'Black', '8389 Pilgrim Drive  El Paso, TX 79930'),
(31156, 'Waikem' , 'Ford', '9320 Hamilton Street  New Orleans, LA 70115'),
(52018, 'Julia', 'Nash', '9923 Maiden Lane Louisville, KY 40207');


/* Premier Members */
INSERT INTO PremierMember (custID, amountSpent) VALUES
(66534, 62),
(74976, 31),
(39641, 13),
(75341, 45);


/* Steady Members */
INSERT INTO SteadyMember (custID, loyaltyPoints) VALUES
(10479, 123),
(17004, 169),
(83904, 82);


/* Prospective Members */
INSERT INTO ProspectiveMember (custID, numOfContacts, status) VALUES
(39964, 2, 'Active'),
(66828, 4, 'Inactive'),
(65026, 6, 'Inactive'),
(73603, 1, 'Active'),
(13911, 9, 'Inactive');


/* Referral */
INSERT INTO Referral (prospectCustID, existCustID, referralDate) VALUES
(31556, 75341, '2017-07-07'),
(92667, 17004, '2015-05-15'),
(52018, 66534, '2015-07-08');


/* Notifications for Corporations */
INSERT INTO Notification (custID, emailTitle, emailDate) VALUES
(66534, 'Thank You for Joining Our Membership!', '2015-01-09'),
(66534, 'Concerning Your Recent Purchase', '2015-02-02'),
(39641, 'Full Details of Being a Premier Member', '2016-08-21'),
(39641, 'Purchase Receipt', '2016-08-26'),
(10479, 'Missing Details', '2016-02-25'),
(10479, 'Special Deal on Your Tires', '2016-05-30'),
(83904, 'Need Vehicle Registration', '2015-09-13'),
(83904, 'Re: Headlights Fix', '2015-10-01'),
(92667, 'More Problems', '2015-05-23'),
(92667, 'Holiday Deals', '2015-12-01'),
/* Notifications for Individuals */
(74976, 'New Suspensions', '2012-01-02'),
(74976, 'Body Kits', '2012-03-04'),
(75341, 'Oil Check Failed', '2012-11-20'),
(75341, 'Regarding Your Past Purchase','2012-11-22'),
(17004, 'Re: Adding in Nitros?', '2014-04-29'),
(17004, 'Re: Adding in Hydraulics?', '2014-05-04'),
(31156, 'Extra Rims', '2017-07-26'),
(31156, 'Re: Broken Window', '2017-08-08'),
(52018, 'Thank You for Joining Our Membership!', '2015-07-12'),
(52018, 'Purchase Receipt', '2015-07-14'),
/* Prospective */
(13911, 'Return to Daves Automotive to get a discount!', '2014-07-14'),
(65026, 'Return to Daves Automotive to get a discount!', '2016-02-12'),
(66828, 'Return to Daves Automotive to get a discount!', '2016-11-21');


/* Vehicles Insertion */
INSERT INTO Vehicle (custID, VIN, model, make, year) VALUES
/* Corporations */
(66534, '1GCNCPEX7BZ268084', 'S2000', 'Honda', 2009),
(39641, '1FUJBBCG51LH58219', 'RX-7', 'Mazda', 2002),
(10479, '1GCDT198X48264146', '300ZX', 'Nissan', 1990),
(83904, '1J4GL48576W272980', '240Z', 'Datsun', 1973),
(92667, '1GBGC34J5JE113221', '240Z', 'Datsun', 1973),
(74976, 'SMT905RN7AT426188', 'Silvia S14', 'Nissan', 1994),
/* Individuals */
(74976, '1J8HR58N76C382503', 'Impreza WRX STI', 'Subaru', 2004),
(75341, '2FZHRJBB6YAB09114', 'Supra', 'Toyota', 1995),
(17004, '1FTRF07W43KA22866', '350Z', 'Nissan', 2006),
(31156, '1FABP2593JW148557', 'AE86', 'Toyota', 1986),
(52018, '1GNCT18Z9R0165241', 'Lancer Evolution', 'Mitsubishi', 2000);


INSERT INTO MaintenanceOrder (orderID, custID,VIN,orderDate,mileage,techName,techPhone) VALUES
(0055, 66534, '1GCNCPEX7BZ268084','2016-08-04',81087,'Marc Prato','361-929-4260'),
(0115, 66534, '1GCNCPEX7BZ268084','2017-11-24',114023,'Marc Prato','361-929-4260'),
(0135, 39641, '1FUJBBCG51LH58219','2017-11-06',106000,'Verna Celestin','402-387-6041'),
(0264, 10479, '1GCDT198X48264146','2017-11-03',174006,'Aline Stfleur','607-898-5061'),
(0463, 10479, '1GCDT198X48264146','2017-08-03',171346,'Toni Ellis','479-518-1668'),
(4683, 83904, '1J4GL48576W272980','2017-11-01',280600,'Barbera Creech','618-231-4989'),
(3457, 92667, '1GBGC34J5JE113221','2017-11-02',264050,'Barbera Creech','618-231-4989'),
(3567, 74976, 'SMT905RN7AT426188','2017-11-02',182054,'Marc Prato','361-929-4260'),
(8065, 74976, '1J8HR58N76C382503','2017-11-07',93000,'Delena Karter','662-452-3157'),
(7896, 75341, '2FZHRJBB6YAB09114','2017-11-08',285926,'Toni Ellis','479-518-1668'),
(4678, 75341, '2FZHRJBB6YAB09114','2017-06-23',272464,'Delena Karter','662-452-3157'),
(2579, 17004, '1FTRF07W43KA22866','2017-11-03',80237,'Marc Prato','361-929-4260'),
(2457, 31156, '1FABP2593JW148557','2017-11-05',122204,'Delena Karter','662-452-3157'),
(5677, 52018, '1GNCT18Z9R0165241','2017-11-05',175642,'Dennis Bush','201-943-4446');




/* Maintenance Package Insertion */
INSERT INTO MaintenancePackage (packageID,model,make,mileage) VALUES
(0000, 'RX-7', 'Mazda', 50000),
(0001, 'RX-7', 'Mazda', 100000),
(0002, 'RX-7', 'Mazda', 150000),
(0100, '240Z', 'Datsun', 50000),
(0101, '240Z', 'Datsun', 100000),
(0102, '240Z', 'Datsun', 150000),
(0200, '300ZX', 'Nissan', 50000),
(0201, '300ZX', 'Nissan', 100000),
(0202, '300ZX', 'Nissan', 150000),
(0210, '350Z', 'Nissan', 50000),
(0211, '350Z', 'Nissan', 100000),
(0212, '350Z', 'Nissan', 150000),
(0220, 'Silvia S14', 'Nissan', 50000),
(0221, 'Silvia S14', 'Nissan', 100000),
(0222, 'Silvia S14', 'Nissan', 150000),
(0300, 'AE86', 'Toyota', 50000),
(0301, 'AE86', 'Toyota', 100000),
(0302, 'AE86', 'Toyota', 150000),
(0310, 'Supra', 'Toyota', 50000),
(0311, 'Supra', 'Toyota', 100000),
(0312, 'Supra', 'Toyota', 150000),
(0400, 'Impreza WRX STI', 'Subaru', 50000),
(0401, 'Impreza WRX STI', 'Subaru', 100000),
(0402, 'Impreza WRX STI', 'Subaru', 150000),
(0500, 'S2000', 'Honda', 50000),
(0501, 'S2000', 'Honda', 100000),
(0502, 'S2000', 'Honda', 150000),
(0600, 'Lancer Evolution', 'Mitsubishi', 50000),
(0601, 'Lancer Evolution', 'Mitsubishi', 100000),
(0602, 'Lancer Evolution', 'Mitsubishi', 150000);


/* ITEM INSERTION */
INSERT INTO Item(itemName,itemManufacturer,itemPrice,itemDescription) VALUES
('Timing Belt', 'WEXCO', 15, 'The part of the car that makes sure that the engine valves open and close at the proper times.'),
('Oil Replacement', 'Pep Boys', 1000, 'Used to allow moving parts of the car to move with minimal friction.'),
('Air filter', 'STRUT LLC', 500, 'A part of the car to make sure clean air runs through the car.'),
('Tire Rotation', 'Pep Boys', 50, 'The performance test that ensures that the tires wear evenly, which prolongs the life of the tires.' ),
('Tire', 'Alliance Tire Company Ltd.', 75, 'The part of the car that allows the car to move.'),
('Voltmeter', 'Pep Boys', 30, 'A tool used to check the voltage of the car battery.'),
('Brake fluid', 'Rudson', 60, 'Fluid used in conjunction with pistons to apply breaks on the vehicle.');


/* MAINTENANCE ITEM INSERTION */
INSERT INTO MaintenanceItem(orderID,itemName,packageID) VALUES
(0055, 'Oil Replacement', 0500),
(0115, 'Tire Rotation', 0500),
(0115, 'Tire', 500),
(0135, 'Air filter', 0001),
(0264, 'Voltmeter', 0202),
(0463, 'Air filter', 0202),
(4683, 'Tire Rotation', 0102),
(3457, 'Oil Replacement', 0102),
(3567, 'Oil Replacement', 0222),
(8065, 'Timing Belt', 0222),
(7896, 'Timing Belt', 0312),
(4678, 'Voltmeter', 0312),
(2579, 'Air filter', 0210),
(2457, 'Oil Replacement', 0301),
(5677, 'Oil Replacement', 0602);


/* CertificationItem INSERTION */
INSERT INTO CertificationItem (mechName, mechPhone, skillName, skillLevel, orderID, itemName) VALUES
('Alan Baker', '626-558-2684', 'AirFilter Check', 'basic', 135, 'Air filter'),
('Ralph Conner', '512-842-2912', 'Oil Check', 'expert', 3457, 'Oil Replacement'),
('Leroy Porter', '430-990-5942', 'Tire Check', 'intermediate', 4683, 'Tire Rotation'),
('Max Curtis', '218-652-2834', 'Battery Check', 'basic', 264, 'Voltmeter'),
('Allan Aguilar', '601-743-9810', 'AirFilter Check', 'intermediate', 463, 'Air filter'),
('Jesse Hodges', '540-770-8366', 'AirFilter Check', 'expert', 2579, 'Air filter'),
('Glen Barnett', '316-652-4422', 'Oil Check', 'intermediate', 3567, 'Oil Replacement'),
('Ernesto Mckinney', '671-635-5456', 'Timing Check', 'basic', 8065, 'Timing Belt'),
('Jesse Hodges','540-770-8366','Battery Check','intermediate', 4678, 'Voltmeter'),
('Otis Cain', '484-245-7699', 'Timing Check', 'basic', 7896, 'Timing Belt'),
('Warren Williamson', '203-400-5977', 'Tire Check', 'expert', 115, 'Tire'),
('Ervin Saunders', '306-695-9768', 'Oil Check', 'intermediate', 55, 'Oil Replacement');