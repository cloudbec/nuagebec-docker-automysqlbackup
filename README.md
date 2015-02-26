# nuagebec-docker-automysqlbackup

Docker running automysqlbackup 

Automysqlbackup does a really good job at making mysql servers but one at the time for now

you must update the configuration file in order to 

docker run  -v /volume/on/host/automysqlbackup:/automysqlbackup -t -d --link MYSQLSERVER:MYSQLSERVER nuagebec/automysqlbackup

TODO : 

environment variable for :

DBHOST
DBPASS

or any important stuff here : 

http://man.cx/automysqlbackup%288%29



