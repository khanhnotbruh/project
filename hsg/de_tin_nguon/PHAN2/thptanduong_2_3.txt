Nguyễn Thanh Hà -- THPT An Dương

CAUHOI

**Câu 2: (7 điểm)**

Số hoàn hảo (số hoàn thiện) là một số nguyên dương mà tổng các ước
nguyên dương của nó (không bao gồm ước lớn nhất) bằng chính nó.

**Ví dụ:**

6 = 1 + 2 + 36=1+2+3 là một số hoàn hảo.

Nhiệm vụ của bạn là viết chương trình kiểm tra 1 số nguyên nhập từ bàn
phím có phải số hoàn hảo hay không!

**Dữ liệu vào**

-   Số nguyên n cần kiểm tra

**Giới hạn**

-   \|n\| ≤10^9^

**Dữ liệu ra**

-   In raYESnếu n là số hoàn hảo

-   In ra NO nếu n không phải số hoàn hảo

Ví dụ

  -----------------------------------------------------------------------
  **BAI2.INP**                            **BAI2.OUT**
  --------------------------------------- -------------------------------
  6                                       YES

  -----------------------------------------------------------------------

#include\<iostream\>

#include\<math.h\>

#include \<iomanip\>

#include\<stdio.h\>

using namespace std;

bool checkso(int n) {

long long int sum = 0;

if (n \< 3) {

return false;

}

else

for (long long int i = 1; i \<= n; i++) {

sum += i;

if (sum == n) {

return true;

}

}

return false;

}

int main() {

long long int n;

cin \>\> n;

if (checkso(n) == true) {

cout \<\< n \<\< \" la so hoan hao\";

}

else

cout \<\< n \<\< \" khong phai la so hoan hao\";

return 0;

}

Top of Form

Bottom of Form
