use master
go
drop database if exists college
go
create database college
go
use college
go


create table grades (
grade decimal(2,1) primary key);

insert into grades values (2);
insert into grades values (3);
insert into grades values (3.5);
insert into grades values (4);
insert into grades values (4.5);
insert into grades values (5);
insert into grades values (5.5);
insert into grades values (6);

create table groups (
group_no char(10) primary key);

insert into groups values ('DZIe1001');
insert into groups values ('Dtie1002');
insert into groups values ('DZIe1003');
insert into groups values ('DZie1004');
insert into groups values ('DMIe1011');
insert into groups values ('DGIe1012');
insert into groups values ('DMIe1013');
insert into groups values ('DMIe1014');
insert into groups values ('ZSIe2001');
insert into groups values ('ZZIe2002');
insert into groups values ('ZZie2003');
insert into groups values ('ZZIe2004');
insert into groups values ('ZMie2011');
insert into groups values ('ZMIe2012');
insert into groups values ('ZTIe2013');
insert into groups values ('ZMIe2014');
insert into groups values ('DZZa3001');
insert into groups values ('DZza3002');
insert into groups values ('DZZa3003');
insert into groups values ('DMza3011');
insert into groups values ('DmZa3012');
insert into groups values ('DMza3013');
insert into groups values ('DwZa3014');

create table acad_positions (
acad_position varchar(40) primary key,
overtime_rate smallmoney not null);

insert into acad_positions values ('master','40');
insert into acad_positions values ('doctor','45');
insert into acad_positions values ('associate professor','50');
insert into acad_positions values ('habilitated doctor','60');
insert into acad_positions values ('habilitated associate professor','65');
insert into acad_positions values ('full professor','80');

create table employees (
employee_id int identity primary key,
surname varchar(30) not null,
first_name varchar(25) not null,
NIP char(13),
PESEL char(11));

set identity_insert employees on;
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (1, 'Smith','Rebecca','231-190-76-21','69101223456');
insert into employees (employee_id, surname, first_name, NIP) 
values (2, 'Jones','Harry','190-120-67-12');
insert into employees (employee_id, surname, first_name, PESEL) 
values (3, 'Williams','Oliver','71110212345');
insert into employees (employee_id, surname, first_name, PESEL) 
values (4, 'Taylor','Lily','76032390876');
insert into employees (employee_id, surname, first_name, NIP) 
values (5, 'Brown','Jack','123-123-12-12');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (6, 'Davis','Charlie','876-222-31-34', '81092309213');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (7, 'Taylor','Lily','230-302-21-48','74052390852');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (8, 'Evans','Thomas','876-297-86-54','82120927109');
insert into employees (employee_id, surname, first_name, PESEL) 
values (9, 'Smith','Harry','79021896549');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (10, 'Wilson','Jacob','210-387-65-12','65073092711');
insert into employees (employee_id, surname, first_name, PESEL) 
values (11, 'Craven','Lily','81081721785');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (12, 'Brown','Jacob','937-109-29-09','58022397463');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (13, 'Evans','Oliver','287-090-21-23','71012409212');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (14, 'Johnson','Emma','277-099-12-34','87043098777');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (15, 'Robinson','James','266-099-11-22','84071722567');
insert into employees (employee_id, surname, first_name) 
values (16, 'Davis','Charlie');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (17, 'Robinson','Grace','211-009-21-45','67012398876');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (18, 'Thompson','William','767-090-63-21','71022345533');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (19, 'Wright','Katie','756-201-09-09','64081212432');
insert into employees (employee_id, surname, first_name, PESEL) 
values (20, 'Walker','Sophia','63091922309');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (21, 'Robinson','Grace','876-098-19-09','60010804411');
insert into employees (employee_id, surname, first_name, NIP) 
values (22, 'Evans','Dylan','878-210-09-65');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (23, 'Walker','Amy','952-065-18-32','62040925511');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (24, 'Craven','Lucas','266-065-26-12','64041688256');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (25, 'Davies','Katie','267-376-73-76','60022102999');
insert into employees (employee_id, surname, first_name) 
values (26, 'Jones','Harry');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (27, 'Jones','Rebecca','344-987-23-22','60110912211');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (28, 'Wright','Megan','275-388-09-12','70080821675');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (29, 'White','Henry','622-090-21-21','70041209872');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (30, 'Robinson','Harry','438-976-34-09','60020398234');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (31, 'White','Ryan','768-090-82-11','60070920076');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (32, 'Davies','Layla','277-345-21-87','61101906677');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (33, 'Davies','Layla','378-098-28-00','69110202299');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (34, 'Davies','Edward','290-223-07-36','61102309887');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (35, 'Jones','Lily','905-047-00-33','70022309900');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (36, 'Edwards','Molly','450-545-65-09','60022309564');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (37, 'Edwards','John','785-290-35-20','62121902554');
insert into employees (employee_id, surname, first_name, NIP) 
values (38, 'Thompson','Sophia','879-098-36-36');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (39, 'Evans','Michael','870-098-36-44','60082793322');
insert into employees (employee_id, surname, first_name, NIP, PESEL) 
values (40, 'Green','Tommy','370-287-36-62','75112081338');
insert into employees (employee_id, surname, first_name, NIP) 
values (41, 'Hall','Elizabeth','720-618-27-75');
insert into employees (employee_id, surname, first_name, PESEL) 
values (42, 'Brown','John','69031493209');
set identity_insert employees off;

