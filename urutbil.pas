Program Urut_bilangan;
Uses Wincrt; 
Var bil     : array [1..10] of integer; 
    i,j,n       : integer; 
 
Procedure Urut(x : integer); 
Var t : integer; 
Begin 
  For i := 1 to x-1 do 
    For j := i+1 to x do 
      Begin 
        if bil[i]>bil[j] then 
           Begin 
             t:=bil[i]; 
             bil[i]:=bil[j]; 
             bil[j]:=t; 
             
           End; 
      End; 
End;
Begin
  Gotoxy(30,1);Write('Program Urut Bilangan'); 
  Gotoxy(30,2);Write('===================='); 
  Gotoxy(1,4);Write('Jumlah Data : ');Readln(n); 
 
  For i := 1 to n do 
    Begin
      Gotoxy(1,5+i);Write('Input bilangan ke-',i,' : ');Readln(bil[i]);
    End; 
  Urut(n); 
  Writeln; 
  Writeln('Hasilnya: '); 
  For i := 1 to n do 
    Writeln('       ',bil[i]);
 
End.