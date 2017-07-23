PROGRAM DATABASE;
Uses crt;
TYPE mahasiswa=record
               nama: array[1..20] of string;
               nim: array[1..20] of string;
               alamat: array[1..20] of string;
               ipk: array[1..20] of real;
               end;

VAR data1: mahasiswa;
    nama1, nim1, alamat1:string;
    ipk1:real;

PROCEDURE data(var mhs:mahasiswa);
Var     i,n,no:integer;
           pilih,tekan:char;
Begin
write('Masukan jumlah mahasiswa : ');readln(n);
writeln;
for i:= 1 to n do
    begin
    writeln('Masukan data mahasiswa ke - ',i);
    writeln;
    write('Nama Mahasiswa   : ');readln(mhs.nama[i]);
    write('No. Mahasiswa    : ');readln(mhs.nim[i]);
    write('Alamat Mahasiswa : ');readln(mhs.alamat[i]);
    write('IPK              : ');readln(mhs.ipk[i]);
    writeln;
    end;
    writeln;
writeln('DATA MAHASISWA');
writeln;
writeln('==================================================================');
writeln('|','No':5,' Nama':20,'NIM':10,'Alamat':20,'IPK':5,'|':2);
writeln('==================================================================');
for i:=1 to n do
    writeln('|',i:5,mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:5:2, '|':2);
writeln('===================================================================');
writeln;
write('Ingin mencari data tertentu (y/n) ? ');readln(pilih);
writeln;
case upcase(pilih) of
'Y': begin
     tekan:='Y';
     while upcase(tekan)='Y' do
     begin
     clrscr;
     writeln;
     writeln('MENU PILIHAN');
     writeln;
     writeln('[1] NAMA');
     writeln('[2] NIM');
     writeln('[3] ALAMAT');
     writeln('[4] IPK');
     writeln;
     write('Pilihan anda : ');readln(no);
case no of
1: begin
   write('Masukan Nama Mahasiswa : ');readln(nama1);
   writeln;
   writeln('========================================================');
   writeln('|','Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
   writeln('========================================================');
   for i:=1 to n do
       if (upcase(nama1)) =(upcase(mhs.nama[i])) then
    begin
        writeln('|',mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:10:2, '|':2);
    end;
   writeln('========================================================');
   writeln;
   end;
2: begin
   write('Masukan No. Mahasiswa : ');readln(nim1);
   writeln;
   writeln('========================================================');
   writeln('|','Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
   writeln('========================================================');
    for i:=1 to n do
    if (upcase(nim1)) =(upcase(mhs.nim[i])) then
        begin
          writeln('|',mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:10 :2,'|':2);
        end;
        writeln('==========================================================');
    writeln;
end;
3: begin
write('Masukan Alamat Mahasiswa : ');readln(alamat1);
writeln;
writeln('=========================================================');
writeln('|','Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
writeln('=========================================================');
for i:=1 to n do
    if (upcase(alamat1)) =(upcase(mhs.alamat[i])) then
        begin
        writeln('|',mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:10 :2,'|':2);
        end;
writeln('======================================================================');
   writeln;
   end;
   4: begin
   write('Masukan IPK : ');readln(ipk1);
   writeln;
   writeln('====================================================================');
   writeln('|','Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
   writeln('====================================================================');
   for i:=1 to n do
       if ipk1 = (mhs.ipk[i]) then
           begin
           writeln('|',mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]: 10:2,'|':2);
           end;
   writeln('=======================================================');
   writeln;
   end;
end;
write('Ingin mencari data lagi (y/n) ? ');readln(tekan);
writeln;
end;end;end; end;
{====================PROGRAM UTAMA========================}
BEGIN
      clrscr;
      data(data1);
      readln;
end.
