login <br>
psql -h hostname -U username -d database_name

list ussers <br>
\du

list tables <br>
\dt

show structure table <br>
\d mytable

list databases <br>
\l

change current db <br>
\c db_name

kubectl exec -it dbaas-datamodel-deployment-7bd4f7b4fd-d5bwq -n dev -- pg_dump -U username database_name > dump.sql

CREATE DATABASE mydatabase;

CREATE USER myuser WITH PASSWORD 'mypassword';

DROP DATABASE IF EXISTS postgres;

kubectl exec -it dbaas-datamodel-deployment-7bd4f7b4fd-db2k7 -n dev -- psql -U postgres postgres < ./dbaaspg2.sql