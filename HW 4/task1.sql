CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;


CREATE TABLE petPet (
  petname VARCHAR(20) PRIMARY KEY ,
  owner VARCHAR (45) NOT NULL,
  species VARCHAR(45) NOT NULL,
  gender ENUM('M', 'F'),
  birth DATE,
  death DATE
);

CREATE TABLE petEvent (
  petname VARCHAR(20) NOT NULL,
  eventdate DATE PRIMARY KEY,
  eventtype VARCHAR(15),
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
);

SHOW tables;
DESC petPet;
DESC petEvent;