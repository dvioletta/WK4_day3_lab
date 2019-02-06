DROP TABLE student;

CREATE TABLE student(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_name VARCHAR(255) REFERENCES house(name) ON DELETE CASCADE,
  age INT4
);

CREATE table house(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);
