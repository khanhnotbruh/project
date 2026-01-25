const   fi='bai1.inp’;
        fo='bai1.out’;
var     x,y:int64;
        k:array[1..100000000] of longint;
        i,max,vt:longint;

procedure doc;
   begin
       assign(input,fi); reset(input);
       assign(output,fo); rewrite(output);
       fillchar(k,sizeof(k),0);
       readln(x);
       readln(y);
       close(input);
   end;
