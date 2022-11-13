CREATE TABLE grades (
	id 				    int(11) 		NOT NULL AUTO_INCREMENT,
	name				varchar(255)	NOT NULL,
	class_teacher_id	int(11)			NOT NULL,
	school_type			varchar(255) 	NOT NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE teachers (
	id 				    int(11)			NOT NULL AUTO_INCREMENT,
	name				varchar(255)	NOT NULL,
	lastname			varchar(255)	NOT NULL,
	title				varchar(255)	NULL,
	email				varchar(255)	NOT NULL UNIQUE,
	password			varchar(255)	NOT NULL,
	phone				varchar(63)		NULL,
	pesel				varchar(13)		NOT NULL UNIQUE,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE learners (
	id 				    int(11)			NOT NULL AUTO_INCREMENT,
	name				varchar(255)	NOT NULL,
	lastname			varchar(255)	NOT NULL,
	email				varchar(255)	NOT NULL UNIQUE,
	password			varchar(255)	NOT NULL,
	pesel				varchar(13)		NOT NULL UNIQUE,
	grade_id			int(11)			NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE subjects (
	id 				    int(11)			NOT NULL AUTO_INCREMENT,
	name 				varchar(255)	NOT NULL,
	valid_date_from		datetime		NOT NULL,
	valid_date_to		datetime		NOT NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE timetable (	
	id 				    int(11)			NOT NULL AUTO_INCREMENT,
	subject_id			int(11)			NOT NULL,
	grade_id			int(11)			NOT NULL,
	teacher_id 			int(11)			NOT NULL,
	start_time			datetime		NOT NULL,
	length_minutes		int(11)			NOT NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE marks (
	id 				    int(11)			NOT NULL AUTO_INCREMENT,
	learner_id			int(11)			NOT NULL,
	teacher_id			int(11)			NOT NULL,
	subject_id			int(11)			NOT NULL,
	value				decimal(2,2)	NOT NULL,
	weight				decimal(3,2)	NOT NULL,
	created_at			datetime		NOT NULL,
	updated_at			datetime		NOT NULL,
	PRIMARY KEY (id)
);

ALTER TABLE grades
ADD CONSTRAINT fk_grades_teachers_class_teacher_id
    FOREIGN KEY (class_teacher_id) REFERENCES teachers(id);

ALTER TABLE learners
ADD CONSTRAINT fk_learners_grades_grade_id
    FOREIGN KEY (grade_id) REFERENCES grades(id);


ALTER TABLE timetable
ADD (
    CONSTRAINT fk_timetable_subjects_subject_id
    FOREIGN KEY (subject_id) REFERENCES subjects(id),

    CONSTRAINT fk_timetable_grades_grade_id
    FOREIGN KEY (grade_id) REFERENCES grades(id),

    CONSTRAINT fk_timetable_teachers_teachers_id
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);


ALTER TABLE marks
ADD (
    CONSTRAINT fk_marks_learners_learner_id
    FOREIGN KEY (learner_id) REFERENCES learners(id),
    
    CONSTRAINT fk_marks_teachers_teacher_id
    FOREIGN KEY (teacher_id) REFERENCES teachers(id),
    
    CONSTRAINT fk_marks_subjects_subject_id
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);
