FROM python:3.6.1-alpine

WORKDIR /app
COPY ./requirements.txt .
RUN apk update && apk add adb && pip3 install -r requirements.txt

CMD ./RMDdaemon.sh start
