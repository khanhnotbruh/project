var s1,s2: string;
    m: array[1..120] of integer;
    i,c,l1,l2 : integer;

begin
  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);

  readln(s1); readln(s2);

  l1:=length(s1); l2:=length(s2);

  while(length(s1)<110) do s1:='0'+s1;
  while(length(s2)<110) do s2:='0'+s2;

  i:=1;c:=0;
  while (i<=l1)or(i<=l2) do begin
    c:=c+ord(s1[length(s1)-i+1])+ord(s2[length(s2)-i+1])-96;
    m[i]:=c mod 10;
    c:=c div 10;
    inc(i);
  end;
  if c>0 then begin m[i]:=c;inc(i) end;
  l1:=i;

  for i:=l1-1 downto 1 do write(m[i]);

end.
