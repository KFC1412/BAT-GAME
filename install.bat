echo off&color 0a&title install
echo install����>loadbug.txt
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
echo [Y/y] ͬ��  [N/n] ��ͬ��
set input=
set /p input=ѡ��:
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
echo     ��ѡ��װ����
echo ========================
echo  [1]    ��������
echo  [2]    English
echo  [x]    �˳� EXIT
echo ========================
set input=
set /p input=Language ���� ѡ��:
IF "%input%"=="1" del loadbug.txt&goto zh
IF "%input%"=="2" del loadbug.txt&goto en
IF "%input%"=="x" del loadbug.txt&exit
goto az

:dis
cls
echo ===========================
echo ��װ��ȡ��
echo ԭ�򣺲�ͬ��EDUCN��˽����
echo ===========================
echo ��������˳�
pause > nul
exit

:zh
echo GAME�����ĵ� > �����ĵ�.txt
echO GAME �� EDUCN ���� >> �����ĵ�.txt
echo ������̳�� http://educn.freeee.cf/1/ >> �����ĵ�.txt
echo Copyright EDUCN 2023 >> �����ĵ�.txt
ren bin-zh.bat ��ʼ��Ϸ.bat
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