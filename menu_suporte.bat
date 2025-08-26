@echo off
title MENU DE SUPORTE E REPARO
color 05


@echo off
:MENU
cls
echo =================================================
echo         MENU DO SUPORTE TECNICO
echo Por Pablo Oliveira - Adaptado por Raul Cambiatti
echo                  V2.0  
echo =================================================
echo.

echo 1. Informacoes do Sistema
echo 2. Reparar Arquivos de Sistema (SFC)
echo 3. Limpar Arquivos Temporarios
echo 4. Verificar Erros de Memoria (Diagnostico)
echo 5. Restaurar Sistema
echo 6. Gerenciar Processos (Task Manager)
echo 7. Verificar Atualizacoes do Windows
echo 8. Verificar e Reparar Disco (CHKDSK)
echo 9. Limpar Cache DNS
echo 10. Reiniciar Servicos de Rede
echo 11. Desfragmentar Disco
echo 12. Gerenciar Usuarios Locais
echo 13. Verificar Integridade de Arquivos (DISM)
echo 14. Ativar/Desativar Firewall do Windows
echo 15. Ver Logs de Eventos
echo 16. Testar Velocidade de Disco
echo 17. Criar Ponto de Restauracao
echo 18. Executar Comando Personalizado (CMD)
echo 19. Atualizar Todos os Programas (Winget Update)
echo 20. Sair
echo ==============================================
set /p opcao=Escolha uma opcao (1-22): 

if "%opcao%"=="1" systeminfo | more
if "%opcao%"=="2" sfc /scannow
if "%opcao%"=="3" cleanmgr
if "%opcao%"=="4" mdsched
if "%opcao%"=="5" rstrui
if "%opcao%"=="6" taskmgr
if "%opcao%"=="7" powershell -command "Get-WindowsUpdateLog"
if "%opcao%"=="8" chkdsk
if "%opcao%"=="9" ipconfig /flushdns
if "%opcao%"=="10" netsh winsock reset & netsh int ip reset
if "%opcao%"=="11" defrag C:
if "%opcao%"=="12" lusrmgr.msc
if "%opcao%"=="13" DISM /Online /Cleanup-Image /ScanHealth
if "%opcao%"=="14" netsh advfirewall set allprofiles state off
if "%opcao%"=="15" eventvwr
if "%opcao%"=="16" winsat disk
if "%opcao%"=="17" powershell -Command "Checkpoint-Computer -Description 'Ponto de Restauracao Manual'"
if "%opcao%"=="18" cmd
if "%opcao%"=="19" winget update --all
if "%opcao%"=="20" exit

pause
goto MENU


