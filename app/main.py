import psycopg2
import os

def query_database():
    conn = psycopg2.connect(
        dbname=os.getenv('POSTGRES_DB'),
        user=os.getenv('POSTGRES_USER'),
        password=os.getenv('POSTGRES_PASSWORD'),
        host='db'
    )
    
    cur = conn.cursor()
    
    query = """
    SELECT MIN(age), MAX(age) FROM test_table
    WHERE LENGTH(name) < 6;
    """
    
    cur.execute(query)
    result = cur.fetchone()
    
    print(f"Minimum Age: {result[0]}, Maximum Age: {result[1]}")
    
    cur.close()
    conn.close()

if __name__ == '__main__':
    query_database()
