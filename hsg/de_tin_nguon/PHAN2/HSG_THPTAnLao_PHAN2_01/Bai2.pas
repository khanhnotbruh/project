const
      fi = 'somax.inp';
      fo = 'somax.out';

var
     N: ansistring;   
     L: Longint;
{-------------------------------------}
procedure nhap;
begin
  readln(N);
  L := length(N);
end;
{-------------------------------------}
procedure DoiCho(var a,b:Char);
var tam: char;
begin
  tam := a;
  a := b;
  b := tam;
end;
{-------------------------------------}
Procedure QuickSort(L,H:longint);
Var i,j: longint; Chot: char;
Begin
  If L>=H then Exit;      
  Chot := N[(L+H) div 2]; 
  i := L;  
  j := H;  
  Repeat
    While N[i] > Chot do inc(i); 
    While N[j] < Chot do dec(j); 
   
    If i<=j then
      Begin
        If i<j then DoiCho(N[i],N[j]);
        Inc(i); Dec(j);
      End;
  Until i>j;

  QuickSort(L,j); 
  QuickSort(i,H);
End;

{-------------------------------------}
procedure xuat;
begin
  write(N);
end;
{-------------------------------------}
BEGIN

    assign(Input,fi); reset(Input);
    assign(Output,fo); rewrite(Output);

       Nhap;
       QuickSort(1,L);
       Xuat;

    Close(Input);
    Close(Output);
END.


