@echo off 
setlocal enabledelayedexpansion

call :verify_integrity

:start
rem final message
set fim_txt=Thank you for enhancing your computer's performance with EasyCleanMate!

rem progress indicator
set /a conclusao=0

rem progress bar 
set progress_bar=-

set name=ECM
set type_version=beta
set version_number=0.4.4
set /a year=2025
set name=ECM
set nameVersion=%name%_%version_number%_%type_version%_%year%

rem file to save output hashcode
set "hashoutput=%nameVersion%.txt"

rem command to get SHA256
rem set "gethash=CertUtil -hashfile "\%nameVersion%.bat\" SHA256"

title Easy Clean Mate!%version_number%

rem log file
set send_to_log=>> log.txt 2>&1

rem goto test_hash

rem create a parte name for each part of the cleaning process
set part_name=parte

rem envila dados inicial para o log
echo ============================================================ >> log.txt
echo Easy Clean Mate! %version_number% >> log.txt
echo %username% >> log.txt
echo %computername% >> log.txt
echo %timestamp% >> log.txt
echo ============================================================ >> log.txt

Rem começa o processo de limpeza
goto Interface

rem CCleaner64
:parte1
echo parte %conclusao%
set part_name=cleaner64
taskkill /F /IM "ccleaner64.exe"    >> log.txt 2>&1 

call :Interface

rem CCleaner32
:parte%conclusao%
echo parte %conclusao%
set part_name=cleaner
taskkill /F /IM "ccleaner.exe"    >> log.txt 2>&1

call :Interface

REM Apaga todas as pastas temporárias e arquivos temporários do usuário
:parte%conclusao%
set part_name=windows_temp
del /q /f /s %tmp%
takeown /A /R /D Y /F C:\Users\%USERNAME%\AppData\Local\Temp\    >> log.txt 2>&1 
icacls C:\Users\%USERNAME%\AppData\Local\Temp\ /grant administradores:F /T /C >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Temp\ >> log.txt 2>&1
md C:\Users\%USERNAME%\AppData\Local\Temp\  >> log.txt 2>&1
del /q /f /s C:\Windows\Prefetch >> log.txt 2>&1

REM Apaga os arquivos de \Windows\Temp
:parte%conclusao%
set part_name=windows_prefetch

takeown /A /R /D Y /F C:\windows\temp  >> log.txt 2>&1
icacls C:\windows\temp /grant administradores:F /T /C  >> log.txt 2>&1
rmdir /q /s c:\windows\temp  >> log.txt 2>&1
md c:\windows\temp >> log.txt 2>&1

call :Interface

REM Apaga os arquivos temporários do Edge
:parte%conclusao%
set part_name=edge
REM comandos:
taskkill /F /IM "msedge.exe"    >> log.txt 2>&1  
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\data*.  >> log.txt 2>&1
echo aguarde
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\f*.  >> log.txt 2>&1
echo aguarde
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\index.    >> log.txt 2>&1  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\Database\  >> log.txt 2>&1
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\  >> log.txt 2>&1
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\ScriptCache\  >> log.txt 2>&1
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\  >> log.txt 2>&1
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\GrShaderCache\GPUCache\  >> log.txt 2>&1
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\ShaderCache\GPUCache\  >> log.txt 2>&1
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Storage\ext\  >> log.txt 2>&1
echo aguarde


:parte%conclusao%
set part_name=edge_profile1
REm comandos:
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\data*.  >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\f*.  >> log.txt 2>&1

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\index.    >> log.txt 2>&1  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\Database\  >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\  >> log.txt 2>&1

cls
REM Apaga os arquivos temporários do Edge Profile 1
:parte%conclusao%
set part_name=edge_profile1
REM comandos:
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\  >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\GPUCache\  >> log.txt 2>&1

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Storage\ext\  >> log.txt 2>&1
call :Interface

REM Apaga os arquivos temporários do Edge Profile 2
:parte%conclusao%
set part_name=edge_profile2
REM comandos:
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\data*.  >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\f*.  >> log.txt 2>&1

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\index.    >> log.txt 2>&1  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\Database\  >> log.txt 2>&1
cls
:parte%conclusao%
REM comandos continue:
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\  >> log.txt 2>&1

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\  >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\GPUCache\  >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Storage\ext\  >> log.txt 2>&1
call :Interface

rem Apaga os arquivos temporários do Firefox
:parte%conclusao%
set part_name=firefox
REM comandos:
taskkill /F /IM "firefox.exe"    >> log.txt 2>&1  
REM define qual é a pasta Profile do usuário e deleta seus arquivos temporários
REM o comando findstr ".*\.default-release" é para encontrar a pasta Profile do usuário
REM comandos:
set parentfolder=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\  
for /f "tokens=*" %%a in ('"dir /b "%parentfolder%"|findstr ".*\.default-release""') do set folder=%%a  
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\entries\*.  >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.bin  >> log.txt 2>&1
cls
:parte%conclusao%
REM comandos continue:
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.lz*  >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\index*.*  >> log.txt 2>&1

