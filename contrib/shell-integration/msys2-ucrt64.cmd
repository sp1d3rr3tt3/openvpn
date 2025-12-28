@echo off
rem Launch MSYS2 UCRT64 shell in the current directory
set MSYS2_HOME=C:\msys64
if not exist "%MSYS2_HOME%\msys2_shell.cmd" (
  echo MSYS2 launcher not found at %MSYS2_HOME%\msys2_shell.cmd
  exit /b 1
)
pushd %~dp0
start "MSYS2 UCRT64" "%MSYS2_HOME%\msys2_shell.cmd" -ucrt64 -here
popd
