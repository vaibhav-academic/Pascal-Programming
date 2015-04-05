program remmove_duplicates;
var a:array[1..10] of integer;
var i,j,k,l:integer;
begin
l:=10;
writeln('Enter Elements');
for i:=1 to 10 do readln (a[i]);
for i:=1 to 10 do
         for j:=(i+1) to l do
             if a[i]=a[j] then
                begin
                for k:= j to l do a[k]:=a[k+1];
                l:=l-1;
                end;

writeln;
writeln('Un-Duplicated Elements');
for i:=1 to l do writeln (a[i]);
readln;
end.