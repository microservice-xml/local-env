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

CREATE TABLE accommodation (
    id bigint NOT NULL AUTO_INCREMENT,
    address_id bigint DEFAULT NULL,
    name varchar(255) DEFAULT NULL,
    min_guests int DEFAULT NULL,
    max_guests int DEFAULT NULL,
    facilities varchar(255) DEFAULT NULL,
    accommodation_grade_id bigint DEFAULT NULL,
    available_beds int NOT NULL,
    is_auto bit(1) DEFAULT NULL,
    location varchar(255) NOT NULL,
    photo varchar(255) NOT NULL,
    user_id bigint DEFAULT NULL,
    deleted boolean default false,
    PRIMARY KEY (id),
    KEY `address_id` (address_id),
    CONSTRAINT FOREIGN KEY (address_id) REFERENCES address(id)
);

INSERT INTO accommodation (id, address_id, name, min_guests, max_guests, facilities, accommodation_grade_id, available_beds, is_auto, location, photo, deleted, user_id) VALUES
(1, NULL, 'Vila na Telepu', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(2, NULL, 'Vila u Krnjaci', 2, 8, NULL, NULL, 8, b'0', 'Belgrade', 'photo2', false, 10),
(3, NULL, 'Vila na Adicama', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(4, NULL, 'Vila u Kamenici', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(5, NULL, 'Vila Impresija', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(6, NULL, 'Vila Depresija', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(7, NULL, 'Vila na Pezosu', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(8, NULL, 'Vila na Detelinari', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(9, NULL, 'Vila 1', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(10, NULL, 'Vila 2', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(11, NULL, 'Vila 3', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(12, NULL, 'Vila 4', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10),
(13, NULL, 'Vila 5', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10);

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

