Program bai1;   const tfi = 'BAI1.inp'; tfo = 'BAI1.out';
Var f1,f2:text; i,j,n,d:byte; s1,sv1,s2,sv2,s1m,s2m: string;s11,s22:array[1..50] of string;
        vt:array[1..50] of byte;
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
                 Readln(f1,Sv1); readln(f1,sv2);
        end;
procedure chuanxau(var s:string);
begin
        while s[1]=' ' do delete(s,1,1);
        while s[length(s)]=' ' do delete(s,length(s),1);
        while pos('  ',s)<>0 do delete(s,pos('  ',s),1);
end;
Procedure xuly;
        begin
                chuanxau(sv1); chuanxau(sv2);
                if length(sv1)<> length(sv2) then write(f2,'KHONG') else
                begin
                n:=0;
                s1:=sv1+' '; s1m:='';
                for i:=1 to length(s1) do
                        begin   if pos(' ',s1) <>0 then begin inc(n);
                                s11[n]:=copy(s1,1,pos(' ',s1)-1);s1m:=s1m+s11[i];
                                delete(s1,1,pos(' ',s1));  end;

                        end;

                 s2:=sv2+' '; s2m:='';
                for i:=1 to length(s2) do
                        begin   if pos(' ',s2) <>0 then begin
                                s22[i]:=copy(s2,1,pos(' ',s2)-1);s2m:=s2m+s22[i];
                                delete(s2,1,pos(' ',s2));  end;
                       end;

                for i:=1 to n do
                         if (pos(s22[i],s1m)<>0)and (pos(s22[i],s1m)<>pos(s22[i],s2m)) then inc(d);
                         if d=n then write(f2,'CO') else write(f2,'KHONG');

                  end;
        end;
 BEGIN
        motep;
        doc;
        xuly;
        dongtep;
END.
