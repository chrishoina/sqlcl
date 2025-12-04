-- liquibase formatted sql
-- changeset DEV_USER:1764879234123 stripComments:false  logicalFilePath:ords/dev_user/ords.sql
-- sqlcl_snapshot {"hash":"e3a6e9887bfb395c7de6c119b1fd86c162a154ba","type":"ORDS_SCHEMA","name":"ords","schemaName":"DEV_USER","sxml":""}
--
        
DECLARE
  l_roles     OWA.VC_ARR;
  l_modules   OWA.VC_ARR;
  l_patterns  OWA.VC_ARR;

BEGIN
  ORDS.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'dev_user',
      p_auto_rest_auth      => TRUE);

  ORDS.CREATE_ROLE(
      p_role_name=> 'oracle.dbtools.role.autorest.DEV_USER');
  ORDS.CREATE_ROLE(
      p_role_name=> 'oracle.dbtools.role.autorest.DEV_USER.ATTENDANCE');
  ORDS.CREATE_ROLE(
      p_role_name=> 'oracle.dbtools.role.autorest.DEV_USER.DEPARTMENTS');
  ORDS.CREATE_ROLE(
      p_role_name=> 'oracle.dbtools.role.autorest.DEV_USER.EMPLOYEES');
  ORDS.CREATE_ROLE(
      p_role_name=> 'oracle.dbtools.role.autorest.DEV_USER.PERFORMANCEREVIEWS');
  ORDS.CREATE_ROLE(
      p_role_name=> 'oracle.dbtools.role.autorest.any.DEV_USER');
  l_roles(1) := 'oracle.dbtools.autorest.any.schema';
  l_roles(2) := 'oracle.dbtools.role.autorest.DEV_USER';
  l_patterns(1) := '/metadata-catalog/*';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'oracle.dbtools.autorest.privilege.DEV_USER',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => 'DEV_USER metadata-catalog access',
      p_description    => 'Provides access to the metadata catalog of the objects in the DEV_USER schema.',
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  l_roles(1) := 'oracle.dbtools.autorest.any.schema';
  l_roles(2) := 'oracle.dbtools.role.autorest.DEV_USER.ATTENDANCE';
  l_roles(3) := 'oracle.dbtools.role.autorest.any.DEV_USER';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'oracle.dbtools.autorest.privilege.DEV_USER.ATTENDANCE',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => 'DEV_USER.ATTENDANCE access',
      p_description    => 'Provides access to the ATTENDANCE TABLE in the DEV_USER schema.',
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  l_roles(1) := 'oracle.dbtools.autorest.any.schema';
  l_roles(2) := 'oracle.dbtools.role.autorest.DEV_USER.DEPARTMENTS';
  l_roles(3) := 'oracle.dbtools.role.autorest.any.DEV_USER';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'oracle.dbtools.autorest.privilege.DEV_USER.DEPARTMENTS',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => 'DEV_USER.DEPARTMENTS access',
      p_description    => 'Provides access to the DEPARTMENTS TABLE in the DEV_USER schema.',
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  l_roles(1) := 'oracle.dbtools.autorest.any.schema';
  l_roles(2) := 'oracle.dbtools.role.autorest.DEV_USER.EMPLOYEES';
  l_roles(3) := 'oracle.dbtools.role.autorest.any.DEV_USER';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'oracle.dbtools.autorest.privilege.DEV_USER.EMPLOYEES',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => 'DEV_USER.EMPLOYEES access',
      p_description    => 'Provides access to the EMPLOYEES TABLE in the DEV_USER schema.',
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  l_roles(1) := 'oracle.dbtools.autorest.any.schema';
  l_roles(2) := 'oracle.dbtools.role.autorest.DEV_USER.PERFORMANCEREVIEWS';
  l_roles(3) := 'oracle.dbtools.role.autorest.any.DEV_USER';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'oracle.dbtools.autorest.privilege.DEV_USER.PERFORMANCEREVIEWS',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => 'DEV_USER.PERFORMANCEREVIEWS access',
      p_description    => 'Provides access to the PERFORMANCEREVIEWS TABLE in the DEV_USER schema.',
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  l_roles(1) := 'SODA Developer';
  l_patterns(1) := '/soda/*';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'oracle.soda.privilege.developer',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => NULL,
      p_description    => NULL,
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  ORDS.ENABLE_OBJECT(
      p_enabled => TRUE, 
      p_object => 'ATTENDANCE',
      p_object_type => 'TABLE',
      p_object_alias => 'attendance',
      p_auto_rest_auth => FALSE);

  ORDS.ENABLE_OBJECT(
      p_enabled => TRUE, 
      p_object => 'DEPARTMENTS',
      p_object_type => 'TABLE',
      p_object_alias => 'departments',
      p_auto_rest_auth => FALSE);

  ORDS.ENABLE_OBJECT(
      p_enabled => TRUE, 
      p_object => 'EMPLOYEES',
      p_object_type => 'TABLE',
      p_object_alias => 'employees',
      p_auto_rest_auth => FALSE);

  ORDS.ENABLE_OBJECT(
      p_enabled => TRUE, 
      p_object => 'PERFORMANCEREVIEWS',
      p_object_type => 'TABLE',
      p_object_alias => 'performancereviews',
      p_auto_rest_auth => FALSE);


COMMIT;

END;
/


