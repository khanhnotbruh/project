Program bai1;
Const fin = 'bai1.INP';
      fon = 'bai1.OUT';
Var fi, fo: text;
    n, k: LongInt;
    dem: LongInt;
Procedure MoTep;
 Begin
    Assign(fi, fin);  reset(fi);
    Assign(fo, fon); rewrite(fo);
    End;
Procedure DongTep;
 Begin
    Close(fi);
    Close(fo);
 End;
Procedure Nhap;
  Begin
     Read(fi, n, k);
  End;
Procedure Xuat;
  Begin
      write(fo, dem);
  End;
Procedure Xuly1;
 Var x, u, i: LongInt;
  Begin
      dem:= 0;
      for x:= 1 to n do
        begin
            u:= 0;
            for i:= 1 to x do
              if (x Mod i = 0) then u:= u + 1;
            if (u = k) then dem:= dem + 1;
        end;
  End;
Procedure Xuly2;
 Var x, u, i: LongInt;
  Begin
      dem:= 0;
      for x:= 1 to n do
        begin
            u:= 0;
            for i:= 1 to Trunc(sqrt(x)) do
              if (x Mod i = 0) then u:= u + 2;
            if (Trunc(sqrt(x))*Trunc(sqrt(x)) = x) then u:= u - 1;
            if (u = k) then dem:= dem + 1;
        end;
  End;
BEGIN
  MoTep;
  Nhap;
  Xuly2;
  Xuat;
  DongTep;
END.