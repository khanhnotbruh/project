Đinh Thị Mai Huyền -- THPT Bạch Đằng

**CAU HOI**

**Dãy con có tổng lớn nhất**

Cho dãy gồm N số nguyên A1, A2, \..., A~N~. Tìm dãy con gồm một hoặc một
số phần tử liên tiếp của dãy đã cho với tổng các phần tử trong dãy là
lớn nhất.

***Yêu cầu:*** Cho dãy gồm N số nguyên A1, A2, \..., A~N~. Tìm dãy con
gồm một hoặc một số phần tử liên tiếp của dãy đã cho với tổng các phần
tử trong dãy là lớn nhất.

***Dữ liệu vào*:** Vào từ file văn bản BAI4.INP

\- Dòng đầu tiên chứa số nguyên d­ương n (n \< 10^6^).

\- Dòng thứ i trong số N dòng tiếp theo chứa số ai (\|ai\| \> 1000).

***Dữ liệu ra*:** Ghi ra file văn bản BAI4.OUT

\- Dòng đầu tiên ghi vị trí của phần tử đầu tiên của dãy con tìm được.

\- Dòng thứ hai ghi vị trí của phần tử cuối cùng của dãy con tìm được

\- Dòng thứ ba ghi tổng các phần tử của dãy con tìm được.

+---------------------------------+------------------------------------+
| BAI4.INP                        | BAI4.OUT                           |
+---------------------------------+------------------------------------+
| 8                               | 3 6 40                             |
|                                 |                                    |
| 12                              |                                    |
|                                 |                                    |
| -14                             |                                    |
|                                 |                                    |
| 1                               |                                    |
|                                 |                                    |
| 23                              |                                    |
|                                 |                                    |
| -6                              |                                    |
|                                 |                                    |
| 22                              |                                    |
|                                 |                                    |
| -34                             |                                    |
|                                 |                                    |
| 13                              |                                    |
+---------------------------------+------------------------------------+

**DAP AN**

#include \<bits/stdc++.h\>

using namespace std;

int main()

{

//Attach files

freopen(\"BAI4.INP\", \"r\", stdin);

freopen(\"BAI4.OUT\", \"w\", stdout);

//Main program

int n, Num; cin \>\> n;

int Res = INT_MIN, Temp = 0, s = 0,

Start = 0, End = 0;

for (int i = 1; i \<= n; i++) {

cin \>\> Num; Temp += Num;

if (Res \< Temp) {

Res = Temp;

Start = s;

End = i;

}

if (Temp \< 0) {

Temp = 0;

s = i + 1;

}

}

printf(\"%d %d %d\", Start, End, Res);

return 0;

}
