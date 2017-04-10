CREATE TABLE users (
	id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	login VARCHAR(100) NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL
);

CREATE TABLE tasks (
	id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	date_time TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	short_desc VARCHAR(150) NOT NULL,
	long_desc TEXT,
	notes TINYTEXT,
	user_id INT(10) NOT NULL,
	status ENUM('New', 'Open', 'Resolved', 'Closed') NOT NULL,
	urgency ENUM('Very urgently','Urgently','Not urgently','Not at all urgently') NOT NULL,
	criticality ENUM('Accident', 'Critical', 'Not critical', 'Change request') NOT NULL	
);

CREATE TABLE tasks_history (
	id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	task_id INT(10) NOT NULL,
	date_time TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	action ENUM('Add', 'Open', 'Resolve', 'Close') NOT NULL,
	notes TINYTEXT,
	user_id INT(10) NOT NULL	
);