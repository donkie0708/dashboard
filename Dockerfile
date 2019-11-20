FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code
RUN pip install --upgrade pip --proxy http://proxy.jp.sbibits.com:8080 && pip install -r requirements.txt --proxy http://proxy.jp.sbibits.com:8080
ADD . /code
