const
    fi = 'bai4.inp';
    fo = 'bai4.out';
    nm = 100000;
var
    s: ansistring;
    n, k, top: longword;
    stack: array[1..nm] of char;
procedure inp;
    begin
        readln(s);
        readln(k);
        n := length(s);
    end;
procedure sol;
    var
        i: longword;
    begin
        n := length(s);
        top := 1; stack[top] := s[1];
        for i := 2 to n do
            begin
                while (k > 0) and (top > 0) and (stack[top] < s[i]) do
                    begin
                        dec(k);
                        dec(top);
                    end;
                inc(top);
                stack[top] := s[i];
            end;
        for i := 1 to (top-k) do write(stack[i]);
    end;
begin
    assign(input, fi); reset(input);
    assign(output, fo); rewrite(output);
    inp;
    sol;
    close(input);
    close(output);
end.

