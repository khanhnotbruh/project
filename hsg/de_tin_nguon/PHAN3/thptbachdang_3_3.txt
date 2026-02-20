Đặng Thị Thùy Linh -- THPT Bạch Đằng

Cauhoi

Số nguyên a (a ≥ 0) được gọi là số hạnh phúc Happy Number khi:

a~1~ là tổng bình phương các chữ số của a.

a~2~ là tổng bình phương các chữ số của a~1~.

a~3~ là tổng bình phương các chữ số của a~2~.

...

Tính các a~i~ cho đến khi a~i~ = 1 hoặc a~i~ ∈ \[a, a~1~, a~2~, a~3~,
...\].

Nếu a~i~ = 1 thì a là Happy Number

Nếu a~i~ ∈ \[a, a~1~, a~2~, a~3~, ...\] (có sự lặp lại theo chu kì) thì
a là Unhappy Number

***Ví dụ:***

Số 7 là Happy Number vì:

7^2^ = 49

4^2^ + 9^2^ = 97

9^2^ + 7^2^ = 130

1^2^ + 3^2^ + 0^2^ = 10

1^2^ + 0^2^ = 1

Số 4 là Unhappy Number vì:

4^2^ = 16

1^2^ + 6^2^ = 37

3^2^ + 7^2^ = 58

5^2^ + 8^2^ = 89

8^2^ + 9^2^ = 145

1^2^ + 4^2^ + 5^2^ = 42

4^2^ + 2^2^ = 20

2^2^ + 0^2^ = 4 lặp lại số 4 ban đầu

Viết chương trình loại bỏ các số Unhappy Number trong dãy số A để thu
được dãy A gồm toàn các số Happy Number.

***Dữ liệu vào:*** Đọc từ tệp ***HappyIn.Txt*** gồm 2 dòng:

\- Dòng 1 ghi số nguyên N

\- Dòng 2 ghi N số nguyên mỗi số cách nhau 1 dấu cách

***Dữ liệu ra:*** Ghi ra tệp ***HappyOut.Txt*** gồm các số Happy Number
trong tệp ***HappyIn.Txt*** mỗi số cách nhau 1 dấu cách.

***Ví dụ:***

+-------------------------------------+--------------------------------+
| **NarcIn.Txt**                      | **NarcOut.Txt**                |
+=====================================+================================+
| 13                                  | 1 167 13 91 236 291            |
|                                     |                                |
| 1 9 167 13 42 91 102 236 218 200    |                                |
| 254 291 303                         |                                |
+-------------------------------------+--------------------------------+

Dapan

#include \<bits/stdc++.h\>

using namespace std;

long long int sumSquare(int n) {

int Res = 0;

while (n \> 0) {

Res += (n % 10) \* (n % 10);

n /= 10;

}

return Res;

}

bool HN(int n) {

bool kt = false;

unordered_map\<int, int\> mp;

mp\[n\]++; int temp = 0;

while (!kt) {

if (sumSquare(n) == 1)

return true;

if (mp.find(sumSquare(n)) != mp.end())

return false;

n = sumSquare(n);

mp\[n\]++;

}

}

int main()

{

//Attach files

freopen(\"HappyIn.txt\", \"r\", stdin);

freopen(\"HappyOut.txt\", \"w\", stdout);

//Main program

int n, Temp; scanf(\"%d\", &n);

for (int i = 0; i \< n; ++i) {

scanf(\"%d\", &Temp);

if (HN(Temp)) cout \<\< Temp \<\< \" \";

}

return 0;

}
