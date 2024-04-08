FROM python:3.7.7

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

RUN chmod +x run.sh

EXPOSE 8001

CMD ["./run.sh"]
