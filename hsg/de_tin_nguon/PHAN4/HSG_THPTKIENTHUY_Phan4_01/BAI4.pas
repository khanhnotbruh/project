const tfi = 'BAI4.inp'; tfo = 'BAI4.out';
Var f1,f2:text; i,d,num,vt,j,k,m:integer; s,ss,Kq:string; mx,sx:array[1..100] of string; a,t:array[1..100] of integer;
Procedure motep;
        begin
                Assign(f1,tfi); Reset(f1);
                Assign(f2,tfo); Rewrite(f2);
        end;
Procedure dongtep;
        begin
                close(f1); close(f2);
        end;
Procedure Doc;
        begin
                  Readln(f1,s);
        end;
function daoxau(s:string):string;
var i:byte; ss:string;
begin
        ss:='';
        for i:= length(s) downto 1 do ss:=ss+s[i];
        daoxau:=ss;
end;
procedure chuanxau;
var vt:byte;
begin
        fillchar(t,sizeof(t),0); m:=0;
        while s[1]=' ' do delete(s,1,1);
        while s[length(s)]=' ' do delete(s,length(s),1);
        while pos('   ',s)<>0  do delete(s,pos('   ',s),1);
end;

Procedure xuly;
        begin
                chuanxau; write(s);writeln; fillchar(a,sizeof(a),0);  s:=s+'  ';
                d:=0;
                while pos('  ',s)<>0 do
                                        begin   inc(d);
                                                mx[d]:=copy(s,1,pos('  ',s)-1);
                                                delete(s,1,pos('  ',s)+1);
                                               end;
                 kq:='';
                for k:=1 to d do  begin ss:='';
                                 mx[k]:=mx[k]+' ';
                                  for j:=1 to length(mx[k]) do
                                     while pos(' ',mx[k])<>0 do begin vt:=pos(' ',mx[k]);
                                                sx[vt]:=copy(mx[k],1,vt-1);
                                                val(sx[vt],a[vt],num);
                                                ss:=ss+chr(a[vt]);
                                                delete(mx[k],1,vt);end;
                                     kq:=ss+' '+kq;
                                   end;
                                   delete(kq,length(kq),1);
                                  write(f2,daoxau(kq));
        end;
 BEGIN
        motep;
        doc;
        xuly;
        dongtep; END.
