program binaryserch;
var a:array[1..10] of integer;
var i,j,k,ul,ll:integer;
begin
write('Enter number of elements: ');readln(i);
writeln('Now enter elements: ');
for k:=1 to i do readln(a[k]);
Write('Search For: ');readln(j);
ul:=1;ll:=i;
while ul<>ll do
if a[((ul+ll) div 2)] < j then  ul:=(ul+ll) div 2+1
else ll:=(ul+ll) div 2;
if a[ll]= j then writeln('Search Element Found') else
writeln('Search Element Does Not Exist');
readln;
end.
