FROM nouchka/data
MAINTAINER Jean-Avit Promis "docker@katagena.com"
LABEL version="ttrss"

COPY start.sh /fetch.sh
RUN chmod +x /fetch.sh

ENV TTRSS_OPML_URL http://ttrss/backend.php?op=opml&method=export&filename=ttrss.opml&settings=1

CMD /fetch.sh
