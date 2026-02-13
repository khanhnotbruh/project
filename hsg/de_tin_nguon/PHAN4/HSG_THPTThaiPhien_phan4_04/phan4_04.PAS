program doan_duong_max;
const
  fin = 'ddmax.inp';
  fout = 'ddmax.out';
  max = 10000;
var
  fi,fo : text;
  a : array[0..max] of longint;
  min : array[0..max] of integer;
  n : longint;
  ddmax,x,y : longint;
(*----------------------------------*)
procedure nhapfile;
var
  i : longint;
begin
  assign(fi,fin);
  reset(fi);
  readln(fi,n);
  for i := 1 to n do readln(fi,a[i]);
  close(fi);
end;
(*----------------------------------*)
procedure ghifile;
begin
  assign(fo,fout);
  rewrite(fo);
  writeln(fo,ddmax);
  writeln(fo,x);
  writeln(fo,y);
  close(fo);
end;
(*----------------------------------*)
procedure khoitao;
var
  i : longint;
begin
  a[0] := 0;
  for i := 1 to n do a[i] := a[i-1] + a[i];
  min[0] := 0;
  for i := 1 to n do
    if a[i] >= a[min[i-1]] then min[i] := min[i-1]
    else min[i] := i;
  ddmax := 0;  x := 0;  y := 0;
end;
(*----------------------------------*)
procedure xuli;
var
  i,j,jj : longint;
begin
  jj := n;
  for i := n downto 0 do if min[i] = i then begin
    for j := jj downto i do if a[j] > a[i] then begin
      if j - i > ddmax then begin
        ddmax := j - i;
        x := i+1;  y := j;
      end;
      break;
    end;
    jj := j;
  end;
end;
(*----------------------------------*)
begin
  nhapfile;
  khoitao;
  xuli;
  ghifile;
end.
