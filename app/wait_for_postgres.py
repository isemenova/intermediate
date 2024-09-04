import time
import subprocess
import psycopg2
from psycopg2 import OperationalError

def wait_for_postgres(host, port):
    while True:
        try:
            conn = psycopg2.connect(
                dbname="postgres",
                user="postgres",
                password="yourpassword",
                host=host,
                port=port
            )
            conn.close()
            print("Postgres is up - executing command")
            break
        except OperationalError:
            print("Postgres is unavailable - sleeping")
            time.sleep(1)

if __name__ == "__main__":
    wait_for_postgres("db", 5432)
    subprocess.run(["python", "main.py"])
