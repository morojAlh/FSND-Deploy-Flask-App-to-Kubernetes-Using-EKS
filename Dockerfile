FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install pyjwt
RUN pip install flask
RUN pip install gunicorn
RUN pip install pytest

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]