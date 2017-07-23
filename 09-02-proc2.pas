Program Sakatonik_ABC;
uses crt;
Var X,Y,Z: integer ;

Procedure HITUNG(var A,B,C: integer);
Begin
 B:= A;
 C:= A + B ;
 Writeln('A, B, C = ',A,',',B,',',C) ;
End;

Begin
clrscr;
write('Masukkan tiga bilangan (dipisah spasi) : ');
Readln(X,Y,Z);
Hitung(X,Y,Z);
Readln;
End.
