Var
    st      :   ansistring;
    d       :   array['a'..'z'] of longint;
    i,dem   :   longint;
    ch      :   char;
Begin
    read(st);
    dem := 0;
    for i := 1 to length(st) do
        inc(d[st[i]]);
    for ch:='a' to 'z' do
        if d[ch] mod 2 =1 then inc(dem);
    if dem >= 2 then write('NO') else write('YES');
End.