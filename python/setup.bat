@echo off
REM This will configure our environment to use python
echo Setting up environment for Python and SQL Labs
if exist "C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python39_64\python.exe" set PATH=%PATH%C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python39_64\;
if exist "C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python38_64\python.exe" set PATH=%PATH%C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python38_64\;
if exist "C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python37_64\python.exe" set PATH=%PATH%C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python37_64\;
if exist "C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python36_64\python.exe" set PATH=%PATH%C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python36_64\;
echo Make sure PIP is up to date
python -m pip install --upgrade pip --user
echo Install pyodbc if not already installed
python -m pip install pyodbc
