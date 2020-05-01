FROM ubuntu:18.04

ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install ansible==2.9.7

RUN apt-get install -y ssh

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
