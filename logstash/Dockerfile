FROM docker.elastic.co/logstash/logstash:7.0.0
COPY ./pipeline/pipelines.yml /usr/share/logstash/config/pipelines.yml
COPY ./pipeline/*.conf /usr/share/logstash/pipeline/
