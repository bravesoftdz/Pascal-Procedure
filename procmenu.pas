program menu;
uses wincrt;

var p,l,A,K,al,t:real;pil:integer;

procedure menu1;
begin
clrscr; 
gotoxy(10,2);writeln('MENU UTAMA');
gotoxy(10,3);Writeln('==========');
gotoxy(5,6);writeln('(1) LUAS DAERAH PERSEGI PANJANG');
gotoxy(5,7);writeln('(2) KELILING PERSEGI PANJANG');
gotoxy(5,8);writeln('(3) LUAS DAERAH SEGITIGA');
gotoxy(5,9);writeln('===============');
gotoxy(5,10);write('Masukkan Pilihanmu: ');readln(pil);
writeln;
writeln;

if pil = 1 then
   begin
   writeln('  LUAS DAERAH PERSEGI PANJANG ');
   writeln('  =========================== ');
   write('  Masukkan ukuran panjang = '); readln(p);
   write('  Masukkan ukuran lebar = ');readln(l);
   A:=p*l;
   writeln('  Diperoleh Luas daerah persegi panjang = ',p:4:2,' x ',l:4:2,' = ',A:4:2,'');
   writeln;
   writeln('  TEKAN ENTER UNTUK MELANJUTKAN ');
   writeln('  ============================= ');
   readln;
   menu1;
end else
if pil = 2 then
 begin
   writeln('  KELILING PERSEGI PANJANG ');
   writeln('  =========================== ');
   write('  Masukkan ukuran panjang = '); readln(p);
   write('  Masukkan ukuran lebar = ');readln(l);
   K:=2*(p+l);
   writeln('  Diperoleh Keliling persegi panjang = 2x(',p:4:2,' + ',l:4:2,') = ',K:4:2,'');
   writeln;
   writeln('  TEKAN ENTER UNTUK MELANJUTKAN ');
   writeln('  ============================= ');
   readln;
   menu1;
 end else
if pil = 3 then
  begin
   writeln('  LUAS DAERAH SEGITIGA ');
   writeln('  =========================== ');
   write('  Masukkan ukuran Alas = '); readln(al);
   write('  Masukkan ukuran tinggi = ');readln(t);
   A:=1/2*al*t;
   writeln('  Diperoleh Luas daerah segitiga = 1/2 x ',al:4:2,' x ',t:4:2,' = ',A:4:2,'');
   writeln;
   writeln('  TEKAN ENTER UNTUK MELANJUTKAN ');
   writeln('  ============================= ');
   readln;
   menu1;
  end
else
  begin
  writeln(' Pilihan tidak ada ');
  writeln;
  writeln('  TEKAN ENTER UNTUK MELANJUTKAN ');
  writeln('  ============================= ');
  readln;
  menu1;
  end;
  end;

begin
 menu1;
end.