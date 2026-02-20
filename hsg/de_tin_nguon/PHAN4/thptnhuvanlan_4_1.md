Phạm Văn Toán -- THPT Nhữ Văn Lan

CAUHOI

**Bài 4**

Có 𝑚 ông táo vào 𝑛 bà táo được Ngọc Hoàng phân công nhiệm vụ trong năm
mới. Đầu tiên Ngọc Hoàng chọn 𝑘 táo (ông hoặc bà) làm những nhiệm vụ đặc
biệt tại các Bộ/Ngành, sau đó Ngọc Hoàng sẽ chọn ra các nhóm, mỗi nhóm
gồm đúng 2 ông táo và 1 bà táo để phân xuống các gia đình dưới hạ giới.

**Yêu cầu**: Hãy giúp Ngọc Hoàng xác định số nhóm nhiều nhất để phân
xuống các gia đình dưới hạ giới.

**Ví dụ** có 𝑚 = 12 ông táo và 𝑛 = 7 bà táo, có 𝑘 = 5 táo phải làm nhiệm
vụ đặc biệt. Ngọc Hoàng có thể chọn tối đa 4 nhóm phân xuống các gia
đình (8 ông táo và 4 bà táo). Trong 7 táo còn lại (4 ông và 3 bà) có 5
táo làm nhiệm vụ đặc biệt, còn 2 táo không được phân việc

**Dữ liệu vào**: 3 số nguyên dương $m,n,k\  \leq \ 10^{9}$ cách nhau ít
nhất một dấu cách

**Kết quả**: Ghi ra một số nguyên duy nhất là số nhóm nhiều nhất chọn
được để phân xuống các gia đình dưới hạ giới.

**Ví dụ**

  -----------------------------------------------------------------------
  **Vào**                                  **Ra**
  ---------------------------------------- ------------------------------
  12 7 5                                   4

  -----------------------------------------------------------------------

DAPAN

Bài 4

#include\<bits/stdc++.h\>

using namespace std;

int main()

{

int m,n,k;

ifstream fi;

ofstream fo;

fi.open(\"laser.inp\");

fo.open(\"laser.out\");

fi\>\>m\>\>n\>\>k;

if (m/2\>=n)

if(m+n-n\*3\>=k) fo\<\<n;

else if((k-(m+n-n\*3))%3==0) fo\<\<(n-((k-(m+n-n\*3))/3));

else fo\<\<(n-(((k-(m+n-3\*n))/3)+1));

else

if(m+n-(m/2)\*3\>=k) fo\<\<m/2;

else if((k-(m+n-(m/2)\*3))%3==0) fo\<\<(m/2-((k-(m+n-(m/2)\*3))/3));

else fo\<\<(m/2-(((k-(m+n-m/2\*3))/3)+1));

fi.close();

fo.close();

}
