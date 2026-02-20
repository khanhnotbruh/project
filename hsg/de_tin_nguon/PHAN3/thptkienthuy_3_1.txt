**Bùi Thị Thu Hà -- THPT Kiến Thụy**

**CAUHOI**

**Bài 3 (8 điểm):** ***(BAI3.PAS)***

Ở công ty ABC, mỗi nhân viên của Công ty được cấp một thẻ nhân viên. Mỗi
thẻ nhân viên mang một số hiệu bao gồm một chữ cái in hoa và 7 chữ số,
ví dụ "B6830970". Chữ cái này được xác định như sau:

1\. Lần lượt nhân mỗi chữ số của thẻ với một trọng số.

Trọng số của chữ số đầu tiên là 8, trọng số của chữ số thứ hai là 7, của
chữ sô thứ ba là 6, của chữ số thứ tư là 5, của chữ số thứ năm là 4, của
chữ số thứ sáu là 3, của chữ số thứ bày là 2.

2\. Cộng tất cả các tích tìm được rồi đem chia cho 9 được một số dư

3\. Chữ cái được xác định dựa vào số dư tìm đươc theo quy tắc sau:

  ------------------------------------------------------------------------
  Số dư     0      1      2      3      4      5      6      7      8
  --------- ------ ------ ------ ------ ------ ------ ------ ------ ------
  Chữ cái   A      B      C      D      E      F      G      H      I

  ------------------------------------------------------------------------

**Ví dụ**: với số "6830907" ta có: 6x8+8x7+3x6+0x5+9x4+0x3+7x2 = 172,
đem chia 172 cho 9 được dư là 1. Số dư 1 ứng với chữ cái B. Vậy thẻ nhân
viên này có số hiệu là "B6830907".

**Yêu cầu**: Cho phần số của thẻ nhân viên, hãy tìm phần chữ của thẻ
tương ứng.

**Dữ liệu vào**: Cho trong tệp văn bản BAI3.INP bao gồm:

Dòng 1: Ghi một số nguyên N (1≤N≤1000) là số lượng thẻ nhân viên.

N dòng tiếp theo, mỗi dòng ghi phần số của một thẻ nhân viên.

**Dữ liệu ra:** Đưa ra tệp văn bản BAI3.OUT. Mỗi dòng của tệp chứa một
chữ cái in hoa là phần chữ của thẻ nhân viên tương ứng.

**Ví dụ:**

+------------------------------------+---------------------------------+
| **BAI3.INP**                       | **BAI3.OUT**                    |
+====================================+=================================+
| 2                                  | B                               |
|                                    |                                 |
| 6830907                            | E                               |
|                                    |                                 |
| 0753124                            |                                 |
+------------------------------------+---------------------------------+
