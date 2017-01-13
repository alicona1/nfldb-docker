FROM postgres
ENV POSTGRES_PASSWORD pgadmin
ADD *.sh /docker-entrypoint-initdb.d/
ADD nfldb.sql.tar.gz /root/
