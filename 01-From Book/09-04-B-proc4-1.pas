program Encoder;
uses crt;
type
 kalimat=string[255];


var
    kal1: string[100];

procedure Encode(var kal: kalimat);
var i: Integer;
begin
for i := 1 to Length(kal) do
   kal[i] := Chr(Ord(kal[i])-10);
end;

procedure Re_encode(var kal: kalimat);
var i: Integer;
begin
for i := 1 to Length(kal) do
   kal[i] := Chr(Ord(kal[i])+10);
end;

begin
clrscr;
write(' Masukkan kalimat yang akan dikoding: ');readln(kal1);
Encode(kal1);
writeln('Kalimat setelah dikoding : ',kal1);
writeln;
re_encode(kal1);
writeln('Kalimat setelah di kembalikan lagi : ',kal1);
readln;
end.
