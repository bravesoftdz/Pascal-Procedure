program mean1;
uses crt;
type larik = array[1..100] of integer;
var n,m: integer;
    x,y : larik;
    jawaban : char;


procedure inputdata(var x:larik; var n:integer);
var i : integer;
begin
 write('Banyak data: ');readln(n);
 for i:=1 to n do
 begin
  write('Data ke- ',i,' : ');readln(x[i]);
 end;
end;

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

procedure urutdata(var x:larik; n:integer);
var i, j, temp : integer;
begin
  for i:= 1 to n-1 do
   for j:= i to n do
   begin
    if x[i]>x[j] then
    begin
    temp:=x[i];
    x[i]:=x[j];
    x[j]:=temp;
    end;
   end;
   writeln('Data setelah diurutkan menjadi: ');
   for i:=1 to n do
   writeln('Data ke-',i,': ',x[i]);
end;

procedure median(x:larik; n:integer);
var md:real; ltk:integer;
begin
  if (n mod 2 = 1) then
   begin
    ltk:=(n div 2)+1;
    md := x[ltk]
   end
else
  begin
   ltk:=(n div 2);
   md :=(x[ltk]+x[ltk+1])/2;
end;
write('Nilai Median : ',md:4:0);
end;

begin
repeat
clrscr;
gotoxy(20,2);writeln('******************************** ');
gotoxy(20,3);writeln('* PROGRAM MENGHITUNG RATA-RATA * ');
gotoxy(20,4);writeln('******************************** ');
writeln;
inputdata(x,n);
rataan(x,n);
urutdata(x,n);
median(x,n);
writeln;
writeln;
write('Ulangi lagi [Y/T]? : ');readln(jawaban);
until upcase(jawaban)<>'Y';
end.
