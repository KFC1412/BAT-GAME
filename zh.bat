:jd1
@echo off
:: 模拟进度，有剩余时间、已完成进度、进度条的显示
color 1f
title 初始化...
rem   进度条 ▉▉▉▉▉
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
echo  进度： %n% / %all%                   剩余时间:%tim%秒
echo.
echo.
echo                   完成 %work% %%%
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
pause
goto jd2
@echo off
set var=">"
set/p=正在加载： <nul
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
echo  程序正在初始化. . . 
echo.
echo  ┌──────────────────────────────────────┐
for /L %%i in (1 1 38) do set /p a=■<nul&ping /n 1 127.0.0.1>nul
echo   100%%
echo  └──────────────────────────────────────┘
echo.
pause

:csh
title 加载中...&echo off&color 0a&cls
echo 初始化...
timeout /t 1 /nobreak > nul&cls
echo GAME 加载中...
timeout /t 1 /nobreak > nul&cls
goto warn

:warn
cls
title 健康游戏忠告
timeout /t 1 /nobreak > nul&cls
echo ==============WARNING==============
echo            健康游戏忠告
echo     抵制不良游戏，拒绝盗版游戏。
echo     注意自我保护，谨防受骗上当。
echo     适度游戏益脑，沉迷游戏伤身。
echo     合理安排时间，享受健康生活。
echo ===================================
timeout /t 1 /nobreak > nul
echo      Copyright by EDUCN 2022
echo     Call by NSPTT ID:231168828
echo      https://educn.rth1.link/
timeout /t 3 /nobreak > nul&cls
goto stear

:stear
cls
title 账户确认
echo ============GAME============
echo 欢迎游玩由 EDUCN 制作的 GAME
timeout /t 1 /nobreak > nul
call:t01
echo.
echo 请键入 "enter" 以开始游戏
set input=
set /p input=输入口令:
IF "%input%"=="enter" goto index else(goto stear)
IF "%input%"=="exit" goto tc
cls&goto stear

:index
cls
color 0a&title GAME
echo ==========GAME==========
echo       [1]     新游戏
echo     [log]     查看日志
echo      [dl]     删除日志
echo      [re]     重新载入
echo   [about]     关于
echo    [exit]     退出
echo ========================
set input=
set /p input=你的选择:
IF "%input%"=="1" cls&echo.&echo =======[date] >> log.txt&echo %date% %time% >> log.txt&goto bj
IF "%input%"=="log" cls&ver&vol&echo.&more log.txt&echo.&pause&goto index
IF "%input%"=="dl" echo %date% %time% > log.txt&echo ========[Cover Log]======== >> log.txt&more log.txt&echo Over&pause
IF "%input%"=="re" timeout /t 1 /nobreak > nul&cls&goto jd2
IF "%input%"=="about" cls&goto dh
IF "%input%"=="exit" goto tc
echo 请键入选项前的代码
pause
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

