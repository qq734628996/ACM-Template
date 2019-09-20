@echo off
chcp 65001
cls

call clean
cls

set ARTICLE=tjumain
latex -synctex=1 %ARTICLE%
bibtex %ARTICLE%
latex -synctex=1 %ARTICLE%
latex -synctex=1 %ARTICLE%
dvipdfmx  %ARTICLE%.dvi

call clean
