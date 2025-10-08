@echo off
REM ============================
REM Script para criar usuário e arquivos
REM ============================

REM 1️⃣ Criar a pasta Scripts dentro de Documents
mkdir "%USERPROFILE%\Documents\Scripts"

REM 2️⃣ Entrar na pasta Scripts
cd "%USERPROFILE%\Documents\Scripts"

REM 3️⃣ Criar os arquivos dono.txt, grupo.txt e outros.txt
type nul > dono.txt
type nul > grupo.txt
type nul > outros.txt

REM 4️⃣ Criar o usuário desenvolve com senha temporária 'senha123'
net user desenvolve senha123 /add

REM 5️⃣ Dar controle total do arquivo dono.txt ao usuário desenvolve
icacls dono.txt /setowner desenvolve
icacls dono.txt /grant desenvolve:(F)

REM 6️⃣ Dar controle total do arquivo grupo.txt ao usuário desenvolve
icacls grupo.txt /grant desenvolve:(F)

REM 7️⃣ Exibir lista de arquivos com permissões
icacls dono.txt grupo.txt outros.txt

echo.
echo ✅ Script finalizado!
pause
