
rem ---------------------------------------------------------------------------------------------------------------------------------------------

rem modify the input file name
set input=Speaker_IE-C

rem ---------------------------------------------------------------------------------------------------------------------------------------------
set OS_path=C:\Altair\hw2018\hwsolvers
set OS_build=%OS_path%\optistruct\bin\win64\optistruct_2018.0.1_win64.exe

rem ---------------------------------------------------------------------------------------------------------------------------------------------
set ALTAIR_LICENSE_PATH=v:\eng_apps\altair_lic_v2019.dat

rem ---------------------------------------------------------------------------------------------------------------------------------------------
set LD_LIBRARY_PATH=%OS_path%\common\bin\win64
set RADFLEX_PATH=%OS_path%\common\bin\win64
set path=%path%;%OS_path%\optistruct\bin\win64


REM set LD_LIBRARY_PATH=R:\apps\altair2019\solver_2019
REM set RADFLEX_PATH=R:\apps\altair2019\solver_2019
REM set path=%path%;R:\apps\altair2019\solver_2019;%path%;

SET mypath=%~dp0
echo %mypath:~0,-1%

cd /d %mypath%


rem ---------------------------------------------------------------------------------------------------------------------------------------------
mkdir %input%
copy %input%.fem .\%input%\%input%.fem
cd /d %input%
rem call "V:\apps\altair2017.2.3_REL_win64\hw2017.2.3\hwsolvers\common\bin\win64\radflex_2017_win64.exe" -version
call %OS_build% -version
call %OS_build% %input%.fem