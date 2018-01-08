@echo off
cd %~dp0

for %%f in (%*) do (
  echo %%f
)
