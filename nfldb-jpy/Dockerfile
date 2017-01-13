FROM jupyter/scipy-notebook
ENV GRANT_SUDO yes
USER root
RUN apt-get update && apt-get install -y \
        libpq-dev \
        postgresql-client \
	&& rm -rf /var/lib/apt/lists/*
RUN pip2 install nfldb
ADD config.ini /home/jovyan/.config/nfldb/
RUN chmod -R 777 /opt/conda/envs/python2/lib/python2.7/site-packages/nflgame/