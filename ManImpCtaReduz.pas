unit ManImpCtaReduz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Qrctrls, QRPrntr, QRPDFFilt,
  grimgctrl;

type
  TfmManImpCtaReduz = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    PedCt2: TwwQuery;
    dsPedCta: TDataSource;
    PedCta: TQuery;
    qSubDetalhe: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText49: TQRDBText;
    bandSumario: TQRBand;
    QRDBText18: TQRDBText;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText21: TQRDBText;
    QRLabel31: TQRLabel;
    PedCtaCODEMP: TIntegerField;
    PedCtaDTERES: TDateTimeField;
    PedCtaNUMRES: TIntegerField;
    PedCtaHRERES: TStringField;
    PedCtaUFERES: TStringField;
    PedCtaCGCCLI: TStringField;
    PedCtaQTIRES: TIntegerField;
    PedCtaLANEST: TStringField;
    PedCtaCODFIL: TIntegerField;
    PedCtaCODCLI: TIntegerField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODPFA: TStringField;
    PedCtaTIPPFA: TStringField;
    PedCtaCODATD: TIntegerField;
    PedCtaTOTSUB: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCtaTOTCST: TFloatField;
    PedCtaMEDDSC: TFloatField;
    PedCtaTOTDSC: TFloatField;
    PedCtaMEDACR: TFloatField;
    PedCtaTOTACR: TFloatField;
    PedCtaMEDPRM: TFloatField;
    PedCtaTOTDSP: TFloatField;
    PedCtaMEDDCO: TFloatField;
    PedCtaTOTDCO: TFloatField;
    PedCtaDSCREG: TFloatField;
    PedCtaTOTDSR: TFloatField;
    PedCtaTOTIPI: TFloatField;
    PedCtaTOTREN: TFloatField;
    PedCtaFLGOCO: TStringField;
    PedCtaATUEST: TStringField;
    PedCtaSITRES: TStringField;
    PedCtaCIDCLI: TStringField;
    PedCtaUFECLI: TStringField;
    PedCtaCEPCLI: TStringField;
    PedCtaNOMCLI: TStringField;
    PedCtaAPEVEN: TStringField;
    PedCtaAPEATD: TStringField;
    PedCtaINSCLI: TStringField;
    PedCtaNOMEMP: TStringField;
    PedCtaOBSCND: TStringField;
    PedCtaENDENT: TMemoField;
    PedCtaEND1: TMemoField;
    PedCtaEND2: TMemoField;
    PedCtaFONE: TStringField;
    PedCtaEMAEMP: TStringField;
    PedCtaWEBEMP: TStringField;
    QRDBText22: TQRDBText;
    PedCt2CODEMP: TIntegerField;
    PedCt2DTECTA: TDateTimeField;
    PedCt2NUMCTA: TIntegerField;
    PedCt2SEQRE2: TIntegerField;
    PedCt2PRODUTO: TStringField;
    PedCt2DESRE2: TStringField;
    PedCt2QTPRE2: TFloatField;
    PedCt2VLQRE2: TFloatField;
    PedCt2ICMRE2: TFloatField;
    PedCt2TOTRE2: TFloatField;
    PedCt2TOTREN: TFloatField;
    PedCt2CLSIPI: TStringField;
    PedCt2CST: TStringField;
    PedCt2CODCFO: TStringField;
    PedCt2CODUND: TStringField;
    PedCt2VLURE2: TFloatField;
    PedCt2DSCRE2: TFloatField;
    PedCt2MRGSUB: TFloatField;
    PedCt2IPIRE2: TFloatField;
    PedCt2TOTICM: TFloatField;
    PedCt2TOTIPI: TFloatField;
    PedCt2TOTSUB: TFloatField;
    PedCt2DSRRE2: TFloatField;
    PedCt2TOTDSR: TFloatField;
    PedCt2TOTGE2: TFloatField;
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
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRSysData2: TQRSysData;
    PedCtaDTECTA: TDateTimeField;
    QRLabel32: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText25: TQRDBText;
    PedCtaOBSCTA: TMemoField;
    PedCtaAOSCUIDADOS: TStringField;
    PedCtaENTREGA: TStringField;
    PedCtaVALIDADE: TStringField;
    QRDBText26: TQRDBText;
    QRLabel35: TQRLabel;
    mmOBSCT2: TQRDBText;
    PedCt2OBSCT2: TStringField;
    PedCtaTOTDESPESA: TFloatField;
    PedCt2TOTDESPESA: TFloatField;
    lbPedCompra: TQRLabel;
    mmPedCompra: TQRDBText;
    lbItemCompra: TQRLabel;
    mmItemCompra: TQRDBText;
    PedCt2NUMPEDCOMPRA: TStringField;
    PedCt2NUMITEMCOMPRA: TIntegerField;
    QRLabel43: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText32: TQRDBText;
    PedCtaEMAVEN: TStringField;
    PedCtaTELEFONE: TMemoField;
    PedCt2TOTITETRB: TFloatField;
    PedCt2VALLIQTRB: TFloatField;
    QRLabel58: TQRLabel;
    QRDBText27: TQRDBText;
    LogPrint: TQRImage;
    lbMarkup: TQRLabel;
    edMarkup: TQRDBText;
    lbCusto: TQRLabel;
    edCusto: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText50: TQRDBText;
    QRDBText28: TQRDBText;
    PedCtaCGCEMP: TStringField;
    PedCtaINSEMP: TStringField;
    PedCtaID_FRETE: TIntegerField;
    QRLabel36: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    mmVenc: TQRMemo;
    mmValor: TQRMemo;
    PEDCT3: TwwQuery;
    PEDCT3NROCT3: TIntegerField;
    PEDCT3PRACT3: TIntegerField;
    PEDCT3VENC: TDateTimeField;
    PEDCT3VLPCT3: TFloatField;
    procedure qSubDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
    procedure PedCt2CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QRDBText9Print(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText50Print(sender: TObject; var Value: string);
    procedure QRDBText28Print(sender: TObject; var Value: string);
    procedure PedCtaAfterOpen(DataSet: TDataSet);
    procedure QRDBText51Print(sender: TObject; var Value: string);
    procedure bandSumarioBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    flgEmail: Boolean;

    function SavePDF(Path: string): boolean;
  public
    { Public declarations }
    function ShowModal(NumCta: integer; DteCta: TDateTime): integer;
    function EnviaEmail(NumCta: integer): Boolean;
  end;

var
  fmManImpCtaReduz: TfmManImpCtaReduz;

implementation

uses ManGDB, Bbfuncao, ufrmPreview;

{$R *.DFM}

function TfmManImpCtaReduz.ShowModal(NumCta: integer; DteCta: TDateTime): integer;
begin
  //inherited Show;
  //
  PedCt2.Active := False;
  //PEDRE3.Active := False;
  PedCta.Active := False;

  PedCta.Params.ParamValues['NUMCTA'] := NumCta;
  PedCta.Params.ParamValues['DTECTA'] := DteCta;

  PedCta.Active := True;
  PedCt2.Active := True;
  //PEDRE3.Active := True;

  {pedre3.Last;
  pedre3.First;

  mmVenc.Height := (mmVenc.Height - 1) * pedre3.RecordCount;
  mmValor.Height := mmVenc.Height;

  bandSumario.Height := bandSumario.Height + mmVenc.Height;}

  QuickRep1.PreviewWidth := Screen.Width - 2;
  QuickRep1.PreviewHeight := Screen.Height - 2;
  QuickRep1.PrevInitialZoom := qrZoomToWidth; //qrZoomOther;
  QuickRep1.Zoom := 100;
  //QuickRep1.Prepare;

  QuickRep1.PreviewModal;

  if messagebox(handle, 'Deseja enviar cotação por email?', 'Cotação', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
    EnviaEmail(Numcta);

  Self.Close;
end;

function TfmManImpCtaReduz.EnviaEmail(NumCta: integer): Boolean;
var
  strPDF: string;
  strNomCli, strEmailCli, IdCli: string;
begin
  //inherited Show;
  //
  PedCt2.Active := False;
  //PEDRE3.Active := False;
  PedCta.Active := False;

  PedCta.Params.ParamValues['NUMCTA'] := NumCta;

  PedCta.Active := True;
  PedCt2.Active := True;
  //PEDRE3.Active := True;
  flgEmail := True;

  QuickRep1.PreviewWidth := Screen.Width - 2;
  QuickRep1.PreviewHeight := Screen.Height - 2;
  QuickRep1.PrevInitialZoom := qrZoomToWidth; //qrZoomOther;
  QuickRep1.Zoom := 100;

  lbMarkup.Enabled := False;
  edMarkup.Enabled := False;

  lbCusto.Enabled := False;
  edCusto.Enabled := False;

  QuickRep1.Prepare;

  IdCli := FmManGdb.BuscaSimples('PEDCTA', 'CODCLI', ' NUMCTA = ' + inttostr(NUMCTA));

  if strtoint(IdCli) > 0 then
  begin
    strNomCli := FmManGdb.BuscaSimples('Fincli', 'APECLI', ' CODCLI = ' + IdCli);
    strEmailCli := FmManGdb.BuscaSimples('Fincli', 'EM1CLI', ' CODCLI = ' + IdCli);
  end
  else
  begin
    strNomCli := '';
    strEmailCli := '';
  end;

  if trim(strEmailCli) = '' then
    InputQuery('Envio de email', 'Email:', strEmailCli);

  if trim(strEmailCli) = '' then
  begin
    MessageBox(handle, 'Envio de email cancelado por não possuir email de destinatário.', 'Email', mb_ok + MB_ICONEXCLAMATION);

  end
  else
  begin

    strPDF := ExtractFilePath(Application.exename) + '\Cotacao ' + inttostr(NUMCTA) + '.pdf';

    if SavePDF(strPDF) then
    begin
      try

        SendMailMAPI('Cotação ' + inttostr(numcta), 'Segue em anexo cotação ' + inttostr(numcta), strPDF, GUsu_Nm, GUsu_Ema, strNomCli, strEmailCli);
      finally
        DeleteFile(strPDF);
      end;

    end
    else
      showmessage('Falhou!');
  end;

  Self.Close;
end;

function TfmManImpCtaReduz.SavePDF(Path: string): boolean;
var
  aExportFilter: TQRExportFilter;
  aPDFFilter: TQRPDFDocumentFilter; // *** PDF
begin

  aExportFilter := nil;

  aPDFFilter := TQRPDFDocumentFilter.create(Path);

  try
    QuickRep1.ExportToFilter(aPDFFilter);
    Result := True;
  finally
    aPDFFilter.Free;
  end;

end;

procedure TfmManImpCtaReduz.qSubDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (trim(pedct2OBSCT2.AsString) <> '') or (Trim(PedCt2NUMPEDCOMPRA.AsString) <> '') or (Trim(PedCt2NUMITEMCOMPRA.AsString) <> '') then
  begin
    qSubDetalhe.Height := 39;
    mmOBSCT2.Enabled := True;

  end
  else
  begin
    qSubDetalhe.Height := 18;
    mmOBSCT2.Enabled := False;

  end;

  if (Trim(PedCt2NUMPEDCOMPRA.AsString) <> '') or (Trim(PedCt2NUMITEMCOMPRA.AsString) <> '') then
  begin
    lbPedCompra.Enabled := True;
    mmPedCompra.Enabled := True;
    lbItemCompra.Enabled := True;
    mmItemCompra.Enabled := True;
  end
  else
  begin
    lbPedCompra.Enabled := False;
    mmPedCompra.Enabled := False;
    lbItemCompra.Enabled := False;
    mmItemCompra.Enabled := False;
  end;
end;

procedure TfmManImpCtaReduz.QuickRep1Preview(Sender: TObject);
begin
  frmPreview := TfrmPreview.Create(Application);

  try
    with frmPreview do
    begin
      qrprvwPadrao.QRPrinter := TQRPrinter(Sender);
      ShowModal;
    end;
  finally
    FreeAndnil(frmPreview);
  end;

end;

procedure TfmManImpCtaReduz.PedCt2CalcFields(DataSet: TDataSet);
begin
  if PedCt2QTPRE2.AsFloat > 0 then
    PedCt2VALLIQTRB.AsFloat := fRound(PedCt2TOTITETRB.AsFloat / PedCt2QTPRE2.AsFloat, 2);
end;

procedure TfmManImpCtaReduz.FormCreate(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'print.bmp') then
    LogPrint.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'print.bmp');

  flgEmail := False;
end;

procedure TfmManImpCtaReduz.QRDBText9Print(sender: TObject;
  var Value: string);
begin
  Value := PedCtaCODCLI.AsString + ' - ' + Trim(Value);
end;

procedure TfmManImpCtaReduz.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
  begin
    // Apenas gerente, grupo 1, master e suporte podem observar.
    lbMarkup.Enabled := False;
    edMarkup.Enabled := False;

    lbCusto.Enabled := False;
    edCusto.Enabled := False;

  end;
end;

procedure TfmManImpCtaReduz.QRDBText50Print(sender: TObject;
  var Value: string);
begin
  Value := 'CNPJ: ' + Value;
end;

procedure TfmManImpCtaReduz.QRDBText28Print(sender: TObject;
  var Value: string);
begin
  Value := 'I.E.: ' + Value;
end;

procedure TfmManImpCtaReduz.PedCtaAfterOpen(DataSet: TDataSet);
begin
  if (Pos(PedCtaCGCEMP.AsString, '.') = 0) then
  begin
    if Length(Trim(PedCtaCGCEMP.AsString)) > 11 then
      PedCtaCGCEMP.EditMask := '99.999.999/9999-99;0'
    else
      PedCtaCGCEMP.EditMask := '!999.999.999-99;1';
  end
  else
  begin
    if Length(Trim(PedCtaCGCEMP.AsString)) > 14 then
      PedCtaCGCEMP.EditMask := '99.999.999/9999-99;0'
    else
      PedCtaCGCEMP.EditMask := '!999.999.999-99;1';
  end;

  if (Pos(PedCtaCGCCli.AsString, '.') = 0) then
  begin
    if Length(Trim(PedCtaCGCCli.AsString)) > 11 then
      PedCtaCGCCli.EditMask := '99.999.999/9999-99;0'
    else
      PedCtaCGCCli.EditMask := '999.999.999-99;0';
  end
  else
  begin
    if Length(Trim(PedCtaCGCCli.AsString)) > 14 then
      PedCtaCGCCli.EditMask := '99.999.999/9999-99;0'
    else
      PedCtaCGCCli.EditMask := '!999.999.999-99;1';
  end;
end;

procedure TfmManImpCtaReduz.QRDBText51Print(sender: TObject;
  var Value: string);
begin
  Value := fmManGdb.BuscaSimples('', 'FRT', '', 'select (CAST(ID as CHAR(1)) ||'' - ''|| DESCFRT) FRT FROM TIPFRT WHERE ID = ' + Value);
end;

procedure TfmManImpCtaReduz.bandSumarioBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PEDCT3.Active := False;
  PEDCT3.Active := True;

  PEDCT3.Last;
  PEDCT3.First;

  mmVenc.Lines.clear;
  mmValor.Lines.clear;

  if not PEDCT3.IsEmpty then
  begin

    while not PEDCT3.Eof do
    begin
      mmVenc.Lines.Add(FormatFloat('00', PEDCT3PRACT3.AsInteger) + ' ' +
                       FormatDateTime('dd/mm/yyyy', PEDCT3VENC.AsDateTime));

      mmValor.Lines.Add(FormatFloat('R$ #,##0.00', PEDCT3VLPCT3.AsFloat));

      PEDCT3.Next;
    end;
  end;
end;

end.

