unit manLogSep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ComCtrls;

type
  TfmManLogSep = class(TForm)
    gLogSep: TDBGrid;
    SQLBUS: TQuery;
    DSBUS: TDataSource;
    SQLBUSNUMRES: TIntegerField;
    SQLBUSCODUSU: TIntegerField;
    SQLBUSLOGUSU: TStringField;
    SQLBUSDTELOG: TDateTimeField;
    SQLBUSHRELOG: TStringField;
    StatusBar1: TStatusBar;
    SQLBUSNROIMP: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowModal(CodEmp, NumRes: integer; DteRes: TDateTime): integer;
  end;

var
  fmManLogSep: TfmManLogSep;

implementation

{$R *.DFM}

{ TfmManLogSep }

function TfmManLogSep.ShowModal(CodEmp, NumRes: integer;
  DteRes: TDateTime): integer;
begin
  SQLBUS.Active := false;
  SQLBUS.Params.ParamValues['CodEmp'] := CodEmp;
  SQLBUS.Params.ParamValues['NumRes'] := NumRes;
  SQLBUS.Params.ParamValues['DteRes'] := DteRes;
  SQLBUS.Active := true;

  inherited showmodal;
end;

procedure TfmManLogSep.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (VK_ESCAPE = Key) then
    Self.Close;
end;

end.

