@ECHO OFF  
chcp 65001
SET NGINX_DIR=C:\Users\yw\Desktop\nginx-1.18.0\
color 0a 
TITLE Nginx Management  
GOTO MENU 
:MENU 
CLS 
ECHO. 
ECHO. * * * *  Nginx Management  * * * * * * * * * *
ECHO. * * 
ECHO. * 1 启动Nginx * 
ECHO. * * 
ECHO. * 2 关闭Nginx * 
ECHO. * * 
ECHO. * 3 重启Nginx * 
ECHO. * * 
ECHO. * 4 测试配置文件* 
ECHO. * *
ECHO. * 5 退出* 
ECHO. * *  
ECHO. * * * * * * * * * * * * * * * * * * * * * * * * 
ECHO. 
ECHO.请输入选择项目的序号:
set /p ID= 
IF "%id%"=="1" GOTO cmd1 
IF "%id%"=="2" GOTO cmd2 
IF "%id%"=="3" GOTO cmd3 
IF "%id%"=="4" GOTO cmd4 
IF "%id%"=="5" EXIT 
PAUSE 
:cmd1 
ECHO. 
ECHO.启动Nginx...... 
IF NOT EXIST %NGINX_DIR%nginx.exe ECHO %NGINX_DIR%nginx.exe不存在
cd %NGINX_DIR% 
IF EXIST %NGINX_DIR% start %NGINX_DIR%nginx.exe 
ECHO.Nginx已启动
PAUSE 
GOTO MENU 
:cmd2 
ECHO. 
ECHO.关闭Nginx...... 
taskkill /F /IM nginx.exe > nul 
ECHO.Nginx已关闭
PAUSE 
GOTO MENU 
:cmd3 
ECHO. 
ECHO.关闭Nginx...... 
taskkill /F /IM nginx.exe > nul 
ECHO.Nginx已关闭
GOTO cmd1 
GOTO MENU
:cmd4 
ECHO. 
ECHO.测试Nginx的配置文件...... 
nginx.exe -t 
ECHO.操作完成 
PAUSE 
GOTO MENU 