drop table student ;
drop table faculty ;
drop table class;
drop table enrolled ;
 

create table student(
	snum integer primary key,
	sname varchar(30),
	major varchar(25),
	standing varchar(2),
	age integer
	);
	
create table faculty(
	fid integer primary key,
	fname varchar(30),
	deptid integer
	);

create table class(
	name varchar(40) primary key,
	meets_at varchar(20),
	room varchar(10),
	fid integer,
	foreign key(fid) references faculty
	);

	create table enrolled(
	snum integer,
	cname varchar(40),
	primary key(snum,cname),
	foreign key(snum) references student,
	foreign key(cname) references class(name)
	);
	
insert into student values(051135593,'Maria White','English','SR',21);
insert into student values(060839453,'Charles Harris','Architecture','SR',22);
insert into student values(099354543,'Susan Martin','Law','JR',20);
insert into student values(112348546,'Joseph Thompson','Computer Science','SO',19);
insert into student values(115987938,'Christopher Garcia','Computer Science','JR',20);
insert into student values(132977562,'Angela Martinez','History','SR',20);
insert into student values(269734834,'Thomas Robinson','Psychology','SO',18);
insert into student values(280158572,'Margaret Clark','Animal Science','FR',18);
insert into student values(301221823,'Juan Rodriguez','Psychology','JR',20);
insert into student values(318548912,'Dorthy Lewis','Finance','FR',18);
insert into student values(320874981,'Daniel Lee','Electrical Engineering','FR',17);
insert into student values(322654189,'Lisa Walker','Computer Science','SO',17);
insert into student values(348121549,'Paul Hall','Computer Science','JR',18);
insert into student values(351565322,'Nancy Allen','Accounting','JR',19);
insert into student values(451519864,'Mark Young','Finance','FR',18);
insert into student values(455798411,'Luis Hernandez','Electrical Engineering','FR',17);
insert into student values(462156489,'Donald King','Mechanical Engineering','SO',19);
insert into student values(550156548,'George Wright','Education','SR',21);
insert into student values(552455318,'Ana Lopez','Computer Engineering','SR',19);
insert into student values(556784565,'Kenneth Hill','Civil Engineering','SR',21);
insert into student values(567354612,'Karen Scott','Computer Engineering','FR',18);
insert into student values(573284895,'Steven Green','Kinesiology','SO',19);
insert into student values(574489456,'Betty Adams','Economics','JR',20);
insert into student values(578875478,'Edward Baker','Veterinary Medicine','SR',21);


insert into faculty values (142519864,'I. Teach',20);
insert into faculty values (242518965,'James Smith',68);
insert into faculty values (141582651,'Mary Johnson',20);
insert into faculty values (011564812,'John Williams',68);
insert into faculty values (254099823,'Patricia Jones',68);
insert into faculty values (356187925,'Robert Brown',12);
insert into faculty values (489456522,'Linda Davis',20);
insert into faculty values (287321212,'Michael Miller',12);
insert into faculty values (248965255,'Barbara Wilson',12);
insert into faculty values (159542516,'William Moore',33);
insert into faculty values (090873519,'Elizabeth Taylor',11);
insert into faculty values (486512566,'David Anderson',20);
insert into faculty values (619023588,'Jennifer Thomas',11);
insert into faculty values (489221823,'Richard Jackson',33);
insert into faculty values (548977562,'Ulysses Teach',20);

insert into class values('Data Structures','MWF 10','R128',489456522);
insert into class values('Database Systems','MWF 12:30-1:45','1320 DCL',142519864);
insert into class values('Operating System Design','TuTh 12-1:20','20 AVW',489456522 );
insert into class values('Psychology','','',619023588);
insert into class values('Archaeology of the Incas','MWF 3-4:15','R128',248965255);
insert into class values('Aviation Accident Investigation','TuTh 1-2:50','Q3',011564812);
insert into class values('Air Quality Engineering','TuTh 10:30-11:45','R15',011564812);
insert into class values('Introductory Latin','MWF 3-4:15','R12',248965255);
insert into class values('American Political Parties','TuTh 2-3:15','20 AVW',619023588);
insert into class values('Social Cognition','Tu 6:30-8:40','R15',159542516);
insert into class values('Perception','MTuWTh 3','Q3',489221823);
insert into class values('Multivariate Analysis','TuTh 2-3:15','R15',090873519);
insert into class values('Patent Law','F 1-2:50','R128',090873519);
insert into class values('Urban Economics','MWF 11','20 AVW',489221823);
insert into class values('Organic Chemistry','TuTh 12:30-1:45','R12',489221823);
insert into class values('Marketing Research','MW 10-11:15','1320 DCL',489221823);
insert into class values('Seminar in American Art','M 4','R15',489221823);
insert into class values('Orbital Mechanics','MWF 8','1320 DCL',011564812);
insert into class values('Dairy Herd Management','TuTh 12:30-1:45','R128',356187925);
insert into class values('Communication Networks','MW 9:30-10:45','20 AVW',141582651);
insert into class values('Optical Electronics','TuTh 12:30-1:45','R15',254099823);
insert into class values('Artificial Intelligence','','UP328',null);
insert into class values('Introduction to Math','TuTh 8-9:30','R128',489221823);
insert into class values('Data Mining','TuTh 8-9:30','UP238',489221823);
insert into class values('Data Visualization','TuTh 8-9:30','UP328',489221823);

