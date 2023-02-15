FROM newparp:latest

WORKDIR /home/user

ADD launch.sh /home/user/launch.sh
EXPOSE 5000
CMD ["/home/user/launch.sh"]