PROGRAM xau_con;
USES crt;
VAR s1,s2: ANSISTRING;
    f1,f2: TEXT;

PROCEDURE nhap;
    BEGIN
        assign(f1,'BAI1.inp');reset(f1);
        assign(f2,'BAI1.out');rewrite(f2);
        readln(f1,s1);read(f1,s2);
        close(f1);
    END;

PROCEDURE xuli;
    VAR i,k: BYTE;
    BEGIN
        k:=0;
        WHILE pos(s1,s2)<>0 DO BEGIN
            i:=pos(s1,s2);
            inc(k);
            delete(s2,i,1);
            END;
        write(f2,k);
        write(k);
        close(f2);
    END;

BEGIN
    clrscr;
    nhap;
    xuli;
    readln
END.