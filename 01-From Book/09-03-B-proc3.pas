Program VarParms;
uses crt;
Var a, b, c :Real;

Procedure operatorpangkat(X, Y :Real; Var Z:Real);
Begin
Z := exp(ln(X)*Y)
END;

Begin
clrscr;
Write(' Masukkan basis (bilangan utama) : ');READLN(a);
write(' Masukkan pangkat : ');readln(b);
Operatorpangkat(a, b, c);
Writeln('Nilai ',a:0:2,' pangkat ',b:0:2,' adalah ',c:0:2);
readln;
End.

