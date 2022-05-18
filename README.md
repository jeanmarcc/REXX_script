# MainframeIBM_REXX_script
REXX script to create a file, write a string inside and launch a JCL to write this file to a SYSOUT

## Platform 
This REXX script has been written in Visual Studio Code in ZOWE extension

Command to launch the REXXscript:
zowe tso issue command "exec 'z11475.source(rexxjcl)'"   

wherethe jcl executed in the REXX script is:

//CBL0007J JOB 1,NOTIFY=&SYSUID
//*
//* this jcl is launched by a REXX script
//*
//HEADER EXEC PGM=IEBGENER
//SYSPRINT DD DUMMY
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=Z11475.MYJOHNM,DISP=SHR  
//SYSUT2   DD SYSOUT=*


## Author
https://github.com/johnmarcc


