**Nguyễn Vũ Mạnh \_Trường THPT Hồng Bàng**

**CAUHOI**

**Bài 2. DÃY KÝ TỰ SỐ (6 điểm)**

Bạn Nam rất yêu thích lập trình, nhất là khi gặp những bài toán khó thì
bạn ấy càng cố gắng để giải cho xong. Có một lần, trong lúc suy nghĩ về
một bài toán, tay bạn ấy lại gõ ngẫu nhiên các phím trên bàn phím, đến
khi nhìn lại thì trên màn hình đã là một dãy ký tự. Kỳ lạ thay, mặc dù
là gõ ngẫu nhiên không nhìn bàn phím nhưng có những lúc bạn ấy chỉ toàn
gõ vào các phím số.

**Yêu cầu:** Cho xâu ký tự S là dãy các ký tự mà bạn Nam đã gõ vào, hãy
cho biết bạn Nam đã gõ liên tiếp các phím số nhiều nhất là bao nhiêu
lần?

**Dữ liệu vào:** Cho từ tệp văn bản có tên BL2.INP gồm một dòng chứa xâu
ký tự S (độ dài xâu không quá 250 ký tự).

**Kết quả:** Ghi ra tệp văn bản có tên BL2.OUT có dạng:

\- Dòng đầu ghi số lần nhiều nhất mà bạn Nam gõ liên tiếp các phím số.

\- Nếu có ký tự số được gõ vào thì dòng thứ hai ghi dãy các số mà bạn
nam gõ liên tiếp nhiều nhất đó. Nếu có nhiều dãy cùng có số lần gõ nhiều
nhất như nhau thì in ra dãy đầu tiên.

Ví dụ:

+-------------------------------------+--------------------------------+
| **BAI2.INP**                        | **BAI2.OUT**                   |
+=====================================+================================+
| azp572gkxt**8906**dqsh13dj          | 4                              |
|                                     |                                |
|                                     | 8906                           |
+-------------------------------------+--------------------------------+

**\
**

**DAPAN**

+---+------------------------------+----------------------------+----+
| * | **Dữ liệu nhập**             | **Kết quả**                | ** |
| * |                              |                            | Đi |
| T |                              |                            | ểm |
| e |                              |                            | ** |
| s |                              |                            |    |
| t |                              |                            |    |
| * |                              |                            |    |
| * |                              |                            |    |
+===+==============================+============================+====+
| 1 | Edwe                         | 5                          | *  |
|   | 24df**00491**saddsaffksdsdfs |                            | *0 |
|   |                              | 00491                      | .5 |
|   |                              |                            | ** |
|   |                              |                            |    |
|   |                              |                            | *  |
|   |                              |                            | *0 |
|   |                              |                            | .5 |
|   |                              |                            | ** |
+---+------------------------------+----------------------------+----+
| 2 | Dqwdhwq                      | 0                          | *  |
|   | eoer;';'p;';';';mljuoipipxzc |                            | *1 |
|   |                              |                            | .0 |
|   |                              |                            | ** |
+---+------------------------------+----------------------------+----+
| 3 | Mn                           | 12                         | *  |
|   | ,2347dflsadfdll454039dflselr |                            | *0 |
|   | j2304305erjwo34Mn,2347dflsad | 378345960489               | .5 |
|   | fdll454039dflselrj2304305erj |                            | ** |
|   | wo**378345960489**;k;;l;k;iu |                            |    |
|   |                              |                            | *  |
|   |                              |                            | *0 |
|   |                              |                            | .5 |
|   |                              |                            | ** |
+---+------------------------------+----------------------------+----+
| 4 | Dsfsfjsjfpsj3                | 9                          | *  |
|   | 23434;sdfj;sfj;sjdf;sjr;ewer |                            | *0 |
|   | r53535dfsdjf;dfryytytyruyyik | 000000000                  | .5 |
|   |                              |                            | ** |
|   | Fsdfsd23124fdfdf,.,,,;l//,,  |                            |    |
|   | ,=317erwe**000000000**jjjlji |                            | *  |
|   |                              |                            | *0 |
|   |                              |                            | .5 |
|   |                              |                            | ** |
+---+------------------------------+----------------------------+----+
| 5 | 02349803874645834589384      | 02349803874645834589384    | *  |
|   |                              |                            | *0 |
|   |                              |                            | .5 |
|   |                              |                            | ** |
|   |                              |                            |    |
|   |                              |                            | *  |
|   |                              |                            | *0 |
|   |                              |                            | .5 |
|   |                              |                            | ** |
+---+------------------------------+----------------------------+----+
| 6 | Dfehfheh3                    | 31                         | *  |
|   | 2353466dflsflsjflj345345jfdl |                            | *0 |
|   | gjldfjgldj5l6564ljjlsdgdrlg. | 12345                      | .5 |
|   | /l,//l;;k;k;k;gsg;ldjlsfjdgj | 67890987654321234567898876 | ** |
|   | 334534436564593745djfjefjojf |                            |    |
|   | owjf32Edwww**123456789098765 |                            | *  |
|   | 4321234567898876**dshfksf354 |                            | *0 |
|   | d/f,sfm./,,mfjslfrjwlrej3l45 |                            | .5 |
|   | 325l3jljlsflslfel4j5l3jltj;k |                            | ** |
|   | skfsja;fjwqo;jr;ọ325j5Dfehfh |                            |    |
|   | eh32353466dflsflsjflj345345j |                            |    |
|   | fdlgjldfjgldj5l6564ljjlsdgdr |                            |    |
|   | lg./l,//l;;k;k;k;gsg;ldjlsfj |                            |    |
|   | dgj334534436564593745djffsjf |                            |    |
|   | jefjojfowjf32442Fkoluliu;oi; |                            |    |
+---+------------------------------+----------------------------+----+
