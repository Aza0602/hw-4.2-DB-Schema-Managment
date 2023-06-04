CREATE TABLE cars
(
    id    BIGSERIAL PRIMARY KEY,
    mark  VARCHAR(12) NOT NULL,
    model VARCHAR(12) NOT NULL,
    cost   INT         NOT NULL
);

CREATE table drivers
(
    id              BIGSERIAL PRIMARY KEY,
    name            VARCHAR(12)                 NOT NULL,
    age             SMALLINT DEFAULT 18         NOT NULL,
    driving_license BOOLEAN  DEFAULT TRUE       NOT NULL,
    car_id          BIGINT REFERENCES cars (id) NOT NULL
);

insert into cars(id, mark, model, cost)
values (100, 'Mark1', 'Model1', 100),
       (101, 'Mark2', 'Model2', 101),
       (102, 'Mark3', 'Model3', 102);

insert into drivers(name, car_id)
values ('Ivan',1),
       ('Petr',2),
       ('Maksim',102);