create table departments (
department varchar(100) primary key);

insert into departments values
('Department of Economics'),
('Department of Informatics'),
('Department of Mathematics'),
('Department of Statistics'),
('Department of History'),
('Department of Geography'),
('Institute of Foreign Languages'),
('Department of Management'),
('Department of Physics'),
('Department of Foreign Affairs'),
('Institute of Teaching Methods');

create table lecturers (
lecturer_id int primary key,
acad_position varchar(40),
department varchar(100) not null,
foreign key (acad_position) references acad_positions 
on delete no action on update cascade,
foreign key (lecturer_id) references employees (employee_id) on delete cascade,
foreign key (department) references departments (department) on delete no action on update cascade
);

insert into lecturers values (1, 'doctor', 'Department of Mathematics');
insert into lecturers values (2, 'associate professor', 'Department of Informatics');
insert into lecturers values (3, 'doctor', 'Department of History');
insert into lecturers values (4, 'master', 'Department of Economics');
insert into lecturers values (5, 'associate professor', 'Department of Foreign Affairs');
insert into lecturers (lecturer_id, department) values (7, 'Department of Informatics');
insert into lecturers values (8, 'master', 'Department of Statistics');
insert into lecturers values (11, 'doctor', 'Department of Informatics');
insert into lecturers values (12, 'full professor', 'Department of Economics');
insert into lecturers (lecturer_id, department) values (14, 'Department of Statistics');
insert into lecturers values (15, 'master', 'Department of Informatics');
insert into lecturers values (17, 'associate professor', 'Department of Statistics');
insert into lecturers values (18, 'doctor', 'Department of Informatics');
insert into lecturers values (19, 'doctor', 'Department of Geography');
insert into lecturers values (21, 'full professor', 'Department of History');
insert into lecturers values (22, 'associate professor', 'Department of Geography');
insert into lecturers values (24, 'full professor', 'Department of Informatics');
insert into lecturers values (25, 'associate professor', 'Department of Statistics');
insert into lecturers values (26, 'doctor', 'Department of History');
insert into lecturers values (27, 'associate professor', 'Department of Geography');
insert into lecturers values (29, 'doctor', 'Department of Informatics');
insert into lecturers (lecturer_id, department) values (30, 'Department of History');
insert into lecturers values (32, 'full professor', 'Department of Mathematics');
insert into lecturers values (35, 'master', 'Institute of Foreign Languages');
insert into lecturers values (36, 'doctor', 'Department of Mathematics');
insert into lecturers values (37, 'associate professor', 'Department of Statistics');
insert into lecturers values (39, 'full professor', 'Department of Geography');
insert into lecturers (lecturer_id, department) values (41, 'Department of Statistics');

