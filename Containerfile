FROM registry.acess.redhat.com/ubi8/python-39

MAINTAINER Gregory Bennett <gregory@digital.mod.uk>

EXPOSE 5000

COPY . /opt/app-root/src

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

CMD flask run --host=0.0.0.0
