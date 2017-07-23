Program tesvariabel;
uses crt;
Var a,b : integer;

Procedure vardalam;
var a,b:integer;
Begin
 a := 10;
 b := 15;
 writeln(' a dalam = ',a);
 writeln(' b dalam = ',b);
End;

Begin
clrscr;
 a := 100;
 b := 200;
 writeln('a = ',a);
 writeln('b = ',b);
 vardalam;
 writeln('a = ',a);
 writeln('b = ',b);
 readln;
 end.
