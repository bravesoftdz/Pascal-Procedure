PROGRAM Procedures1;
uses crt;
{ ------------ Awal procedure ------------ }
PROCEDURE garis;
CONST
 grs = '-';

VAR
 i :INTEGER;
BEGIN
FOR i := 1 TO 25 DO
WRITE(grs);
WRITELN
END;
{ --------------- Akhir Procedure --------------- }
{ ----------------- program utama ----------------- }
BEGIN
clrscr;
WRITELN;
garis;
WRITELN('** UJI COBA PROSEDUR  **');
garis;
readln
END.
