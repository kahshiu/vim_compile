rem to run this properly on plugin vimproc
rem 1. place this file inside of vimproc directory C:\Users\kschong\.vim\plugged\vimproc.vim
rem 2. execute this in "visual studio command prompt" 
rem 3. execute cd to C:\Users\kschong\.vim\plugged\vimproc.vim
rem 4. execute this file from within
rem
call nmake.exe -f make_msvc.mak nodebug=1 "SDK_INCLUDE_DIR=C:\Program Files (x86)\Windows Kits\10\Include"
