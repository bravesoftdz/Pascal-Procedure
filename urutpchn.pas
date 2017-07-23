Program Urut_Pecahan;
Uses Wincrt; 
Var pmb,pny     : array [1..10] of integer; 
    i,j,n       : integer; 
 
Procedure Urut(x : integer); 
Var t1,t2 : integer; 
Begin 
  For i := 1 to x-1 do 
    For j := i+1 to x do 
      Begin 
        if ((pmb[i]/pny[i])>(pmb[j]/pny[j])) then 
           Begin 
             t1:=pmb[i]; 
             t2:=pny[i]; 
             pmb[i]:=pmb[j]; 
             pny[i]:=pny[j];
             pmb[j]:=t1; 
             pny[j]:=t2; 
           End; 
      End; 
End;
Begin
  Gotoxy(30,1);Write('Program Urut Pecahan'); 
  Gotoxy(30,2);Write('===================='); 
  Gotoxy(1,4);Write('Jumlah Data Pecahan: ');Readln(n); 
 
  For i := 1 to n do 
    Begin 
      Gotoxy(1,5+i);Write('Input Pecahan ke-',i,' : ');Readln(pmb[i]);
      Gotoxy(24,5+i);Write(' / ');Readln(pny[i]);
    End; 
  Urut(n); 
  Writeln; 
  Writeln('Hasilnya: '); 
  For i := 1 to n do 
    Writeln('    ',pmb[i],'/',pny[i]); 
 
End.