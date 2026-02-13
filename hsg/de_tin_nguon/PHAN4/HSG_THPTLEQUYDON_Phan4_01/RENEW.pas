var f1,f2:text;a,mid,b,c,d,x,l,r,k:int64;
function tong(x:int64):int64;
var k:int64;
begin
  k:=0;
  k:=a*(x-(x div b)) +c*(x-(x div d));
  exit(k);
end;
begin
  assign(f1,'RENEW.INP');reset(f1);
  assign(f2,'RENEW.OUT');rewrite(f2);
  read(f1,a,b,c,d,x);
    k:=1;
    r:=(1000000000000000000 div (a-a div b+ c-c div d-1))*2;
    while k<=r do begin
      mid:=(k+r) div 2;
      if tong(mid)>=x then  begin
        l:=mid;
        r:=mid-1;
      end else k:=mid+1;
    end;
  writeln(f2,l);
  close(f1);
  close(f2);
end.
