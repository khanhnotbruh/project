**Trần Thị Hằng Nga -- THPT Vĩnh Bảo**

**CAUHOI**

**Bài toán cái túi**

Nghỉ hè nhà Dung tổ chức đi du lịch Đà Nẵng 5 ngày 4 đêm. Dung cần đem
theo một cái túi có trọng lượng không quá b. Có n đồ vật cần đem theo.
Đồ vật thứ j có trọng lượng là a~j~ và giá trị sử dụng là c~j~ (j = 1,
2, 3, ..,n). Hỏi rằng Dung cần đem theo các đồ vật nào để cho tổng giá
trị sử dụng của các đồ vật đem theo là lớn nhất?

***Input**:* Vào từ file văn bản CAITUI.INP:

-   Dòng đầu ghi 2 số nguyên dương n và b (n ­ \< 100).

-   Dòng thứ hai ghi các số nguyên không âm a­1, a2, .. ,an.

-   Dòng thứ ba ghi các số nguyên không âm c­1, c2, .. ,cn.

***Output**:* Ghi ra file CAITUI.OUT:

-   Dòng đầu ghi tổng giá trị các đồ vật đem theo ứng với phương án tìm
    > được.

-   Ghi chỉ số của các đồ vật đem theo

+-------------------------------------+--------------------------------+
| CAITUI.INP                          | CAITUI.OUT                     |
+=====================================+================================+
| 4 8                                 | 15                             |
|                                     |                                |
| 5 3 2 4                             | 1 2                            |
|                                     |                                |
| 10 5 3 6                            |                                |
+-------------------------------------+--------------------------------+

**DAPAN**

Sinh test tùy ý giám khảo, chấm 4 test.

  ------------------------------------------------------------------------
  **Test     **Điểm**     **Đặc điểm test**
  số**                    
  ---------- ------------ ------------------------------------------------
  1          2,0          INPUT theo đầu bài

  3          3,0          Các đồ vật có trọng lượng bằng nhau

  2          3,0          Các đồ vật có giá trị sử dụng bằng nhau

  4          2,0          Cái túi có trọng lượng b nhỏ hơn trọng lượng các
                          đồ vật muốn mang theo
  ------------------------------------------------------------------------
