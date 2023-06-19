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
    avg_grade float,
    PRIMARY KEY (id),
    KEY address_id (address_id),
    CONSTRAINT FOREIGN KEY (address_id) REFERENCES address(id)
);

INSERT INTO accommodation (id, address_id, name, min_guests, max_guests, facilities, accommodation_grade_id, available_beds, is_auto, location, photo, deleted, user_id, avg_grade) VALUES
(1, NULL, 'Vila na Telepu', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10, 3.4),
(2, NULL, 'Vila u Krnjaci', 2, 8, NULL, NULL, 8, b'0', 'Belgrade', 'photo2', false, 10, 0),
(3, NULL, 'Vila na Adicama', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10, 0),
(4, NULL, 'Vila u Kamenici', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10, 5),
(5, NULL, 'Vila Impresija', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10, 2.5),
(6, NULL, 'Vila Depresija', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 10, 0),
(7, NULL, 'Vila na Pezosu', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 9, 0),
(8, NULL, 'Vila na Detelinari', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 9, 2),
(9, NULL, 'Vila 1', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 11, 0),
(10, NULL, 'Vila 2', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 11, 0),
(11, NULL, 'Vila 3', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 11, 5),
(12, NULL, 'Vila 4', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 11, 5),
(13, NULL, 'Vila 5', 6, 10, NULL, NULL, 10, b'0', 'Novi Sad', 'photo1', false, 11, 0);

CREATE TABLE rate (
  id bigint NOT NULL AUTO_INCREMENT,
  accommodation_id bigint NOT NULL,
  guest_id bigint NOT NULL,
  host_id bigint NOT NULL,
  rate_date date NOT NULL,
  rate_value int NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (1, 1, 1, 10, "2023-06-17", 4);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (2, 1, 2, 10, "2023-06-17", 5);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (3, 1, 3, 10, "2023-06-17", 2);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (4, 1, 8, 10, "2023-06-17", 3);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (5, 1, 4, 10, "2023-06-17", 3);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (6, 8, 2, 9, "2023-06-17", 2);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (7, 5, 2, 10, "2023-06-17", 2);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (8, 5, 3, 10, "2023-06-17", 2);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (9, 5, 8, 10, "2023-06-17", 2);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (10, 5, 4, 10, "2023-06-17", 5);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (11, 5, 7, 10, "2023-06-17", 2);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (12, 5, 6, 10, "2023-06-17", 2);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (13, 11, 2, 11, "2023-06-17", 5);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (14, 12, 2, 11, "2023-06-17", 5);
INSERT INTO rate (id, accommodation_id, guest_id, host_id, rate_date, rate_value) VALUES (15, 4, 2, 10, "2023-06-17", 5);

