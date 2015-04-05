Program Junk_Sort;
var a,b,c:array[1..10] of integer;
var j,k :integer;
var done:boolean;
begin
done:=true;
for  j:= 1 to 10 do
readln (c[j]);
for  j:= 1 to 10 do
       a[j]:=c[j];
  while(done) do
  begin
       for  j:= 1 to 10 do
        a[j]:=a[j]-1;
       for  j:= 1 to 10 do
        if a[j]=0 then
         begin
         k:=k+1;
         b[k]:=c[j];
         if (k>=10) then
         done:=false;
         end;
      end;
writeln;
for  j:= 1 to 10 do
writeln (b[j]);
readln;
end.