insert into enrolled values (552455318,'Data Structures');
insert into enrolled values (552455318,'Database Systems');
insert into enrolled values (552455318,'Operating System Design');
insert into enrolled values (552455318,'Psychology');
insert into enrolled values (552455318,'Archaeology of the Incas');
insert into enrolled values (552455318,'Aviation Accident Investigation');
insert into enrolled values (552455318,'Air Quality Engineering');
insert into enrolled values (552455318,'Introductory Latin');
insert into enrolled values (552455318,'American Political Parties');
insert into enrolled values (552455318,'Social Cognition');
insert into enrolled values (552455318,'Perception');
insert into enrolled values (552455318,'Multivariate Analysis');
insert into enrolled values (552455318,'Patent Law');
insert into enrolled values (552455318,'Urban Economics');
insert into enrolled values (552455318,'Organic Chemistry');
insert into enrolled values (552455318,'Marketing Research');
insert into enrolled values (552455318,'Seminar in American Art');
insert into enrolled values (552455318,'Orbital Mechanics');
insert into enrolled values (552455318,'Dairy Herd Management');
insert into enrolled values (552455318,'Communication Networks');
insert into enrolled values (552455318,'Optical Electronics');
insert into enrolled values (552455318,'Artificial Intelligence');
insert into enrolled values (552455318,'Introduction to Math');
insert into enrolled values (552455318,'Data Mining');
insert into enrolled values (552455318,'Data Visualization');


insert into enrolled values (112348546,'Database Systems');
insert into enrolled values (115987938,'Database Systems');
insert into enrolled values (348121549,'Database Systems');
insert into enrolled values (322654189,'Database Systems');
insert into enrolled values (455798411,'Operating System Design');
insert into enrolled values (567354612,'Operating System Design');
insert into enrolled values (112348546,'Operating System Design');
insert into enrolled values (115987938,'Operating System Design');
insert into enrolled values (322654189,'Operating System Design');
insert into enrolled values (567354612,'Data Structures');
insert into enrolled values (455798411,'Optical Electronics');
insert into enrolled values (455798411,'Organic Chemistry');
insert into enrolled values (301221823,'Perception');
insert into enrolled values (301221823,'Social Cognition');
insert into enrolled values (301221823,'American Political Parties');
insert into enrolled values (556784565,'Air Quality Engineering');
insert into enrolled values (099354543,'Patent Law');
insert into enrolled values (574489456,'Urban Economics');

SELECT standing, AVG(age) FROM student 
GROUP BY standing;

SELECT standing, AVG(age) FROM student 
GROUP BY standing
HAVING standing != 'JR';

SELECT DISTINCT sname FROM student
WHERE snum NOT IN(SELECT snum FROM enrolled);

SELECT DISTINCT sname FROM student
WHERE standing =='JR' AND
snum IN (
	SELECT snum FROM enrolled
	INNER JOIN class ON enrolled.cname = class.name
	WHERE class.fid IN (
		SELECT fid FROM faculty
		WHERE fname == 'I. Teach'
	)
);


SELECT max(age) FROM student 
WHERE major == 'History'
OR snum IN (
	SELECT snum FROM enrolled
	INNER JOIN class ON enrolled.cname = class.name
	WHERE class.fid IN (
		SELECT fid FROM faculty
		WHERE fname == 'I. Teach'
	)
);

SELECT DISTINCT name FROM class
INNER JOIN enrolled ON class.name = enrolled.cname
WHERE 5 <= (SELECT COUNT(snum) FROM enrolled AS e2
	WHERE e2.cname == enrolled.cname
)
OR room == 'R128';

SELECT sname FROM student 
WHERE snum IN (
	SELECT snum FROM enrolled
	INNER JOIN class  ON enrolled.cname = class.name
	GROUP BY class.meets_at, enrolled.snum
	HAVING count(*) > 1
);

SELECT sname FROM student
WHERE snum IN(
	SELECT snum FROM enrolled
	GROUP BY snum
	HAVING COUNT(*) == (
		SELECT COUNT(*) FROM class
	)
);

SELECT c.name, f.fname FROM class AS c
LEFT OUTER JOIN faculty AS f ON c.fid = f.fid;

SELECT c.name, f.fname FROM faculty AS f 
LEFT OUTER JOIN  class AS c ON f.fid = c.fid;

SELECT c.name, f.fname FROM faculty AS f 
FULL OUTER JOIN  class AS c ON f.fid = c.fid;


