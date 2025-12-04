-- liquibase formatted sql
-- changeset DEV_USER:1764873023113 stripComments:false  logicalFilePath:issue-1234/dev_user/tables/departments.sql
-- sqlcl_snapshot src/database/dev_user/tables/departments.sql:null:187d147d238560b0cfaf95fd3f31cbf4b5216e35:create

create table departments (
    department_id   number,
    department_name varchar2(100 byte) not null enable,
    description     varchar2(255 byte),
    location        varchar2(100 byte),
    manager_id      number
);

alter table departments add primary key ( department_id )
    using index enable;

