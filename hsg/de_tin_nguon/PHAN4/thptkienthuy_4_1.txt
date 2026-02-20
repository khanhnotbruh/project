**Bùi Thị Thu Hà -- THPT Kiến Thụy**

**CAUHOI**

**Bài 4 (10 điểm): *BAI4.PAS***

An soạn một tin nhắn và nhờ Nam gửi cho Bình. Vì không muốn Nam đọc nội
dung tin nhắn nên An đã mã hóa tin nhắn theo quy tắc sau: đầu tiên An
đảo ngược từng chữ cái của mỗi từ trong tin nhắn, sau đó An vận dụng
kiến thức tin học về bảng mã ASCII để mã hóa từng chữ cái trong tin nhắn
thành số thứ tự của chữ cái đó trong bảng mã ASCII. Em hãy giúp Bình
giải mã tin nhắn của An gửi.

Ví dụ: tin nhắn gốc là: *'5 gio chieu nay minh hoc nhom tai nha An'.*
Sau khi đảo ngược từng chữ cái của mỗi từ, tin nhắn mới là *'5 oig ueihc
yan hnim coh mohn iat ahn nA'*. Tiếp tục chuyển từng chữ cái trong tin
nhắn thành số thứ tự tương ứng trong bảng mã ASCII được tín nhắn cuối
cùng là '53 111 105 103 117 101 105 104 99 121 97 110 104 110 105 109 99
111 104 109 111 104 110 105 97 116 97 104 110 110 65'

Cho biết: trong bảng mã ASCII, chữ cái 'A' có số thứ tự là 65, chữ cái
'a' có số thứ tự là 97 và số '0' có số thứ tự là 48.

**Dữ liệu vào**: cho trong tệp BAI4.INP chứa một dòng duy nhất là tin
nhắn mà Bình nhận được.

**Dữ liệu ra**: ghi vào tệp BAI4.OUT một dòng duy nhất là tin nhắn gốc
của An gửi cho Bình.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI 4. INP**                    **BAI 4.OUT**
  --------------------------------- -------------------------------------
  53 111 105 103 117 101 105 104 99 *5 gio chieu nay minh hoc nhom tai
  121 97 110 104 110 105 109 99 111 nha An*
  104 109 111 104 110 105 97 116 97 
  104 110 110 65                    

  -----------------------------------------------------------------------
