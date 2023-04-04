-- MAKE SURE TO OPEN NEW QUERY TO RUN THINGS

-- CREATE TABLE PATHWAYNAME(
--     id SERIAL PRIMARY KEY,
--     nameOfPath TEXT,
--     compatibleMinors text[]
-- );

-- CREATE TABLE REQUIREMENTSFORPATH(
--     id SERIAL PRIMARY KEY,
--     chooses text[],
--     classOne text[],
--     classTwo text[],
--     classThree text[]
-- );


-- INSERT INTO PATHWAYNAME(nameOfPath, compatibleMinors) VALUES (
--     '"Transfer Student Social Sciece"', '{}'
-- );
-- DELETE FROM pathwayname
-- WHERE id = 9;
-- INSERT INTO REQUIREMENTSFORPATH(chooses, classone, classtwo, classthree) VALUES (
--     ARRAY['"Choose 12 credits of the following course prefixes, with at least 8 credit hours at, or above, the 2000 level and at least 3 credit hours at the 4000 level":', NULL, NULL], 
--     ARRAY['"COGS XXXX",
--                     "ECON XXXX",
--                     "GSAS XXXX",
--                     "IHSS XXXX",
--                     "PSYC XXXX",
--                     "STSS XXXX"'], 
--     NULL,
--     NULL
-- );


-- CREATE TABLE COMBINE(
--     require_id INTEGER,
--     pathway_id INTEGER,
--     majorName TEXT,
--     PRIMARY KEY (require_id, pathway_id),
--     CONSTRAINT fk_require FOREIGN KEY(require_id) REFERENCES REQUIREMENTSFORPATH(id),
--     CONSTRAINT fk_path FOREIGN KEY(pathway_id) REFERENCES PATHWAYNAME(id)
-- );

--  INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     19, 19, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     20, 20, '"Transfer Student"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     21, 21, '"Transfer Student"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     22, 22, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     23, 23, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     24, 24, '"Social Science"'
-- );
-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     25, 25, '"Social Science"'
-- );

--  INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     26, 26, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     27, 27, '"Transfer Student"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     28, 28, '"Transfer Student"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--    29, 29, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     30, 30, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     32, 32, '"Social Science"'
-- );
-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     31, 31, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     48, 48, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     49, 49, '"Transfer Student"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     50, 50, '"Transfer Student"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     44, 44, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     45, 45, '"Social Science"'
-- );

-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     46, 46, '"Social Science"'
-- );
-- INSERT INTO COMBINE(require_id, pathway_id, majorName) VALUES (
--     47, 47, '"Social Science"'
-- );

-- SELECT COMBINE.majorname, PATHWAYNAME.nameofpath, REQUIREMENTSFORPATH.chooses, REQUIREMENTSFORPATH.classone, REQUIREMENTSFORPATH.classtwo, REQUIREMENTSFORPATH.classthree, PATHWAYNAME.compatibleminors
-- FROM COMBINE
-- JOIN PATHWAYNAME ON PATHWAYNAME.id = COMBINE.require_id
-- JOIN REQUIREMENTSFORPATH ON REQUIREMENTSFORPATH.id = COMBINE.pathway_id;



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
-- SET required = '{"'STSO 2520 - Sociology"'}'
-- WHERE id = 45;

-- UPDATE PATHWAYS
-- SET firstchoose = '{"'IHSS 1150 - The Genome and You"',
--                     "'PSYC 1200 - Introduction to Psychological Science"',
--                     "'STSO 1110 - Science, Technology, and Society"'}'
-- WHERE id = 45;

-- UPDATE PATHWAYS
-- SET nextchoose = '{"'COGS 4610 - Stress and the Brain"',
--                     "'COGS 4700 - Hormones, Brain, and Behavior"',
--                     "'PSYC 4500 - Drugs, Society, and Behavior"',
--                     "'PSYC 4610 - Stress and the Brain"',
--                     "'PSYC 4700 - Hormones, Brain, and Behavior"',
--                     "'STSO 4420 - History of Medicine"',
--                     "'STSO 4440 - History of Mental Health"',
--                     "'STSO 4250 - Bioethics"',
--                     "'STSO 4430 - Drugs in History"',
--                     "'STSO 4260 - Food, Farms, and Famine"',
--                     "'STSO 4400 - Medicine, Culture, and Society"',
--                     "'STSO 4560 - Gender, Science, and Technology"'}'
-- WHERE id = 45;

-- INSERT INTO CLASSES(category) VALUES
-- ('"'Transfer Student"''); 
                
-- INSERT INTO PATHWAYS(classname, firstchoose, nextchoose, minors, user_id) VALUES (
--     '"'Transfer Student Social Sciece"'', 
--                     -- first choose option
--                   '{"'COGS XXXX"',
--                     "'ECON XXXX"',
--                     "'GSAS XXXX"',
--                     "'IHSS XXXX"',
--                     "'PSYC XXXX"',
--                     "'STSS XXXX"'}', 
--                     -- next choose option
--                     '{}', 
--                     -- minors
--                     '{}', 
--                     -- id key
--                     10
-- );

-- UPDATE PATHWAYS
-- SET optionone = '{"'Choose 12 credits of the following course prefixes, with at least 8 credit hours at, or above, the 2000 level and at least 3 credit hours at the 4000 level:"'}'
-- WHERE id = 28;

-- UPDATE PATHWAYS
-- SET optionone = '{"'Choose remaining credits from the following:"'}'
-- WHERE id = 26;

-- UPDATE PATHWAYS
-- -- SET optionone = '{"'Choose 12 credits from the following, with at least 4 credits at the 4000 level:"'}'
-- WHERE id = 36;

-- UPDATE PATHWAYS
-- SET optionone = '{"'Choose 12 credits from the following:"'}'
-- WHERE id = 35;

-- UPDATE PATHWAYS
-- SET optiontwo = '{"'Choose other one of the following:"'}'
-- WHERE id = 17;

-- UPDATE PATHWAYS
-- SET optionthree = '{}'
-- WHERE optionthree IS NULL;

-- UPDATE PATHWAYS
-- SET optiontwo = '{}'
-- WHERE id = 35;


-- SELECT * FROM CLASSES JOIN PATHWAYS ON PATHWAYS.user_id = CLASSES.id;

-- SELECT EXISTS (
--     SELECT FROM 
--         PATHWAYS
--     WHERE 
--         firstchoose = '"'IHSS 1960 – Music and Protest"''
--     );

-- DELETE FROM PATHWAYS
-- WHERE classname = '"'Fact and Fiction"'';

-- SELECT *
-- FROM CLASSES
-- JOIN CDI2 ON CDI2.choose = CLASSES.choose;

-- SELECT
--     category,
--     classname,
--     required,
--     optionone,
--     firstchoose,
--     optiontwo,
--     nextchoose,
--     optionthree,
--     thirdchoose,
--     minors 
-- FROM CLASSES
-- INNER JOIN PATHWAYS ON PATHWAYS.user_id = CLASSES.id;


-- SELECT * FROM PATHWAYS;
-- SELECT * FROM CLASSES;

-- SELECT * FROM PATHWAYNAME;
-- SELECT * FROM REQUIREMENTSFORPATH;
-- SELECT * FROM COMBINE;


