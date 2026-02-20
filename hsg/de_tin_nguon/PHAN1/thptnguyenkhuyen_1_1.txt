Trần Nhật Giáp - THPT Nguyễn Khuyến

**CAUHOI**

Công ty xyz có dịch vụ đưa đón công nhân, công nhân thứ i có mã vị trí
đưa đón là số nguyên a~i~. Để đảm bảo an toàn cho công nhân, công ty yêu
cầu tài xế khi đón công nhân đến công ty thì ở vị trí có nhiều công nhân
nhất đón trước tiên. Nếu có nhiều vị trí đưa đón có số lượng công nhân
bằng nhau thì đón ở nơi có mã vị trí đưa đón nhỏ nhất.

Yêu cầu: Viết chương trình giúp tài xế biết vị trí đón công nhân lần đầu
ở vị trí nào?

> **Dữ liệu vào:** Lấy từ tệp **CONGNHAN.INP**

\- Dòng đầu tiên gồm số nguyên *N (1 ≤ N ≤ 10^6^* *).*

\- Dòng thứ hai gồm *N* số nguyên dương *A~1~, A~2~, .., A~N~ (1 ≤ A~i~
≤ 10^9^* với *1 ≤ i ≤ N).*

> **Kết quả:** Ghi vào tệp **CONGNHAN.OUT** một số nguyên duy nhất là vị
> trí đón công nhân đầu tiên.
>
> **Ví dụ:**

+----------------------------------+-----------------------------------+
| **CONGNHAN.INP**                 | > **CONGNHAN.OUT**                |
+==================================+===================================+
| > 8                              | 3                                 |
|                                  |                                   |
| 5 1 3 2 5 10 7 3                 |                                   |
+----------------------------------+-----------------------------------+

**RÀNG BUỘC:**

*- Có 70% số test tương ứng với 70% số điểm của bài có N ≤ 5000.*

*- Có 30% số test tương ứng với 30% số điểm của bài có 5000 \< N ≤
10^6^.*

**ĐÁP ÁN**

**CODE Python**

f1 = open(\"congnhan.inp\",\"r\")

f2 = open(\"congnhan.out\",\"w\")

n = int(f1.readline())

a = list(map(int, f1.readline().split()))

dict = {}

for x in a:

if x not in dict:

dict\[x\] = 1

else:

dict\[x\] +=1

ma = 0; kq = 0

for x in sorted(dict):

if ma \< dict\[x\]:

ma = dict\[x\]

kq = x

print(a.index(kq)+1, file=f2)

f1.close()

f2.close()
