const masterfile:string='d:\tp\bin\source\students\master.stu';
const tempfile1:string='d:\tp\bin\source\students\temp1.stu';
const tempfile2:string='d:\tp\bin\source\students\temp2.stu';
type students=record
scno:integer;
name:string[30];
phone:string[10];
adress:string[40];
class:integer;
end;
{Global Declarations}
var i:students;var k:integer;var j:char;
{Function Declarations}
function is_there(scno:integer):boolean;
var l:file of students;
var k:students;
begin
is_there:=false;
assign(l,masterfile);
reset(l);
while not eof(l) do begin
read(l,k);
if k.scno=scno then is_there:=true;
end;
end;

function last_scno:integer;
var i:integer;var l:file of students;
var k:students;
begin
i:=0;
assign(l,masterfile);
reset(l);
while not eof(l) do begin
read(l,k);
i:=k.scno;
end;
last_scno:=i;
end;
procedure fileCopy(j1,j2:string);
var i:char;var k,l :file of char;var m:longint;
begin
m:=1;
assign (k,j1);reset(k);
assign (l,j2);rewrite(l);
write('Copying');
while not eof(k) do
begin
if m mod (filesize(k) div 9+1)=0 then write('.');
read(k,i);
write(l,i);
m:=m+1;
end;
writeln('Done');
close (k);
close(l);
end;
procedure filemerge(j1,j2,j3:string);
var i:char;var k,l,n:file of char;var m:longint;
begin
m:=1;
assign (k,j1);reset(k);
assign (n,j2);reset(n);
assign (l,j3);rewrite(l);
write('Merging');
while not eof(k) do begin
if m mod (filesize(k) div 9+1)=0 then write('.');
read(k,i);write(l,i);m:=m+1;
end;
while not eof(n) do begin
if m mod (filesize(n) div 9+1)=0 then write('.');
read(n,i);write(l,i);m:=m+1;
end;
writeln('Done');close (k);close(l);close (n);
end;

procedure addnew;
var n:integer;var j:char;
var l:file of students;var m:students;
begin
assign(l,tempfile1);
rewrite(l);
j:='y';
n:=last_scno;
while upcase(j)='Y' do
with m do
begin
n:=n+1;
scno:=n;
writeln('Student Scno:          : ',scno);
write  ('Enter Student name       : ');read(name);
write  ('Enter Class              : ');readln(class);
write  ('Enter Address            : ');readln(adress);
write  ('Enter Phone Number       : ');readln(phone);
write  (l,m);
write('Add More (Y/N)');readln(j);
end;
filemerge(masterfile,tempfile1,tempfile2);
filecopy(tempfile2,masterfile);
end;
function fileupdate(i :students):boolean;
var k,j:file of students;var m,l:integer;var n:students;
begin
fileupdate:=false;
assign(k,masterfile);assign(j,tempfile1);
reset(k);rewrite(j);
while not eof(k) do begin
read(k,n);
if n.scno=i.scno then begin
write(j,i);fileupdate:=true; end
else write(j,n);
end;
filecopy(tempfile1,masterfile);
end;
function filedelete(i :students):boolean;
var k,j:file of students;var m,l:integer;var n:students;
begin
filedelete:=false;
assign(k,masterfile);assign(j,tempfile1);
reset(k);rewrite(j);
while not eof(k) do begin
read(k,n);
if n.scno<>i.scno then begin
write(j,n);
end
else
filedelete:=true;
end;
filecopy(tempfile1,masterfile);
end;

procedure showscno(x:students);
var i:file of students;j:students;
begin
if not is_there(x.scno) then begin
writeln('Record Not Found');
exit;
end;

assign(i,masterfile);reset(i);

while not eof(i) do begin
read(i,j);
if j.scno=x.scno then with j do
begin
writeln ('Scno Number: ',scno);
writeln ('Name       : ',name);
writeln ('Class      : ',Class);
writeln ('Address    : ',adress);
writeln ('Phone      : ',Phone);
readln;
end;
end;
end;

procedure showname(x:students);
var i:file of students;var j:students;var k:integer;
begin
k:=-1;
assign(i,masterfile);reset(i);
while not eof(i) do begin
read(i,j);
if pos(x.name,j.name)>0 then with j do
begin
k:=k+1;
writeln ('Scno Number: ',scno);
writeln ('Name       : ',name);
writeln ('Class      : ',Class);
writeln ('Address    : ',adress);
writeln ('Phone      : ',Phone);
writeln;
if k>=4 then begin
k:=0;
write('Press Enter To Continue');
readln;
end;
end;
end;
    if k>-1 then begin
       write('Press Enter To Conclude');
       readln;
       end
       else
       writeln('Record Not Found');
end;

procedure showclass(x:students);
var i:file of students;var j:students;var k:integer;
begin
k:=-1;
assign(i,masterfile);reset(i);
while not eof(i) do begin
read(i,j);
if x.class=j.class then with j do
begin
k:=k+1;
writeln ('Scno Number: ',scno);
writeln ('Name       : ',name);
writeln ('Class      : ',Class);
writeln ('Address    : ',adress);
writeln ('Phone      : ',Phone);
writeln;
if k>=4 then begin
k:=0;
write('Press Enter To Continue');
readln;
end;
end;
end;
if k>-1 then begin
write('Press Enter To Conclude');
readln;
end
else
writeln('Record Not Found');
end;

