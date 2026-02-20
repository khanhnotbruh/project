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

Viết chương trình tìm các số Happy Number trong phạm vi từ số nguyên M
đến số nguyên N.

***Dữ liệu vào:*** Đọc từ tệp ***HappyIn.Txt*** gồm 2 số nguyên M và N
mỗi số cách nhau 1 dấu cách

***Dữ liệu ra:*** Ghi ra tệp ***HappyOut.Txt*** gồm các số Happy Number
trong phạm vi từ M đến N mỗi số cách nhau 1 dấu cách.

***Ví dụ:***

  -----------------------------------------------------------------------
  **NarcIn.Txt**    **NarcOut.Txt**
  ----------------- -----------------------------------------------------
  100 300           100 103 109 129 130 133 139 167 176 188 190 192 193
                    203 208 219 226 230 236 239 262 263 280 291 293

  -----------------------------------------------------------------------

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

freopen(\"NarcIn.txt\", \"r\", stdin);

freopen(\"NarcOut.txt\", \"w\", stdout);

//Main program

int l, r; cin \>\> l \>\> r;

for (int i = l; i \<= r; i++)

if (HN(i)) cout \<\< i \<\< \" \";

return 0;

}
