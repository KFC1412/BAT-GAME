:jd1
@echo off
color 1f
title Initialization...
rem   Progress bar ▉▉▉▉▉
set work=0
set n=0
set mo=0
set number=0
rem  all是总数
set all=60
set tim=%all%
:show
:check
if %number% GTR %mo% set num=%num%▉&set /a mo=%mo%+1&goto check
:2
cls
echo  Schedule： %n% / %all%                 Remainder:%tim%s
echo.
echo.
echo                   Complete %work% %%%
echo.
if not "%num%"=="" echo       %num%
if not "%num%"=="" echo       %num%
if %work%==100 goto end
ping 127.1 -n 1 >nul
set /a n=%n%+1
set /a tim=%all%-%n%
set /a work=(%n%)*100/(%all%)
set /a number=%work%/3
set /a number=%number%+1
goto show
endlocal
:end
endlocal
echo.
echo Press any key to continue
pause > nul
goto jd2
@echo off
set var=">"
set/p=Loading： <nul
ping -n 2 127.1>nul
for /l %%i in (1,1,20) do (
set/p=%var%<nul
ping -n 2 127.1>nul
)
echo.
echo.

pause

:jd2
cls
color 1f
echo.
echo  Initialization. . . 
echo.
echo  ┌──────────────────────────────────────┐
for /L %%i in (1 1 38) do set /p a=■<nul&ping /n 1 127.0.0.1>nul
echo   100%%
echo  └──────────────────────────────────────┘
echo.
echo Press any key to continue
pause>nul

:csh
title Loading...&echo off&color 0a&cls
echo Initializing...
timeout /t 1 /nobreak > nul&cls
echo GAME Loading...
timeout /t 1 /nobreak > nul&cls
goto warn

:warn
cls
title Warning
timeout /t 1 /nobreak > nul&cls
echo ===================================WARNING===================================
echo                             Health game advice
echo                    Resist bad games and pirated games.
echo       Pay attention to self-protection and beware of being deceived.
echo Moderate gaming benefits the brain, while addiction to gaming harms the body.
echo            Reasonably arrange your time and enjoy a healthy life.
echo =============================================================================
timeout /t 1 /nobreak > nul
echo                          Copyright by EDUCN 2022
echo                        Call by NSPTT ID:231168828
echo                         https://educn.rth1.link/
timeout /t 3 /nobreak > nul&cls
goto stear

:stear
cls
title Account Confirmation
echo ==============GAME==============
echo Welcome to play GAME made by EDUCN
timeout /t 1 /nobreak > nul
call:t01
echo.
echo Please type "enter" to start the game
set input=
set /p input=INPUT PASSWORD:
IF "%input%"=="enter" goto index else(goto stear)
IF "%input%"=="exit" goto tc
cls&goto stear

:index
cls
color 0a&title GAME
echo ===========GAME===========
echo [1]      New Game
echo [log]    Look Log
echo [dl]     Delete Log
echo [re]     reload
echo [about]  About
echo [exit]   Exit
echo ==========================
set input=
set /p input=Your Select:
IF "%input%"=="1" cls&echo.&echo =======[date] >> log.txt&echo %date% %time% >> log.txt&goto bj
IF "%input%"=="log" cls&ver&vol&echo.&more log.txt&echo.&pause
IF "%input%"=="dl" echo %date% %time% > log.txt&echo ========[Cover Log]======== >> log.txt&more log.txt&echo Over&pause
IF "%input%"=="re" timeout /t 1 /nobreak > nul&cls&goto jd2
IF "%input%"=="about" cls&goto dh
IF "%input%"=="exit" goto tc
goto index

:bj
timeout /t 1 /nobreak > nul&cls&echo Game Background&pause > nul
echo You are a high school student with no friends, and you are always alone in everything you do.
pause > nul
echo Suddenly one day, a transfer student came to the class. This transfer student is very lively and outgoing.
pause > nul
goto xz001

:xz001
echo ====================================
echo By chance, you met a transfer student in the hallway.
echo At this moment, will you?
echo.
echo [1] Go and greet the transfer students.
echo [2] Turn around and silently leave.
echo.
:p001
set input=
set /p input=Your Select:
IF "%input%"=="1" cls&goto s001
IF "%input%"=="2" cls&goto s002
IF "%input%"=="exit" goto tc0
goto p001

:s001
echo You walked up to the transfer student and said, "Hello, my name is Hu Li.".
pause > nul
echo The transfer student said, "Hello, I'm new here, my name is Liu Yi.".
pause > nul
goto xz002

:xz002
echo ====================================
echo By chance, you met a transfer student in the hallway.
echo At this moment, will you?
echo.
echo [1] Go and greet the transfer students.
echo [2] Turn around and silently leave.
echo.
:p002
set input=
set /p input=Your Select:
IF "%input%"=="1" cls&goto s003
IF "%input%"=="2" cls&goto s004
IF "%input%"=="exit" goto tc0
goto p002


:s002
echo.
pause > nul
goto end01








:dh
@echo off&setlocal enabledelayedexpansion
color 1c&title 动画
set "str=e d u c n . r t h 1 . l i n k"&set /a n=31
echo.&echo.&echo.&set /p=               <nul
for %%a in (%str%) do (
     set /a n-=1
     for /l %%b in (!n!,-1,0) do ( 
         for /l %%c in (1,1,%%b) do set /p=_<nul
         set /p=%%a<nul&set /a num=%%b+1
         for /l %%d in (1,1,100) do echo>nul
         for /l %%e in (1,1,!num!) do set /p= <nul
     )
     set /p=%%a<nul
)
ping /n 3 127.1>nul&set /a n=1
for /l %%a in (1,1,8) do (
     for /l %%c in (1,1,14) do set /p= <nul
     set /a n+=1&color 1!n!
     set /p=EDUCN educn.rth1.link<nul
     for /l %%b in (1,1,100) do echo>nul
)
pause>nul
goto index





:end01
cls
echo END 0/0
echo YOU WIN
echo END 0/0 >> log.txt
pause > nul
goto index









:ta0
echo GLaDOS:this is your ip
ipconfig/all
goto t2



:t01
echo.
echo %date% %time%
goto:eof

:tc0
timeout /t 5 /nobreak
goto index
goto:eof

:tc
cls
timeout /t 5 /nobreak
exit
goto:eof

echo.&pause>nul

