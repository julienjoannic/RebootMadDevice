FROM python:3.6.1-alpine

WORKDIR /app
COPY ./requirements.txt .
RUN apt-get -y install android-tools-adb && pip3 install -r requirements.txt

CMD ./RMDdaemon.sh start
