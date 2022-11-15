FROM python:3.8.15
EXPOSE 5051 22
COPY . /flask/app
WORKDIR /flask/app
RUN apt-get update && \
      apt-get -y install sudo && \
      /usr/local/bin/python -m pip install --upgrade pip

RUN ["pip","install","bson"]
RUN ["pip","install","flask"]
RUN ["pip","install","pymongo"]
RUN ["pip","install","flask_mail"]


CMD ["python3","app.py"]