FROM hecksadecimal/newparp:latest

WORKDIR /home/user

ADD launch.sh /home/user/launch.sh
CMD ["/bin/sh", "/home/user/launch.sh"]