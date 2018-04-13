CREATE TABLE Customer (
        custID varchar(50) NOT NULL,
        custEmail varchar(50) NOT NULL,
        custPhone varchar(50) NOT NULL,
        CONSTRAINT Customer_PK PRIMARY KEY (custID)
);


CREATE TABLE ExistingCustomer (
        custID varchar(50) NOT NULL,
        dateJoined DATE,
        referralPoints int DEFAULT NULL,
        CONSTRAINT ExistingCustomer_PK PRIMARY KEY (custID),
        CONSTRAINT ExistingCustomer_FK FOREIGN KEY (custID) REFERENCES Customer (custID)
);


CREATE TABLE Individual (
        custID varchar(50) NOT NULL,
        iFirstName varchar (50) NOT NULL,
        iLastName varchar (50) NOT NULL,
        mainAddress varchar(50) NOT NULL,
        CONSTRAINT Individual_PK PRIMARY KEY (custID),
        CONSTRAINT Individual_FK FOREIGN KEY (custID) REFERENCES Customer (custID)
);


CREATE TABLE Corporation (
        custID varchar(50) NOT NULL,
        corporationName varchar(50) NOT NULL,
        CONSTRAINT Corporation_PK PRIMARY KEY (custID),
        CONSTRAINT Corporation_FK FOREIGN KEY (custID) REFERENCES Customer (custID)
);


CREATE TABLE Addresses (
        custID varchar(50) NOT NULL,
        address varchar(50) NOT NULL,
        CONSTRAINT Addresses_PK PRIMARY KEY (custID, address),
        CONSTRAINT Addresses_FK FOREIGN KEY (custID) REFERENCES Corporation (custID)
);


CREATE TABLE PremierMember (
        custID varchar(50) NOT NULL,
        amountSpent int DEFAULT NULL,
        CONSTRAINT PremierMember_PK PRIMARY KEY (custID),
        CONSTRAINT PremierMember_FK FOREIGN KEY (custID) REFERENCES ExistingCustomer (custID)
);


CREATE TABLE SteadyMember (
        custID varchar(50) NOT NULL,
        loyaltyPoints int DEFAULT NULL,
        CONSTRAINT SteadyMember_PK PRIMARY KEY (custID),
        CONSTRAINT SteadyMember_FK FOREIGN KEY (custID) REFERENCES Customer (custID)
);


CREATE TABLE ProspectiveMember (
        custID varchar(50) NOT NULL,
        numOfContacts int,
        status varchar(50) NOT NULL,
        CONSTRAINT ProspectiveMember_PK PRIMARY KEY (custID),
        CONSTRAINT ProspectiveMember_FK FOREIGN KEY (custID) REFERENCES Customer (custID)
);


CREATE TABLE Notification (
        custID varchar(50) NOT NULL,
        emailTitle varchar(50) NOT NULL,
        emailDate DATE NOT NULL,
        CONSTRAINT Notification_PK PRIMARY KEY (custID, emailTitle, emailDate),
        CONSTRAINT Notification_FK FOREIGN KEY (custID) REFERENCES Customer (custID)
);


CREATE TABLE Referral (
        prospectCustID varchar(50) NOT NULL,
        existCustID varchar (50) NOT NULL,
        referralDate DATE NOT NULL,
        CONSTRAINT Referral_PK PRIMARY KEY (prospectCustID),
        CONSTRAINT Referral_FK FOREIGN KEY (existCustID) REFERENCES ExistingCustomer (custID)
);


CREATE TABLE Vehicle (
        custID varchar(50) NOT NULL,
        VIN varchar(50) NOT NULL,
        model varchar(50) NOT NULL,
        make varchar(50) NOT NULL,
        year varchar(50) NOT NULL,
        CONSTRAINT Vehicle_PK PRIMARY KEY (custID, VIN),
        CONSTRAINT Vehicle_FK FOREIGN KEY (custID) REFERENCES Customer (custID)
);


CREATE TABLE Employee (
        empName varchar(50) NOT NULL,
        empPhone varchar(50) NOT NULL,
        empEmail varchar(50) NOT NULL,
        CONSTRAINT Employee_PK PRIMARY KEY (empName, empPhone)
);


CREATE TABLE TimeCard (
        empName varchar(50) NOT NULL,
        empPhone varchar(50) NOT NULL,
        startPunch TIME NOT NULL,
        endPunch TIME NOT NULL,
        shiftDate DATE NOT NULL,
        CONSTRAINT TimeCard_PK PRIMARY KEY (startPunch, endPunch, shiftDate),
        CONSTRAINT TimeCard_FK FOREIGN KEY (empName, empPhone) REFERENCES Employee (empName, empPhone)
);


CREATE TABLE Technician (
        techName varchar(50) NOT NULL,
        techPhone varchar(50) NOT NULL,
        CONSTRAINT Technician_PK PRIMARY KEY (techName, techPhone),
        CONSTRAINT Technician_FK FOREIGN KEY (techName, techPhone) REFERENCES Employee (empName, empPhone)
);


CREATE TABLE Mechanic (
        mechName varchar(50) NOT NULL,
        mechPhone varchar(50) NOT NULL,
        CONSTRAINT Mechanic PRIMARY KEY (mechName, mechPhone),
        CONSTRAINT Mechanic FOREIGN KEY (mechName, mechPhone) REFERENCES Employee (empName, empPhone)
);


