FROM python:2.7

ADD . /app
WORKDIR /app

RUN pip install -r requirements.txt
COPY docker-entrypoint.sh /usr/local/bin/

RUN apt-get update
RUN apt-get install -y \
		vim \
		python-numpy \
		python-matplotlib && \
	apt-get clean && \
	apt-get autoclean

EXPOSE 8888
ENTRYPOINT ["docker-entrypoint.sh"]
CMD [""]
