
Const finp='Bai2.inp';
      fout='Bai2.out';
Var f:text;
     S:string;
     i,n:Longint;
Procedure Docfile;
        Begin
             Assign(f,finp);
             Reset(f);
             Readln(f,s);
             Close(f);
        End;
Procedure Ghifile;
        Begin
             Assign(f,fout);
             Rewrite(f);
        End;
Procedure Xuli;
         Var m,code,tg:Longint;
             Max:String;
        Begin
            tg:=0;
            For i:=1 to length(s) do
                 Begin
                    Val(S[i],m,code);
                    tg:=tg+m;
                 End;
                 Max:=S[1];
            For i:=1 to length(s) do
                 If Max<s[i] then  Max:=s[i];
                 Ghifile;
                 Writeln(f,Max);
                 Writeln(f,tg);
                 Close(f);
        End;
Begin
   Docfile;
   Xuli;
End.
