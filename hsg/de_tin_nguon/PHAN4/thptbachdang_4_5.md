**Phạm Thị Thu Hiền -- trường THPT Bạch Đằng**

**CAUHOI**

Cho một dãy số nguyên có n phần tử (2\<n\<1000).

In dãy số đó ra màn hình.

In ra phần tử được lặp nhiều nhất trong dãy và số lần lặp của phần tử
đó.

> Tìm dãy con gồm m phần tử (m≤n) sao cho dãy con này có tổng lớn nhất.
> (Dãy con là dãy các phần tử liên tiếp nhau trong mảng).
>
> ***-*** ***Dữ liệu:*** vào từ file văn bản BAI4.INP. Có hai dòng:
>
> Dòng thứ nhất là dãy số nguyên.
>
> Dòng thứ hai là giá trị của m.
>
> ***- Kết quả:*** ghi ra file văn bản BAI4.OUT. Có ba dòng.
>
> Dòng thứ nhất là phần tử lặp nhiều nhất và số lần lặp.
>
> Dòng thứ hai là tổng lớn nhất trong các dãy con.
>
> Dòng thứ ba là dãy con lớn nhất.
>
> Ví dụ:

+---------------------------------+------------------------------------+
| BAI4.INP                        | BAI4.OUT                           |
+=================================+====================================+
| 5 -1 3 4 -7 9 6 -2 3            | 3 2                                |
|                                 |                                    |
| 4                               | 16                                 |
|                                 |                                    |
|                                 | 9 6 -2 3                           |
+---------------------------------+------------------------------------+

**DAPAN**

Type Mang=ARRAY\[1..1000\] Of Integer;

Const fi = \'Bai4.inp\';

fo = \'Bai4.out\';

Var A:Mang;

f: text;

i,n,m,vt,pt,sopt,max:integer;

{\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--}

Procedure docdayso(Var m:mang; Var sl: integer);

Begin

> assign(f,fi);
>
> reset(f); sl:=0;
>
> While not EOLn(f) Do
>
> Begin
>
> Inc(sl); read(f, m\[sl\]);
>
> End;
>
> {Viet day so ra man hinh}
>
> For i:=1 To sl Do Write(m\[i\] ,\' \');
>
> close(f);

End;

{\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--}

Procedure Findmax(m: Mang; sl: integer; Var ptmax, sll: integer);

Var i,j,s: integer;

Begin

sll:=1; ptmax:=m\[1\];

For i:=1 to sl-1 do

Begin

s:=1;

For j:=i+1 to sl do

If m\[j\] =m\[i\] then inc(s);

If s\>=sll then

Begin

sll:=s; ptmax:=a\[i\];

End;

End;

End;

{\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--}

Function soptudaycon: integer;

Begin

> {doc so phan tu cua day con}
>
> assign(f,fi); reset(f);
>
> readln(f);
>
> readln(f,soptudaycon); close(f);

End;

{\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--}

Procedure Timdayconmax(m: Mang; sl,slc:integer; Var max,vt: integer);

Var i,j,s: integer;

Begin

vt:=1; {Vi tri phan tu dau tien cua day con}

{Gia su m phan tu dau tien cua mang m la day con co tong lon nhat}

max:=0;

For i:=1 To slc Do max:=max+m\[i\];

{Tim cac day con khac}

For i:=2 To sl-slc+1 Do

Begin

{Tinh tong cua day con thu i}

s:=0;

For j:=i To i+slc-1 Do s:=s+m\[j\];

If s\>max Then {Neu day con tim duoc co tong lon hon day con truoc}

Begin

max:=s; {Thay tong moi}

vt:=i; {Thay vi tri dau tien cua day con moi}

End;

End;

End;

{\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--}

Begin

Docdayso(a,n);

Findmax(a,n,pt,sopt);

m:=soptudaycon;

Timdayconmax(a,n,m,max,vt);

assign(f,fo);

rewrite(f);

Writeln(f,pt,\' \',sopt);

Writeln(f,max);

For i:=vt To vt +m-1 Do Write(f,a\[i\],\' \');

Close(f);

End.
