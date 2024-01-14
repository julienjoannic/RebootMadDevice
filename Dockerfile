FROM python:3.6.15

WORKDIR /app
COPY ./requirements.txt .
RUN apt-get update && apt-get -y install android-tools-adb && /usr/local/bin/python -m pip install --upgrade pip && pip3 install -r requirements.txt
COPY . .

CMD ./RMDdaemon.sh start
