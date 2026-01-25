program bai1;
uses crt;
type mat=array['a'..'z']of int64;
var st:string;
        i,dem:longword;
        f1,f2:text;
function KDX(s:ansistring):boolean;
var a:mat;
        ch:ansichar;
begin
        dem:=0;
        for ch :='a' to 'z' do  a[ch]:=0;
        for i:=1 to length(s)do
                a[s[i]]:=a[s[i]]+1;
        for ch :='a' to 'z' do
                if a[ch] mod 2 =1 then dem:=dem+1;
        if dem <2 then kdx:=true else kdx:=false;
end;
begin
        assign(f1,'bai1.inp'); assign(f2,'bai1.out');
        reset(f1); rewrite(f2);
        while not eof(f1) do
                begin
                        readln(f1,st);
                        if kdx(st) then writeln(f2,'CO') else writeln(f2,'KHONG');
                END;
        close(f1); close(f2);
end.


