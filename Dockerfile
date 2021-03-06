FROM python:2.7

ADD . /app
WORKDIR /app

RUN pip install -r requirements.txt
COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 8888
ENTRYPOINT ["docker-entrypoint.sh"]
CMD [""]
