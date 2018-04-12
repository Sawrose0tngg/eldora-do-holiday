CREATE TABLE user_details(
	id IDENTITY,
	name VARCHAR (100),
	email VARCHAR (100),
	password VARCHAR (60),
	address VARCHAR (100),
	winter boolean,
	contact_number VARCHAR (15),
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);
INSERT INTO user_details
(first_name, last_name, password, email, contact_number) 
VALUES ('user', 'user', 'user', 'user@gmail.com', '9812345678');


CREATE TABLE resort_details(
	id IDENTITY,
	description VARCHAR(2000),
	name VARCHAR (50),
	address VARCHAR (150),
	types VARCHAR (50),
    room INT,
	availability INT, 
	swimming_pool BOOLEAN,
	sauna BOOLEAN,
	contact_number VARCHAR (15),
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);
INSERT INTO resort_details
(name, address, types, room, room, availability, swimming_pool, ) 
VALUES ('user', 'user', 'user', 'user@gmail.com', '9812345678');

CREATE TABLE booking (
	id IDENTITY,
	user_id INT,
	resort_id INT,
	room INT,
	CONSTRAINT pk_booking_id PRIMARY KEY (id),
	CONSTRAINT fk_booking_user_details_id FOREIGN KEY (user_id) REFERENCES user_details (id),
	CONSTRAINT fk_booking_resort_details_id FOREIGN KEY (resort_id) REFERENCES resort_details (id)
);



