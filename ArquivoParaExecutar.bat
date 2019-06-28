ECHO .
Set /p NUM="Qual e o numero do COM?(SOMENTE O NUMERO):"

:loop

cd C:\xampp\htdocs\AutomaTIK
curl https://automatik.000webhostapp.com/AutomaTIK/loan/file > script.bat

call script.bat

echo Executou com o COM%NUM%

goto loop

