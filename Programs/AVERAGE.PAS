program average;
var list:array[1..20] of integer;
var length,temp1:integer;
var sum:real;
begin
write('Enter Number Of Elements:');
read(length);
writeln('Enter Elements:-');
for temp1:=1 to length do
begin
write('Enter Element ',temp1,':');
read(list[temp1]);
end;
for temp1:=1 to length do sum:=sum+list[temp1];
sum:=sum/length;
writeln('Average is ',sum:6:2);
readln;
readln;
end.