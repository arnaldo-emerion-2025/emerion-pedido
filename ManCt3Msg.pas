unit ManCt3Msg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppStrtch, ppMemo, Psock, NMsmtp, dxfProgressBar,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCt3Msg = class(TfmShowPadrao)
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdObsCnd: TdxDBColorEdit;
    EdObsEnt: TdxDBColorEdit;
    EdObsVal: TdxDBColorEdit;
    Label12: TLabel;
    bcontinuar: TBitBtn;
    EdObsCta: TdxDBColorMemo;
    Label2: TLabel;
    Label1: TLabel;
    EdObsCli: TdxDBColorEdit;
    PEDCTA: TQuery;
    PEDCTAOBSCLI: TStringField;
    PEDCTAOBSCND: TStringField;
    PEDCTAOBSENT: TStringField;
    PEDCTAOBSVAL: TStringField;
    PEDCTAOBSCTA: TMemoField;
    DsCta: TDataSource;
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}

    function ShowModal(CodEmp, NumCta: integer; DteCta: TDateTime): Integer;
  end;

var
  fmManCt3Msg: TfmManCt3Msg;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, ManGDB;

{$R *.DFM}

procedure TfmManCt3Msg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    Self.Close;

  if key = 123 then
    Self.Close;

end;

procedure TfmManCt3Msg.bContinuarClick(Sender: TObject);
begin
  Self.Close;
end;

function TfmManCt3Msg.ShowModal(CodEmp, NumCta: integer;
  DteCta: TDateTime): Integer;
begin
  PedCta.Active := False;

  PedCta.Params.ParamValues['CodEmp'] := CodEmp;
  PedCta.Params.ParamValues['NumCta'] := NumCta;
  //PedCta.Params.ParamValues['DteCta'] := DteCta;

  PedCta.Active := True;

  inherited ShowModal;
end;

end.
