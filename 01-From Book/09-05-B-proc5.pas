program kotak;
uses crt;
var
 i: Integer;

procedure gambar(X1,Y1,X2,Y2: Integer);
var i: Integer;
 begin
 GotoXY(X1,Y1);
 for i := X1 to X2 do write ('-');
  for i := Y1+1 to Y2 do
   begin
    GotoXY(X1,i); Write('|');
    GotoXY(X2,i); Write('|');
   end;
   GotoXY(X1,Y2);
  for i := X1 to X2 do Write('-');
  end;

begin
ClrScr;
for i := 1 to 5 do gambar(i*4,i*2,10*i,4*i);
gambar(1, 1,80,23);
readln;
end.
