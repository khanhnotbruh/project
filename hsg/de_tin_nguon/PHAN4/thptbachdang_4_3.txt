Đặng Thị Thùy Linh -- THPT Bạch Đằng

Cauhoi

Cho xâu S không quá 1000 kí tự gồm các kí tự chữ cái và các chữ số.

Viết chương trình sắp xếp các số trong xâu S theo thứ tự tăng dần, vị
trí các kí tự vẫn giữ nguyên.

***Dữ liệu vào:*** Đọc từ tệp ***Input.Txt*** chứa xâu S

***Dữ liệu vào:*** Ghi ra tệp ***Output.Txt*** chứa xâu S sau khi sắp
xếp lại các số.

***Ví dụ***

  ----------------------------------- -----------------------------------
  **Input**                           **Output**

  aaa6cde776 aghdk2823mdhl95acc       aaa6cde95aghdk776 mdhl2823acc
  ----------------------------------- -----------------------------------

Dapan

#include \<bits/stdc++.h\>

int main()

{

//Attach files

freopen(\"Input.txt\", \"r\", stdin);

freopen(\"Output.txt\", \"w\", stdout);

//Main program

std::vector\<long long int\> res;

std::string s, num; std::cin \>\> s; s += \'a\';

for (int i = 0; i \< s.size(); i++) {

if (s\[i\] \>= \'0\' && s\[i\] \<= \'9\')

num += s\[i\];

if (s\[i\] \>= \'0\' && s\[i\] \<= \'9\' && s\[i + 1\] \>= \'a\' &&
s\[i + 1\] \<= \'z\') {

std::stringstream Convert(num);

long long x = 0;

Convert \>\> x;

res.push_back(x);

num = \"\";

}

}

sort(res.begin(), res.end()); int j = 0;

for (int i = 0; i \< s.size() - 1; i++) {

if (s\[i\] \>= \'a\' && s\[i\] \<= \'z\')

std::cout \<\< s\[i\];

if (s\[i\] \>= \'0\' && s\[i\] \<= \'9\' && s\[i + 1\] \>= \'a\' &&
s\[i + 1\] \<= \'z\') {

std::cout \<\< res\[j\];

j++;

}

}

return 0;

}
