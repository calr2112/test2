@echo off

:checkargs
if "%1" == "" goto usage
if "%2" == "" goto usage

set input=%1
set query_output=query_output_tmp
set output=%2
set user=pov
set password="pwd"
set mode=extra

c:\Python27\python prsclient.py run %input% -o %query_output% -u %user% -p %password% -m %mode% -U https://jpmc_url.tobeused.com/ -v v1 -k 10 -t 10 -P

c:\Python27\python prsclient.py convert -i %query_output% -o %output% -t flattened_prs -m %mode%

goto:end

:usage
echo You must pass two parameters: 
echo parmeter 1: the text file containing the ani's
echo parmater 2: the name of the resulting json file.
echo.
echo run_prs.cmd prslookup.txt output.json

:end
