FROM ubuntu:bionic
EXPOSE 8080
WORKDIR /opt
RUN set -e && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y openjdk-8-jdk-headless maven git
COPY . /opt/src/
CMD ["mvn", "hpi:run"]
