rem @echo off

rem Target architecture, AMD64 (64-bit) or I386 (32-bit)
rem Toolchain, x86_amd64 (cross-compile 64-bit) or x86 (32-bit) or amd64 (64-bit)
rem TINY, SMALL, NORMAL, BIG or HUGE. NORMAL or above recommended
rem yes for gvim, no for vim
rem Whatever IDE integrations we don't need
rem UTF-8 encoding

set CPU=AMD64
set TOOLCHAIN=x86_amd64
set FEATURES=BIG
set GUI=yes
set NETBEANS=no
set MBYTE=yes

set DIR_VC=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community
set DIR_VIM=C:\my_vim\vim-master\vim-master\src
set DIR_PYTHON=C:\Users\kschong\AppData\Local\Programs\Python\Python37
set SDK_INCLUDE_DIR=C:\Program Files (x86)\Windows Kits\10\Include

set DYNAMIC_PYTHON3=yes
set PYTHON3=%DIR_PYTHON%
set PYTHON3_VER=37

:: Enable Python scripting
rem set DYNAMIC_PYTHON=yes
rem set PYTHON=C:\Python27
rem set PYTHON_VER=27

echo "Configuring Visual Studio..."

cd %DIR_VIM% 

call "%DIR_VC%\VC\Auxiliary\Build\vcvarsall.bat" %TOOLCHAIN%
call "%DIR_VC%\VC\Tools\MSVC\14.16.27023\bin\Hostx86\x86\nmake.exe" -f "%DIR_VIM%\Make_mvc.mak"

rem call "%DIR_VC%\VC\Tools\MSVC\14.16.27023\bin\Hostx86\x86\nmake" -f "%DIR_VIM%\Make_mvc.mak" clean
pause
