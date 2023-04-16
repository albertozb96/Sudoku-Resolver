@ECHO OFF

Rem Script to execute make on windows cmd (instead of mingw32-make.exe)

Rem Unlike Unix shell aliases, DOSKEY macros do not automatically preserve
Rem the remaining command-line arguments.
Rem You need to specify $* at the end of every macro 

doskey make=mingw32-make.exe $*
