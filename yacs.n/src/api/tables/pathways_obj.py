from sqlalchemy import Column, PrimaryKeyConstraint
from sqlalchemy.dialects.postgresql import INTEGER, VARCHAR, TIME
from .database import Base
import psycopg2
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
    y = 0
    z = 0
    a = 0
    print("Print each row and it's columns values")
    for row in pathwayTable:
        print("major name = ", row[0])
        print("pathway  = ", row[1], "\n")
        print("choose 1 = ", row[2])
        print("1  = ", row[3], "\n")
        x = len(row[3])
        if row[4] is not None:
            print("choose 2 = ", row[4])
            print("2  = ", row[5], "\n")
            y = len(row[5])
        if row[6] is not None:
            print("choose 3 = ", row[6])
            print("3  = ", row[7], "\n")
            z = len(row[7])
        if row[8] is not None:
            print("minors = ", row[8])
            a = len(row[8])
except Exception as error:
    print(error)
finally:
    if cur is not None:
        cur.close()
    if conn is not None:
        conn.close()


class PathwaySession(Base):
    __tablename__ = "Pathway Options"

    major = Column(VARCHAR(length=100))
    pathway = Column(VARCHAR(length=100))
    chooseFirst = Column(VARCHAR(length=100))
    one = Column(VARCHAR(length=x))
    if y is not 0:
        chooseSecondString = Column(VARCHAR(length=100))
        chooseSecond = Column(VARCHAR(length=y))
    if z is not 0:
        chooseThirdString = Column(VARCHAR(length=100))
        chooseThird = Column(VARCHAR(length=z))
    if a is not 0:
        minorLength = Column(VARCHAR(length=100))

    __table_args__ = (
        PrimaryKeyConstraint('major', 'pathway', 'chooseFirst', 'one'),
    )
