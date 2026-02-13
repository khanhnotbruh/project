program bai2;
const fi='DE2_02.inp';
      fo='DE2_02.out';
var f1,f2:text;
    n,i, max, csmax:integer;
    s:string;
    a:array[1..1000]of integer;
Function diem(st:string): integer;
var t,j:longint;
    begin
    t:=0;
    for j:=1 to length(st) do
        if st[j] ='A' then t:=t+5
        else if st[j]='B' then t:= t+3
             else t:=t+1;
    diem:=t;
    end;

BEGIN
     assign(f1,fi);
     assign(f2,fo);
     reset(f1);
     rewrite(f2);
     readln(f1,n);
     for i:= 1 to n do
     begin
          readln(f1,s);    {nhap xau s}
          a[i]:=diem(s);  {tinh diem huy chuong cua xau s va cho vao mang a}
          write (f2,a[i]:4); { viet mang a}
     end;
     {= sap xep mang a}
     writeln(f2);
     max:=a[1];csmax:=1;
     for i:= 2 to n do
         if a[i]> max then begin
                           max:=a[i];
                           csmax:=i;
                           end;
     write (f2, csmax);

     close(f1);
     close(f2);
end.