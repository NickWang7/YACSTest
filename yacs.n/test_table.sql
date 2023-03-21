CREATE TABLE CLASSES(
    id SERIAL PRIMARY KEY,
    category TEXT,
    pathway TEXT);
    -- required TEXT, 
    -- choose TEXT, 
    -- remaining TEXT, 
    -- minors TEXT);

-- CREATE TABLE CDI(
--     id SERIAL PRIMARY KEY,
--     choose TEXT,
--     user_id INTEGER,
--     CONSTRAINT fk_user
--         FOREIGN KEY(user_id)
--             REFERENCES CLASSES(id)
--     );

-- INSERT INTO CLASSES(category, pathway, required, choose, remaining, minors) VALUES
-- ('"Arts / Designs"', '"Creative Design and Innovation"', ' ', ' ', ' ', ' '); 
                
-- INSERT INTO CDI(choose, user_id) VALUES (
--     '"IHSS 1040 - Documentary in the 21st Century Identity Production"', 3
-- );

-- ALTER TABLE CDI
-- RENAME choose TO available;


-- SELECT * FROM CLASSES JOIN CDI ON CDI.user_id = CLASSES.id;

-- SELECT EXISTS (
--     SELECT FROM 
--         CLASSES
--     WHERE 
--          = ' '
--     );

-- DELETE FROM CLASSES
-- WHERE required = ' ';

-- SELECT *
-- FROM CLASSES
-- JOIN CDI2 ON CDI2.choose = CLASSES.choose;

-- SELECT * FROM CDI;
SELECT * FROM CLASSES;