program Encoder;
uses crt;
type
 kalimat=string[255];


var
  kal1: string[50];
  kal2: string[100];

procedure Encode(var kal: kalimat);
var i: Integer;
begin
for i := 1 to Length(kal) do
   kal[i] := Chr(Ord(kal[i])-10);
end;

begin
clrscr;
kal1 := 'Ini Kalimat Rahasia';
writeln('Kalimat 1 sebelum dikoding : ',kal1);
Encode(kal1);
writeln('Kalimat 1 setelah dikoding : ',kal1);
writeln;
kal2 := 'Kalimat berikut lebih panjang dan lebih rahasia lho';
writeln('Kalimat 2 sebelum dikoding : ',kal2);
Encode(kal2);
writeln('Kalimat 2 setelah dikoding : ',kal2);
readln;
end.
