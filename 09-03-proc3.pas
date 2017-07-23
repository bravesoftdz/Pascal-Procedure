Program Sakatonik_ABC;
uses crt;
Var X,Y,Z: integer ;

Procedure Hitung(var A,B,C: integer) ;
Begin
 C:= A + B ;
 Writeln('A, B, C = ',A,',',B,',',C) ;

End;
Begin
write('Masukkan tiga bilangan (dipisah spasi) : ');
Readln(X,y,Z);
Hitung(X,Y,Z);
Readln;
End.
