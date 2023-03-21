-- MAKE SURE TO OPEN NEW QUERY TO RUN THINGS



-- CREATE TABLE CLASSES(
--     id SERIAL PRIMARY KEY,
--     category TEXT);

-- CREATE TABLE PATHWAYS(
--     id SERIAL PRIMARY KEY,
--     classname TEXT,
--     firstchoose text[],
--     nextchoose text[],
--     minors text[],
--     user_id INTEGER,
--     CONSTRAINT fk_user
--         FOREIGN KEY(user_id)
--             REFERENCES CLASSES(id)
--     );

-- UPDATE PATHWAYS
-- SET required = '{"STSO 2520 - Sociology"}'
-- WHERE id = 45;

-- UPDATE PATHWAYS
-- SET firstchoose = '{"IHSS 1150 - The Genome and You",
--                     "PSYC 1200 - Introduction to Psychological Science",
--                     "STSO 1110 - Science, Technology, and Society"}'
-- WHERE id = 45;

-- UPDATE PATHWAYS
-- SET nextchoose = '{"COGS 4610 - Stress and the Brain",
--                     "COGS 4700 - Hormones, Brain, and Behavior",
--                     "PSYC 4500 - Drugs, Society, and Behavior",
--                     "PSYC 4610 - Stress and the Brain",
--                     "PSYC 4700 - Hormones, Brain, and Behavior",
--                     "STSO 4420 - History of Medicine",
--                     "STSO 4440 - History of Mental Health",
--                     "STSO 4250 - Bioethics",
--                     "STSO 4430 - Drugs in History",
--                     "STSO 4260 - Food, Farms, and Famine",
--                     "STSO 4400 - Medicine, Culture, and Society",
--                     "STSO 4560 - Gender, Science, and Technology"}'
-- WHERE id = 45;

-- INSERT INTO CLASSES(category) VALUES
-- ('"Transfer Student"'); 
                
-- INSERT INTO PATHWAYS(classname, firstchoose, nextchoose, minors, user_id) VALUES (
--     '"Transfer Student Social Sciece"', 
--                     -- first choose option
--                   '{"COGS XXXX",
--                     "ECON XXXX",
--                     "GSAS XXXX",
--                     "IHSS XXXX",
--                     "PSYC XXXX",
--                     "STSS XXXX"}', 
--                     -- next choose option
--                     '{}', 
--                     -- minors
--                     '{}', 
--                     -- id key
--                     10
-- );

-- UPDATE PATHWAYS
-- SET optionone = '{"Choose 12 credits of the following course prefixes, with at least 8 credit hours at, or above, the 2000 level and at least 3 credit hours at the 4000 level:"}'
-- WHERE id = 48;

-- UPDATE PATHWAYS
-- SET optiontwo = '{"Choose remaining credits from the following:"}'
-- WHERE id = 45;

-- UPDATE PATHWAYS
-- SET optiontwo = '{"Choose 12 credits from the following, with at least 4 credits at the 4000 level:"}'
-- WHERE id = 37;

-- UPDATE PATHWAYS
-- SET optionone = '{"Choose 12 credits from the following:"}'
-- WHERE id = 42;

-- UPDATE PATHWAYS
-- SET optiontwo = '{"Choose other one of the following:"}'
-- WHERE id = 17;

-- UPDATE PATHWAYS
-- SET optionthree = '{}'
-- WHERE optionthree IS NULL;

-- UPDATE PATHWAYS
-- SET thirdchoose = '{}'
-- WHERE thirdchoose IS NULL;



-- SELECT * FROM CLASSES JOIN PATHWAYS ON PATHWAYS.user_id = CLASSES.id;

-- SELECT EXISTS (
--     SELECT FROM 
--         PATHWAYS
--     WHERE 
--         firstchoose = '"IHSS 1960 – Music and Protest"'
--     );

-- DELETE FROM PATHWAYS
-- WHERE classname = '"Fact and Fiction"';

-- SELECT *
-- FROM CLASSES
-- JOIN CDI2 ON CDI2.choose = CLASSES.choose;

-- 
SELECT * FROM PATHWAYS;
SELECT * FROM CLASSES;


