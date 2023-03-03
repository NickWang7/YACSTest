-- CREATE TABLE CLASSES(
--     id SERIAL PRIMARY KEY,
--     category TEXT, 
--     pathway TEXT, 
--     required TEXT, 
--     choose TEXT, 
--     remaining TEXT, 
--     minors TEXT);

-- CREATE TABLE CDI(
--     id INTEGER PRIMARY KEY,
--     choose TEXT);

INSERT INTO CLASSES(category, pathway, required, choose, remaining, minors) VALUES
('Arts / Designs', 'Movie Cinema and Other Stuff', ' ', ' ', ' ', ' '); 
                

-- SELECT EXISTS (
--     SELECT FROM 
--         CDI
--     WHERE 
--         classname = '"IHSS 1960 - Remixing in Digital Culture"'
--     );

-- DELETE FROM CLASSES
-- WHERE required = ' ';

-- SELECT *
-- FROM CLASSES
-- JOIN CDI2 ON CDI2.choose = CLASSES.choose;

-- SELECT * FROM CDI;
SELECT * FROM CLASSES