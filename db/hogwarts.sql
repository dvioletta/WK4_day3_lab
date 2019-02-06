DROP TABLE student;
DROP TABLE house;

CREATE TABLE house(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE student(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_id INT4 REFERENCES house(id) ON DELETE CASCADE,
  age INT4
);
