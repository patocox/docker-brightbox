FROM ubuntu:trusty

RUN apt-get update && \
  apt-get -y install software-properties-common python-software-properties curl && \
  add-apt-repository ppa:brightbox/ppa && \
  apt-get update
RUN apt-get -y install brightbox-cli


ADD cluster cluster
RUN chmod +x cluster
ADD cloud-config.yaml cloud-config.yaml

CMD ["./cluster"]
