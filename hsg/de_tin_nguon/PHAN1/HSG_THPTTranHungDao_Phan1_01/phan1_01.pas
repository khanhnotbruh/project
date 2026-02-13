const
    fi='BAI1.INP';
    fo='BAI1.OUT';
var
    s1,s2:ansistring;
    f1,f2:text;

function dodai(s1,s2:ansistring):boolean;
begin
    if length(s1)=length(s2) then exit(true)
    else exit(false);
end;

function kitu(s1,s2:ansistring):boolean;
var
    i:longint;
    a:array['A'..'Z'] of longint;
    b:array['A'..'Z'] of longint;
    ok:boolean;
    ch:char;
begin
    fillchar(a,sizeof(a),0);
    fillchar(b,sizeof(b),0);
    for i:=1 to length(s1) do
    begin
        s1[i]:=upcase(s1[i]);
        s2[i]:=upcase(s2[i]);
    end;
    for i:=1 to length(s1) do
    begin
        if s1[i] in ['A'..'Z'] then inc(a[s1[i]]);
        if s2[i] in ['A'..'Z'] then inc(b[s2[i]]);
    end;
    ok:=true;
    for ch:='A' to 'Z' do
        if a[ch]<>b[ch] then exit(false)
        else ok:=true;
    kitu:=ok;
end;

begin
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,s1);
    readln(f1,s2);
    if dodai(s1,s2) and kitu(s1,s2) then writeln(f2,'CO')
    else writeln(f2,'KHONG');
    close(f1);
    close(f2);
end.
