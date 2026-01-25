Uses Crt;
Var	St:String;
Procedure  XoaTrangThua(Var St:String);
Begin
	{Xóa các ký t? tr?ng ? d?u xâu}
	While St[1]=#32 Do Delete(St,1,1);
	{Xóa các ký t? tr?ng ? cu?i xâu}
	While St[Length(St)]=#32 Do Delete(St,Length(St),1);
	{Xóa các ký t? tr?ng ? gi?a xâu}
	While POS(#32#32,St)<>0 Do Delete(St,POS(#32#32,St),1);
End;
Begin
	Write(‘Nhap xau St: ‘); Readln(St);
	XoaTrangThua(St);
	St:=St+#32;
	Writeln(‘Liet ke cac tu trong xau: ‘); 
	While POS(#32,St)<>0 Do
		Begin
			Writeln(Copy(St,1,POS(#32,St)));
			Delete(St,1,POS(#32,St));
		End;
	Readln;
End.
