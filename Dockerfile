FROM nuagebec/ubuntu:14.04
MAINTAINER David Tremblay <david@nuagebec.ca>

#install automysqlbackup
RUN apt-get update && \
    apt-get install -y automysqlbackup && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD supervisor_automysqlbackup.conf /etc/supervisor/conf.d/automysqlbackup.conf 

ADD ./config/automysqlbackup /etc/default/automysqlbackup

VOLUME /automysqlbackup

CMD ["/data/run.sh"]
