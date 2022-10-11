@echo off
set  P=%2
set  M=%1
md %P%
cd %P%
set /A K=0
set Z=0
set /A F=1
:while
set N=%random%
echo %N%
set /A K+=1 
set /A F=%K% %% 3
 IF %F%==%Z% (
       echo Hello World > %N%.txt 
    ) ELSE (
        @echo off > %N%.txt
    )
 IF %K% == %M% (
    pause
 ) 
goto while

