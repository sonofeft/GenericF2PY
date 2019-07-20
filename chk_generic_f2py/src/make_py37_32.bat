
rem Make sure that PATH is as simple as possible
set PATH=C:\MinGW\mingw32\bin;C:\MinGW\mingw32\lib;C:\MinGW\mingw32\lib;D:\python37;D:\python37\Scripts

rem set environment variables for MinGW
SET GCC=C:\MinGW\mingw32\bin\gcc.exe
SET PYTHON_LIB = D:\python37\libs

SET LIBRARY_PATH = C:\MinGW\mingw32\lib
SET G95_LIBRARY_PATH = C:\MinGW\mingw32\lib

SET C_INCLUDE_PATH=C:\MinGW\mingw32\include

SET CC=gcc python setup.py build

python -m numpy.f2py -m fprog -c fprog.f  --opt="-shared -static -static-libgcc -static-libgfortran" --compiler=mingw32 

rem Test the compiled module
python checkout.py
