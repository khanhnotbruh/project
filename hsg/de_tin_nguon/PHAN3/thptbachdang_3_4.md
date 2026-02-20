Đặng Thị Thùy Linh -- THPT Bạch Đằng

Cauhoi

***Số tự mãn Narcissistic***

Số nguyên a (a ≥ 0) gồm n chữ sô a~1~, a~2~, ..., a~n~ được gọi là số tự
mãn Narcissistic khi:

a = a~1~^n^ + a~2~^n^ + a~3~^n^ + ... + a~n~^n^

Viết chương trình loại bỏ các số không phải số Narcissistic trong dãy A
để thu được dãy mới gồm toàn các số Narcissistic.

***Dữ liệu vào:*** Đọc từ tệp ***NarcIn.Txt*** gồm 2 dòng

\- Dòng 1 ghi số nguyên dương N

\- Dòng 2 ghi N số nguyên dương mỗi số cách nhau 1 dấu cách

***Dữ liệu ra:*** Ghi ra tệp ***NarcOut.Txt*** gồm các sô Narcissistic
trong tệp ***NarcIn.Txt*** mỗi số cách nhau 1 dấu cách.

***Ví dụ:***

+-----------------------------------+----------------------------------+
| **NarcIn.Txt**                    | **NarcOut.Txt**                  |
+===================================+==================================+
| 11                                | 153 371 407 370                  |
|                                   |                                  |
| 50 29 153 298 275 371 48 407 18   |                                  |
| 192 370                           |                                  |
+-----------------------------------+----------------------------------+

Dapan

#include \<bits/stdc++.h\>

using namespace std;

int countDigit(int n) {

if (n == 0)

return 0;

return 1 + countDigit(n / 10);

}

bool check(int n) {

if (n == 153) return true;

int l = countDigit(n);

int dup = n;

int sum = 0;

while (dup) {

sum += pow(dup % 10, l);

dup /= 10;

}

return (n == sum);

}

int main()

{

//Attach files

freopen(\"NarcIn.txt\", \"r\", stdin);

freopen(\"NarcOut.txt\", \"w\", stdout);

//Main program

int n, Temp; scanf(\"%d\", &n);

for (int i = 0; i \< n; i++) {

scanf(\"%d\", &Temp);

if (check(Temp))

printf(\"%d \", Temp);

}

return 0;

}