procedure showadress(x:students);
var i:file of students;var j:students;var k:integer;
begin
k:=-1;
assign(i,masterfile);reset(i);
while not eof(i) do begin
read(i,j);
if pos(x.adress,j.adress)>0 then with j do
begin
k:=k+1;
writeln ('Scno Number: ',scno);
writeln ('Name       : ',name);
writeln ('Class      : ',Class);
writeln ('Address    : ',adress);
writeln ('Phone      : ',Phone);
writeln;
if k>=4 then begin
k:=0;
write('Press Enter To Continue');
readln;
end;
end;
end;
if k>-1 then begin
write('Press Enter To Conclude');
readln
end
else
writeln('Record Not Found');
end;

procedure showphone(x:students);
var i:file of students;var j:students;var k:integer;
begin
k:=-1;
assign(i,masterfile);reset(i);
while not eof(i) do begin
read(i,j);
if pos(x.phone,j.phone)>0 then with j do
begin
k:=k+1;
writeln ('Scno Number: ',scno);
writeln ('Name       : ',name);
writeln ('Class      : ',Class);
writeln ('Address    : ',adress);
writeln ('Phone      : ',Phone);
writeln;
if k>=4 then begin
k:=0;
write('Press Enter To Continue');
readln;
end;
end;
end;
if k>=0 then begin
write('Press Enter To Conclude');
readln;
end
else
writeln('Record Not Found');
end;

procedure showall;
var i:file of students;var j:students;var k:integer;
begin
k:=-1;
assign(i,masterfile);reset(i);
while not eof(i) do with j do
begin
read(i,j);
k:=k+1;
writeln ('Scno Number: ',scno);
writeln ('Name       : ',name);
writeln ('Class      : ',Class);
writeln ('Address    : ',adress);
writeln ('Phone      : ',Phone);
writeln;
if k>=4 then begin
k:=0;
write('Press Enter To Continue');
readln;
end
end;
if k>=0 then begin
write('Press Enter To Conclude');
readln
end
else
writeln('Record Not Found');
end;

function Viewmenu:integer;
var k:integer;
begin
writeln;
writeln;
writeln('View Menu');
writeln('_______________________');
writeln('1. View All Student Records');writeln('2. View Student Record By Scno');
writeln('3. View Student Records By Name');writeln('4. View Student Records By Class');
writeln('5. View Student Records By Phone');writeln('6. View Student Records By Address');
writeln('0. Back');
writeln('_______________________');
write('Enter Your Choice: ');readln(k);
if  (k<0) or (k>6)   then
begin
writeln('Invalid Input');
k:=viewmenu;
end;
viewmenu:=k;
end;

function mainmenu:integer;
var k:integer;
begin
writeln;
writeln;
writeln('Main Menu');
writeln('_______________________');
writeln('1. Add New Student Record');writeln('2. Update Stuedent Record');
writeln('3. Delete Student Record');writeln('4. View Student Records');
writeln('0. Quit');
writeln('_______________________');
write('Enter Your Choice: ');readln(k);
if (k<0) or (k>4) then begin
writeln('Invalid Input');
k:=mainmenu;
end;
if k=4 then k:=k+viewmenu;
mainmenu:=k;
end;

procedure get(n:integer;var ans:students);
begin
if n=0 then begin
write('Enter Scno        :');readln(ans.scno);
end;
if n=1 then begin
write('Enter Name        :');readln(ans.name);
end;
if n=2 then begin
write('Enter Class       :');readln(ans.Class);
end;
if n=3 then begin
write('Enter Address     :');readln(ans.Adress);
end;
if n=4 then begin
write('Enter Phone Number:');readln(ans.Phone);
end;
writeln;
end;
{Main Module}
begin
k:=0;
Writeln;
Writeln('           Welcome To Intellective Academy');
Writeln;
repeat
case k of
1: addnew;
2: begin{update get(0,i);if end;}
if is_there(i.scno) then begin
get(1,i);get(2,i);get(3,i);get(4,i);
write('Update This Record (Y/N) : ');readln(j);
if upcase(j)='Y' then begin
fileupdate(i);
writeln('Record  Updated');
end;
end
else
writeln('Scno Number Not Found');
end;
3: begin {delete}
get(0,i);
if is_there(i.scno) then begin
showscno(i);
write('Delete This Record (Y/N) : ');readln(j);
if upcase(j)='Y' then begin
filedelete(i);
writeln('Record Deleted');
end;
end
else
writeln('Scno Number Not Found');
end;
5:showall;
6:begin
get(0,i);showscno(i);
end;
7:begin
get(1,i);showname(i);
end;
8:begin
get(2,i);showclass(i);
end;
9:begin
get(4,i);showphone(i);
end;
10:begin
get(3,i);showadress(i);
end;
end;
k:=mainmenu;
until k=0;
writeln;
writeln('Bye-Bye');
end.