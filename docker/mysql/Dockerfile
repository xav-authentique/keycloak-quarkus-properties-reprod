FROM mysql:8.0

COPY context/init.sh /init.sh
RUN chmod +x /init.sh

ADD context/app.sql /docker-entrypoint-initdb.d

CMD ["/bin/bash", "-c", "/init.sh && exec docker-entrypoint.sh mysqld"]
