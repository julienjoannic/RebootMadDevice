FROM python:3.8.18

WORKDIR /app
COPY ./requirements.txt .
RUN /usr/local/bin/python -m pip install --upgrade pip && pip3 install -r requirements.txt && apt-get update && apt-get -y install android-tools-adb
COPY . .

CMD ./RMDdaemon.sh start
