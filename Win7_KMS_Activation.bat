@echo off
msg */server/127.0.0.1 Are you SURE you want to do THIS??

:choice
set /P c=Are you sure to configure the machine as a KMS client? (Y/N)
if /I "%c%" EQU "Y" goto :movespot
if /I "%c%" EQU "N" goto :exitspot

goto :choice

:movespot
echo "Changing the Windows key to KMS"
REM To set a client key (the key is for WIN7 and this is used for all the WIN7 clients)
slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4

REM To set KMS server manually 
slmgr.vbs /skms 10.0.0.1

REM To manually activate
slmgr.vbs /ato

pause 
exit

:exitspot
echo "You selected NO, exiting ..."
pause 
exit
