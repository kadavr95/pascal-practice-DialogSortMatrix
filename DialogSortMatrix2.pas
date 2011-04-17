unit DialogSortMatrix2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    odlg: TOpenDialog;
    sdlg: TSaveDialog;
    Open: TButton;
    Save: TButton;
    procedure OpenClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  f,ff:textfile;
  i,j,x,y,mn,mx:integer;
implementation
type
  mas=array[1..100,1..100] of real;
var
  m:mas;
{$R *.dfm}
procedure change(var a,b:real);
var
c:real;
begin
  c:=a;
  a:=b;
  b:=c;
end;
function min(m:mas):integer;
var
a,b:integer;
begin
a:=1;
b:=1;
for i := 1 to x do
for j := 1 to y do
 if m[i,j]<m[a,b] then
   begin
     a:=i;
     b:=j
   end;
 min:=a;
end;
 function max(m:mas):integer;
var
 a,b:integer;
begin
a:=1;
b:=1;
for i := 1 to x do
for j := 1 to y do
 if m[i,j]>m[a,b] then
   begin
     a:=i;
     b:=j
   end;
 max:=a;
end;
procedure TForm2.OpenClick(Sender: TObject);
begin
 if odlg.Execute=true then
   begin
     assignfile(f,odlg.FileName);
   end;
end;

procedure TForm2.SaveClick(Sender: TObject);
begin
  if sdlg.Execute=true then
   begin
   assignfile(ff,sdlg.FileName);
    rewrite(ff);
    reset(f);
    read(f,x);
    readln(f,y);
    for i := 1 to x do
    begin
    for j := 1 to y do
    read(f,m[i,j]);
    readln(f);
    end;
    mn:= min(m);
    mx:=  max(m);
    for j := 1 to y do
     change(m[mn,j],m[mx,j]);
    for i := 1 to x do
    begin
    for j := 1 to y do
  write(ff,floattostr(m[i,j]),' ');
  writeln(ff);
    end;
    closefile(ff);
    closefile(f);
   end;
end;



end.
