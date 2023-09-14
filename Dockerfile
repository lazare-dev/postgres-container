FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y postgresql

USER postgres

RUN /etc/init.d/postgresql start && \
    psql --command "CREATE USER andrew WITH SUPERUSER PASSWORD 'PooPoo1987!';" && \
    createdb -O testdb andrew