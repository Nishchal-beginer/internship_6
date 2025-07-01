create database Library;

use Library;

CREATE TABLE seekers (
    Id INT,
    Name VARCHAR(20),
    Mobile_Num INT,
    Date_Of_Join INT
);

insert into seekers 
(Id , Name , Mobile_Num , Date_Of_Join)
VALUES
(100 , "Nishchal", 12345678 , 01062025),
(101 , "Vikrant", 123478 , 11072025),
(102 , "Shushma", 125678 , 21072025),
(103 , "Arti", 1234678 , 01052025),
(104 , "Ravi", 15678 , 11062025),
(105 , "Pyush", 1245678 , 01042025),
(106 , "Akul", 125678 , 11032025),
(107 , "Aditi", 125678 , 03072025),
(108 , "Usha", 12678 , 04042025),
(109 , "Smarth", 123478 , 02062025),
(110 , "Pankaj", 123458 , 01012025);

SET SQL_SAFE_UPDATES =0;

DELETE FROM seekers 
WHERE
    name IS NULL;

SELECT 
    *
FROM
    seekers;

SELECT 
    name
FROM
    seekers
WHERE
    id > 103;

Alter table seekers
add column city VARCHAR(20) default "Jammu";

alter table seekers 
drop column city ;

alter table seekers
modify Id INT Primary key ;

DELETE FROM seekers 
WHERE
    city = 'Jammu';

UPDATE seekers 
SET 
    city = 'Samba'
WHERE
    id % 2 = 0;

UPDATE seekers 
SET 
    city = 'Kathua'
WHERE
    id = 103 AND 108;


SELECT 
    name
FROM
    (SELECT 
        *
    FROM
        seekers
    WHERE
        city = 'Jammu') AS Locals;
        
SELECT 
    id
FROM
    (SELECT 
        *
    FROM
        seekers
    WHERE
        Date_Of_Join < 01032024) AS Early_admits;

SELECT 
    *
FROM
    seekers
WHERE
    EXISTS( SELECT 
            id
        FROM
            seekers
        WHERE
            city = 'Reasi');
