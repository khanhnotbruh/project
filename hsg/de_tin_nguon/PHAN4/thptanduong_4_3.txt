Nguyễn Thanh Hà -- THPT An Dương

CAUHOI

**Câu 4: (7 điểm)**

Hiện nay, với sự bùng nổ của công nghệ thông tin, mỗi cá nhân đều có cho
mình một số tài khoản (tài khoản facebook, tài khoản e-mail, tài khoản
twitter...). Các tài khoản này đều cần được bảo vệ bằng các mật khẩu.
Một vấn đề quan trọng là cần có biện pháp bảo vệ các mật khẩu đó "an
toàn" để tránh bị đánh cắp tài khoản.

Vũ luôn chọn cho mình những mật khẩu gồm một số chữ cái la-tinh đứng đầu
(không quá 10 chữ cái) và đem ghép vào cuối một số nguyên dương trong hệ
thập phân (không quá 6 chữ số). Ví dụ: \`Abcd12\`. Sau đó Vũ mã hóa mật
khẩu bằng cách tách phần số ở cuối, giữ lại phần chữ cái ở đầu và đem
chèn vào giữa các chữ cái đó (có thể cả ở đầu và ở cuối) một số chữ số
từ 0 đến 9 sao cho tổng các chữ số được chèn đúng bằng số ở cuối của mật
khẩu. Ví dụ: \`A1b23c4d2\` là một cách mã hóa của mật khẩu \`Abcd12\`
(các chữ số được dùng để chèn là 1 + 2 + 3 + 4 + 2 = 121+2+3+4+2=12).

Bạn hãy giúp Vũ viết một chương trình giải mã mật khẩu nhé?

**Dữ liệu vào**

-   Một dòng duy nhất chứa xâu ký tự mật khẩu đã mã hóa chỉ gồm các chữ
    > cái la-tinh và chữ số.

**Giới hạn:**

-   Độ dài xâu mã hóa không quá 10^5^ ký tự trong đó có chứa ít nhất một
    > chữ cái la-tinh và ít nhất một chữ số khác 0.

**Dữ liệu ra**

-   Ghi ra một dòng duy nhất là mật khẩu giải mã được.

**Ví dụ**

  ----------------------------------------------------------------------------
  **BAI4.INP**                           **BAI4.OUT**
  --------------------------- ---------- -------------------------------------
  A1b23c4d2                              Abcd12

                                         

  #include\<bits/stdc++.h\>              

                                         using namespace std;

                                         int integer(char x){

                                         switch(x){

                                         case \'0\':

                                         return 0;

                                         break;

                                         case \'1\':

                                         return 1;

                                         break;

                                         case \'2\':

                                         return 2;

                                         break;

                                         case \'3\':

                                         return 3;

                                         break;

                                         case \'4\':

                                         return 4;

                                         break;

                                         case \'5\':

                                         return 5;

                                         break;

                                         case \'6\':

                                         return 6;

                                         break;

                                         case \'7\':

                                         return 7;

                                         break;

                                         case \'8\':

                                         return 8;

                                         break;

                                         case \'9\':

                                         return 9;

                                         break;

                                         

                                         }

                                         }

                                         int main()

                                         {

                                         string s;

                                         getline(cin,s);

                                         fflush(stdin);

                                         int sum=0;

                                         for(int i=0;i\<s.length();i++){

                                         if(s\[i\]\>=\'0\'&&s\[i\]\<=\'9\'){

                                         sum+=integer(s\[i\]);

                                         }

                                         else{

                                         cout\<\<s\[i\];

                                         }

                                         }

                                         cout\<\<sum;

                                         }
  ----------------------------------------------------------------------------
