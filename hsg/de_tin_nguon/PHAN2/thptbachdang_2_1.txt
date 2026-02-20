Đinh Thị Mai Huyền -- THPT Bạch Đằng

**CAU HOI**

**Tìm kí tự trong xâu**

Cho xâu ký tự S có độ dài không quá 255 kí tự.

**Yêu cầu:** Tìm kí tự C trong S.

**Dữ liệu vào:** Cho trong tệp **BAI2.INP** gồm:

-   Dòng đầu là kí tự C

-   Dòng 2 là xâu S.

**Dữ liệu ra:** Ghi ra tệp **BAI2.OUT** gồm nhiều dòng, mỗi dòng ghi một
số là vị trí tìm được kí tự C trong xâu S (theo thứ tự tăng dần). Nếu
không tìm thấy thì ghi duy nhất số 0

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **BAI2.INP**                     | **BAI2.OUT**                      |
+==================================+===================================+
| a                                | **1**                             |
|                                  |                                   |
| abcdabbbbbacccc1123234343A       | **5**                             |
|                                  |                                   |
|                                  | **11**                            |
+----------------------------------+-----------------------------------+

+----------------------------------+-----------------------------------+
| **BAI2.INP**                     | **BAI2.OUT**                      |
+==================================+===================================+
| C                                | **0**                             |
|                                  |                                   |
| abcdabbbbbacccc1123234343A       |                                   |
+----------------------------------+-----------------------------------+

**DAP AN**

#include \<bits/stdc++.h\>

using namespace std;

int main()

{

//Attach files

freopen(\"BAI2.INP\", \"r\", stdin);

freopen(\"BAI2.OUT\", \"w\", stdout);

//Main program

char a; string s; cin \>\> a \>\> s;

std::map\<int, int\> mp;

for (int i = 0; i \< s.size(); i++)

{

if (a == s\[i\]) cout \<\< i + 1 \<\< \"\\n\";

mp\[s\[i\]\]++;

}

if (mp.find(a) == mp.end()) cout \<\< 0;

return 0;

}
