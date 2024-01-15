FROM python:3.8.18

WORKDIR /app
COPY . .
RUN /usr/local/bin/python -m pip install --upgrade pip && pip3 install -r requirements.txt && apt-get update && apt-get -y install android-tools-adb && chmod 740 ./*.sh && chmod 740 ./*.py

CMD ./RMDdaemon.sh start