create table students (
student_id int identity primary key,
surname varchar(30) not null,
first_name varchar(25),
date_of_birth date,
group_no char(10),
foreign key (group_no) references groups
on delete no action on update cascade
);

set identity_insert students on;
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (1, 'Bowen', 'Harry', '20001027', 'DMIe1011');
insert into students (student_id, surname, first_name)
values (2, 'Palmer', 'John');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (3, 'Hunt', 'Melissa', '19781018', 'DMIe1011');
insert into students (student_id, surname, first_name, group_no)
values (4, 'Matthews', 'Amy', 'DMIe1011');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (5, 'Mills', 'Laila', '19790311', 'ZZIe2002');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (6, 'Holmes', 'Ben', '19820621', 'DMIe1011');
insert into students (student_id, surname, first_name, date_of_birth)
values (7, 'Webb', 'Oliver', '19861123');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (8, 'Rogers', 'Frederick', '19900314', 'DMIe1014');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (9, 'Gibson', 'Robert', '19921021', 'ZZIe2002');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (10, 'Lancaster', 'Katie', '19870821', 'DMZa3013');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (11, 'Hunt', 'Melissa', '19900130', 'ZMIe2011');
insert into students (student_id, surname, first_name, date_of_birth)
values (12, 'Palmer', 'John', '19891028');
insert into students (student_id, surname, first_name, date_of_birth)
values (13, 'Owen', 'Layla', '20010620');
insert into students (student_id, surname, first_name, group_no)
values (14, 'Gibson', 'Laila', 'ZMIe2014');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (15, 'Holmes', 'Ben', '19900330', 'ZZIe2003');
insert into students (student_id, surname, first_name)
values (16, 'Powell', 'Rebecca');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (17, 'Chapman', 'Grace', '19880831', 'DMZa3012');
insert into students (student_id, surname, first_name, group_no)
values (18, 'Mason', 'Rebecca', 'ZMIe2012');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (19, 'Russell', 'Harry', '19850122', 'DZZa3001');
insert into students (student_id, surname, first_name, date_of_birth)
values (20, 'Foster', 'John', '19880402');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (21, 'Fisher', 'Katie', '19900422', 'ZMIe2011');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (22, 'Mason', 'Rebecca', '19881210', 'DMZa3012');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (23, 'Mason', 'Ben', '20000718', 'ZZIe2002');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (24, 'Wilkinson', 'Maria', '19910321', 'ZMIe2011');
insert into students (student_id, surname, first_name, date_of_birth)
values (25, 'Ellis', 'Taylor', '19880212');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (26, 'Powell', 'Katie', '20010120', 'ZZIe2002');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (27, 'Fisher', 'Elliot', '20010130', 'ZMIe2014');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (28, 'Fisher', 'Lara', '19900221', 'ZMIe2011');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (29, 'Procter', 'Laila', '19880718', 'DMIe1011');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (30, 'Lancaster', 'Harry', '19870321', 'DMIe1011');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (31, 'Craven', 'John', '19880221', 'DZIe1003');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (32, 'Cox', 'Megan', '19900430', 'ZZIe2002');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (33, 'Bowen', 'Charlie', '20000627', 'DZIe1003');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (34, 'Mason', 'Gabriel', '19990422', 'DMIe1013');
insert into students (student_id, surname, first_name, date_of_birth, group_no)
values (35, 'Fisher', 'Elliot', '19980719', 'DMIe1013');
set identity_insert students off;

create table tuition_fees (
payment_id int identity primary key,
student_id int not null,
fee_amount smallmoney not null,
date_of_payment date not null default current_timestamp,
constraint rtfs foreign key (student_id) references students (student_id) 
on delete no action on update no action);

