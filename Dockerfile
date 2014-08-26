FROM docku/nginx
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --needed --noconfirm python-pip
ADD pypipins /opt/pypipins
ADD pypipins.conf /etc/nginx/conf.d/pypipins.conf

ADD run /service/pypipins/run
