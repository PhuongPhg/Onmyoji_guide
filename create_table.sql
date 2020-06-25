USE onmyoji

-- SET sql_notes = 0
CREATE TABLE IF NOT EXISTS characters(
    id INT(11) PRIMARY KEY,
    characters_name VARCHAR(20),
    appearance VARCHAR(50),
    rare VARCHAR(6),
    skill_1 VARCHAR(15),
    skill_2 VARCHAR(15),
    skill_3 VARCHAR(15),
    skill_4 VARCHAR(15),
);
CREATE TABLE IF NOT EXISTS wanted_quest(
    id_char INT PRIMARY KEY,
    place VARCHAR(11),
    no_yokai INT,
    CONSTRAINT wanted_quest ADD FOREIGN KEY(id_char) REFERENCES characters(id)
);
-- ALTER TABLE wanted_quest ADD FOREIGN KEY(id_char) REFERENCES characters(id);
CREATE TABLE IF NOT EXISTS guide(
    id_char INT PRIMARY KEY,
    role_char VARCHAR(15),
    id_soul INT PRIMARY KEY,
    soul_name VARCHAR(15),
    soul_2 VARCHAR(11),
    soul_4 VARCHAR(11),
    soul_6 VARCHAR(11),
    CONSTRAINT guide ADD FOREIGN KEY(id_char) REFERENCES characters(id)
);
CREATE TABLE IF NOT EXISTS soul(
    id INT PRIMARY KEY,
    name VARCHAR(15),
    combo_2 VARCHAR(50),
    combo_4 VARCHAR(50),
    CONSTRAINT soul ADD FOREIGN KEY(id) REFERENCES guide(id_soul)
)