set identity_insert tuition_fees on;
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (1, 7, 2100, '20180922');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (2, 11, 1500, '20180922');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (3, 6, 600, '20180924');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (4, 26, 1450, '20180925');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (5, 31, 2300, '20181015');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (6, 17, 950, '20181016');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (7, 22, 1230, '20181019');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (8, 16, 1300, '20181019');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (9, 26, 450, '20181019');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (10, 6, 450, '20181019');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (11, 12, 1230, '20181020');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (12, 18, 850, '20181020');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (13, 7, 490, '20181020');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (14, 22, 890, '20181022');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (15, 31, 1200, '20181022');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (16, 25, 400, '20181023');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (17, 17, 1700, '20181025');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (18, 12, 300, '20181025');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (19, 16, 1500, '20181025');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (20, 19, 250, '20181026');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (21, 23, 1100, '20181026');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (22, 12, 450, '20181026');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (23, 7, 720, '20181028');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (24, 12, 620, '20181028');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (25, 22, 1830, '20181030');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (26, 17, 200, '20181030');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (27, 19, 2100, '20181030');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (28, 23, 1700, '20181030');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (29, 2, 450, '20181030');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (30, 5, 1100, '20181102');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (31, 16, 800, '20181102');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (32, 6, 670, '20181102');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (33, 16, 480, '20181102');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (34, 24, 920, '20181102');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (35, 32, 1300, '20181104');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (36, 16, 700, '20181108');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (37, 21, 1450, '20181108');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (38, 31, 1210, '20181109');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (39, 24, 200, '20181109');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (40, 33, 1700, '20181109');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (41, 11, 1600, '20181110');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (42, 25, 1670, '20181117');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (43, 4, 2100, '20181123');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (44, 14, 820, '20181123');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (45, 19, 620, '20181125');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (46, 21, 360, '20181127');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (47, 32, 600, '20181130');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (48, 15, 340, '20181130');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (49, 22, 670, '20181130');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (50, 16, 430, '20181212');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (51, 26, 1600, '20181214');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (52, 3, 210, '20181214');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (53, 16, 460, '20181214');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (54, 22, 580, '20181216');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (55, 18, 1280, '20181216');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (56, 21, 630, '20181219');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (57, 27, 1450, '20191023');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (58, 8, 370, '20191025');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (59, 1, 1300, '20191026');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (60, 13, 530, '20191106');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (61, 8, 290, '20191107');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (62, 22, 1350, '20191107');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (63, 27, 520, '20191109');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (64, 1, 370, '20191112');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (65, 22, 1320, '20191115');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (66, 27, 450, '20191202');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (67, 32, 1320, '20191206');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (68, 8, 1510, '20191207');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (69, 24, 1180, '20191209');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (70, 18, 670, '20191209');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (71, 25, 1760, '20191212');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (72, 17, 1350, '20191212');
insert into tuition_fees (payment_id, student_id, fee_amount, date_of_payment)
values (73, 27, 270, '20191212');
set identity_insert tuition_fees off;

create table modules (
module_id int identity primary key,
module_name varchar(50) unique not null,
no_of_hours tinyint not null,
lecturer_id int,
preceding_module int references modules (module_id),
department varchar(100) not null,
foreign key (lecturer_id) references lecturers
on delete no action on update no action,
foreign key (department) references departments
on delete no action on update cascade,
check (no_of_hours <= 60)
);

