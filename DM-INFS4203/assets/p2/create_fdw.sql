Create extension postgres_fdw;

Create server foreign_server Foreign data wrapper postgres_fdw OPTIONS (host 'localhost', port '5432', dbname 'SalesDB');

create user mapping for "YourUserName" server foreign_server options (user 'readonly_user', password 'infs3200');

Create foreign table "SalesCustomer" (
	customerid integer NOT NULL,
    firstname character varying(40) NOT NULL,
    middleinitial character varying(40) DEFAULT NULL::character varying,
    lastname character varying(40) NOT NULL) 
	server foreign_server options (schema_name 'public', table_name 'customers');

select count(*) from "SalesCustomer";