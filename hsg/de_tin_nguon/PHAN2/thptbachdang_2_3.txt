Đặng Thị Thùy Linh -- THPT Bạch Đằng

Cauhoi

***Số tự mãn Narcissistic***

Số nguyên a (a ≥ 0) gồm n chữ sô a~1~, a~2~, ..., a~n~ được gọi là số tự
mãn Narcissistic khi:

a = a~1~^n^ + a~2~^n^ + a~3~^n^ + ... + a~n~^n^

Viết chương trình tìm các số Narcissistic trong phạm vi từ số nguyên M
đến số nguyên N.

***Dữ liệu vào:*** Đọc từ tệp ***NarcIn.Txt*** gồm 2 số nguyên M và N
mỗi số cách nhau 1 dấu cách

***Dữ liệu ra:*** Ghi ra tệp ***NarcOut.Txt*** gồm các sô Narcissistic
trong phạm vi từ M đến N mỗi số cách nhau 1 dấu cách.

***Ví dụ:***

  -----------------------------------------------------------------------
  **NarcIn.Txt**        **NarcOut.Txt**
  --------------------- -------------------------------------------------
  50 100000             153 370 371 407 1634 8208 9474 54748 92727 93084

  -----------------------------------------------------------------------

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

int l, r; scanf(\"%d%d\", &l, &r);

for (int i = l; i \<= r; i++)

if (check(i)) cout \<\< i \<\< \" \";

return 0;

}
