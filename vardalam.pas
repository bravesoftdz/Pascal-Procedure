Program tesvariabel;
uses wincrt;
Var a,b : integer; 
 
Procedure vardalam; 
Var a : integer; 
Begin 
 a := 10; 
 b := 15; 
 writeln('a dalam = ',a);
End; 
 
Begin 
 a := 100; 
 b := 200; 
 writeln('a = ',a); 
 writeln('b = ',b); 
 vardalam;
 writeln('a = ',a); 
 writeln('b = ',b);
 end.