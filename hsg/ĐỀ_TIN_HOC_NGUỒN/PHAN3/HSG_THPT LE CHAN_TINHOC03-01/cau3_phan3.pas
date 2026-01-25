Program cau3;
var maxsum,j,jmax,i,t,n:word;
a,sum:array[0..100] of word;
begin
a[0]:=0;
sum[0]:=0;
        write('nhap so phan tu n = ');readln(n);
        for i:=1 to n do
        begin
            write('nhap a[',i,'] = ');readln(a[i]);
            sum[i]:=a[i];
        end;
        for i:=1 to n do
        if a[i] > a[i-1] then
        begin
        sum[i]:=sum[i]+sum[i-1];
        j:=j+1;
        end
        else
        begin
        jmax:=j;
        j:=1;
        if sum[i-1]> maxsum then
        begin
        maxsum:=sum[i-1];
        t:=i-1;
        end;
        end;
        write('day tang co tong = ',maxsum,' la : ');
        for i:=t-j to t do
        write('  ',a[i]);
readln
end.

