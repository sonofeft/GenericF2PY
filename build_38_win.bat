
rem 1st do 32 bit 

call run_setup_build_win32.bat 38  > build_results.txt
python .\genericf2py\main.py >> build_results.txt

call run_setup_build_win64.bat 38 >> build_results.txt
python .\genericf2py\main.py >> build_results.txt

rem display final results
type build_results.txt

