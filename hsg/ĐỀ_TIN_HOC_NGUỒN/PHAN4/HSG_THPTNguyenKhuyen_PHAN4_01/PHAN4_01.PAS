type km=array[1..100] of integer;
var f,g:text;
    max,i,j,n,t,d,k:integer;
  b,  a:km;
function kt(d:km;x,y:integer):boolean;
var i:integer;
begin
 kt:=true;
  for i:=x to y-1 do
    if d[i]>d[i+1] then begin
                         kt:=false;
                         break;
                        end;
end;
begin
  assign(f,'bai4.inp');reset(f);
  assign(g,'bai4.out');rewrite(g);
   readln(f,n);
     for i:=1 to n do
       read(f,a[i]);
      for i:=1 to n-1 do
       for j:=i+1 to n do
         if (kt(a,i,j)=true) and (j-i+1>max) then begin
                                                     max:=j-i+1;
                                                     d:=0;
                                                     for k:=i to j do
                                                       begin
                                                        inc(d);
                                                        b[d]:=a[k];
                                                       end;

                                                    end;
                                                     writeln(g,max);
                for i:=1 to d do
                  write(g,b[i],'  ');
                  close(f);
                  close(g);
                  readln;
end.
