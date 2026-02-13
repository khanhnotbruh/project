program Tong_phan_so;
var
     a, b, c, d, t : qword;
     f : text;
function UCLN(m, n: qword) : qword;
var
    tam : qword;
    begin
          while n <> 0 do
          begin
                tam := m mod n;
                m:= n;
                n:= tam;
          end;
          UCLN := m;
     end;

function BCNN(x, y: qword) : qword;
     begin
          BCNN := (x * y) div UCLN(x, y);
     end;
begin
     assign(f, 'BAI2.INP'); reset(f);
     read(f, a, b, c, d); close(f);
     assign(f, 'BAI2.OUT'); rewrite(f);
     if (b = 0) or (d = 0) then
          write(f, -1)
     else
          begin
               a := (a * BCNN(b, d) div b) + (c * BCNN(b, d) div d);
               b := BCNN(b, d);
               t := UCLN(a, b);
               a := a div t;
               b := b div t;
               write(f, a, ' ', b);
          end;
     close(f);
end.	




