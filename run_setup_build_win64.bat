

SET "MYPYTHONPATH=D:\python37_64"
rem SET "MYPYTHONPATH=C:\Python310"

rem Make sure that PATH is as simple as possible
set PATH=C:\MinGW\mingw64\bin;C:\MinGW\mingw64\lib;C:\MinGW\mingw64\x86_64-w64-mingw32\lib;%MYPYTHONPATH%;%MYPYTHONPATH%\Scripts


pip uninstall -y genericf2py

python setup.py build --compiler=mingw32

python setup.py install
rem python setup.py bdist_wheel

rem move away from setup directory.
cd D:\
D:
rem Test the compiled module
rem python .\genericf2py\main.py
python -c "from genericf2py.main import main; main()"

