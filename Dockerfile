FROM python:3.8
RUN pip install psycopg2-binary
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .