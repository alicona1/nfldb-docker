FROM postgres
ENV POSTGRES_PASSWORD server123
ADD *.sh /docker-entrypoint-initdb.d/
ADD nfldb.sql.tar.gz /root/