del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.little  >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\*.log /s /q  >> log.txt 2>&1
call :Interface


:parte%conclusao%
set part_name=vivaldi
REM comandos:
taskkill /F /IM "vivaldi.exe"    >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\data*. >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\f*. >> log.txt 2>&1   
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\index.   >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\ >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\    >> log.txt 2>&1
cls
:parte%conclusao%
REM comandos continue:
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\ScriptCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\GrShaderCache\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\ShaderCache\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Storage\ext\    >> log.txt 2>&1
call :Interface


:parte%conclusao%
set part_name=vivaldi_profile1
REM comandos continue:
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\data*.    >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\f*.    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\Database\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Storage\ext\    >> log.txt 2>&1
call :Interface


:parte%conclusao%
set part_name=vivaldi_profile2
REM comandos continue:
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\data*.    >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\f*.    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\Database\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Storage\ext\    >> log.txt 2>&1
call :Interface


:parte%conclusao%
set part_name=brave
REM comandos:
taskkill /F /IM "brave.exe"    >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\index.    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\    >> log.txt 2>&1
cls
:parte%conclusao%
REM comandos continue:
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\ScriptCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\GrShaderCache\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\ShaderCache\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\ext\    >> log.txt 2>&1

call :Interface

REM Apaga os arquivos temporários do Brave Profile 1
:parte%conclusao%
REM comandos continue:
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\data*.    >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\f*.    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\Database\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\GPUCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Storage\ext\    >> log.txt 2>&1


call :Interface

REM Apaga os arquivos temporários do Brave Profile 2
:parte%conclusao%
REM comandos continue:

del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\data*.    >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\f*.    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\Database\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\        >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\    >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\GPUCache\        >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Storage\ext\        >> log.txt 2>&1


call :Interface

REM Apaga os arquivos temporários do Chrome
:parte%conclusao%
set part_name=chrome
REM comandos:
taskkill /F /IM "chrome.exe"    >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\data*.          >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\f*.          >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\index.    >> log.txt 2>&1  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\          >> log.txt 2>&1
cls
:parte%conclusao%
REM comandos continue:
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\ScriptCache\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\GrShaderCache\GPUCache\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\ShaderCache\GPUCache\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Storage\ext\          >> log.txt 2>&1


call :Interface

REM Apaga os arquivos temporários do Chrome Profile 1
:parte%conclusao%
set part_name=chrome_profile1
REM comandos:
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\data*.          >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\f*.          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\Database\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\GPUCache\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Storage\ext\          >> log.txt 2>&1



REM Apaga os arquivos temporários do Chrome Profile 2
:parte%conclusao%
REM comandos:
set part_name=chrome_profile2
call :Interface
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\data*.          >> log.txt 2>&1
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\f*.          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\Database\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\GPUCache\          >> log.txt 2>&1
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Storage\ext\           >> log.txt 2>&1


REM Apaga os arquivos temporários do Disk Cleanup
REM Tela para usuário aguardar
:parte%conclusao%
set part_name=disk_cleanup
call :Interface
REM comandos:
echo  +---------------------------------------------------------------------+
echo  -          Espere a conclusao da Limpeza de disco , isso pode demorar -                                 
echo  - alguns minutos dependendo da situacao de cada computador.*          -
echo  +---------------------------------------------------------------------+
echo                 [voce sera notificado ao fim da limpeza]
echo.
echo  Notas:
echo  Se for a primeira vez de uso. Pode demorar bastante tempo.
echo  A tela pode parecer congelada algumas vezes.
echo  Se esse for o caso: aguarde 30 minutos e tente novamente
echo.
cleanmgr.exe /sagerun:n 

