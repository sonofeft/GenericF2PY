
rem set python path variable
set MYPYTHONPATH=D:\Python38_64

rem set name of FORTRAN program (also import name of compiled module)
set MYPROGRAMNAME=fprog

rem Make sure that PATH is as simple as possible
set PATH=C:\MinGW\mingw64\bin;C:\MinGW\mingw64\lib;C:\MinGW\mingw64\x86_64-w64-mingw32\lib;%MYPYTHONPATH%;%MYPYTHONPATH%\Scripts

python -m numpy.f2py -m %MYPROGRAMNAME% -c %MYPROGRAMNAME%.f  --opt="-shared -static" --compiler=mingw32 

rem Test the compiled module
python checkout.py

