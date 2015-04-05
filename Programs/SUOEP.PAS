program sum_odd_even_prime;
var i,j,k,l,m:integer;
function isprime( num:integer): boolean;
var c:integer;
begin
    if (num=1) or  (num=2) then begin
    isprime:=true;exit;end;
    c:=1;while c<(num div 2) do begin
    c:=c+1;if num mod c =0 then c:=num;
    end;
    if c=num then isprime:=false else isprime:=true;
end;

begin
j:=0;l:=0;m:=0;
write ('Sum all Even,Prime & Odd till number : ');
readln(i);
for k:=1 to i do
begin
if isprime(k) then j:=j+k;
if k mod 2 =0 then l:=l+k else m:=m+k;
end;
write ('Sum Prime=');writeln(j);
write ('Sum Odd  =');writeln(m);
write ('Sum Even =');writeln(l);
readln;
end.


