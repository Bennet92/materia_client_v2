@echo off
setlocal EnableDelayedExpansion

set LOGINSERVER=login.materia-rpg.games
set GAMESERVER=game.materia-rpg.games
set APP=materia.exe

start  ./cloudflared-windows-amd64.exe access tcp --hostname %LOGINSERVER% --url tcp://localhost:8080 --log-level=debug
start  ./cloudflared-windows-amd64.exe access tcp --hostname %GAMESERVER% --url tcp://localhost:7172 --log-level=debug
start "" "%APP%"