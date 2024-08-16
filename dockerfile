FROM python:3.11-slim

WORKDIR /usr/src/app

RUN pip install --no-cache-dir --upgrade pip
RUN apt-get update && apt-get install -y redis-server

COPY /app /usr/src/app/

RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 6379

ENTRYPOINT service redis-server start && python app.py
