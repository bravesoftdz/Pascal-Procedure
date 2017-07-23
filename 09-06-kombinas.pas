Program Kombinasi;
uses crt;
var f1,f2,f3:longint;
    n,r,delta:integer;
    c: real;

Procedure facto(n:integer; f:longint);
var i:integer;
begin
    f:=1;
    for i:=1 to n do f:= f * i;
end;
{======================PROGRAMUTAMA==================}
Begin
clrscr;
gotoxy(12,3); write('Kita akan menghitung nilai kombinasi dari suatu angka');
gotoxy(19,4); writeln('Yang mempunyai rumus : rCn = n!/(r!(n-r)!)');
gotoxy(20,5); writeln('Nilai r harus kurang dari/sama dengan n');
writeln;
gotoxy(28,7); write('Masukkan nilai n :',' ');readln(n);
writeln;
gotoxy(28,9); write('Masukkan nilai r :',' ');readln(r);
  facto(n,f1);
    gotoxy(28,11); writeln('n! =',f1);
  facto(r,f2);
    gotoxy(28,12); writeln('r! =',f2);
  delta:=(n-r);
  facto(delta,f3);
    gotoxy(28,13); writeln('(n-r)! =',f3);
  c:= f1/(f2*f3);
gotoxy(28,14); write('Hasil dari n!/(r!*(n-r)!) =',' ',c:2:0);
readln;
end.
