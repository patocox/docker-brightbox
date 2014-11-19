FROM ubuntu:trusty

RUN apt-get update && \
  apt-get -y install software-properties-common && \
  apt-get -y install python-software-properties && \
  add-apt-repository ppa:brightbox/ppa && \
  apt-get update
RUN apt-get -y install brightbox-cli

ADD cluster cluster
RUN chmod 777 cluster
ADD cloud-config.yaml cloud-config.yaml

CMD ["./cluster"]
