var a,b : array[ 1..10] of integer;
var i,j,k:integer;
var dup:boolean;
begin
writeln('Enter Elements: ');
for i:=1 to 10 do readln (a[i]);

for i:=1 to 10 do begin
dup:=false;
     for j:=1 to k do
        if a[i]=b[j] then dup:=true;
     if not dup then begin
     k:=k+1;
     b[k]:=a[i];
     end;
end;
writeln('Unduplicated List');for i:=1 to k do writeln (b[i]);
readln;
end.