set identity_insert modules on
insert into modules (module_id, module_name, no_of_hours, lecturer_id, department)
values (1, 'Economics', 30, 4, 'Department of Economics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, department)
values (2, 'Information Technology', 30, 2, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (3, 'Operational systems', 30, 4, 2, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, department)
values (4, 'Mathematics', 15, 'Department of Mathematics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (5, 'Statistics', 30, 30, 4, 'Department of Statistics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, department)
values (6, 'Ancient history', 12, 26, 'Department of History');
insert into modules (module_id, module_name, no_of_hours, department)
values (7, 'Geography', 30, 'Department of Geography');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (8, 'Advanced Statistics', 9, 32, 5, 'Department of Statistics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (9, 'Econometrics', 45, 25, 8, 'Department of Statistics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (10, 'Computer programming', 30, 24, 3, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (11, 'Databases', 30, 2, 2, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (12, 'Mathematics II', 15, 32, 4, 'Department of Mathematics');
insert into modules (module_id, module_name, no_of_hours, preceding_module, department)
values (13, 'Theory of probability', 15, 12, 'Department of Mathematics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (14, 'Contemporary history', 14, 21, 6, 'Department of History');
insert into modules (module_id, module_name, no_of_hours, preceding_module, department)
values (15, 'Advanced databases', 15, 11, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (16, 'Computer networks', 12, 15, 3, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, department)
values (17, 'Foreign language', 30, 8, 'Institute of Foreign Languages');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (18, 'Web applications', 15, 26, 11, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, department)
values (19, 'Management', 15, 29, 'Department of Management');
insert into modules (module_id, module_name, no_of_hours, preceding_module, department)
values (20, 'Computer programming II', 30, 10, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (21, 'Computer network devices', 10, 25, 16, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, preceding_module, department)
values (22, 'Economics II', 30, 1, 'Department of Economics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (23, 'Macroeconomics', 15, 26, 1, 'Department of Economics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (24, 'Microeceonomics', 30, 26, 1, 'Department of Economics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (25, 'Windows server', 12, 8, 3, 'Department of Informatics');
insert into modules (module_id, module_name, no_of_hours, lecturer_id, preceding_module, department)
values (26, 'Windows server services', 15, 8, 25, 'Department of Informatics');
set identity_insert modules off

create table students_modules (
student_id int not null,
module_id int not null,
planned_exam_date date,
primary key (student_id, module_id),
foreign key (module_id) references modules on delete no action,
foreign key (student_id) references students on delete cascade
);

insert into students_modules (student_id, module_id) values(2,1);
insert into students_modules (student_id, module_id) values(3,2);
insert into students_modules (student_id, module_id) values(1,2);
insert into students_modules (student_id, module_id, planned_exam_date) values(2,3, '20180321');
insert into students_modules (student_id, module_id) values(6,4);
insert into students_modules (student_id, module_id) values(2,4);
insert into students_modules (student_id, module_id, planned_exam_date) values(32,12,'20180523');
insert into students_modules (student_id, module_id, planned_exam_date) values(12,21,'20180916');
insert into students_modules (student_id, module_id) values(26,19);
insert into students_modules (student_id, module_id) values(29,6);
insert into students_modules (student_id, module_id) values(12,7);
insert into students_modules (student_id, module_id) values(12,9);
insert into students_modules (student_id, module_id) values(21,19);
insert into students_modules (student_id, module_id) values(3,4);
insert into students_modules (student_id, module_id, planned_exam_date) values(3,8,'20181013');
insert into students_modules (student_id, module_id) values(24,16);
insert into students_modules (student_id, module_id) values(20,2);
insert into students_modules (student_id, module_id, planned_exam_date) values(2,5,'20181023');
insert into students_modules (student_id, module_id) values(4,12);
insert into students_modules (student_id, module_id) values(23,18);
insert into students_modules (student_id, module_id) values(21,6);
insert into students_modules (student_id, module_id) values(18,19);
insert into students_modules (student_id, module_id) values(2,9);
insert into students_modules (student_id, module_id, planned_exam_date) values(1,14,'20181104');
insert into students_modules (student_id, module_id) values(2,13);
insert into students_modules (student_id, module_id) values(1,21);
insert into students_modules (student_id, module_id) values(17,12);
insert into students_modules (student_id, module_id, planned_exam_date) values(17,8,'20181107');
insert into students_modules (student_id, module_id, planned_exam_date) values(19,3,'20180321');
insert into students_modules (student_id, module_id) values(1,6);
insert into students_modules (student_id, module_id) values(16,2);
insert into students_modules (student_id, module_id, planned_exam_date) values(18,3,'20180321');
insert into students_modules (student_id, module_id) values(29,15);
insert into students_modules (student_id, module_id) values(33,4);
insert into students_modules (student_id, module_id, planned_exam_date) values(9,3,'20180321');
insert into students_modules (student_id, module_id) values(4,6);
insert into students_modules (student_id, module_id) values(4,13);
insert into students_modules (student_id, module_id) values(18,2);
insert into students_modules (student_id, module_id) values(1,12);
insert into students_modules (student_id, module_id) values(16,4);
insert into students_modules (student_id, module_id) values(8,10);
insert into students_modules (student_id, module_id) values(2,21);
insert into students_modules (student_id, module_id) values(21,14);
insert into students_modules (student_id, module_id) values(18,12);
insert into students_modules (student_id, module_id) values(10,11);
insert into students_modules (student_id, module_id) values(7,22);
insert into students_modules (student_id, module_id) values(17,21);
insert into students_modules (student_id, module_id) values(11,1);
insert into students_modules (student_id, module_id) values(14,2);
insert into students_modules (student_id, module_id) values(17,20);
insert into students_modules (student_id, module_id, planned_exam_date) values(29,3,'20180321');
insert into students_modules (student_id, module_id) values(26,6);
insert into students_modules (student_id, module_id) values(26,20);
insert into students_modules (student_id, module_id) values(24,1);
insert into students_modules (student_id, module_id) values(26,16);
insert into students_modules (student_id, module_id) values(8,9);
insert into students_modules (student_id, module_id) values(8,12);
insert into students_modules (student_id, module_id) values(9,21);
insert into students_modules (student_id, module_id) values(9,12);
insert into students_modules (student_id, module_id) values(12,13);
insert into students_modules (student_id, module_id) values(15,12);
insert into students_modules (student_id, module_id) values(15,13);
insert into students_modules (student_id, module_id, planned_exam_date) values(14,3,'20180321');
insert into students_modules (student_id, module_id) values(12,11);
insert into students_modules (student_id, module_id) values(16,8);
insert into students_modules (student_id, module_id) values(8,21);
insert into students_modules (student_id, module_id) values(12,5);
insert into students_modules (student_id, module_id) values(8,17);
insert into students_modules (student_id, module_id) values(9,9);
insert into students_modules (student_id, module_id, planned_exam_date) values(3,3,'20180321');
insert into students_modules (student_id, module_id) values(11,19);
insert into students_modules (student_id, module_id, planned_exam_date) values(10,3,'20180321');
insert into students_modules (student_id, module_id) values(10,7);
insert into students_modules (student_id, module_id) values(12,12);
insert into students_modules (student_id, module_id) values(10,13);
insert into students_modules (student_id, module_id) values(14,21);
insert into students_modules (student_id, module_id) values(14,12);
insert into students_modules (student_id, module_id) values(18,16);
insert into students_modules (student_id, module_id) values(20,21);
insert into students_modules (student_id, module_id) values(20,1);
insert into students_modules (student_id, module_id) values(20,4);
insert into students_modules (student_id, module_id, planned_exam_date) values(22,3,'20180321');
insert into students_modules (student_id, module_id) values(32,5);
insert into students_modules (student_id, module_id) values(32,13);
insert into students_modules (student_id, module_id) values(2,10);
insert into students_modules (student_id, module_id, planned_exam_date) values(21,3,'20180321');
insert into students_modules (student_id, module_id) values(21,10);
insert into students_modules (student_id, module_id) values(21,17);
insert into students_modules (student_id, module_id) values(9,1);
insert into students_modules (student_id, module_id) values(16,21);
insert into students_modules (student_id, module_id) values(18,9);
insert into students_modules (student_id, module_id) values(10,2);
insert into students_modules (student_id, module_id) values(10,5);
insert into students_modules (student_id, module_id) values(11,20);


create table student_grades (
student_id int,
module_id int,
exam_date date,
grade decimal(2,1) not null,
primary key (student_id, module_id, exam_date),
foreign key (student_id, module_id) references students_modules 
on delete cascade on update cascade,
foreign key (grade) references grades on delete no action on update cascade
);

insert into student_grades values (2, 1, '20180221', 2);
insert into student_grades values (1, 2, '20180221', 5);
insert into student_grades values (3, 2, '20180221', 2);
insert into student_grades values (3, 2, '20180223', 3);
insert into student_grades values (2, 3, '20180223', 5);
insert into student_grades values (2, 1, '20180223', 3.5);
insert into student_grades values (6, 4, '20180224', 2);
insert into student_grades values (6, 4, '20180227', 3);
insert into student_grades values (32, 12, '20180302', 5.5);
insert into student_grades values (26, 19, '20180302', 4);
insert into student_grades values (29, 6, '20180306', 3.5);
insert into student_grades values (12, 7, '20180306', 2);
insert into student_grades values (21, 19, '20180309', 3);
insert into student_grades values (3, 4, '20180309', 2);
insert into student_grades values (3, 8, '20180312', 4);
insert into student_grades values (20, 2, '20180314', 3.5);
insert into student_grades values (12, 7, '20180316', 2);
insert into student_grades values (12, 9, '20180316', 3.5);
insert into student_grades values (2, 5, '20180318', 3);
insert into student_grades values (21, 6, '20180318', 5);
insert into student_grades values (18, 19, '20180322', 4);
insert into student_grades values (26, 6, '20180926', 4);
insert into student_grades values (12, 7, '20180322', 3.5);
insert into student_grades values (2, 9, '20180322', 4.5);
insert into student_grades values (7, 22, '20180926', 2);
insert into student_grades values (9, 3, '20180930', 4.5);
insert into student_grades values (1, 14, '20180322', 4);
insert into student_grades values (1, 21, '20180322', 2);
insert into student_grades values (17, 12, '20180920', 3.5);
insert into student_grades values (3, 4, '20180920', 4);
insert into student_grades values (17, 8, '20180923', 4.5);
insert into student_grades values (19, 3, '20180923', 5);
insert into student_grades values (18, 3, '20180923', 5.5);
insert into student_grades values (33, 4, '20180923', 2);
insert into student_grades values (4, 6, '20180924', 4.5);
insert into student_grades values (18, 2, '20180924', 4.5);
insert into student_grades values (1, 12, '20180924', 3);
insert into student_grades values (1, 21, '20180924', 4.5);
insert into student_grades values (18, 12, '20180924', 4);
insert into student_grades values (10, 11, '20180925', 2);
insert into student_grades values (29, 3, '20180925', 3);
insert into student_grades values (8, 9, '20180926', 4.5);
insert into student_grades values (9, 21, '20180926', 5.5);
insert into student_grades values (12, 13, '20180926', 3.5);
insert into student_grades values (15, 12, '20180926', 4);
insert into student_grades values (14, 3, '20180927', 5);
insert into student_grades values (8, 21, '20180928', 2);
insert into student_grades values (10, 7, '20180928', 4.5);
insert into student_grades values (10, 11, '20180928', 3.5);
insert into student_grades values (18, 16, '20180930', 5);
insert into student_grades values (20, 21, '20180930', 4);
insert into student_grades values (20, 1, '20180930', 2);
insert into student_grades values (32, 5, '20180930', 3.5);
insert into student_grades values (2, 10, '20180930', 2);
insert into student_grades values (21, 3, '20180930', 4.5);
insert into student_grades values (20, 4, '20180930', 5.5);
insert into student_grades values (7, 22, '20180930', 4);
insert into student_grades values (26, 20, '20180930', 3);