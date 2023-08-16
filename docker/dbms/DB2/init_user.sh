#!/bin/bash
# Create user, not setting password yet as useradd requires encrypted password
useradd -s /bin/bash -d /home/testiaf_user -m testiaf_user
# Use chpasswd to store the password, chpasswd encrypts it
echo testiaf_user:testiaf_user00 | chpasswd

# Set DB permissions
/opt/ibm/db2/V11.5/bin/db2 CONNECT TO TESTIAF user db2inst1 using syspw
/opt/ibm/db2/V11.5/bin/db2 GRANT SYSADM,DBADM,SECADM,SQLADM,SYSOPR,CREATETAB,BINDADD,CONNECT,CREATE_NOT_FENCED_ROUTINE,IMPLICIT_SCHEMA,LOAD,CREATE_EXTERNAL_ROUTINE,QUIESCE_CONNECT ON DATABASE TO USER testiaf_user
/opt/ibm/db2/V11.5/bin/db2 update db cfg for TESTIAF using auto_maint on
/opt/ibm/db2/V11.5/bin/db2 update db cfg for TESTIAF using auto_tbl_maint on
/opt/ibm/db2/V11.5/bin/db2 update db cfg for TESTIAF using auto_reorg on