REM Tela de conclusão
:partfinal
set /a conclusao=100
set part_name=final
CLS
REM comandos:
echo.
echo  +----------------------------------------------------------+
echo  -                                                          -
echo  -          Thank you for choosing EasyCleanMate!           -
echo  -                                                          -
echo  +----------------------------------------------------------+
echo.
echo  +----------------------------------------------------------+
echo  -                                                          -
echo  -                   Cleaning Complete                      -
echo  -                                                          -
echo  +----------------------------------------------------------+
echo.
echo   ##      #      #####      ##    #       ####    #####    ####   
echo  #       # #     # # #    #   #   #       #         #      #
echo  #       # #     # # #    # ##    #       # #       #      # #
echo  #       # #     # # #    #       #       #         #      #
echo   ##      #      # # #    #       ###     ####      #      ####
echo.
echo  +----------------------------------------------------------+
echo  -                                                          -
echo  -  Thank you for enhancing your computer's performance     -
echo  -                  with EasyCleanMate!                     -
echo  -                                                          -
echo  +----------------------------------------------------------+
echo.
rem %gethash%
echo.
echo.
echo +----------------------------------------------------------+
rem echo Confira o hash do arquivo: %nameVersion%
rem certutil -hashfile %nameVersion%.bat SHA256
rem %gethash% > %hashoutput%
rem echo SHA256 Hash do arquivo: %nameVersion% >> hash.txt
rem CertUtil -hashfile %nameVersion%.bat SHA256 >> log.txt
rem echo %name% %nameVersion%: %nameVersion%.exe >> hash.txt
rem CertUtil -hashfile %nameVersion%.exe SHA256 >> log.txt
echo.
echo.
rem echo Hash do arquivo salvo com sucesso em "hash.txt" neste local.
echo You can find log file here: log.txt
echo Press any key to close this window.
pause > nul
MSG * %fim_txt%

REM TODO: test hash
Rem :test_hash
rem echo %gethash%

rem chama a sub-rotina para criar o log
call :log

REM Remove granted permissions
echo.
echo Removendo permissões concedidas para a pasta Temp e Windows\Temp >> log.txt 2>&1
icacls C:\Users\%USERNAME%\AppData\Local\Temp\ /remove:g administradores /T /C >> log.txt 2>&1
icacls C:\windows\temp /remove:g administradores /T /C >> log.txt 2>&1

REM Quita o script
exit










rem create log file
:log
echo. >> log.txt
echo ============================================================ >> log.txt
echo Easy Clean Mate! %version_number% -- %timestamp% >> log.txt
echo ============================================================ >> log.txt
echo. >> log.txt
goto :eof_code1

@REM REM atualiza a barra de progresso
@REM :UpdateProgressBar
@REM set progress_bar=
@REM for /L %%i in (1,1,%conclusao%) do (
@REM     set progress_bar=!progress_bar!-
@REM )
@REM goto :eof












:Interface
CLS
echo ====================================================================
echo                       E A S Y  C L E A N  M A T E
echo                               Version %version_number%
echo                         dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo       Logged in user: %username%       Computer: %computername%	
echo.
echo.	
time /t
date /t
echo.
echo  Note:
echo  The screen can frize somethimes.
echo.
echo  Progress: [%progress_bar%] %conclusao%%% - Current Task: %part_name%
echo.
echo.
echo. >> log.txt 2>&1
REM atualiza a contagem de conclusão
set /a conclusao=%conclusao%+1
echo %date% %time% %conclusao% parte%conclusao% %part_name% >> log.txt 2>&1
echo %timestamp% %conclusao% parte%conclusao% %part_name% >> log.txt 2>&1
REM atualiza a barra de progresso
set progress_bar=
for /L %%i in (1,1,%conclusao%) do (
    set progress_bar=!progress_bar!*
)

REM GetTimestamp
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do set mydate=%%d-%%b-%%c
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set mytime=%%a:%%b
set timestamp=%mydate% %mytime%


if %conclusao% equ 999 goto partfinal
if %conclusao% equ %conclusao% goto parte%conclusao%



rem ========Verificacao de Hash =======================================================
:verify_integrity
echo Verificando a hash do arquivo... (function)

rem Lê a hash esperada do arquivo de texto
set /p expected_integrity=<key

rem Calcula a hash do arquivo atual
for /f "tokens=*" %%i in ('certutil -hashfile "%~f0" SHA256 ^| find /i /v "certutil" ^| find /i /v "hash"') do set actual_hash=%%i

rem Remove espaços em branco da hash calculada
set actual_hash=!actual_hash: =!

rem Compara a hash calculada com a hash esperada
if /i "!actual_hash!" neq "!expected_integrity!" goto :eof_code2

rem Continua com o script se a hash estiver correta
echo Hash correta! Continuando com o script...

echo integrity verified! >> log.txt 2>&1
goto :start

rem ===============================================================

rem Finaliza o script se a hash estiver incorreta
:eof_code2
echo =============================================================== >> log.txt 2>&1
echo %timestamp% %nameVersion% integrity verification failed! >> log.txt 2>&1
echo certutil -hashfile "%~f0" SHA256 >> log.txt 2>&1
echo.
echo integrity verification failed!
echo.
echo The file may have been modified or tampered with.
echo Please download the file again from the official website: https://fel-dev.github.io/EasyCleanMate/
MSG * Integrity verification failed!
echo integrity verification failed with exit: code 2! >> log.txt 2>&1
echo.
echo.
pause
exit

rem Finaliza o script se o script for executado normalmente
:eof_code1
echo =============================================================== >> log.txt 2>&1
echo 
echo Code 1 Exiting >> log.txt 2>&1
echo =============================================================== >> log.txt 2>&1
exit
