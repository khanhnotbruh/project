Đinh Thị Mai Huyền -- THPT Bạch Đằng

**CAU HOI**

**Sắp xếp xâu**

Cho một xâu S gồm các ký tự lấy từ tập 'a' .. 'z' và dấu cách. Xâu không
quá 50 từ, mỗi từ dài không quá 20 ký tự.

***Yêu cầu:*** Sắp xếp các từ của xâu S theo thứ tự không giảm của độ
dài.

***Dữ liệu vào:*** Cho trong file văn bản BAI3.INP, có cấu trúc:

*- Dòng 1:* Ghi một xâu ký tự S (có ít nhất 1 từ).

***Dữ liệu ra:*** Ghi ra file văn bản BAI3.OUT, theo cấu trúc:

*- Dòng 1:* Ghi các từ của xâu ký tự sau khi được sắp xếp. Các từ được
ghi cách nhau đúng một dấu cách.

***Ví dụ:***

  -----------------------------------------------------------------------
  **BAI3.INP**                            **BAI3.OUT**
  --------------------------------------- -------------------------------
  abcd abcde abcd abc                     abc abcd abcd abcde

  -----------------------------------------------------------------------

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
