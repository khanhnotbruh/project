# **XÂY DỰNG THÀNH PHỐ MỚI (RENEW.CPP)**

Thành phố quyết định chặt hạ hết $n$ cây xanh hiện có trong thành phố để
trồng một loại cây mới duy nhất. Nhiệm vụ được giao cho Công ty cây xanh
thành phố. Do hạn chế về thiết bị, công ty chỉ tổ chức được hai đội đốn
hạ cây. Đội 1 hạ được $a$ cây mỗi ngày, nhưng cứ mỗi ngày thứ $k$ thì
phải nghỉ để bảo dưỡng kỹ thuật, tức là đội 1 nghỉ vào các này
$k,2k,3k,\ldots$ Đội 2 hạ được $b$ cây mỗi ngày, nhưng cứ mỗi ngày thứ
$m$ thì phải nghỉ để bảo dưỡng kỹ thuật, tức là đội 2 sẽ nghỉ vào các
ngày $m,2m,3m,\ldots$ Ở ngày nghỉ, số cây chặt hạ của đội sẽ là 0. Cả
hai đội bắt đầu công việc vào cùng một ngày và làm việc song song với
nhau. Công việc trồng cây mới sẽ bắt đầu sau khi toàn bộ cây đã cũ bị
đốn hạ.

Hãy xác định sau bao nhiêu ngày thì có thể bắt đầu việc trồng cây mới

**Dữ liệu:** 5 số nguyên $a,k,b,m$ và
$n\ (1 \leq a,b \leq 10^{9},2 \leq k,m \leq 10^{18},1 \leq n \leq 10^{18})$

**Kết quả:** Đưa ra một số nguyên duy nhất là số ngày tính được.

**Ví dụ:**

  -----------------------------------------------------------------------
  **INPUT**                           **OUTPUT**
  ----------------------------------- -----------------------------------
  2 4 3 3 25                          7

  -----------------------------------------------------------------------
