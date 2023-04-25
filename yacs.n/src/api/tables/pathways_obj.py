from sqlalchemy import Column, PrimaryKeyConstraint
from sqlalchemy.dialects.postgresql import INTEGER, VARCHAR, TIME
from .database import Base
import psycopg2


class PathwaySession(Base):
    __tablename__ = "Pathway Options"

    index = 0
    pythonTable = [[]]
    major = Column(VARCHAR(length=100))
    pathway = Column(VARCHAR(length=100))
    chooseFirst = Column(VARCHAR(length=100))
    one = Column(VARCHAR(length=x))
    chooseSecondString = Column(VARCHAR(length=100))
    chooseSecond = Column(VARCHAR(length=y))
    chooseThirdString = Column(VARCHAR(length=100))
    chooseThird = Column(VARCHAR(length=z))
    minorLength = Column(VARCHAR(length=100))
    cur = None
    conn = None


    def populate_from_table(table):
        try:
            conn = psycopg2.connect(
                database="postgres",
                user='postgres',
                password='Fliesrock7',
                host='localhost',
                port= '5433')
            cur = conn.cursor()
            postgreSQL_select_Query = "SELECT COMBINE.majorname, PATHWAYNAME.nameofpath, (requirementsforpath.chooses[1]), REQUIREMENTSFORPATH.classone, (requirementsforpath.chooses[2]), REQUIREMENTSFORPATH.classtwo, (requirementsforpath.chooses[3]), REQUIREMENTSFORPATH.classthree, PATHWAYNAME.compatibleminors FROM COMBINE JOIN PATHWAYNAME ON PATHWAYNAME.id = COMBINE.require_id JOIN requirementsforpath ON REQUIREMENTSFORPATH.id = COMBINE.pathway_id"
            cur.execute(postgreSQL_select_Query)
            pathwayTable = cur.fetchall()
            for row in pathwayTable:
                s
        except Exception as error:
            print(error)
        finally:
            if cur is not None:
                cur.close()
            if conn is not None:
                conn.close()    
        return
    __table_args__ = (
        PrimaryKeyConstraint('major', 'pathway', 'chooseFirst', 'one'),
    )
