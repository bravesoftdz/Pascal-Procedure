program mean_median_modus;
uses crt;
type larik = array[1..100] of integer;
var n,m,max : integer;
x,y,f : larik;
jawaban : char;

procedure inputdata(var x:larik; var n:integer);
var i : integer;
begin
write('Write sum of data input: ');readln(n);
for i:=1 to n do
begin
write('File of- ',i,' : ');readln(x[i]);
end;
end;

procedure urutdata(var x:larik; var n:integer);
var i, j, temp : integer;
begin
for i:= 1 to n-1 do
for j:= i to n do
begin
if x[j]=max then max:=f[i];
end;
end;

procedure modus(y,f:larik; m, max:integer);
var i:integer;
begin
if max = 1 then write('There are not modus')
else
begin
for i:=1 to m do
if f[i]>max then write ('Modus : ',y[i]);
end;
writeln;
end;

procedure median(var x:larik; n:integer);
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
gotoxy(20,2);writeln('***************************************** ');
gotoxy(20,3);writeln('* Find Mean Median and Modus * ');
gotoxy(20,4);writeln('***************************************** ');
writeln;
inputdata(x,n);
urutdata(x,n);
modus(y,f,m,max);
median(x,n);
writeln;writeln;
write('Repeat again [Y/T]? : ');readln(jawaban);
until upcase(jawaban)<>'Y';
end.
