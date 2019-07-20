
rem Make sure that PATH is as simple as possible
set PATH=C:\MinGW\mingw64\bin;C:\MinGW\mingw64\lib;C:\MinGW\mingw64\x86_64-w64-mingw32\lib;D:\Python37_64;D:\Python37_64\Scripts

rem set environment variables for MinGW
SET GCC=C:\MinGW\mingw64\bin\x86_64-w64-mingw32-gcc.exe
SET PYTHON_LIB = D:\Python37_64\libs

SET LIBRARY_PATH = C:\MinGW\mingw64\lib
SET G95_LIBRARY_PATH = C:\MinGW\mingw64\lib

SET C_INCLUDE_PATH=C:\MinGW\mingw64\include

SET CC=gcc python setup.py build

python -m numpy.f2py -m fprog -c fprog.f  --opt="-shared -static" --compiler=mingw32 

rem Test the compiled module
python checkout.py
