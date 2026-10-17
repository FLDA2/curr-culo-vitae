@echo off
title Descarregar Executavel CV
color 0A

echo ===================================================
echo   DESCARREGANDO O EXECUTAVEL DO CURRICULO (TGEI)
echo ===================================================
echo.

set "URL_DO_EXE=https://github.com/filipepereira411/curr-culo-vitae"
set "NOME_DO_ARQUIVO=CurriculumVitae.exe"

echo A iniciar o download direto via PowerShell...
powershell -Command "(New-Object Net.WebClient).DownloadFile('%URL_DO_EXE%', '%~dp0%NOME_DO_ARQUIVO%')"

if exist "%~dp0%NOME_DO_ARQUIVO%" (
    echo.
    echo [SUCESSO] O seu executavel '%NOME_DO_ARQUIVO%' foi descarregado com sucesso na mesma pasta!
    echo A abrir o ficheiro...
    start "" "%~dp0%NOME_DO_ARQUIVO%"
) else (
    echo.
    echo [ERRO] Nao foi possivel descarregar o ficheiro.
    echo Verifique a ligacao a Internet ou o URL configurado.
)

echo.
pause