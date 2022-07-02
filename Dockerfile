FROM rendyprojects/archlinux:latest

WORKDIR /app/
RUN apt-get -y update
RUN apt-get -y install git gcc python3-dev
COPY requirements.txt requirements.txt
RUN python3 -m pip install -U -r requirements.txt

CMD ["python3", "-m", "KillerXRobot"]
