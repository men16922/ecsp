create database eventuate;
create database orders;
create database xyz;
create database abc;

create user 'abc_user'@'%' identified by 'abc_password';
create user 'orders_user'@'%' identified by 'orders_password';
create user 'xyz_user'@'%' identified by 'xyz_password';

GRANT ALL PRIVILEGES ON eventuate.* TO 'mysqluser'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON orders.* TO 'orders_user'@'%';
GRANT ALL PRIVILEGES ON abc.* TO 'abc_user'@'%';
GRANT ALL PRIVILEGES ON xyz.* TO 'xyz_user'@'%';
FLUSH PRIVILEGES;

USE eventuate;

create table cdc_monitoring (
                                reader_id VARCHAR(1000) PRIMARY KEY,
                                last_time BIGINT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

USE abc;

CREATE TABLE message (
     id VARCHAR(255) PRIMARY KEY,
     destination LONGTEXT NOT NULL,
     headers LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
     payload LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
     published SMALLINT DEFAULT 0,
     message_partition SMALLINT,
     creation_time BIGINT
);

CREATE INDEX message_published_idx ON message(published, id);