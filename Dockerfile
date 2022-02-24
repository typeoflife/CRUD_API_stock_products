FROM python:3.8
RUN pip install psycopg2-binary
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["gunicorn", "stocks_products.wsgi", "0.0.0.0:8000"]