# vim_compile
1. download from vim source from repository https://github.com/vim/vim
2. ground preparation for the compiler
..* download latest visual studio
..* download windows sdk, https://msdn.microsoft.com/en-us/windows/desktop/bg162891.aspx
..* paste win32.mak file into sdk directory, eg: C:\Program Files (x86)\Windows Kits\10\Include
3. run configuration file
..* more configurations, http://vimdoc.sourceforge.net/htmldoc/various.html#:version
4. run building file
5. to rebuild, run clean file
6. replace outputs into appropriate dir .exe

# References:
[blog by Michael Giuffrida](http://blog.mgiuffrida.com/2015/06/27/building-vim-on-windows.html)
[vim's official note](https://vim.fandom.com/wiki/Build_Vim_in_Windows_with_Visual_Studio)

