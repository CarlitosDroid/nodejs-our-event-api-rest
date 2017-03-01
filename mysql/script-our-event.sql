/***CREATING ALL TABLES*/
CREATE TABLE EMPLOYEE (
  EmployeeId   INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  FirstName    VARCHAR(40)                    NULL,
  LastName     VARCHAR(40)                    NULL,
  Phone        VARCHAR(20)                    NULL,
  Address      VARCHAR(100)                   NULL,
  City         VARCHAR(30)                    NULL,
  FullName     VARCHAR(100)                   NULL,
  Email        VARCHAR(100)                   NULL,
  Pin          VARCHAR(100)                   NULL,
  CreationDate DATETIME                       NULL,
  EmployeeCode VARCHAR(10) UNIQUE             NOT NULL
)
  ENGINE = INNODB;

/* INSERT DATA */
INSERT INTO EMPLOYEE (FirstName, LastName, Phone, Address, City, FullName, Email, Pin, CreationDate, EmployeeCode)
VALUES ('SYSADMIN', 'SYSADMIN', 945214775, 'Av. Alfonso Ugarte', 'Lima', 'SYSADMIN SYSADMIN', 'sysadmin@gmail.com',
        1, '2011-12-18 13:17:17', 'SYSADMIN');

DROP PROCEDURE IF EXISTS sp_GetEmployee;
DELIMITER //
CREATE PROCEDURE sp_GetEmployee()
  BEGIN
    SELECT * FROM EMPLOYEE;
  END //
DELIMITER ;
/**Drop StoreProcedure**/
CALL sp_GetEmployee();
/******************************************************************/




CREATE TABLE placelocation (
  IdPlace   INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Name         VARCHAR(40)                    NULL,
  Latitud      INT                            NULL,
  Longitud     INT                            NULL,
  CreationDate DATETIME                       NULL
)
  ENGINE = INNODB;

/* INSERT DATA */
INSERT INTO EMPLOYEE (FirstName, LastName, Phone, Address, City, FullName, Email, Pin, CreationDate, EmployeeCode)
VALUES ('SYSADMIN', 'SYSADMIN', 945214775, 'Av. Alfonso Ugarte', 'Lima', 'SYSADMIN SYSADMIN', 'sysadmin@gmail.com',
        1, '2011-12-18 13:17:17', 'SYSADMIN');

INSERT INTO placelocation(Name,Latitud,Longitud,CreationDate)
VALUES('Metro Breña',152503,-124201,'2011-12-18 13:17:17');

INSERT INTO placelocation(Name,Latitud,Longitud,CreationDate)
VALUES('MegaPlaza',15103,-1214534201,'2011-12-18 13:17:17');

INSERT INTO placelocation(Name,Latitud,Longitud,CreationDate)
VALUES('StarBucks',1514503,-12424201,'2011-12-18 13:17:17');

INSERT INTO placelocation(Name,Latitud,Longitud,CreationDate)
VALUES('LandPark',1514503,-124645201,'2011-12-18 13:17:17');

DROP PROCEDURE IF EXISTS sp_GetEmployee;
DELIMITER //
CREATE PROCEDURE sp_GetEmployee()
  BEGIN
    SELECT * FROM EMPLOYEE;
  END //
DELIMITER ;



/**Drop StoreProcedure**/
CALL sp_GetEmployee();
/******************************************************************/
DROP PROCEDURE IF EXISTS sp_GetPlaceLocation;
DELIMITER //
CREATE PROCEDURE sp_GetPlaceLocation()
  BEGIN
    SELECT * FROM placelocation;
  END //
DELIMITER ;

CALL sp_GetPlaceLocation();


DROP PROCEDURE IF EXISTS sp_deletePlaceLocation;
DELIMITER //
CREATE PROCEDURE sp_deletePlaceLocation()
  BEGIN
    DELETE FROM  placelocation;
    WHERE Name = 'MegaPlaza';
END //
DELIMITER ;

CALL sp_deletePlaceLocation();