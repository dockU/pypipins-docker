FROM docku/nginx
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --needed --noconfirm python-pip
ADD pypipins /opt/pypipins
RUN /usr/bin/pip3.4 install -r /opt/pypipins/requirements-dev.txt
ADD pypipins.conf /etc/nginx/conf.d/pypipins.conf

ADD run /service/pypipins/run
