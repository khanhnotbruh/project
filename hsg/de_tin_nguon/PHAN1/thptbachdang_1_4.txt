Đặng Thị Thùy Linh -- THPT Bạch Đằng

Cauhoi

Cho tam giác Floyd là tam giác có dạng:

1

2 3

4 5 6

7 8 9 10

11 12 13 14 15

16 17 18 19 20 21

22 23 24 25 26 27 28

29 30 31 32 33 34 35 36

Viết chương trình tìm số cuối cùng trên dòng thứ N của tam giác Floyd

***Dữ liệu vào:*** Đọc từ tệp **FloydIn.Txt** gồm 1 số nguyên N

***Dữ liệu ra:*** Ghi ra tệp **FloydOut.Txt** gồm 1 số nguyên là số cuối
cùng trên dòng thứ N của tam giác Floyd

Dapan

#include \<bits/stdc++.h\>

using namespace std;

int main()

{

//Attach files

freopen(\"FloydIn.txt\", \"r\", stdin);

freopen(\"FloydOut.txt\", \"w\", stdout);

//Main program

long long int n; cin \>\> n;

cout \<\< (n + 1) \* n / 2;

return 0;

}
