USES Crt;
CONST
  MAX = 100;
  INP = ‘Sample.Inp’;
  OUT = ‘Sample.Out’
TYPE
  STR = array[0..max] of char;
VAR
  s   :str;
  f,g :text;
  n   :longint;  { so luong tu}
  time:longint ;

PROCEDURE Nhap_dl;
Begin
  Assign(f,inp);
  Assign(g,out);
  Reset(f);
  Rewrite(g);
  Readln(f,n);
End;

PROCEDURE DocDay(var s:str);
Begin
    Fillchar(s,sizeof(s),chr(0));
    While not eoln(f) do
      begin
        s[0]:=chr(ord(s[0])+1);
        read(f,s[ord(s[0])]);
      end;
End;

PROCEDURE VietDay(s:str);
Var i   :word;
Begin
  For i:=1 to ord(s[0]) do Write(g,s[i]);
End;

PROCEDURE Sap_xep(l,r:word);{ giai thuat Quicksort}
Var i,j    :word;
    tg,tam :char;
Begin
  i:=l;j:=r;
  tg:=s[(l+r) div 2];
  Repeat
     While ord(s[i]) < ord(tg) do inc(i);
     While ord(s[j]) > ord(tg) do dec(j);
     If i<=j then
       begin
          tam:=s[i];
          s[i]:=s[j];
          s[j]:=tam;
          inc(i);
          dec(j);
       end;
  Until i>j;
  If j>l then Sap_xep(l,j);
  If i<r then Sap_xep(i,r);
End;

PROCEDURE Sinh_hv(s:str);
Var vti,vtj,i,j:word;
    stop       :boolean;
    tam        :char;
Begin
  Writeln(g);
  VietDay(s);
  Repeat
     Stop:=true;
     For i:= ord(s[0]) downto 2 do
       If s[i] > s[i-1] then
         begin
            vti:=i-1;
            stop:=false;
            For j:=ord(s[0]) downto vti+1 do
              begin
                If (ord(s[j])>ord(s[vti])) then
                  begin
                     vtj:=j;
                     break;
                  end;
              end;
            tam:=s[vtj];
            s[vtj]:=s[vti];
            s[vti]:=tam;
            For j:=1 to ((ord(s[0]) - (vti+1))+1) div 2 do
              begin
                tam:=s[vti+j];
                s[vti+j]:=s[ord(s[0])-j+1];
                s[ord(s[0])-j+1]:=tam;
              end;
            Writeln(g);
            VietDay(s);
            break;
         end;
  Until stop;
End;
PROCEDURE Xu_ly;
Var i:longint;
Begin
  For i:=1 to n do
    begin
        DocDay(s);
        readln(f);
        Sap_xep(1,ord(s[0]));
        Sinh_hv(s);
        Writeln(g);
    end;
  Close(f);
  Close(g);
End;

BEGIN
  Nhap_dl;
  Xu_ly;
END.