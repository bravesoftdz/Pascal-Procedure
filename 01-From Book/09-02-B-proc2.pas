PROGRAM Procedures1;
uses crt;
var kal:string; panjangkal:integer;


{ ------------ Awal procedure ------------ }
PROCEDURE garis(panjanggaris:integer);
CONST
 grs = '-';
 {panjanggaris = 25;}
VAR
 i :INTEGER;
BEGIN
FOR i := 1 TO panjanggaris DO
WRITE(grs);
WRITELN
END;
{ --------------- Akhir Procedure --------------- }
{ ----------------- program utama ----------------- }
BEGIN
clrscr;
WRITELN;
write(' Masukkan sebuah kalimat : ');readln(kal);
panjangkal:=length(kal);
garis(panjangkal);
WRITELN(kal);
garis(panjangkal);
readln
END.
