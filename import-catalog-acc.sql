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
    minimum_guests int DEFAULT NULL,
    maximum_guests int DEFAULT NULL,
    facilities varchar(255) DEFAULT NULL,
    accommodation_grade_id bigint DEFAULT NULL,
    available_beds int NOT NULL,
    is_auto bit(1) DEFAULT NULL,
    location varchar(255) NOT NULL,
    max_guests int NOT NULL,
    min_guests int NOT NULL,
    photo varchar(255) NOT NULL,
    PRIMARY KEY (id),
    KEY `address_id` (address_id),
    CONSTRAINT FOREIGN KEY (address_id) REFERENCES address(id)
);

