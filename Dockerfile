FROM newparp:latest

USER root
WORKDIR /home/user
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    apt -y dist-upgrade
RUN pip3 install pyOpenSSL

USER user
ADD launch.sh /home/user/launch.sh
CMD ["/bin/sh", "/home/user/launch.sh"]