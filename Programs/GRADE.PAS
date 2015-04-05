program grade_;
var marks:integer;var grade:char;
begin
write('Please Enter Marks : ');
readln(marks);
grade:='F';
if marks>=33 then grade:='E';
if marks>=45 then grade:='D';
if marks>=65 then grade:='C';
if marks>=75 then grade:='B';
if marks>=90 then grade:='A';
writeln ( 'The Grade is ',grade);
readln;
end.