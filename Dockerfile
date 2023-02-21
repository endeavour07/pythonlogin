FROM python:3.8

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN apt-get update && apt-get -y upgrade

RUN pip install --upgrade setuptools
RUN python -m pip install --upgrade pip





RUN pip install -r requirements.txt 

COPY . /app

ENTRYPOINT ["python"]

CMD ["main.py"]