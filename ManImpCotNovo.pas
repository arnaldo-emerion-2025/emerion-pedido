unit ManImpCotNovo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Qrctrls, QRPrntr;

type
  TfmManImpCotNovo = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    PedRe2: TwwQuery;
    dsPedRes: TDataSource;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2PRODUTO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGPAC: TStringField;
    PedRe2FLGLIB: TStringField;
    PedRe2CST: TStringField;
    PedRe2CODCFO: TStringField;
    PedRe2CODUND: TStringField;
    PedRe2VLURE2: TFloatField;
    PedRe2DSCRE2: TFloatField;
    PedRe2MRGSUB: TFloatField;
    PedRe2IPIRE2: TFloatField;
    PedRe2TOTICM: TFloatField;
    PedRe2TOTIPI: TFloatField;
    PedRe2TOTSUB: TFloatField;
    PedRe2DSRRE2: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRes: TQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    bandSumario: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    PedRe2CLSIPI: TStringField;
    QRDBText21: TQRDBText;
    QRLabel31: TQRLabel;
    mmVenc: TQRMemo;
    PEDRE3: TwwQuery;
    PEDRE3SEQRE3: TIntegerField;
    PEDRE3PRARE3: TIntegerField;
    PEDRE3VENC: TDateTimeField;
    PEDRE3VLPRE3: TFloatField;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    mmValor: TQRMemo;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel40: TQRLabel;
    QRShape4: TQRShape;
    DetailBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape1: TQRShape;
    QRLabel58: TQRLabel;
    QRShape3: TQRShape;
    PedRe2TOTDSR: TFloatField;
    procedure bandSumarioBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowModal(Numres: integer): integer;
  end;

var
  fmManImpCotNovo: TfmManImpCotNovo;

implementation

uses ManGDB;

{$R *.DFM}

procedure TfmManImpCotNovo.bandSumarioBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  mmVenc.Lines.Clear;
  mmValor.Lines.Clear;

  if not pedre3.IsEmpty then
  begin

    while not pedre3.Eof do
    begin
      mmVenc.Lines.Add(FormatFloat('00', PEDRE3PRARE3.AsInteger) + ' ' +
        FormatDateTime('dd/mm/yyyy', PEDRE3VENC.AsDateTime));
      mmValor.Lines.Add(FormatFloat('R$ #,##0.00', PEDRE3VLPRE3.AsFloat));

      PEDRE3.Next;
    end;

    //bandSumario.Height := bandSumario.Height + ((mmVenc.Height - 1) * pedre3.RecordCount);
  end;

end;

function TfmManImpCotNovo.ShowModal(Numres: integer): integer;
begin
  //inherited Show;
  //
  Pedre2.Active := False;
  PEDRE3.Active := False;
  PedRes.Active := False;

  PedRes.Params.ParamValues['NUMRES'] := NumRes;

  PedRes.Active := True;
  Pedre2.Active := True;
  PEDRE3.Active := True;

  pedre3.Last;
  pedre3.First;

  mmVenc.Height := (mmVenc.Height - 1) * pedre3.RecordCount;
  mmValor.Height := mmVenc.Height;

  bandSumario.Height := bandSumario.Height + mmVenc.Height;


  QuickRep1.PreviewWidth := Screen.Width - 2;
  QuickRep1.PreviewHeight := Screen.Height - 2;
  QuickRep1.PrevInitialZoom := qrZoomToWidth; //qrZoomOther;
  QuickRep1.Zoom := 100;
  //QuickRep1.Prepare;

  QuickRep1.PreviewModal;

  Self.Close;
end;

procedure TfmManImpCotNovo.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QuickRep1.PageNumber > 1 then
    QRBand1.Height := 46
  else
    QRBand1.Height := 27;
end;

end.

