Đinh Thị Mai Huyền -- THPT Bạch Đằng

**CAU HOI**

**Sắp xếp**

Cho dãy số nguyên có N phần tử (0 \< N ≤ 10^4^)

**Yêu cầu:** Sắp xếp dãy theo thứ tự không giảm

**Dữ liệu vào:** Cho trong tệp **BAI2.INP** gồm:

-   Dòng 1: Ghi số N

-   Dòng 2: Ghi N số nguyên A\[i\] (A\[i\] ≤ 10^4^), mỗi số cách nhau 1
    dấu cách

**Dữ liệu ra:** Ghi ra tệp **BAI2.OUT** gồm một dòng là dãy số đã được
sắp xếp

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **BAI2.INP**                     | **BAI2.OUT**                      |
+==================================+===================================+
| 5                                | **123 123 231 321 568**           |
|                                  |                                   |
| 123 231 568 123 321              |                                   |
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

std::priority_queue\<int\> p;

int n, temp; cin \>\> n;

for (int i = 0; i \< n; i++)

cin \>\> temp, p.push(-temp);

while (!p.empty()) {

printf(\"%d \", -p.top());

p.pop();

}

return 0;

}
