FROM newparp:latest

WORKDIR /home/user

ADD launch.sh /home/user/launch.sh
EXPOSE 5000
CMD ["/bin/sh", "/home/user/launch.sh"]