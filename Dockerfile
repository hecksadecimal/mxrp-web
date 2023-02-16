FROM newparp:latest

WORKDIR /home/user
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    apt -y dist-upgrade
ADD launch.sh /home/user/launch.sh
EXPOSE 5000
CMD ["/bin/sh", "/home/user/launch.sh"]