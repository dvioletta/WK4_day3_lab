DROP TABLE house;
DROP TABLE student;

CREATE TABLE house(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE student(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_name VARCHAR(255) REFERENCES house(id) ON DELETE CASCADE,
  age INT4
);
