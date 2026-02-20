**Phạm Thị Thùy Dương -- THPT Quang Trung**

**CÂU HỎI**

Nhập vào một xâu s và đếm xem nó có bao nhiêu từ. Từ là một dãy các kí
tự, cách nhau bởi dấu cách?

  -----------------------------------------------------------------------
  **Vào**                                            **Ra**
  -------------------------------------------------- --------------------
  Hai phong dep que toi                              4

  -----------------------------------------------------------------------

DAPAN

Var s: string;

function sotu(s : string) : integer;

Var I,dem:integer;

Begin

s := \' \' + s; dem := 0;

for i := 2 to length(s)

if (s\[i-1\]=\' \') and (s\[i\]\<\>\' \') then dem := dem + 1;

sotu := dem;

end;

Begin

write(\'Nhap vao 1 xau:\');

readln(s);

writeln(\'So tu trong xau la:\',sotu(s));

Readln

End.
