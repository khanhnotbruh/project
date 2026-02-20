Đinh Thị Mai Huyền -- THPT Bạch Đằng

**CAU HOI**

**Dãy con đúng**

Cho xâu kí tự S chỉ bao gồm các ký tự 'a' và 'b'. Dãy con đúng của dãy S
là một dãy con liên tục bất kì của S bao gồm các ký tự giống nhau. Dãy
con đúng bậc 1 của dãy S là một dãy con liên tục bất kỳ của dãy S bao
gồm các ký tự giống nhau nhưng được thêm 1 ký tự khác (ví dụ 'aaaabaaa',
baaaa, aaaab). Trường hợp đặc biệt, dãy S chỉ có 1 loại ký tự thì dãy
con đúng cũng chính là dãy con đúng bậc 1.

***Yêu cầu:*** Hãy tính độ dài lớn nhất dãy con đúng và dãy con đúng bậc
1 của dãy S.

***Dữ liệu vào:*** Cho trong file văn bản **BAI3.INP**, có cấu trúc:

\- Dòng 1: Ghi xâu ký tự S

***Dữ liệu ra:*** Ghi ra file văn bản **BAI3.OUT**, theo cấu trúc:

\- Dòng 1: Ghi độ dài lớn nhất của dãy con đúng

\- Dòng 2: Ghi độ dài lớn nhất của dãy con đúng bậc 1

***Ví dụ:***

+--------------------------------------+-------------------------------+
| **BAI3.INP**                         | **BAI3.OUT**                  |
+======================================+===============================+
| aaabaaabbaaaaa                       | 5                             |
|                                      |                               |
|                                      | 7                             |
+--------------------------------------+-------------------------------+

**DAP AN**

#include \<bits/stdc++.h\>

using namespace std;

int main()

{

//Attach files

freopen(\"BAI3.INP\", \"r\", stdin);

freopen(\"BAI3.OUT\", \"w\", stdout);

//Main program

std::string s; cin \>\> s;

int a\[s.size() + 1\], b\[s.size() + 1\];

int maxLenC = 0, maxLen = 0, Damn = 1;

a\[0\] = 0, b\[0\] = 0;

for (int i = 1; i \< s.size(); i++) {

if (s\[i\] == s\[i - 1\])

Damn++;

if (s\[i\] != s\[i + 1\]) {

maxLen = max(maxLen, Damn);

Damn = 1;

}

}

maxLen = max(maxLen, Damn); Damn = 0;

for (int i = 0; i \< s.size(); i++) {

Damn++;

if (s\[i\] != s\[i + 1\] && s\[i\] != s\[i + 2\] && s\[i\] == s\[i -
1\]) {

maxLenC = max(maxLenC, Damn);

Damn = 0;

}

}

maxLenC = max(Damn, maxLenC);

cout \<\< maxLen \<\< \"\\n\" \<\< maxLenC;

return 0;

}
