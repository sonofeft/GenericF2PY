
rem set python path variable (Default is Python 3.5 64 bit)
IF "%1"=="" ( SET "MYPYTHONPATH=D:\Python37_64" ) ELSE ( SET "MYPYTHONPATH=D:\Python%1_64" )

rem Make sure that PATH is as simple as possible
set PATH=C:\MinGW\mingw64\bin;C:\MinGW\mingw64\lib;%MYPYTHONPATH%;%MYPYTHONPATH%\Scripts

pip uninstall -y genericf2py

python setup.py build --compiler=mingw32

python setup.py install
python setup.py bdist_wheel

rem Test the compiled module
python .\genericf2py\main.py
