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
    id bigint not null auto_increment,
    address_id bigint,
    name varchar(255),
    minimum_guests int, 
    maximum_guests int,
    facilities varchar(255),
    PRIMARY KEY(id),
    CONSTRAINT FOREIGN KEY (address_id) REFERENCES address(id)
);

