PROGRAM hoan_vi;
USES crt;
TYPE ma= ARRAY[1..3000] OF INTEGER;
VAR n,d,g,dem: INTEGER;
    a: ma;
    f1,f2: TEXT; 

PROCEDURE nhap;
    VAR i: INTEGER;
    BEGIN
        assign(f1,'BAI3.INP');
        assign(f2,'BAI3.OUT');
        reset(f1);
        rewrite(f2);
        read(f1,n);
        FOR i:=1 TO n DO read(f1,a[i]);
        close(f1);
        FOR i:=1 TO n DO write(a[i],' ');
        writeln;
    END; 

FUNCTION ktra(x: ma): BOOLEAN;
    VAR i,j,m,e,k: INTEGER;
        y: ma;
    BEGIN
        ktra:=TRUE;
        IF (d=1) AND (x[g]=1) THEN exit;
        e:=0;
        FOR i:=g TO d+g-1 DO BEGIN
            e:=e+1;
            y[e]:=x[i];
            END;
        k:=0;
        FOR i:=1 TO e DO
            IF y[i]=1 THEN k:=k+1;
        IF k=0 THEN BEGIN
            ktra:=FALSE;
            exit;
            END;
        FOR i:=1 TO e-1 DO FOR j:=i+1 TO e DO
            IF y[i]>y[j] THEN BEGIN
                m:=y[i];   y[i]:=y[j];   y[j]:=m;
                END;
        FOR i:=2 TO e DO IF (y[i]-y[i-1])>1 THEN BEGIN
            ktra:=FALSE;
            exit;
        END;
    END; 

PROCEDURE dem1;
    BEGIN
        dem:=0;
        FOR g:=1 TO n DO
            FOR d:=1 TO n-g+1 DO
                IF ktra(a) THEN inc(dem);
        write(f2,dem);
        write(dem);
        writeln(f2);
    END;                                      

PROCEDURE xuli;
    VAR i,j,e: INTEGER;
    BEGIN
        FOR g:=1 TO n DO
            FOR d:=1 TO n-g+1 DO
                IF ktra(a) THEN BEGIN
                    write(f2,g,' ');
                    write(f2,d+g-1,' ');
                    write(f2,d);
                    writeln(f2);
                    END;
        close(f2);
    END;

BEGIN
    clrscr;
    nhap;
    dem1;
    xuli;
    readln
END.