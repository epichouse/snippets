-- View all roles assigned to all users in current database.

SELECT    roles.principal_id                            AS RolePrincipalID
  ,    roles.name                                    AS RolePrincipalName
  ,    database_role_members.member_principal_id    AS MemberPrincipalID
  ,    members.name                                AS MemberPrincipalName
FROM sys.database_role_members AS database_role_members  
JOIN sys.database_principals AS roles  
  ON database_role_members.role_principal_id = roles.principal_id  
JOIN sys.database_principals AS members  
  ON database_role_members.member_principal_id = members.principal_id;  
GO