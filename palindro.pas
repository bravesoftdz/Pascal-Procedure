Uses crt;
var
Kata,model:String;

procedure palindrom(kal:String; var pali: String);
Var
   a,b,c:integer;
   x:boolean;
Begin
    b:=length(kal) div 2;
    x:=true;
    While  x AND (b>0) do
    begin
      if kal[b] <> kal[length(kal)+1-b] then x:= false;
      dec(b);
    end;
    if x=false then pali:='bukan palindrom'
    else pali:='palindrom'
End;

begin
   clrscr;
    write('Masukkan sebuah kalimat/frasa : ');
    readln(kata);
    palindrom(kata,model);
    writeln(kata,' : ',model);
    readln;
end.
