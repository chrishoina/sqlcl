-- liquibase formatted sql
-- changeset DEV_USER:1764873023192 stripComments:false  logicalFilePath:issue-1234/dev_user/tables/performancereviews.sql
-- sqlcl_snapshot src/database/dev_user/tables/performancereviews.sql:null:5effb330e2a4007904e6695fa11cff08197c63fb:create

create table performancereviews (
    review_id         number(38, 0) not null enable,
    employee_id       number(38, 0),
    review_date       date,
    performance_score number(3, 2),
    goals_achieved    varchar2(255 byte),
    areas_improvement varchar2(255 byte),
    reviewer_id       number(38, 0),
    next_review_date  date
);

alter table performancereviews add primary key ( review_id )
    using index enable;

