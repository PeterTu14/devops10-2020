FROM docker.elastic.co/beats/filebeat:7.6.1
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown -R root:root /usr/share/filebeat
RUN chmod go-w /usr/share/filebeat/filebeat.yml
RUN chmod a+rx /usr/share/filebeat/filebeat
ENV PATH "$PATH:/usr/share/filebeat"