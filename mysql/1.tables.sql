use sql9244365;

CREATE TABLE User (
	user_id INT NOT NULL AUTO_INCREMENT,
	parent_id INT,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(30),
	user_img VARCHAR(200),
	balance INT,
	is_parent BOOLEAN,
	PRIMARY KEY (user_id),
	FOREIGN KEY (parent_id) REFERENCES User (user_id)
);

CREATE TABLE Task_Status(
	status_id tinyint,
	status_name VARCHAR(20),
    PRIMARY KEY (status_id)
);

create table Task (
	task_id INT NOT NULL AUTO_INCREMENT,
	user_id INT,
	title VARCHAR(20),
	description VARCHAR(20),
	payment INT,
	deadline date,
	status_id tinyint,
	PRIMARY KEY (task_id),
	FOREIGN KEY (user_id) REFERENCES User (user_id),
	FOREIGN KEY (status_id) REFERENCES Task_Status (status_id)
 );
 
 