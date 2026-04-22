CREATE TABLE seconddb(
    second_id INT,
    marks INT,
    FOREIGN KEY (second_id) REFERENCES firstdb(id)
);