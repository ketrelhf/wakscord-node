FROM python:3.11.2-slim

RUN apt-get update && apt-get upgrade -y && apt-get install gcc -y
RUN pip install -U pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

CMD ["python", "-m", "node"]