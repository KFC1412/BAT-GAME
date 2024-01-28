echo off&color 0a&title install
echo install错误>loadbug.txt
:logo
cls
echo. XXXXX  XXXX    X    X   XXXX   XX    X
echo. X      X   X   X    X  X    X  X X   X
echo. XXXXX  X    X  X    X  X       X  X  X
echo. X      X   X   X    X  X    X  X   X X
echo. XXXXX  XXXX     XXXX    XXXX   X    XX
echo.
echo Loading...
timeout /t 5 /nobreak > nul
goto xz
:xz
cls
echo install
timeout /t 3 /nobreak > nul
goto yszc
:yszc
more yszc.txt
echo ========================
echo [Y/y] 同意  [N/n] 不同意
set input=
set /p input=选择:
IF "%input%"=="Y" del loadbug.txt&del yszc.txt&cls&goto az
IF "%input%"=="y" del loadbug.txt&del yszc.txt&cls&goto az
IF "%input%"=="N" del loadbug.txt&goto dis
IF "%input%"=="n" del loadbug.txt&goto dis
IF "%input%"=="x" del loadbug.txt&exit
goto yszc

:az
timeout /t 3 /nobreak > nul
echo ========================
echo     Demo version
echo     请选择安装语言
echo ========================
echo  [1]    简体中文
echo  [2]    English
echo  [x]    退出 EXIT
echo ========================
set input=
set /p input=Language 语言 选择:
IF "%input%"=="1" del loadbug.txt&goto zh
IF "%input%"=="2" del loadbug.txt&goto en
IF "%input%"=="x" del loadbug.txt&exit
goto az

:dis
cls
echo ===========================
echo 安装已取消
echo 原因：不同意EDUCN隐私政策
echo ===========================
echo 按任意键退出
pause > nul
exit

:zh
echo GAME帮助文档 > 帮助文档.txt
echO GAME 由 EDUCN 制作 >> 帮助文档.txt
echo 交流论坛： http://educn.freeee.cf/1/ >> 帮助文档.txt
echo Copyright EDUCN 2023 >> 帮助文档.txt
ren bin-zh.bat 开始游戏.bat
del bin-en.bat
ren zh.bat GAME-zh.bat
del en.bat
del install.bat

:en
echo GAME Help Doc > Help.txt
echO GAME produced by EDUCN >> Help.txt
echo Forum: http://educn.freeee.cf/1/ >> Help.txt
echo Copyright EDUCN 2023 >> Help.txt
ren bin-en.bat Start.bat
del bin-zh.bat
ren en.bat GAME-en.bat
del zh.bat
del install.bat