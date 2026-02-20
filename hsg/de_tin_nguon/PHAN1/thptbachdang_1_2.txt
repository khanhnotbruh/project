Đinh Thị Mai Huyền -- THPT Bạch Đằng

**CAU HOI**

**Đổi tiền**

Hàng tháng, các hộ dân sử dụng điện đều nhận được một hóa đơn thanh toán
tiền điện. Giá tiền điện phải trả được tính như sau:

\+ 100 số đầu tiên, mỗi số phải trả 550 đồng,

\+ Từ số 101 đến số 150, mỗi số phải trả 1100 đồng,

\+ Từ số 151 đến số 200, mỗi số phải trả 1470 đồng,

\+ Từ số 201 trở đi, mỗi số phải trả 1600 đồng.

Số tiền điện mà mỗi hộ dân phải trả ở hóa đơn là tổng số tiền điện mà
người đó đã sử dụng với 10% thuế VAT

**Yêu cầu**: Hãy viết chương trình tính số tiền điện mà người tiêu dùng
phải trả trong tháng.

**Dữ liệu vào**: Cho trong tệp **BAI1.INP** gồm:

\- Dòng thứ nhất ghi số N (Nguyên dương ≤ 10^5^) là số KW điện mà người
tiêu dùng đã sử dụng.

**Dữ liệu ra**: Ghi ra tệp **BAI1.OUT**:

\- Số tiền điện mà người tiêu dùng phải trả

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI1.INP**                       **BAI1.OUT**
  ---------------------------------- ------------------------------------
  250                                **263500 (giải thích: *100 số đầu x
                                     550 hết 55000, 50 số tiếp x 1100 hết
                                     55000, 50 số tiếp x 1470 hết 73500,
                                     50 số cuối x 1600 hết 80000*)**

  -----------------------------------------------------------------------

#include \<bits/stdc++.h\>

using namespace std;

int main()

{

//Attach files

freopen(\"BAI1.INP\", \"r\", stdin);

freopen(\"BAI1.OUT\", \"w\", stdout);

//Main program

int Money\[\] = {550, 1100, 1470, 1600};

int Number\[\] = {100, 150, 200};

int n, i = 2, j = 3, temp = 0; cin \>\> n;

while (i \> -1) {

if (n \> Number\[i\]) {

temp += (n % Number\[i\]) \* Money\[j\];

n -= (n % Number\[i\]);

i\--;

j\--;

} else {

i\--;

j\--;

}

}

temp += n \* Money\[0\];

cout \<\< temp;

return 0;

}
