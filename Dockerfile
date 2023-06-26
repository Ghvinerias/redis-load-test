FROM python:3-alpine
LABEL org.opencontainers.image.source="https://github.com/ghvinerias/redis-load-test"
RUN apk --no-cache add build-base gettext
WORKDIR /redis-load-test
COPY ./Scripts /redis-load-test/Scripts
WORKDIR /redis-load-test/Scripts
RUN pip install --no-cache-dir -r requirments.txt
CMD ["/redis-load-test/Scripts/start.sh"]
