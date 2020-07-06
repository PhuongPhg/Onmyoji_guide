DROP DATABASE IF EXISTS onmyoji;
CREATE DATABASE IF NOT EXISTS onmyoji;
USE onmyoji

-- SET sql_notes = 0

CREATE TABLE IF NOT EXISTS characters(
    id INT(11) NOT NULL AUTO_INCREMENT,
    characters_name VARCHAR(20),
    appearance VARCHAR(50),
    rare VARCHAR(6),
    skill_1 VARCHAR(15),
    skill_2 VARCHAR(15),
    skill_3 VARCHAR(15),
    skill_4 VARCHAR(15),
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS wanted_quest(
    id_char INT NOT NULL,
    place VARCHAR(11),
    no_yokai INT,
    PRIMARY KEY(id_char, place),
    FOREIGN KEY(id_char) REFERENCES characters(id)
);
-- ALTER TABLE wanted_quest ADD FOREIGN KEY(id_char) REFERENCES characters(id);

CREATE TABLE IF NOT EXISTS soul(
    id INT NOT NULL AUTO_INCREMENT,
    soul_name VARCHAR(20),
    combo_2 VARCHAR(150),
    combo_4 VARCHAR(350),
    PRIMARY KEY(id)
    -- FOREIGN KEY(id) REFERENCES guide(id_soul)
);

CREATE TABLE IF NOT EXISTS guide(
    id_char INT,
    role_char VARCHAR(15),
    id_soul INT,
    soul_name VARCHAR(15),
    soul_2 VARCHAR(11),
    soul_4 VARCHAR(11),
    soul_6 VARCHAR(11),
    PRIMARY KEY(id_char, id_soul),
    FOREIGN KEY(id_char) REFERENCES characters(id),
    FOREIGN KEY(id_soul) REFERENCES soul(id)
);
