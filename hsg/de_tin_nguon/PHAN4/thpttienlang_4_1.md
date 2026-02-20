**Đỗ Tất Thắng -- THPT Tiên Lãng**

**CAUHOI**

**Bài 4**. ***Đặt tên chương trình nguồn là BAI4.\****

Cho số N, hãy tạo một dãy có 2N phần tử thỏa mãn chứa 2 số trùng nhau
của mỗi số từ 1 đến N. Đồng thời số phần tử giữa 2 phần tử x là x. Nếu
không tìm thấy dãy đó thì ghi ra kết qủa \'Khong\'

\- VD: N= 3

\- Dãy cần tìm: 3, 1, 2, 1, 3, 2

**DAPAN**

**Bài 4**

#include \<bits/stdc++.h\>

using namespace std;

bool fixgot1(int res\[\], int curr, int n)

{

if (curr == 0)

return true;

int i;

for (i = 0; i \< 2 \* n - curr - 1; i++)

{

if (res\[i\] == 0 && res\[i + curr + 1\] == 0)

{

res\[i\] = res\[i + curr + 1\] = curr;

if (fixgot1(res, curr - 1, n))

return true;

res\[i\] = res\[i + curr + 1\] = 0;

}

}

return false;

}

void mast(int n)

{

int res\[2 \* n\], i;

for (i = 0; i \< 2 \* n; i++)

res\[i\] = 0;

if (fixgot1(res, n, n))

{

for (i = 0; i \< 2 \* n; i++)

cout \<\< res\[i\] \<\< \" \";

}

else

cout \<\< \"Khong\";

}

int main()

{ int x;cin \>\>x;

mast(x);

return 0;

}
