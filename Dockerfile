FROM python:3
LABEL org.opencontainers.image.source="https://github.com/ghvinerias/redis-load-test"
RUN apt-get -y update && apt-get -y install build-essential
RUN apt-get -y install gettext-base 
RUN mkdir /redis-load-test
COPY ./Scripts /redis-load-test/Scripts
WORKDIR /redis-load-test/Scripts
RUN pip3 install -r requirments.txt
CMD ["/redis-load-test/Scripts/start.sh"]
