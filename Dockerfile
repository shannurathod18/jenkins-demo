FROM ubuntu:22.04

WORKDIR /app

COPY app.txt .

CMD ["cat", "app.txt"]
