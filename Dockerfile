FROM ubuntu

RUN apt-get update && apt-get install -y python3.8  python-setuptools python-dev

RUN apt install -y python3-pip

RUN pip install flask flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run --host=0.0.0.0

