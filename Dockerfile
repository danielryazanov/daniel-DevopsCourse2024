FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir flask

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
ENV PYTHONUNBUFFERED=1

EXPOSE 5000

CMD ["sh", "-c", "python -m flask --app flaskr:create_app run --host=0.0.0.0 --port=5000"]

