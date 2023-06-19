CREATE TABLE address (
    id bigint not null auto_increment,
    country varchar(255) not null,
    city varchar(255) not null,
    street varchar(255) not null,
    number varchar(255) not null,
    longitude float,
    latitude float,
    PRIMARY KEY(id)
);

INSERT INTO address (country, city, street, number, longitude, latitude) VALUES ('Serbia', 'Novi Sad', 'Gunduliceva', '12', 19.796963, 45.240372);
INSERT INTO address (country, city, street, number, longitude, latitude) VALUES ('Serbia', 'Belgrade', 'Knez Mihailova', '23', 19.796963, 45.240372);
INSERT INTO address (country, city, street, number, longitude, latitude) VALUES ('Serbia', 'Belgrade', 'Java', '19', 19.796963, 45.240372);
INSERT INTO address (country, city, street, number, longitude, latitude) VALUES ('Serbia', 'Nis', 'Milana Savica', '12', 19.796963, 45.240372);
INSERT INTO address (country, city, street, number, longitude, latitude) VALUES ('Hungary', 'Budapest', 'Milana Savica', '12', 19.796963, 45.240372);
INSERT INTO address (country, city, street, number, longitude, latitude) VALUES ('Hungary', 'Budapest', 'Milana Savica', '12', 19.796963, 45.240372);
INSERT INTO address (country, city, street, number, longitude, latitude) VALUES ('Indonesia', 'Denpasar', 'Milana Savica', '12', 19.796963, 45.240372);
INSERT INTO address (country, city, street, number, longitude, latitude) VALUES ('Thailand', 'Bangkok', 'Milana Savica', '12', 19.796963, 45.240372);

CREATE TABLE user (
    id bigint not null auto_increment,
    email varchar(255),
    username varchar(255),
    password varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    phone_number varchar(255),
    deleted boolean default false,
    penalties int DEFAULT 0,
    role enum('GUEST', 'HOST'),
	location varchar(255),
	avg_grade float,
	is_highlighted BOOLEAN,
    PRIMARY KEY(id),
    UNIQUE(username) 
);

INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES (1, 'gravarica@gmail.com', 'gravarica', 'Milos', 'Gravara', '0658897554', 'GUEST', 'bla bla', 0, FALSE, FALSE, '$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES (2, 'kalina@gmail.com', 'kalina', 'Nikola', 'Kalinic', '0658897554', 'GUEST', 'bla bla', 0, FALSE, FALSE, '$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(3, 'vukoman@gmail.com', 'vukoman', 'Vladimir', 'Vukoman', '0658897554', 'GUEST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(4, 'lunic@gmail.com', 'lunic', 'Vladimir', 'Lunic', '0658897554', 'GUEST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(5, 'spira@gmail.com', 'spira', 'Nikola', 'Spiric', '0658897554', 'GUEST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(6, 'vuk@gmail.com', 'vuk', 'Vuk', 'Milanovic', '0658897554', 'GUEST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(7, 'ilija@gmail.com', 'ilija', 'Ilija', 'Galin', '0658897554', 'GUEST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(8, 'andrija@gmail.com', 'andrija', 'Andrija', 'Stanisic', '0658897554', 'GUEST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(9, 'host1@gmail.com', 'host1', 'Host', 'Hostovic', '0658897554', 'HOST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(10, 'host2@gmail.com', 'host2', 'Host', 'Hostovic', '0658897554', 'HOST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);
INSERT INTO user (id, email, username, first_name, last_name, phone_number, role, location, avg_grade, is_highlighted, deleted, password, penalties) 
VALUES(11, 'host3@gmail.com', 'host3', 'Host', 'Hostovic', '0658897554', 'HOST', 'bla bla', 0, FALSE, FALSE,'$2a$10$WFEOLytmEINkclRLCezX8.DOjrezZXW6/Bd.2Sl3GAFqOrTTOs0wC', 0);

CREATE TABLE rate (
	id bigint not null auto_increment,
	host_id bigint not null,
	guest_id bigint not null,
	rate_value int not null,
	rate_date datetime not null,
	PRIMARY KEY(id),
	CONSTRAINT  FOREIGN KEY(guest_id) REFERENCES user(id),
	CONSTRAINT  FOREIGN KEY(host_id) REFERENCES user(id)
);