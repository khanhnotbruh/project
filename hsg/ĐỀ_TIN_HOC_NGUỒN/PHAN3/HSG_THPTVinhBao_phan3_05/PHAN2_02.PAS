Program phan2_02;
const
  tfi = 'bai2.inp';
  tfo = 'bai2.out';
var
  fi,fo : text;
  n,k : longint;
  a : array[1..100] of longint;
procedure input;
  var i : longint;
  begin
    readln(fi,n);
    for i:=1 to n do read(fi,a[i]);
  end;
procedure doicho(var i,j : longint);
  var tg : longint;
  begin
    tg:=i;i:=j;j:=tg;
  end;
procedure work;
  var i,j : longint;
  begin
    for i:=1 to n do
      for j:=i+1 to n do
        if a[i]<a[j] then doicho(a[i],a[j]);
    for i:=1 to n do
      if i<=(n+1) div 2 then k:=k+a[i]
      else k:=k-a[i];
    writeln(fo,k);
  end;
begin
  assign(fi,tfi);reset(fi);
  assign(fo,tfo);rewrite(fo);
    input;
    work;
  close(fi);close(fo);
end.

