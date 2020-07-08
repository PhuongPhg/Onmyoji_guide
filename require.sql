--  Search for shikis that is recommended for a specific role
SELECT characters.characters_name FROM characters
INNER JOIN guide ON guide.id_char = characters.id
WHERE guide.role_char = 'Healer';

-- Search for recommended roles for a specific shiki
SELECT role_char FROM guide WHERE id_char = 
    (SELECT id FROM characters WHERE characters_name = 'Sakura');

-- Search for recommended soul set for a specific shiki
SELECT soul_name, soul_2, soul_4, soul_6
FROM soul, guide
WHERE soul.id = guide.id_soul AND guide.id_char =
    (SELECT id FROM characters WHERE characters_name = 'Sakura');

-- From specific monster, show places to find it
SELECT place
FROM wanted_quest, characters
WHERE wanted_quest.id_char = characters.id  
AND characters.characters_name = 'Momo';

-- From specific hints, identify the monster and show places to find
SELECT characters_name, place 
FROM wanted_quest, characters
WHERE wanted_quest.id_char = characters.id AND hint like '%Blue skin%';

-- See the list of all shikis with recommended role, soul, effect and bonus effect
SELECT characters_name as shiki, role_char, soul_name,
        soul_2, soul_4, soul_6, combo_4 as effect
    FROM characters, guide, soul
    WHERE characters.id = guide.id_char 
    AND soul.id = guide.id_soul;

-- Soul information 
-- From soul’s name, show effect of soul set 2 or 4
SELECT combo_2, combo_4 
FROM soul 
WHERE soul_name = 'Harpy';

-- From soul’s name, show the type of that soul
SELECT soul_name, soul_type 
    FROM soul 
    WHERE soul_name = 'Harpy';

-- From type of soul, show list of souls’ name
SELECT soul_name 
    FROM soul 
    WHERE soul_type = 'Boss';



