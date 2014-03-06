unit unitLookup;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, dbf, FileUtil, Forms, Controls, Graphics, Dialogs,
  DBGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    Dbf1 : TDbf;
    procedure Datasource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
begin
end;

procedure TForm1.Datasource1DataChange(Sender: TObject; Field: TField);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  S: string;
begin
  Dbf1 := TDbf.Create(nil);
  S := Application.ExeName;

  Dbf1.FilePath := ExtractFilePath(S);
  Dbf1.TableName:='demolog.dbf';
  Dbf1.Open;
  Datasource1.DataSet:=Dbf1;
  DBGrid1.DataSource:=Datasource1;
end;

end.

