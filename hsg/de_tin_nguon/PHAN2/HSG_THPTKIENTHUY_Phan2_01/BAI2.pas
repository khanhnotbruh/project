const tfi='BAI2.inp';tfo = 'BAI2.out';max=10000;
Var f1,f2:text; a:array[1..max] of boolean;m:array[1..max] of longint;
i,j,n,d,dem,hieu:longint;
 function kt(t:integer):boolean;
 var i,dem:longint;
 begin
 kt:=true;
 if t=1 then exit(false);
 if (t=2)or (t=3) then exit(true) else
         for i:=2 to trunc(sqrt(t)) do if t mod i = 0 then exit(false);
 end;
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
                Readln(f1,N);
        end;
Procedure xuly;
        begin
              fillchar(a,sizeof(a),true); a[1]:=true;
              i:= 2;
              while i<= trunc(sqrt(n)) do
                begin
                        while a[i]<>true do
                        inc(i);
                        for j:=i to n div i do a[i*j]:=false;
                        inc(i);
                end;
                d:=0; dem:=0; hieu:=0;
              for i:=2 to n do if a[i]=true then begin inc(d); m[d]:=i;;end;
              for j:=1 to d do begin hieu:=n-m[j];
                                if (kt(hieu) =true ) and (hieu>= m[j])
                                        then  inc(dem);  end;
              write(f2,dem);
end;

BEGIN
        motep;
        doc;
        xuly;
        dongtep;
END.
