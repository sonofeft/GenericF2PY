
set PATH=D:\MinGW\bin;D:\MinGW\lib;D:\MinGW\mingw32\lib;D:\Python27;D:\Python27\ScriptsD:\Python27\libs

SET GCC=D:\mingw\bin\gcc.exe
SET PYTHON_LIB = D:\Anaconda2\libs

SET LIBRARY_PATH = D:\mingw\lib
SET G95_LIBRARY_PATH = D:\mingw\lib

SET C_INCLUDE_PATH=D:\mingw\include

python.exe -m numpy.f2py -c hi_ftn.pyf hi_ftn.f  --opt="-shared -static" --compiler=mingw32 
