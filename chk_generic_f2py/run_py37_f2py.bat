
set PATH=D:\MinGW\bin;D:\MinGW\lib;D:\MinGW\mingw32\lib;D:\python37;D:\python37\Scripts

SET GCC=D:\mingw\bin\gcc.exe
SET PYTHON_LIB = D:\python37\libs

SET LIBRARY_PATH = D:\mingw\lib
SET G95_LIBRARY_PATH = D:\mingw\lib

SET C_INCLUDE_PATH=D:\mingw\include

d:\python37\python.exe -m numpy.f2py -c hi_ftn.pyf hi_ftn.f  --opt="-shared -static" --compiler=mingw32 
