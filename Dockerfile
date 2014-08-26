FROM docku/nginx
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --needed --noconfirm python-pip
ADD pypipins /opt/pypipins
RUN python3 /opt/pypipins/setup.py install

ADD pypipins.conf /etc/nginx/conf.d/pypipins.conf
