Program Prosedur_aktual;
Uses Wincrt; 
Var Y:char; 
    m:byte; 
 
Procedure Tampil(x:char;n:byte); 
Var i:integer; 
Begin 
  for i := 1 to n do 
    Write(x); 
  Writeln; 
End; 
 
Begin 
  Tampil('+',8); 
  Tampil('*',10); 
  Tampil('A',5); 
  Y:='B'; 
  m:=11; 
  Tampil(Y,m); 
End.