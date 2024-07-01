CREATE TABLE IF NOT EXISTS country (
    id SERIAL PRIMARY KEY,
    countryname VARCHAR(255) NOT NULL
);
select * from country;

CREATE TABLE IF NOT EXISTS CITY(id serial PRIMARY KEY, countryId int not null, cityname varchar(255) not null);
select * from city;

CREATE TABLE MISSIONAPPLICATION (ID SERIAL PRIMARY KEY, MISSIONID INT, USERID INT,APPLIEDDATE DATE, STATUS BOOL,SHEET INT);
SELECT * FROM MISSIONAPPLICATION;

CREATE TABLE IF NOT EXISTS Missions (
    Id SERIAL PRIMARY KEY,
    MissionTitle VARCHAR(255),
    MissionDescription TEXT,
    MissionOrganisationName VARCHAR(255),
    MissionOrganisationDetail TEXT,
    CountryId INT,
    CityId INT,
    StartDate DATE,
    EndDate DATE,
    MissionType VARCHAR(255),
    TotalSheets INT,
    RegistrationDeadLine DATE,
    MissionThemeId VARCHAR(255),
    MissionSkillId VARCHAR(255),
    MissionImages TEXT,
    MissionDocuments TEXT,
    MissionAvilability VARCHAR(255),
    MissionVideoUrl TEXT
);
SELECT * FROM MISSIONS;

CREATE TABLE IF NOT EXISTS MissionSkill (
    Id SERIAL PRIMARY KEY,
    SkillName VARCHAR(255) NOT NULL,
    Status VARCHAR(50) NOT NULL
);
SELECT * FROM MISSIONSKILL;

CREATE TABLE IF NOT EXISTS USERS (
    Id SERIAL PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(50),
    EmailAddress VARCHAR(255) UNIQUE NOT NULL,
    UserType VARCHAR(50),
    Password VARCHAR(255) NOT NULL
);
SELECT * FROM USERS;

CREATE TABLE IF NOT EXISTS UserDetail (
    Id SERIAL PRIMARY KEY,
    UserId INT NOT NULL,
    Name VARCHAR(255),
    Surname VARCHAR(255),
    EmployeeId VARCHAR(100),
    Manager VARCHAR(255),
    Title VARCHAR(255),
    Department VARCHAR(255),
    MyProfile TEXT,
    WhyIVolunteer TEXT,
    CountryId INT,
    CityId INT,
    Avilability VARCHAR(255),
    LinkdInUrl VARCHAR(255),
    MySkills TEXT,
    UserImage TEXT,
    Status BOOLEAN
);
SELECT * FROM USERDETAIL;
CREATE TABLE IF NOT EXISTS UserSkills (
    Id SERIAL PRIMARY KEY,
    Skill VARCHAR(255) NOT NULL,
    UserId INT NOT NULL
);
SELECT * FROM USERSKILLS;