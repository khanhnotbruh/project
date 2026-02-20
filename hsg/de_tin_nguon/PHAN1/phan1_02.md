**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**BÀI 1:**

Cho một xâu ký tự S chỉ bao gồm các ký tự chữ cái tiếng Anh (in thường,
in hoa) và ký tự chữ số (từ '0' đến '9'). Bạn hãy viết chương trình tính
số lượng ký tự chữ cái tiếng Anh trong xâu ký tự S.

**Dữ liệu**: vào từ file văn bản **BAI1.INP** gồm một dòng duy nhất chứa
xâu ký tự S. Độ dài xâu ký tự S không quá $1000$ ký tự.

**Kết quả**: ghi ra tệp văn bản **BAI1.OUT** một số nguyên duy nhất là
số lượng ký tự chữ cái tiếng Anh trong xâu ký tự S.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI1.INP**                          **BAI1.OUT**
  ------------------------------------- ---------------------------------
  68a880Bc2De0fg16hFL                   **10**

  -----------------------------------------------------------------------

> \- 40% số điểm tương ứng với 60% số test có độ dài xâu không quá 100
> ký tự.
>
> \- 60% số điểm tương ứng với 60% số test có độ dài xâu không quá 1000
> ký tự.
>
> **ĐÁP ÁN**
>
> **BÀI 1:**
>
> CONST
>
> tfi = \'BAI1.INP\';
>
> tfo = \'BAI1.OUT\';
>
> VAR
>
> i,res : longint;
>
> ch : char;
>
> BEGIN
>
> assign(input, tfi); reset(input);
>
> assign(output, tfo); rewrite(output);
>
> res := 0;
>
> while not seekeof(input) do
>
> begin
>
> read(ch);
>
> if upcase(ch) in \[\'A\'..\'Z\'\] then inc(res);
>
> end;
>
> write(res);
>
> close(input);close(output);
>
> END.
