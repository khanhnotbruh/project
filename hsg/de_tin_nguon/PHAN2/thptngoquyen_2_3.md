**Bài 2: Bus**

H làm việc cho công ty buýt TPC, cậu được giao nhiệm vụ thu thập thông
tin học sinh TPC để công ty có thể thực hiện việc tối ưu hóa lịch phục
vụ học sinh TPC di chuyển từ bến xe đến trường mới.

Tại bến xe buýt, mỗi ngày, chuyến xe buýt đầu tiên đi qua ở thời điểm
𝑇~0~, chuyến thứ hai đi qua ở thời điểm 𝑇~0~ + 𝐷, chuyến thứ ba đi qua ở
thời điểm 𝑇~0~ + 2 × 𝐷, ... Có 𝑁 học sinh thường xuyên chờ xe buýt tại
bến, học sinh thứ 𝑖 đến bến ở thời điểm 𝑆~𝑖~ và sẽ lên chuyến xe buýt
đầu tiên đến bến ở thời điểm không sớm hơn 𝑆~𝑖~

Yêu cầu: Cho 𝑇~0~, 𝐷 và thời điểm các học sinh đến bến, hãy xác định số
hiệu chuyến xe buýt sẽ lên của tứng khách hàng?

Dữ liệu vào từ file văn bản BAI2.INP

-   Dòng thứ nhất chứa ba số nguyên dương 𝑁, 𝐷,
    𝑇![](media/image1.png){width="5.763888888888889e-2in"
    height="8.472222222222223e-2in"}
    ![](media/image2.png){width="1.9833333333333334in"
    height="0.17222222222222222in"}

> ![](media/image3.png){width="1.9694444444444446in"
> height="0.17222222222222222in"}.

-   Dòng thứ 2 chứa 𝑁 số nguyên 𝑠~1~, 𝑠~2~, ... , 𝑠~𝑁~
    ![](media/image4.png){width="1.1083333333333334in"
    height="0.19236111111111112in"}.

Kết quả: Ghi ra file văn bản BAI2.OUT một dòng chứa 𝑁 số nguyên, số thứ
𝑖 là số hiệu chuyến xe buýt mà hành khách thứ 𝑖 sẽ lên Ví dụ:

+--------------------------------------+-------------------------------+
| BAI2.INP                             | BAI2.OUT                      |
+======================================+===============================+
| 3 5 8                                | > 1 3 4                       |
|                                      |                               |
| 0 15 23                              |                               |
+--------------------------------------+-------------------------------+
