**Phạm Đức Cường -- THPT An Dương**

**Câu 3. Điểm thi (8 điểm):**

Một phòng thi có n học sinh (0 \< n \<=30) làm bài thi trắc nghiệm, mỗi
bài thi có k câu hỏi (10\<=k\<=50 và k chia hết cho 5). Kết quả của 1
bài thi sau khi dùng máy để chấm là một chuỗi bao gồm k kí tự "d" và
"s". Hãy tìm số câu trả lời đúng bình quân của một bài thi, câu được trả
lời đúng nhiều nhất, câu được trả lời đúng ít nhất.

**Input:** tệp **diemthi.inp** có dạng:

\- dòng đầu tiên là số nguyên n và k cách nhau dấu cách.

\- n dòng sau mỗi dòng là 1 xâu gồm k kí tự "d" và "s"

**Output:** tệp **diemthi.out** có dạng:

\- dòng đầu tiên là số câu đúng bình quân của 1 bài thi

\- dòng thứ 2 là câu được trả lời đúng nhiều nhất, nếu có nhiều câu trả
lời đúng nhiều nhất thì đưa ra tất cả các câu đó.

\- dòng thứ 3 là câu được trả lời đúng ít nhất, nếu có nhiều câu trả lời
đúng ít nhất thì đưa ra tất cả các câu đó.

Ví dụ:

+----------------------------------+-----------------------------------+
| Diemthi.inp                      | Diemthi.out                       |
+==================================+===================================+
| 5 10                             | 5.2                               |
|                                  |                                   |
| dddsssddss                       | 1 8                               |
|                                  |                                   |
| sdsdddsdds                       | 10                                |
|                                  |                                   |
| dsdssssdds                       |                                   |
|                                  |                                   |
| dddddsssss                       |                                   |
|                                  |                                   |
| dssssdsdds                       |                                   |
+----------------------------------+-----------------------------------+
