@echo off
set PYTHON="c:\Python26\python.exe"
rd /S /Q build
%PYTHON% setup.py sdist --manifest-only
%PYTHON% setup.py build -c mingw32
copy build\lib.win32-2.6\linkcheck\HtmlParser\htmlsax.pyd linkcheck\HtmlParser
copy build\lib.win32-2.6\linkcheck\network\_network.pyd linkcheck\network