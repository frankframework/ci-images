# ActiveMQ Artemis official image
FROM apache/activemq-artemis:latest-alpine

COPY run-scripts/ /run-scripts/
RUN chmod -R +rx /run-scripts

# Expose some outstanding folders
VOLUME ["/var/lib/artemis-instance"]
WORKDIR /var/lib/artemis-instance

ENTRYPOINT ["/run-scripts/docker-run.sh"]
CMD ["run"]