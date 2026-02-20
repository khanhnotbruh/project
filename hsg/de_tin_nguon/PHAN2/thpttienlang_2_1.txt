**Đỗ Tất Thắng -- THPT Tiên Lãng**

**CAUHOI**

**Bài 2**. ***Đặt tên chương trình nguồn là BAI2.\****

Viết một chương trình để chuyển đổi số nguyên N sang hệ cơ số B (2 \<= B
\<= 16)

**DAPAN**

**Bài 2**

#include \<iostream\>

using namespace std;

const char CHAR_55 = 55;

const char CHAR_48 = 48;

int massogaexprox(int n, int b) {

if (n \< 0 \|\| b \< 2 \|\| b \> 16 ) {

printf(\"chuyen doi ko duoc!\");

return 0;

}

int i;

char arr\[20\];

int count = 0;

int m;

int remainder = n;

while (remainder \> 0) {

if (b \> 10) {

m = remainder % b;

if (m \>= 10) {

arr\[count\] = (char) (m + CHAR_55);

count++;

} else {

arr\[count\] = (char) (m + CHAR_48);

count++;

}

} else {

arr\[count\] = (char) ((remainder % b) + CHAR_48);

count++;

}

remainder = remainder / b;

}

for (i = count - 1; i \>= 0; i\--) {

printf(\"%c\", arr\[i\]);

}

return 1;

}

int main() {

int n ,pp;cin \>\> n;cin \>\> pp;

printf(\"So %d trong he co so %d = \", n,pp);

massogaexprox(n,pp);

return 1;

}
