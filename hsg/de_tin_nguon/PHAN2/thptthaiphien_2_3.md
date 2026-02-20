LÊ ĐÌNH LONG --THPT THÁI PHIÊN

CÂU HỎI

[Bài 2]{.underline}: LIỆT KÊ TỪ

Viết chương trình liệt kê các từ của một xâu ký tự S cho trước, biết
rằng mỗi từ phải được viết trên một dòng.

*Dữ liệu vào*: File BAI2.INP chứa xâu S có độ dài không quá 255 kí tự

*Dữ liệu ra:* ghi file BAI2.OUT theo từng dòng, mỗi dòng liệt lê 1 từ

+-----------------------------------+----------------------------------+
| BAI2.INP                          | BAI2.OUT                         |
+-----------------------------------+----------------------------------+
| em yeu truong em                  | em                               |
|                                   |                                  |
|                                   | yeu                              |
|                                   |                                  |
|                                   | truong                           |
|                                   |                                  |
|                                   | em                               |
+-----------------------------------+----------------------------------+

ĐÁP ÁN

**[Đáp án bài 2:]{.underline}**

Uses Crt;

Var St:String;

Procedure XoaTrangThua(Var St:String);

Begin

While St\[1\]=#32 Do Delete(St,1,1);

While St\[Length(St)\]=#32 Do Delete(St,Length(St),1);

While POS(#32#32,St)\<\>0 Do Delete(St,POS(#32#32,St),1);

End;

Begin

Write('Nhap xau St: '); Readln(St);

XoaTrangThua(St);

St:=St+#32;

Writeln('Liet ke cac tu trong xau: ');

While POS(#32,St)\<\>0 Do

Begin

Writeln(Copy(St,1,POS(#32,St)));

Delete(St,1,POS(#32,St));

End;

Readln;

End.
