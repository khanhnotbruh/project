Nguyễn Thanh Hà -- THPT An Dương

CAUHOI

**Câu 3: (7 điểm)**

Bạn Hoàng mất trật tự trong giờ học thể dục nên bị thầy giáo phạt.

Hình phạt của thầy như sau: bạn Hoàng đứng nghiêm, khi thầy hô \"trái\"
thì Hoàng bước sang trái một mét, thầy hô \"phải\" thì Hoàng bước sang
phải một mét.

Hỏi sau n lần thầy hô như vậy thì bạn Hoàng cách xa vị trí ban đầu bao
nhiêu mét?

**Dữ liệu vào**

\- Dòng thứ nhất là số n (1 ≤ n ≤ 100).

\- Dòng tiếp theo gồm n số 1 hoặc 2, mỗi số cách nhau một khoảng trắng.
Nếu là số 1 thì thầy giáo hô \"trái\", nếu là số 2 thì thầy giáo hô
\"phải\".

**Dữ liệu ra**

\- Là khoảng cách của Hoàng sau n lần hô so với vị trí ban đầu.

**Ví dụ**

+---------------------------------------+------------------------------+
| **BAI3.INP**                          | **BAI3.OUT**                 |
+=======================================+==============================+
| 3                                     | 3                            |
|                                       |                              |
| 1 1 1                                 |                              |
+---------------------------------------+------------------------------+
| 4                                     | 2                            |
|                                       |                              |
| 1 1 2 1                               |                              |
+---------------------------------------+------------------------------+
| 5                                     | 1                            |
|                                       |                              |
| 2 2 1 1 1                             |                              |
+---------------------------------------+------------------------------+

1.  #include \<bits/stdc++.h\>

2.   

3.  using namespace std;

4.   

5.  int main()

6.  {

7.  int d=0;

8.  int n;

9.  cin\>\>n;

10. int a\[100\];

11. for (int i=1;i\<=n;i++) cin\>\>a\[i\];

12. for (int i=1;i\<=n;i++)

13. {

14. if (a\[i\]==1) d\--;

15. if (a\[i\]==2) d++;

16. }

17. cout\<\<abs(d);

18. return 0;

19. }
