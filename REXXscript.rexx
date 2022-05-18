/* REXX */

say "-- first we delete in case it exists --"
"DELETE 'Z11475.FIL.JEANM'"

say "-- then we create the file --"
"ALLOCATE DATASET(FIL.JEANM) NEW DIR(0) SPACE(5,1) DSORG(PS) RECFM(F,B)
       LRECL(80) BLKSIZE(0) FILE(JEANM)"

say "-- we open the file --"
"EXECIO 0 DISKW JEANM (OPEN"
JEANM.1 = "A TEST TO WRITE TO FILE BY JEANM"

say "-- then we write the stream into the file --"
"EXECIO * DISKW JEANM (FINIS STEM JEANM."
"FREE F(JEANM)"

say "-- Now we launch the JCL --"
"SUBMIT 'Z11475.JCL(JCL2)'"

exit