CREATE TABLE Skill (
        skillName varchar(50) NOT NULL,
        skillLevel varchar(50) NOT NULL,
        CONSTRAINT Skill_PK PRIMARY KEY (skillName, skilLLevel)
);


CREATE TABLE SkillCertification(
        mechName varchar(50) NOT NULL,
        mechPhone varchar(50) NOT NULL,
        skillName varchar(50) NOT NULL,
        skillLevel varchar(50) NOT NULL,
        dateOfCertification DATE NOT NULL,
        CONSTRAINT SkillCertification_PK PRIMARY KEY (mechName, mechPhone, skillName, skillLevel),
        CONSTRAINT SkillCertification_FK1 FOREIGN KEY (mechName, mechPhone) REFERENCES Mechanic (mechName, mechPhone),
        CONSTRAINT SKillCertification_FK2 FOREIGN KEY (skillName, skillLevel) REFERENCES Skill (skillName, skillLEvel)
);


CREATE TABLE Mentorship (
        menteeName varchar(50) NOT NULL,
        menteePhone varchar(50) NOT NULL,
        mentorName varchar(50) NOT NULL,
        mentorPhone varchar(50) NOT NULL,
        skillLearn varchar(50) NOT NULL,
        skillLevel varchar(50) NOT NULL,
        startDate DATE NOT NULL,
        endDate DATE NOT NULL,
        hasLearnedSkill boolean DEFAULT FALSE,
        CONSTRAINT Mentorship_PK PRIMARY KEY (menteeName, menteePhone, mentorName, mentorPhone, skillLearn, skillLevel, startDate),
        CONSTRAINT Mentorship_FK1 FOREIGN KEY (menteeName, menteePhone) REFERENCES Mechanic (mechName, mechPhone),
        CONSTRAINT Mentorship_FK2 FOREIGN KEY (mentorName, mentorPhone, skillLearn, skillLevel) REFERENCES SkillCertification (mechName, mechPhone, skillName, skillLevel)
);


CREATE TABLE MaintenanceOrder (
        orderID varchar(50) NOT NULL,
        custID varchar(50) NOT NULL,
        VIN varchar(50) NOT NULL,
        orderDate DATE NOT NULL,
        mileage int NOT NULL,
        techName varchar(50) NOT NULL,
        techPhone varchar(50) NOT NULL,
        CONSTRAINT MaintenanceOrder_PK PRIMARY KEY (orderID),
        CONSTRAINT MaintenanceOrder_CK UNIQUE KEY (custID, VIN, orderDate),
        CONSTRAINT MaintenanceOrder_FK1 FOREIGN KEY (custID, VIN) REFERENCES Vehicle (custID, VIN),
        CONSTRAINT MaintenanceOrder_FK2 FOREIGN KEY (techName, techPhone) REFERENCES Technician (techName, techPhone)
);


CREATE TABLE MaintenancePackage (
        packageID varchar(50) NOT NULL,
        model varchar(50) NOT NULL,
        make varchar(50) NOT NULL,
        mileage int NOT NULL,
        CONSTRAINT MaintenancePackage_PK PRIMARY KEY (packageID)
);


CREATE TABLE Item (
        itemName varchar(50) NOT NULL,
        itemManufacturer varchar(50) NOT NULL,
        itemPrice varchar(50) NOT NULL,
        itemDescription varchar(100) NOT NULL,
        CONSTRAINT Item_PK PRIMARY KEY (itemname)
);


CREATE TABLE MaintenanceItem (
        orderID varchar(50) NOT NULL,
        itemName varchar(50) NOT NULL,
        packageID varchar(50),
        CONSTRAINT MaintenanceItem_PK PRIMARY KEY (orderID, itemName),
        CONSTRAINT MaintenanceItem_FK1 FOREIGN KEY (orderID) REFERENCES MaintenanceOrder (orderID),
        CONSTRAINT MaintenanceItem_FK2 FOREIGN KEY (packageID) REFERENCES MaintenancePackage (packageID),
        CONSTRAINT MaintenanceItem_FK3 FOREIGN KEY (itemName) REFERENCES Item (itemName)
);


CREATE TABLE CertificationItem (
        mechName varchar(50) NOT NULL,
        mechPhone varchar(50) NOT NULL,
        skillName varchar(50) NOT NULL,
        skillLevel varchar(50) NOT NULL,
        orderID varchar(50) NOT NULL,
        itemName varchar(50) NOT NULL,
        CONSTRAINT CertificationItem_PK PRIMARY KEY (mechName, mechPhone, skillName, skillLevel, orderID, itemName),
        CONSTRAINT CertificationItem_FK1 FOREIGN KEY (mechName, mechPhone, skillName, skillLevel) REFERENCES SkillCertification (mechName, mechPhone, skillName, skillLevel),
        CONSTRAINT CertificationItem_FK2 FOREIGN KEY (orderID, itemName) REFERENCES MaintenanceItem (orderID, itemName)
);


CREATE TABLE Item_Skill (
        skillName varchar(50) NOT NULL,
        skillLevel varchar(50) NOT NULL,
        itemName varchar(50) NOT NULL,
        CONSTRAINT Item_Skill_PK PRIMARY KEY (skillName, skillLevel, itemName),
        CONSTRAINT Item_Skill_FK1 FOREIGN KEY (skillName, skillLevel) REFERENCES Skill (skillName, skillLevel),
        CONSTRAINT Item_Skill_FK2 FOREIGN KEY (itemName) REFERENCES Item (itemName)
);