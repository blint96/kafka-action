FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
COPY kafka.conf /etc/kafka/kafka_server_jaas.conf
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]