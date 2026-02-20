Đặng Thị Thùy Linh -- THPT Bạch Đằng

Cauhoi

Cho xâu S không quá 1000 kí tự gồm các kí tự chữ cái và các chữ số. Phần
tử số là các chữ số liên tiếp trong xâu.

Viết chương trình cho biết trong xâu S có bao nhiêu phần tử số và phần
tử số có giá trị lớn nhất sau khi đã thay đổi thứ tự các chữ số theo thứ
tự ngược lại.

***Dữ liệu vào:*** Đọc từ tệp ***Input.Txt*** chứa xâu S

***Dữ liệu vào:*** Ghi ra tệp ***Output.Txt*** gồm 2 dòng

\- Dòng 1 ghi số lượng phần tử số trong xâu S

\- Dòng 2 ghi giá trị phần tử số lớn nhất sau khi đã thay đổi thứ tự các
chữ số theo thứ tự ngược lại

***Ví dụ***

+----------------------------------+-----------------------------------+
| **Input**                        | **Output**                        |
+----------------------------------+-----------------------------------+
| aaa6cde776aghdk83mdhl159acc      | 4                                 |
|                                  |                                   |
|                                  | 951                               |
+----------------------------------+-----------------------------------+
| Truongthptbachdang               | 0                                 |
|                                  |                                   |
|                                  | 0                                 |
+----------------------------------+-----------------------------------+

Dapan

#include \<bits/stdc++.h\>

int main()

{

//Attach files

freopen(\"Input.txt\", \"r\", stdin);

freopen(\"Output.txt\", \"w\", stdout);

//Main program

std::vector\<long long int\> res; int maxx = 0;

std::string s, num; std::cin \>\> s; s += \'a\';

for (int i = 0, temp = 0; i \< s.size(); i++) {

if (s\[i\] \>= \'0\' && s\[i\] \<= \'9\')

num += s\[i\];

if (s\[i\] \>= \'0\' && s\[i\] \<= \'9\' && s\[i + 1\] \>= \'a\' &&
s\[i + 1\] \<= \'z\') {

std::reverse(num.begin(), num.end());

std::stringstream Convert(num);

Convert \>\> temp;

res.push_back(temp);

maxx = (maxx \< temp) ? temp : maxx;

num = \"\";

}

}

std::cout \<\< res.size() \<\< \"\\n\" \<\< maxx;

return 0;

}
