program mean1;
uses crt;
type larik = array[1..100] of integer;
var n : integer;
    x : larik;
    jawaban : char;

 procedure rataan(x:larik; n: integer);
var i,tot : integer; rata:real;
begin
 tot:=0;
 for i:=1 to n do
 begin
  tot:=tot+x[i];
 end;
 rata:=tot/n;
 writeln(' Rata-rata ',rata:4:2);
end;


procedure inputdata(var x:larik; var n:integer);
var i : integer;
begin
 write('Banyak data: ');readln(n);
 for i:=1 to n do
 begin
  write('Data ke- ',i,' : ');readln(x[i]);
 end;
end;


begin
repeat
clrscr;
writeln('PROGRAM MENGHITUNG RATA-RATA');
writeln;
inputdata(x,n);
rataan(x,n);
writeln;
writeln;
write('Ulangi lagi [Y/T]? : ');readln(jawaban);
until upcase(jawaban)<>'Y';
end.
