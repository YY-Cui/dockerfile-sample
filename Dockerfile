FROM python

COPY flask-sample /flask-sample
WORKDIR /flask-sample

#ENV FLASK_APP=flask-app.py

#RUN pip install -i https://pypi.douban.com/simple flask
RUN pip install -i https://pypi.douban.com/simple pipenv && \
    pipenv install

#CMD flask run --host=0.0.0
CMD pipenv run flask run --host=0.0.0

EXPOSE 5000
