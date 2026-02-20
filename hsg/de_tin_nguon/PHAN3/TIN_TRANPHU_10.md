# **PHÁ HOẠI VƯỜN HOA (FLOWERS.CPP)**

Tại trang trại của HD có N con chó dữ, trong 1 ngày mưa, tất cả đàn chó
dữ đã xổng chuồng và xông ra phá hoại vườn hoa xinh đẹp của HD. Mỗi con
cho có đặc điểm sau:

-   Di chuyển từ vườn hoa về chuồng mất t (s).

-   Sau 1s, sẽ phát nát $d$ bông hoa.

HD trong một lần, chỉ có thể dắt một con chó về chuồng, tổng thời gian
di chuyển là 2\*t (s) (dắt chó về và di chuyển quay lại vườn hoa).

Bạn hãy tính xem, ít nhất bao nhiêu bông hoa bị phá nát?

**Dữ liệu vào**

-   Dòng 1: N $(1 \leq N \leq 100.000)$

-   N dòng sau, dòng thứ I gồm 2 số t và d tương ứng với đặc điểm của
    con cho i. $(1 \leq t \leq 2.000.000;1 \leq d \leq 100)$

**Kết quả:** Một số duy nhất là số bông hoa ít nhất bị phá hủy?

**Ví dụ:**

+------------------+------------------+-------------------------------+
| **INPUT**        | **OUTPUT**       |                               |
+==================+==================+===============================+
| 6                | 86               | Dắt chó theo thứ tự: 6, 2, 3, |
|                  |                  | 4, 1, 5                       |
| 3 1              |                  |                               |
|                  |                  |                               |
| 2 5              |                  |                               |
|                  |                  |                               |
| 2 3              |                  |                               |
|                  |                  |                               |
| 3 2              |                  |                               |
|                  |                  |                               |
| 4 1              |                  |                               |
|                  |                  |                               |
| 1 6              |                  |                               |
+------------------+------------------+-------------------------------+
