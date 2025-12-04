-- liquibase formatted sql
-- changeset DEV_USER:1764873023080 stripComments:false  logicalFilePath:issue-1234/dev_user/tables/attendance.sql
-- sqlcl_snapshot src/database/dev_user/tables/attendance.sql:null:209aa043277a6f1c5354aeea845abc8a039d037f:create

create table attendance (
    attendance_id number(38, 0) not null enable,
    employee_id   number(38, 0),
    check_in      timestamp(6),
    check_out     timestamp(6),
    status        varchar2(20 byte)
);

alter table attendance add primary key ( attendance_id )
    using index enable;

