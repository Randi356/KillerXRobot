FROM rendyprojects/archlinux:latest

WORKDIR /app

RUN apt-get -y update

RUN apt-get -y install git gcc python3-dev

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

CMD ["python3", "-m", "KillerXRobot"]
