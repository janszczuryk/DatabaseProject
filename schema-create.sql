
CREATE TABLE grades (
	id 				int(11) 		NOT NULL AUTO_INCREMENT,
	name				varchar(255)		NOT NULL,
	class_teacher_id		int(11)			NOT NULL, -- FOREIGN KEY teachers.id,
	school_type			varchar(255) 		NOT NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY( id )
);

CREATE TABLE teachers (
	id 				int(11)			NOT NULL AUTO_INCREMENT,
	name				varchar(255)		NOT NULL,
	lastname			varchar(255)		NOT NULL,
	title				varchar(255)		NULL,
	email				varchar(255)		NOT NULL UNIQUE,
	password			varchar(255)		NOT NULL,
	phone				varchar(63)		NULL,
	pesel				varchar(13)		NOT NULL UNIQUE,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY( id )
);

CREATE TABLE learners (
	id 				int(11)			NOT NULL AUTO_INCREMENT,
	name				varchar(255)		NOT NULL,
	lastname			varchar(255)		NOT NULL,
	email				varchar(255)		NOT NULL UNIQUE,
	password			varchar(255)		NOT NULL,
	pesel				varchar(13)		NOT NULL UNIQUE,
	grade_id			int(11)			NULL, -- FOREIGN KEY grades.id,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY( id )
);

CREATE TABLE subjects (
	id 				int(11)			NOT NULL AUTO_INCREMENT,
	name 				varchar(255)		NOT NULL,
	valid_date_from			datetime		NOT NULL,
	valid_date_to			datetime		NOT NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY( id )
);

CREATE TABLE timetable (	
	id 				int(11)			NOT NULL AUTO_INCREMENT,
	subject_id			int(11)			NOT NULL, -- FOREIGN KEY subjects.id,
	grade_id			int(11)			NOT NULL, -- FOREIGN KEY grades.id,
	teacher_id 			int(11)			NOT NULL, -- FOREIGN KEY teachers.id,
	start_time			datetime		NOT NULL,
	length_minutes			int(11)			NOT NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY( id )
);

CREATE TABLE marks (
	id 				int(11)			NOT NULL AUTO_INCREMENT,
	learner_id			int(11)			NOT NULL, -- FOREIGN KEY learners.id,
	teacher_id			int(11)			NOT NULL, -- FOREIGN KEY teachers.id,
	subject_id			int(11)			NOT NULL, -- FOREIGN KEY subjects.id,
	value				decimal(2,2)		NOT NULL,
	weight				decimal(3,2)		NOT NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY( id )
);

