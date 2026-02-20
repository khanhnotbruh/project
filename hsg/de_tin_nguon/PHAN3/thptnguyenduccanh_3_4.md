NGUYỄN VĂN THIẾT - THPT NGUYỄN ĐỨC CẢNH 

>                CAUHOI 

Trò chơi Tháp Hà Nội gồm có 3 ngăn xếp (số 1 bên trái, số 2 ở giữa, và
số 3 bên phải) và n tấm đĩa tròn có kích thước khác nhau. Lúc đầu, ngăn
xếp bên trái chứa tất cả đĩa theo thứ tự tăng dần về kích thước theo thứ
tự từ trên xuống dưới đáy. 

Mục tiêu là di chuyển tất cả tấm đĩa về ngăn xếp bên phải qua việc sử
dụng ngăn xếp ở giữa. Ở mỗi lượt, bạn có thể chọn đĩa ở trên cùng của
một ngăn xếp để chuyển nó tới một ngăn xếp khác. Ngoài ra, bạn không
được phép đặt một chiếc đĩa lớn nằm trên một chiếc đĩa nhỏ hơn. 

Nhiệm vụ của bạn là tìm ra lời giải sử dụng ít nước đi nhất. 

**Input*** *

-   Gồm một dòng duy nhất chứa số nguyên n : số lượng đĩa. 

**Output*** *

-   Dòng đầu tiên in số nguyên duy nhất k là số lượng nước đi tối thiểu
    > tìm được. 

-   Sau đó, in ra k  dòng miêu tả các nước đi. Mỗi dòng có hai số nguyên
    > a và b : bạn di chuyển tấm đĩa từ ngăn xếp a sang ngăp xếp b. 

**Constraints*** *

-   1≤n≤16 

  -----------------------------------------------------------------------
  **BAI4.INP**                        **BAI4.OUT** 
  ----------------------------------- -----------------------------------
  2                                   3 \
                                      1 2 \
                                      1 3 \
                                      2 3 

  -----------------------------------------------------------------------

**Đáp án** 

uses math; 

var n:longint; 

fi,fo:text; 

procedure chuyen (a,c:char); 

begin 

writeln(fo,a,\' \',c); 

end; 

procedure dq(n:longint;a,b,c:char); 

begin 

if n=1 then chuyen(a,c) else begin 

dq(n-1,a,c,b); 

chuyen(a,c); 

dq(n-1,b,a,c); 

end; 

end; 

begin 

assign(fi,\'bai4.inp\');reset(fi); 

assign(fo,\'bai4.out\');rewrite(fo); 

read(fi,n); 

writeln(fo,2\*\*n-1); 

dq(n,\'1\',\'2\',\'3\'); 

close(fi); 

close(fo); 

end. \
 
