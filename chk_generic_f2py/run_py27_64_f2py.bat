
set PATH=D:\MinGW64\bin;D:\MinGW64\lib;D:\mingw64\x86_64-w64-mingw32\lib;D:\Python27_64;D:\Python27_64\ScriptsD:\Python27_64\libs

SET GCC=D:\mingw64\bin\x86_64-w64-mingw32-gcc.exe
SET PYTHON_LIB = D:\Python27_64\libs

SET LIBRARY_PATH = D:\mingw64\lib
SET G95_LIBRARY_PATH = D:\mingw64\lib

SET C_INCLUDE_PATH=D:\mingw64\include

SET CC=gcc python setup.py build
python.exe -m numpy.f2py -c hi_ftn.pyf hi_ftn.f  --opt="-shared -static" --compiler=mingw32 
