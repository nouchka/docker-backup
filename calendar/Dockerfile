FROM nouchka/data
MAINTAINER Jean-Avit Promis "docker@katagena.com"
LABEL version="calendar"

COPY start.sh /fetch.sh
RUN chmod +x /fetch.sh

ENV CALENDAR_URLS     https://lite.qwant.com/images/lite-home-logo-variant.jpg https://framasoft.org/accueil/img/pingouinVolantRefait.png
ENV CALENDAR_USER     user
ENV CALENDAR_PASSWORD password

ENTRYPOINT /fetch.sh
