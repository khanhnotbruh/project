Trần Thị Chi -- THPT Cát Bà

**CÂU HỎI**

***Bài 2(10 điểm)* - *Chia l­ưới***

Cho l­ưới M![](media/image1.wmf)N (M, N \<= 20) ô vuông, trong mỗi ô cho
trước một số tự nhiên. Hãy tìm cách chia lưới trên làm hai phần (chia
theo cạnh l­ưới) sao cho trị tuyệt đối hiệu số của tổng các số trong mỗi
phần có giá trị nhỏ nhất (như hình dưới đây).

  -------------------------------------------------------------------------
                                                    7           
  ----------- ------------ ----------- ------------ ----------- -----------
              1            3           5                        

              12           2           5                        

              9            2           10                       

                                                                
  -------------------------------------------------------------------------

**ĐÁP ÁN VÀ HƯỚNG DẪN CHẤM**

**Dữ liệu vào** được cho trong file **BAI2.INP**, được cho như sau:

\- Dòng đầu tiên gồm 2 số M, N là kích thước của ô lưới.

\- M dòng tiếp theo, mỗi dòng gồm N số cách nhau bởi dấu cách, ô nào
không có giá trị được cho bằng 0.

**Dữ liệu ra** trong file **BAI2.OUT** miêu tả lưới sau khi chia thành
hai phần (nếu có nhiều cách chia thì chỉ miêu tả một cách): là một ma
trận kích thước M x N gồm các số 0 và 1 (số 0 kí hiệu cho các ô tương
ứng với phần thứ nhất, và số 1 kí hiệu cho các ô tương ứng với phần thứ
hai).

Ví dụ: Dữ liệu cho sau đây tương ứng với hình trên:

+-----------------------------------+----------------------------------+
| **BAI2.INP**                      | **BA2.OUT**                      |
+===================================+==================================+
| 5 6                               | 0 1 1 1 1 1                      |
|                                   |                                  |
| 0 0 0 0 7 0                       | 0 1 0 1 1 1                      |
|                                   |                                  |
| 0 1 3 5 0 0                       | 0 0 0 1 1 1                      |
|                                   |                                  |
| 0 12 2 5 0 0                      | 0 0 0 1 1 1                      |
|                                   |                                  |
| 0 9 2 10 0 0                      | 0 0 0 0 0 1                      |
|                                   |                                  |
| 0 0 0 0 0 0                       | **Hoặc**                         |
|                                   |                                  |
|                                   | 1 1 1 1 1 1                      |
|                                   |                                  |
|                                   | 1 1 1 1 1 1                      |
|                                   |                                  |
|                                   | 1 1 0 0 0 0                      |
|                                   |                                  |
|                                   | 0 0 0 0 0 0                      |
|                                   |                                  |
|                                   | 0 0 0 0 0 0                      |
+-----------------------------------+----------------------------------+

**Test chấm**

**Bài 2: 5 Test, mỗi test đúng cho 2 điểm**

**HD: Kết quả có thể có nhiều hơn một phương án do đó yêu cầu giám khảo
xem xét kỹ khi chấm bài.**

**=============================**
