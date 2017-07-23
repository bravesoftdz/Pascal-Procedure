PROGRAM perpangkatan(INPUT,OUTPUT);
uses crt;
VAR
b :integer;  a,c:real;

PROCEDURE operatorpangkat(X:real; Y :integer; VAR Z:real);
var i: integer;
BEGIN
for i:= 1 to y do
 begin
 if x<0 then
   if i mod 2 = 0 then
       Z := EXP(LN(-X)*i)
   else z:=-exp(ln(-x)*i)
 else  z:=exp(ln(x)*i);
    writeln('   ',x:4:2,' pangkat ',i,' = ',z:4:2);
 end;
END;

BEGIN
clrscr;
WRITE(' Masukkan basis (bilangan utama) boleh bil. Real : ');READLN(a);
write(' Masukkan pangkat harus integer : ');readln(b);
writeln;
Operatorpangkat(a, b, c);
writeln;
WRITELN(' Nilai ',a:4:2,' pangkat ',b:2,' adalah ',c:4:2);
readln;
END.

