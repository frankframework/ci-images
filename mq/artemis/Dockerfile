# ActiveMQ Artemis official image
FROM apache/activemq-artemis:2.41.0

COPY run-scripts/ /run-scripts/

# Expose some outstanding folders
VOLUME ["/var/lib/artemis-instance"]
WORKDIR /var/lib/artemis-instance

ENTRYPOINT ["/run-scripts/docker-run.sh"]
CMD ["run"]
