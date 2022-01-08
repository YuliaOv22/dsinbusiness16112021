FROM python:3.8.10
LABEL maintainer="Julia"
COPY . /api
WORKDIR /api
RUN pip install -r requirements.txt
EXPOSE 8180
EXPOSE 8181
VOLUME /api/api/models
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
