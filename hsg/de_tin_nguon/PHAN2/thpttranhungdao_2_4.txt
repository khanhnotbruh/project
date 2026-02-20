**Nguyễn Hoàn Phúc -- THPT Trần Hưng Đạo**

**CAUHOI**

**Câu 2: Rút gọn căn**

Misaki là một người bạn rất thân của Tý. Cả hai từ nhỏ đã lớn lên cùng
nhau và cùng học chung một trường. Hôm nay, lớp của Misaki và Tý làm
một vài bài tập toán. Do cả hai đã để quên máy tính ở nhà nên các bạn
rất lúng túng trước việc phải rút gọn các căn số bậc hai. Biết rằng,
trong toán học, một căn số bậc hai gồm hai thành phần: phần số bên ngoài
dấu căn gọi là "phần nguyên" và phần số bên trong dấu căn gọi là "phần
căn". Cả hai đang cần đến sự giúp đỡ của bạn. Bạn là một lập trình viên
tài ba của NTUCoder, bạn hãy viết chương trình rút gọn các căn bậc
hai giúp Misaki và Tý để chúng trông gọn gàng và dễ tính hơn nhé!

**Yêu cầu: **Cho số nguyên dương N là một căn số bậc hai, bạn hãy rút
gọn N sao cho phần căn là nhỏ nhất.

**Dữ liệu nhập: **Vào từ tệp văn bản **Bai2.inp** gồm:

  - Dòng thứ nhất chứa một số nguyên dương T là số lượng bộ test (1 ≤
T ≤ 3000).

  - T dòng tiếp theo, mỗi dòng chứa một số nguyên dương N (1 ≤ N ≤
10^9^).

**Dữ liệu xuất:** Ghi ra tệp văn bản **Bai2.out** gồm:

\- T dòng, mỗi dòng chứa 2 số nguyên là phần nguyên và phần căn là kết
quả rút gọn.

**Ví dụ**

  -----------------------------------------------------------------------
  **Bai2.inp**                       **Bai2.out**
  ---------------------------------- ------------------------------------
  8\                                 1 1\
  1\                                 1 2\
  2\                                 1 3\
  3\                                 2 1\
  4\                                 1 5\
  5\                                 1 6\
  6\                                 1 7\
  7\                                 2 2
  8                                  

  -----------------------------------------------------------------------

Các số được rút gọn lần lượt thành:

-   √1 = 1√1 

-   √2 = 1√2 

-   √3 = 1√3 

-   √4 = 2√1 

-   √5 = 1√5

-   √6 = 1√6

-   √7 = 1√7 

-   √8 = 2√2

[\
]{.underline}

DAPAN

+----------+------------------------------------------+---------------+
| Test     | Yêu cầu                                  |               |
+==========+==========================================+===============+
| 1        | -   Cứ $30\%$ số test ứng với $30\%$ số  |               |
|          |     điểm của $1 \leq N \leq 100.$        |               |
+----------+------------------------------------------+---------------+
| 2        | -   Cứ $30\%$ số test khác ứng với       |               |
|          |     $30\%$ số điểm cú                    |               |
|          |     $1 \leq N \leq 500.$                 |               |
+----------+------------------------------------------+---------------+
| 3        | -   Cứ 40% số test ứng với $40\%$ số     |               |
|          |     điểm cú $1 \leq N \leq 2000.$        |               |
+----------+------------------------------------------+---------------+

[Ghi chú:]{.underline} Bài được chấm trên 6 test, mỗi test 0.25 điểm.

#include\<bits/stdc++.h\>

using namespace std;

typedef long long ll;

const int N = 1234567;

void solve(int n){

int k = sqrt(n);

int v1=1,v2=n;

for(int i=1;i\<=k;i++){

if(n % i==0){

int x =sqrt(n/i);

if(x\*x == n/i){

cout\<\< x \<\< \" \"\<\< i \<\<endl;

return;

}

x = sqrt(i);

if(x\*x == i){

v1 = x;

v2 = n/i;

}

}

}

cout \<\< v1 \<\< \" \"\<\< v2 \<\< endl;

}

int main(){

freopen(\"Bai2.inp\",\"r\",stdin);

freopen(\"BAI2.out\",\"w\",stdout);

int n;

cin\>\>n;

int tm;

while(n\--){

cin\>\>tm;

solve(tm);

}

}
