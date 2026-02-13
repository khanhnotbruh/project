uses math;
const
    inp = 'BAI1.INP';
    out = 'BAI1.OUT';

var a:array[97..122] of longint;
    i,cao:longint;
    s:string;

begin
    assign(input,inp); reset(input);
    assign(output,out); rewrite(output);
    for i:=97 to 122 do read(a[i]); readln;
    read(s);
    cao:=a[ord(s[1])];
    for i:=1 to length(s) do cao:=max(cao,a[ord(s[i])]);
    write(cao*length(s))
end.