 MODE COM3 BAUD=9600 PARITY=n DATA=8
    
  CHOICE /C:1234 /M "1: liga; 2: desliga; 3: pisca; 4: sair " 
  IF errorlevel 4 GOTO SAIR
  IF errorlevel 3 GOTO PISCA
  IF errorlevel 2 GOTO DESLIGA 
  IF errorlevel 1 GOTO LIGA
 
  :DESLIGA  
  ECHO b > COM3 
  GOTO END
 
  :LIGA
  ECHO a > COM3  
  GOTO END
 
  :PISCA
  ECHO c > COM3  
  GOTO END
 STOP
  :END
 