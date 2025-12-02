FROM eclipse-temurin:21-jre

# JMeter version
ENV JMETER_VERSION=5.6.3
ENV JMETER_HOME=/opt/jmeter
ENV PATH="${JMETER_HOME}/bin:${PATH}"

# ActiveMQ version for dependency
ENV ACTIVEMQ_ALL_VERSION=6.1.8

# Install JMeter
RUN apt-get update && apt-get install -y curl unzip && \
    mkdir -p "${JMETER_HOME}" && \
    curl -L "https://downloads.apache.org/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz" \
        -o /tmp/jmeter.tgz && \
    tar -xzf /tmp/jmeter.tgz --strip-components 1 --directory "${JMETER_HOME}" && \
    curl -L "https://repo1.maven.org/maven2/org/apache/activemq/activemq-all/${ACTIVEMQ_ALL_VERSION}/activemq-all-${ACTIVEMQ_ALL_VERSION}.jar" \
            -o "${JMETER_HOME}/lib/activemq-all.jar" && \
    rm -rf /tmp/jmeter.tgz /var/lib/apt/lists/*

WORKDIR "${JMETER_HOME}"

CMD ["jmeter"]
