program Cap_so_song_sinh;
uses crt;
var f1,f2: text;
procedure gan;
    begin
        assign(f1,'D:\Bai3.INP');
        reset(f1);
        assign(f2,'D:\Bai3.OUT');
        rewrite(f2);
    end;
function ktra(x,y: longint): boolean;
    var s1,s2: string;
        y1,y2: string[1];
        x1,x2: byte;
        k1,k2,i,d1,d2: integer;
    begin
        ktra:= false;
        s1:='';   s2:='';
        repeat
            x1:=x mod 2;
            str(x1,y1);
            s1:=y1+s1;
            x:=x div 2;
        until x=0;
        repeat
            x2:=y mod 2;
            str(x2,y2);
            s2:=y2+s2;
            y:=y div 2;
        until y=0;
        k1:=0;    k2:=0;
        d1:=0;    d2:=0;
        for i:=1 to length(s1) do if s1[i]='1' then k1:=k1+1 else d1:=d1+1;
        for i:=1 to length(s2) do if s2[i]='1' then k2:=k2+1 else d2:=d2+1;
        if (abs(k1-k2)>1) or (abs(d1-d2)>1)then exit;
        ktra:=true;
    end;
procedure xuli;
    var a,b,k: longint;
    begin
        k:=0;
        while not eof(f1) do begin
            k:=k+1;
            read(f1,a,b);
            if (a> 1000000000) or (b>1000000000) or (k>1000000) then begin
                rewrite(f2);
                write(f2,'NHAP LAI!');
                close(f2);
                halt;
                end;
            if ktra(a,b) then write(f2,'1') else write(f2,'0');
            end;
        close(f1);
        close(f2);
    end;
begin
    clrscr;
    gan;
    xuli;
    readln
end.

