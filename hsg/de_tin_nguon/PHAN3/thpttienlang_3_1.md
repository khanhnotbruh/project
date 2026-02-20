**Đỗ Tất Thắng -- THPT Tiên Lãng**

**CAUHOI**

**Bài 3**. ***Đặt tên chương trình nguồn là BAI3.\****

Một số nguyên gọi là không chứa chính phương nếu nó không chia hết cho
bất ký số

nguyên nào dạng x

2 với x \> 1.

Yêu cầu: Cho số nguyên n (1 ≤ 100000). Hãy tìm ước lớn nhất không chứa
chính

phương của n. Lưu ý là 1 và n cũng là ước của n.

Dữ liệu: Vào từ file văn bản BAI3.INP gồm nhiều tests, mỗi test cho trên
một dòng

chứa số nguyên n.

Kết quả: Đưa ra file văn bản BAI3.OUT, kết quả mỗi test đưa ra trên một
dòng.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| BAI3.INP                         | BAI3.OUT                          |
+==================================+===================================+
| > 9                              | 3                                 |
| >                                |                                   |
| > 20                             | 10                                |
+----------------------------------+-----------------------------------+

**DAPAN**

**Bài 3**

#include \<bits/stdc++.h\>

using namespace std;

ifstream fi(\"BAI3.INP\");

ofstream fo(\"BAI3.OUT\");

long long n,ans;

int main()

{

while (!fi.eof()){

fi\>\>n;

if (fi.fail()) break;

ans=1;

for (long long i=2;i\*i\<=n;i++){

if (n % i==0) ans\*=i;

while (n%i==0) n/=i;

}

if (n\>1) ans\*=n;

fo\<\<ans\<\<\'\\n\';

}

fi.close();

fo.close();

return 0;

}
