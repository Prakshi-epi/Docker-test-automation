FROM ubuntu:14.04

ADD wordcount.py wordcount.py
ADD 12.txt 12.txt

RUN apt-get update

RUN apt-get install -y python python-pip


CMD ["python", "wordcount.py"]