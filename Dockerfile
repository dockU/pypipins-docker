FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --needed --noconfirm python-pip git nodejs
ADD pypipins /opt/pypipins
ADD shields /opt/shields
RUN python3 /opt/pypipins/setup.py install
WORKDIR /opt/shields
RUN npm install
