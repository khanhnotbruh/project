const
      maxN = 1000000;
      fi = 'daycon.inp';
      fo = 'daycon.out';

var
      n,luui, luuj : longint;
      S: int64;
      a: array[1..maxN] of longint;
      Sum,Sum1,vt: array[0..maxN] of int64;

procedure Enter;
var i: longint;
begin
   readln(n,S);
   for i:=1 to n do readln(a[i]);
end;
{--------------------------------------}
procedure DoiCho(var a,b:int64);
var tam: int64;
begin
  tam := a;
  a := b;
  b := tam;
end;
{--------------------------------------}
procedure Quick_Sort(Lo,Hi:longint);
var key: int64;  i,j: longint;
begin
  If Lo>=Hi then Exit;
  key := Sum1[(Lo + Hi) div 2];
  i := Lo;
  j := Hi;
  repeat
    while Sum1[i] < key do inc(i);
    while Sum1[j] > key do dec(j);
    if i<=j then
      begin
         if i<j then
            begin
              DoiCho(Sum1[i],Sum1[j]);
              DoiCho(vt[i],vt[j]);
            end;
         inc(i);
         dec(j);
      end;
  until i>j;
  Quick_Sort(i,Hi);
  Quick_Sort(Lo,j);
end;
{--------------------------------------}
function TimKiemNhiPhan(x:int64): longint;
var Lo,Hi,median: longint;
begin
  Lo := 1; Hi := n;
  while (Lo<=Hi) do
    begin
      median := (Lo+Hi) div 2;
      if Sum1[median] = x then exit(median);
      if x < Sum1[median] then Hi := median-1
      else Lo := median + 1;
    end;
  exit(0);
end;
{--------------------------------------}
procedure Process;
var i,j: longint;
begin
   Fillchar(Sum,SizeOf(Sum),0);
   For i:=1 to n do
     Begin
       Sum[i] := Sum[i-1] + a[i];
       vt[i] := i;
     End;
   Sum1 := Sum;

   Quick_Sort(1,n);

   Luui := 0; Luuj := 0;

   for i:=1 to n do
     begin
       j := TimKiemNhiPhan(Sum[i-1]+S);
       if j>0 then
         Begin
          luui := i;
          luuj := vt[j];
          exit;
         end;
     end;
end;
{--------------------------------------}
procedure PrintResult;
begin
   If (Luui = 0) and (luuj = 0) then write('NO')
   Else
     Begin
       writeln('YES');
       write(luui,' .. ',luuj);
     End;
end;
{--------------------------------------}
BEGIN
  assign(input,fi); reset(input);
  assign(output,fo); rewrite(output);

    Enter;
    Process;
    PrintResult;

  close(input); close(output);
END.

