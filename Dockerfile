FROM newparp:latest

USER root
WORKDIR /home/user
# Update packages and install pip
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    apt -y dist-upgrade && \
    apt-get -y --no-install-recommends install python3 python3-pip python3-dev libpq-dev libffi-dev gcc curl && \
    pip3 install -r requirements.txt && \
    python3 setup.py install && \
    apt -y remove gcc python3-pip && \
    apt -y clean && \
    rm -rf /var/lib/apt/lists/*

USER user
ADD launch.sh /home/user/launch.sh
CMD ["/bin/sh", "/home/user/launch.sh"]