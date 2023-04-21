import psycopg2
 
# establishing the connection

cur = None
conn = None
try:
    conn = psycopg2.connect(
        database="postgres",
        user='postgres',
        password='Fliesrock7',
        host='localhost',
        port= '5433')
    cur = conn.cursor()

    postgreSQL_select_Query = "SELECT COMBINE.majorname, PATHWAYNAME.nameofpath, (requirementsforpath.chooses[1]), REQUIREMENTSFORPATH.classone, (requirementsforpath.chooses[2]), REQUIREMENTSFORPATH.classtwo, (requirementsforpath.chooses[3]), REQUIREMENTSFORPATH.classthree, PATHWAYNAME.compatibleminors FROM COMBINE JOIN PATHWAYNAME ON PATHWAYNAME.id = COMBINE.require_id JOIN requirementsforpath ON REQUIREMENTSFORPATH.id = COMBINE.pathway_id"
    postgreSQL_select_Query2 = "select * from requirementsforpath"

    cur.execute(postgreSQL_select_Query)
    print("Selecting rows from paths table using cursor.fetchall")
    pathwayTable = cur.fetchall()

    print("Print each row and it's columns values")
    for row in pathwayTable:
        print("major name = ", row[0])
        print("pathway  = ", row[1], "\n")
        print("choose 1 = ", row[2])
        print("1  = ", row[3], "\n")
        if row[4] is not None:
            print("choose 2 = ", row[4])
        if row[5] is not None:    
            print("2  = ", row[5], "\n")
        if row[6] is not None:
            print("choose 3 = ", row[6])
        if row[7] is not None:
            print("3  = ", row[7], "\n")
        if row[8] is not None:
            print("minors = ", row[8])

    # cur.execute(postgreSQL_select_Query2)
    # print("Selecting rows from requirements table using cursor.fetchall")
    # allrequirements = cur.fetchall()
    # for row in allrequirements:
    #     print("chooses = ", row[1], "\n")
    #     print("classone = ", row[2], "\n")
    #     if row[3] is not None:
    #         print("classtwo = ", row[3], "\n")
    #     if row[4] is not None:
    #         print("classthree = ", row[4], "\n")

except Exception as error:
    print(error)
finally:
    if cur is not None:
        cur.close()
    if conn is not None:
        conn.close()

# Creating a cursor object using the cursor()
# method
# cursor = conn.cursor()
 
# sql = '''CREATE TABLE WORKER(
#    ID BIGSERIAL NOT NULL PRIMARY KEY,
#    NAME VARCHAR(100) NOT NULL,
#    COUNTRY VARCHAR(50) NOT NULL,
#    AGE INT,
#    SALARY FLOAT   
# )'''
# cursor.execute(sql)
 
# Inserting values into the table
# insert_stmt = "INSERT INTO WORKER (NAME, COUNTRY,\
# AGE, SALARY) VALUES (%s, %s, %s, %s)"
# data = [('Krishna', 'India', 19,2000),
#    ('Harry', 'USA', 20,7000),
#    ('Malang', 'Nepal', 25, 5000),
#    ('Apple', 'London', 26, 2000),
#    ('Vishnu', 'India', 29,2000),
#    ('Frank', 'UAE', 21,7000),
#    ('Master', 'USA', 25, 5000),
#    ('Montu', 'India', 26, 2000),
#         ]
# cursor.executemany(insert_stmt, data)
 
# Display whole table
# cursor.execute("SELECT * FROM WORKER")
# print(cursor.fetchall())
 
# Commit your changes in the database
# conn.commit()
 
#Closing the connection
conn.close()