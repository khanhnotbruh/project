Trần Thị Thương -- THPT Đồng Hòa

CAUHOI

> **Bài3. Xếp hàng hóa**
>
> Tại một bến cảng, các công nhân đang bốc dỡ các kiện hàng từ tàu biển
> lên các xe container. Các kiện hàng phải được bốc dỡ **lần lượt** từ
> kiện hàng thứ nhất đến kiện hàng cuối cùng. Mỗi kiện hàng khi bốc lên
> phải được đặt ngay vào xe container đang chờ sẵn để vận chuyển đi, xe
> này đầy thì đến lượt xe kế tiếp. Mỗi xe container chỉ có thể chở hàng
> hóa có tải trọng không quá **M**.
>
> **Yêu cầu:** Hãy cho biết cần ít nhất bao nhiêu chuyến xe để vận
> chuyển hết hàng hóa trên tàu.
>
> **Dữ liệu vào:** Cho từ tệp văn bản có tên **BAI2.INP** có dạng như
> sau:

-   Dòng đầu tiên ghi hai số nguyên **n** và **M** (1≤n≤10^3^,
    > 1≤M≤10^6^) tương ứng là số kiện hàng trên tàu và tải trọng tối đa
    > của xe container.

-   Dòng thứ hai ghi n số nguyên **a~1~**, **a~2~**, \..., **a~n~**
    > (1≤a~i~≤M) trong đó a~i~ tương ứng là trọng lượng của kiện hàng
    > thứ i (i=1..n).

> **Kết quả:** Ghi ra tệp văn bản có tên **BAI2.OUT** gồm một dòng ghi
> một số nguyên là số chuyến xe ít nhất.
>
> Các số trên cùng một dòng ghi cách nhau ít nhất một dấu cách.
>
> **Ví dụ:**

<table>
<colgroup>
<col style="width: 11%" />
<col style="width: 1%" />
<col style="width: 4%" />
<col style="width: 0%" />
<col style="width: 1%" />
<col style="width: 0%" />
<col style="width: 4%" />
<col style="width: 0%" />
<col style="width: 10%" />
<col style="width: 0%" />
<col style="width: 1%" />
<col style="width: 14%" />
<col style="width: 34%" />
<col style="width: 11%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th colspan="6"><blockquote>
<p><strong>BAI2.INP</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>BAI2.OUT</strong></p>
</blockquote></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td colspan="2"><blockquote>
<p>10</p>
</blockquote></td>
<td colspan="4">15</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>5</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td colspan="10">7688752439</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td colspan="12"><em>Giải thích</em>: Cần 5 chuyến xe</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td colspan="3">- Chuyến</td>
<td colspan="9">1 chở kiện hàng 1 và 2</td>
<td><blockquote>
<p>trọng lượng</p>
</blockquote></td>
<td><blockquote>
<p>13</p>
</blockquote></td>
</tr>
<tr class="even">
<td colspan="3">- Chuyến</td>
<td colspan="9">2 chở kiện hàng 3</td>
<td><blockquote>
<p>trọng lượng</p>
</blockquote></td>
<td><blockquote>
<p>8</p>
</blockquote></td>
</tr>
<tr class="odd">
<td colspan="3">- Chuyến</td>
<td colspan="9">3 chở kiện hàng 4 và 5</td>
<td><blockquote>
<p>trọng lượng</p>
</blockquote></td>
<td><blockquote>
<p>15</p>
</blockquote></td>
</tr>
<tr class="even">
<td colspan="3">- Chuyến</td>
<td colspan="10">4 chở kiện hàng 6, 7, 8, 9 trọng lượng</td>
<td><blockquote>
<p>14</p>
</blockquote></td>
</tr>
<tr class="odd">
<td colspan="3">- Chuyến</td>
<td colspan="9">5 chở kiện hàng 10</td>
<td><blockquote>
<p>trọng lượng</p>
</blockquote></td>
<td><blockquote>
<p>9</p>
</blockquote></td>
</tr>
</tbody>
</table>
