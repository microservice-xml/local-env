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
    address_id bigint,
    email varchar(255),
    username varchar(255),
    password varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    phone_number varchar(255),
    penalties int DEFAULT 0,
    role enum('GUEST', 'HOST'),
    PRIMARY KEY(id),
    CONSTRAINT FOREIGN KEY (address_id) REFERENCES address(id)
);

INSERT INTO user (email, username, first_name, last_name, phone_number, address_id, role) 
          VALUES ('kalina@gmail.com', 'kalina', 'Nikola', 'Kalinic', '0658897554', 1, 'HOST');


CREATE TABLE accommodation (
    id bigint not null auto_increment,
    address_id bigint,
    name varchar(255),
    minimum_guests int, 
    maximum_guests int,
    facilities varchar(255),
    PRIMARY KEY(id),
    CONSTRAINT FOREIGN KEY (address_id) REFERENCES address(id)
);

CREATE TABLE availability_slot (
    id bigint not null auto_increment,
    accommodation_id bigint, 
    start date,
    end date,
    price float,
    PRIMARY KEY(id),
    CONSTRAINT FOREIGN KEY (accommodation_id) REFERENCES accommodation(id)
);

CREATE TABLE reservation (
    id bigint not null auto_increment,
    availability_slot_id bigint,
    user_id bigint, 
    status enum('PENDING', 'ACCEPTED', 'DECLINED'),
    start date, 
    end date, 
    PRIMARY KEY(id),
    CONSTRAINT FOREIGN KEY (availability_slot_id) REFERENCES availability_slot(id)
);