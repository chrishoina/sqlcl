-- liquibase formatted sql
-- changeset DEV_USER:1764873023145 stripComments:false  logicalFilePath:issue-1234/dev_user/tables/employees.sql
-- sqlcl_snapshot src/database/dev_user/tables/employees.sql:null:927a33fc9f6a58ecf9087c9b5f438c66f1fcc755:create

create table employees (
    employee_id    number generated always as identity not null enable,
    first_name     varchar2(50 byte),
    last_name      varchar2(50 byte),
    email          varchar2(255 byte) not null enable,
    phone          varchar2(50 byte),
    hire_date      date,
    status         varchar2(20 byte),
    department_id  number,
    current_salary number(10, 2)
);

alter table employees add check ( current_salary >= 0 ) enable;

alter table employees add primary key ( employee_id )
    using index enable;

alter table employees add unique ( email )
    using index enable;

