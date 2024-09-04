FROM python:3.9-slim

WORKDIR /app

COPY main.py .
COPY wait_for_postgres.py .

RUN pip install psycopg2-binary

CMD ["python", "wait_for_postgres.py"]
