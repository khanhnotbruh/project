Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 1. Xâu sóng nhạc.**

Ban Q được giao soạn thảo một văn bản, do tò mò nên Q muốn tạo ra các
đoạn văn bản theo dạng sóng nhạc với nguyên tắc cứ gặp dấu ngắt câu thì
đổi trạng thái chữ hoa thành chữ thường và ngược lại. Q đã gõ văn bản đó
bằng chữ thường do vậy gõ lại rất mất công.

***Yêu cầu:*** Hãy giúp bạn Q sửa văn bản theo yêu cầu trên. (Các dấu
kết thúc câu gồm: "!"; "."; "?")

**Input.** **BAI1.INP**

\- Dòng duy nhất gồm các kí tự $S \in 'a^{'}..^{'}z^{'};'!';'.';'?')$ ;
Xâu có độ dài tối đa 1000 ký tự.

**Output:** Ghi ra **BAI1.OUT**

\- Dòng duy nhất xâu kết quả

Ví dụ:

  -----------------------------------------------------------------------
  **BAI1.INP**                        **BAI1.OUT**
  ----------------------------------- -----------------------------------
  abcd.abcd.abcd                      abcd.ABCD.abcd

  abcd!ebc?def.ghijk                  abcd!EBC?def.GHIJK
  -----------------------------------------------------------------------

DAPAN

**Bài 1 (6 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 1 | 1  | 1.2 | -   Xâu ký tự có độ dài tối đa 255 ký tự        |
|       | -5 |     |                                                 |
| (6    |    |     | -   Thời gian chạy tối đa 0.5 giây              |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

Program d2b1;

const fi=\'Bai1.inp\';

fo=\'Bai1.out\';

Var S:Ansistring;

i,N,d:longint;

f1,f2:text;

procedure mofile;

begin

assign(f1,fi);

reset(f1);

readln(f1,S);

assign(f2,fo);

Rewrite(f2);

end;

Procedure dongfile;

begin

close(f1);

close(f2);

end;

Procedure xuli;

Begin

n:=length(s);

d:=0;

for i:=1 to N do if s\[i\] in \[\'a\'..\'z\'\] then d:=d+1;

if d=0 then

Begin

Write(f2,\'#\');

exit;

End;

if(s\[n\] in \[\'a\'..\'z\'\]) then S:=S+\'.\';

inc(n);

for i:= 1 to N-1 do If (s\[i\] in \[\'.\',\'!\',\'?\'\]) then
s\[i+1\]:=upcase(s\[i+1\]);

while (s\[1\] in \[\'.\',\'!\',\'?\'\]) do

Begin

delete(s,1,1);

dec(n);

end;

if s\<\>\'\' then

Begin

s\[1\]:=upcase(s\[1\]);

for I:=1 to length(s)-1 do

if ((s\[i\] in \[\'.\',\'!\',\'?\'\])and

(not (s\[i+1\] in \[\'.\',\'!\',\'?\'\]))) or (upcase(s\[i\]) in
\[\'A\'..\'Z\'\]) then Write(f2,S\[i\]);

Write(f2,s\[n\]);

End else write(f2,\'#\');

End;

BEGIN

mofile;

Xuli;

dongfile;

END.
