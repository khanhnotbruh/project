
VAR     f,g:text;
        tong:byte;
        i,n,m,j,d:integer;
        n1,n2,z1,z2:byte;
        a,b,c:string;
        s:string;
        tg:char;
BEGIN
        assign(f,'phepcong.inp');
        reset(f);
        assign(g,'phepcong.out');
        rewrite(g);

        while not eof(f) do
        begin
        readln(f,a);
        read(f,b);
        end;

        for i:=1 to length(a)-1 do
        for j:=i+1 to length(a) do
        if a[i]<a[j] then
        begin
        tg:=a[i];
        a[i]:=a[j];
        a[j]:=tg;
        end;
        for i:=1 to length(b)-1 do
        for j:=i+1 to length(b) do
        if b[i]<b[j] then
        begin
        tg:=b[i];
        b[i]:=b[j];
        b[j]:=tg;
        end;


        if length(a)>length(b) then
        for i:=1 to length(a)-length(b) do b:='0'+b
        else for i:=1 to length(b)-length(a) do a:='0'+a;

        c:=''; d:=0;
        i:=length(a);
        j:=length(b);

       repeat
        val(a[i],n1,z1);
        val(b[j],n2,z2);
        tong:=n1+n2+d;
        d:=tong div 10;
        tong:=tong mod 10;
        str(tong,s);
        c:=s+c;
        i:=i-1; j:=j-1;
        until i=0;

        if d=1  then c:='1'+c;
        write(g,c);
        
	close(f);close(g);
        
END.

