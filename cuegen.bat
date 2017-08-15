@echo off
setlocal enabledelayedexpansion
set i=0
set cuename=regen.cue
echo %cuename%
echo REM COMMENT "CUEGEN by EXTREMEZHAZHA" > %cuename%
for %%f in (*.flac *.ape *.wav) do (
  echo FILE "%%f" WAVE >> %cuename%
  set /a i=!i!+1
  echo   TRACK !i! AUDIO >> %cuename%
  echo     TITLE "%%f" >> %cuename%
  echo     INDEX 01 00:00:00 >> %cuename%
)