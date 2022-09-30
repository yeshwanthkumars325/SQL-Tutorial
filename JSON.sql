### SQL with JSON

create database json;

use json;

#create the json table
create table `json_value` (`id` int(11) NOT NULL,
  `values` varchar(5000) NOT NULL);
  

INSERT INTO json_value
(SELECT 1,JSON_OBJECT("name","yeshwanth","age",24));
  
select *from json_value;

INSERT INTO json_value
(SELECT 1,JSON_OBJECT("name","yeshwanth","age",24));
INSERT INTO json_value
(SELECT 2,JSON_OBJECT("Name","Yeshwanth","Age",24 ,"DOB","31-05-1999","Mobile no","7010489565"));
INSERT INTO json_value
(SELECT 3,JSON_OBJECT("Name","Vishal","Age",24 ,"DOB","05-11-1999","Mobile no","7010952505"));
INSERT INTO json_value
(SELECT 4,JSON_OBJECT("Name","Yeshwanth","Age",24 ,"DOB","21-05-2000","Mobile no","9600284214"));


create table `json_value_medium` (`id` int(11) NOT NULL,
  `values` varchar(5000) NOT NULL);

INSERT INTO json_value_medium
(SELECT 1,JSON_OBJECT('PersonalDetails',JSON_ARRAY(JSON_OBJECT("Name","Yeshwanth","Age",24 ,"DOB","31-05-1999","Mobile no","7010489565"))));
INSERT INTO json_value_medium
(SELECT 2,JSON_OBJECT('PersonalDetails',JSON_ARRAY(JSON_OBJECT("Name",
"Vishal","Age",24 ,"DOB","05-11-1999","Mobile no","7010952505"))));
INSERT INTO json_value_medium
(SELECT 3,JSON_OBJECT('PersonalDetails',JSON_ARRAY(JSON_OBJECT("Name","Yeshwanth","Age",24 ,"DOB","21-05-2000","Mobile no","9600284214"))));
INSERT INTO json_value_medium
(SELECT 4,JSON_OBJECT('PersonalDetails',JSON_ARRAY(JSON_OBJECT("Name","Gokul","Age",24 ,"DOB","21-05-2000","Mobile no","9600284214"))));
INSERT INTO json_value_medium
(SELECT 5,JSON_OBJECT('PersonalDetails',JSON_ARRAY(JSON_OBJECT("Name","Kumar","Age",24 ,"DOB","21-06-2000","Mobile no","9600284214"))));
INSERT INTO json_value_medium
(SELECT 6,JSON_OBJECT('PersonalDetails',JSON_ARRAY(JSON_OBJECT("Name","Raj","Age",24 ,"DOB","01-08-2000","Mobile no","9600284214"))));
INSERT INTO json_value_medium
(SELECT 7,JSON_OBJECT('PersonalDetails',JSON_ARRAY(JSON_OBJECT("Name","Yesh","Age",24 ,"DOB","31-03-2009","Mobile no","9600284214"))));
INSERT INTO json_value_medium
(SELECT 8,JSON_OBJECT('PersonalDetails',JSON_ARRAY(JSON_OBJECT("Name","Vish","Age",24 ,"DOB","22-04-2004","Mobile no","9600284214"))));

INSERT INTO json_value_medium
(SELECT 9,
JSON_OBJECT('PersonalDetails',
	JSON_ARRAY(
    JSON_OBJECT("Name","Yeshwanth",
    "Age",24 ,
    "DOB","21-05-2000",
    "Mobile no","9600284214"),
    "ContactDetails",
    JSON_ARRAY(
    JSON_OBJECT("Address","15 sv kovil street",
    "City","chengalpattu" ,
    "State","Tamil Nadu",
    "Country","India"))
    )
    )
    );


select *from json_value_medium;


SELECT JSON_OBJECT(
	'FinalPersonalDetails',
      JSON_ARRAY(
			JSON_OBJECT(
				"Name",REPLACE(JSON_EXTRACT(values, '$.Name'),'"' ,''),
				"DOB",REPLACE(JSON_EXTRACT(values, '$.DOB'),'"' ,''),
				"Age",REPLACE(JSON_EXTRACT(values, '$.Age'),'"' ,''),
				"Mobile no",REPLACE(JSON_EXTRACT(values, '$.Mobile no'),'"' ,''),
				"Address",REPLACE(JSON_EXTRACT(values, '$.Address'),'"' ,'')
				)
				))
			 AS 'Final Personal Details'
FROM 
json_value_medium
WHERE 
id=9;


SELECT JSON_EXTRACT('{"name 1": "boe", "name 2": [1,2]}', '$."name 1"');
SELECT JSON_EXTRACT('{"name1": "boe", "name2": [1,2]}', '$.*');
SELECT JSON_EXTRACT('{"name 1": "boe", "name 2": [1,2]}', '$."name 1"');


SELECT JSON_OBJECT('name', 'Jim', 'age', 20) as json;
SELECT JSON_OBJECT('name', 'Jim', 'age', 20, 'name', 'Tim') as json;
SELECT JSON_OBJECT(
        'name',
        'Tim',
        'age',
        20,
        'friend',
        JSON_OBJECT('name', 'Jim', 'age', 20),
        'hobby',
        JSON_ARRAY('games', 'sports')
    ) AS object;
    
SELECT JSON_OBJECT("name", "Homer", "type","test");




