unit ManImpCtaNovoSemDesc_Red;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Qrctrls, QRPrntr, QRPDFFilt,
  grimgctrl;

type
  TfmManImpCtaNovoSemDesc_Red = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
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
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel32: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel58: TQRLabel;
    LogPrint: TQRImage;
    QRLabel18: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText51: TQRDBText;
    qSubDetalhe: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText21: TQRDBText;
    mmOBSCT2: TQRDBText;
    QRDBText29: TQRDBText;
    lbPedCompra: TQRLabel;
    mmPedCompra: TQRDBText;
    lbItemCompra: TQRLabel;
    mmItemCompra: TQRDBText;
    QRDBText27: TQRDBText;
    lb_Marca: TQRLabel;
    edNomMRc: TQRDBText;
    QRDBText28: TQRDBText;
    bandSumario: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText30: TQRDBText;
    edCusto: TQRDBText;
    lbCusto: TQRLabel;
    edMarkup: TQRDBText;
    lbMarkup: TQRLabel;
    dsPedCta: TDataSource;
    PedCta: TQuery;
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
    PedCtaDTECTA: TDateTimeField;
    PedCtaOBSCTA: TMemoField;
    PedCtaAOSCUIDADOS: TStringField;
    PedCtaENTREGA: TStringField;
    PedCtaVALIDADE: TStringField;
    PedCtaTOTDESPESA: TFloatField;
    PedCtaEMAVEN: TStringField;
    PedCtaTELEFONE: TMemoField;
    PedCtaCGCEMP: TStringField;
    PedCtaINSEMP: TStringField;
    PedCtaID_FRETE: TIntegerField;
    PedCt2: TwwQuery;
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
    PedCt2OBSCT2: TStringField;
    PedCt2TOTDESPESA: TFloatField;
    PedCt2NUMPEDCOMPRA: TStringField;
    PedCt2NUMITEMCOMPRA: TIntegerField;
    PedCt2TOTITETRB: TFloatField;
    PedCt2VALLIQTRB: TFloatField;
    PedCt2NOMMRC: TStringField;
    PedCt2QTDATENDIDA: TFloatField;
    PedCtaTOTICM: TFloatField;
    QRLabel46: TQRLabel;
    mmVenc: TQRMemo;
    QRLabel47: TQRLabel;
    mmValor: TQRMemo;
    PEDCT3: TwwQuery;
    PEDCT3NROCT3: TIntegerField;
    PEDCT3PRACT3: TIntegerField;
    PEDCT3VENC: TDateTimeField;
    PEDCT3VLPCT3: TFloatField;
    QRBFooter: TQRBand;
    QRShape2: TQRShape;
    QRSysData2: TQRSysData;
    procedure FormCreate(Sender: TObject);
    procedure qSubDetalheBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
    procedure PedCt2CalcFields(DataSet: TDataSet);
    procedure QRDBText9Print(sender: TObject; var Value: string);
    procedure lb_MarcaPrint(sender: TObject; var Value: string);
    procedure edNomMRcPrint(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText40Print(sender: TObject; var Value: string);
    procedure QRDBText41Print(sender: TObject; var Value: string);
    procedure PedCtaAfterOpen(DataSet: TDataSet);
    procedure QRDBText51Print(sender: TObject; var Value: string);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure bandSumarioBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    IMPMRC: string;               
    flgEmail: Boolean;
    function SavePDF(Path: string): boolean;
  public
    { Public declarations }
    function ShowModal(NumCta: integer; DteCta: TDateTime): integer;
    function EnviaEmail(NumCta: integer): Boolean;
  end;

var
  fmManImpCtaNovoSemDesc_Red: TfmManImpCtaNovoSemDesc_Red;

implementation

uses ManGDB, Bbfuncao, ufrmPreview, ManPri;

{$R *.DFM}

function TfmManImpCtaNovoSemDesc_Red.ShowModal(NumCta: integer; DteCta: TDateTime): integer;
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


    if (Pos(PedCtaCGCEMP.AsString, '.') = 0) then
  begin
    if Length(Trim(PedCtaCGCEMP.AsString)) > 11 then
      PedCtaCGCEMP.EditMask := '!99.999.999\\9999-99;1;_'
    else
      PedCtaCGCEMP.EditMask := '!999.999.999-99;1;_';
  end
  else
  begin
    if Length(Trim(PedCtaCGCEMP.AsString)) > 14 then
      PedCtaCGCEMP.EditMask := '!99.999.999\\9999-99;1;_'
    else
      PedCtaCGCEMP.EditMask := '!999.999.999-99;1;_';
  end;

  if (Pos(PedCtaCGCCli.AsString, '.') = 0) then
  begin
    if Length(Trim(PedCtaCGCCli.AsString)) > 11 then
      PedCtaCGCCli.EditMask := '!99.999.999\\9999-99;1;_'
    else
      PedCtaCGCCli.EditMask := '!999.999.999-99;1;_';
  end
  else
  begin
    if Length(Trim(PedCtaCGCCli.AsString)) > 14 then
      PedCtaCGCCli.EditMask := '!99.999.999\\9999-99;1;_'
    else
      PedCtaCGCCli.EditMask := '!999.999.999-99;1;_';
  end;



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

function TfmManImpCtaNovoSemDesc_Red.EnviaEmail(NumCta: integer): Boolean;
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
        //SendMailMAPI('Cotação ' + inttostr(numcta), 'Segue em anexo cotação ' + inttostr(numcta), strPDF, GUsu_Nm, GUsu_Ema, strNomCli, strEmailCli);
        fmManPri.enviaEmail(
          true,
          PAnsiChar('Cotação ' + inttostr(numcta)),
          PansiChar('Segue em anexo cotação ' + inttostr(numcta)),
          PansiChar(strEmailCli),
          VarArrayOf([strPDF]));
      finally
        DeleteFile(strPDF);
      end;

    end
    else
      showmessage('Falhou!');
  end;

  Self.Close;
end;

function TfmManImpCtaNovoSemDesc_Red.SavePDF(Path: string): boolean;
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

procedure TfmManImpCtaNovoSemDesc_Red.qSubDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (trim(pedct2OBSCT2.AsString) <> '')
    or (Trim(PedCt2NUMPEDCOMPRA.AsString) <> '')
    or (Trim(PedCt2NUMITEMCOMPRA.AsString) <> '')
    or ((Trim(PedCt2NOMMRC.AsString) <> '') and (IMPMRC = 'Sim')) then
  begin
    qSubDetalhe.Height := 31;
  end
  else
  begin
    qSubDetalhe.Height := 17;
  end;

  if ((Trim(PedCt2NOMMRC.AsString) <> '') and (IMPMRC = 'Sim')) then
  begin
    edNomMRc.Enabled := True;
    lb_Marca.Enabled := True;
  end
  else
  begin
    edNomMRc.Enabled := False;
    lb_Marca.Enabled := False;
  end;

  if (trim(pedct2OBSCT2.AsString) <> '') then
    mmOBSCT2.Enabled := True
  else
    mmOBSCT2.Enabled := False;

  if (Trim(PedCt2NUMPEDCOMPRA.AsString) <> '') then
  begin
    lbPedCompra.Enabled := True;
    mmPedCompra.Enabled := True;

  end
  else
  begin
    lbPedCompra.Enabled := False;
    mmPedCompra.Enabled := False;
  end;

  if (Trim(PedCt2NUMITEMCOMPRA.AsString) <> '') then
  begin
    lbItemCompra.Enabled := True;
    mmItemCompra.Enabled := True;
  end
  else
  begin
    lbItemCompra.Enabled := False;
    mmItemCompra.Enabled := False;
  end;

end;

procedure TfmManImpCtaNovoSemDesc_Red.QuickRep1Preview(Sender: TObject);
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

procedure TfmManImpCtaNovoSemDesc_Red.PedCt2CalcFields(DataSet: TDataSet);
begin
  if PedCt2QTPRE2.AsFloat > 0 then
    PedCt2VALLIQTRB.AsFloat := fRound(PedCt2TOTITETRB.AsFloat / PedCt2QTPRE2.AsFloat, 2);
end;

procedure TfmManImpCtaNovoSemDesc_Red.FormCreate(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'print.bmp') then
    LogPrint.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'print.bmp');

  IMPMRC := FMManGdb.BuscaSimples('PEDPAR', 'IMPMRC', ' 1=1 ');
  flgEmail := False;

  QuickRep1.Zoom := 100;
end;

procedure TfmManImpCtaNovoSemDesc_Red.QRDBText9Print(sender: TObject;
  var Value: string);
begin
  Value := PedCtaCODCLI.AsString + ' - ' + Trim(Value);
end;

procedure TfmManImpCtaNovoSemDesc_Red.lb_MarcaPrint(sender: TObject;
  var Value: string);
begin
  lb_Marca.Enabled := trim(PedCt2NOMMRC.AsString) <> '';
  lb_Marca.Enabled := IMPMRC = 'Sim';
end;

procedure TfmManImpCtaNovoSemDesc_Red.edNomMRcPrint(sender: TObject;
  var Value: string);
begin
  edNomMRc.Enabled := trim(PedCt2NOMMRC.AsString) <> '';
  edNomMRc.Enabled := IMPMRC = 'Sim';
end;

procedure TfmManImpCtaNovoSemDesc_Red.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
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

procedure TfmManImpCtaNovoSemDesc_Red.QRDBText40Print(sender: TObject;
  var Value: string);
begin


  Value := 'CNPJ: ' + PedCtaCGCCli.AsString;
end;

procedure TfmManImpCtaNovoSemDesc_Red.QRDBText41Print(sender: TObject;
  var Value: string);
begin
  Value := 'I.E.: ' + Value;
end;

procedure TfmManImpCtaNovoSemDesc_Red.PedCtaAfterOpen(DataSet: TDataSet);
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
      PedCtaCGCCli.EditMask := '!999.999.999-99;1';
  end
  else
  begin
    if Length(Trim(PedCtaCGCCli.AsString)) > 14 then
      PedCtaCGCCli.EditMask := '99.999.999/9999-99;0'
    else
      PedCtaCGCCli.EditMask := '!999.999.999-99;1';
  end;
end;

procedure TfmManImpCtaNovoSemDesc_Red.QRDBText51Print(sender: TObject;
  var Value: string);
begin
  Value := fmManGdb.BuscaSimples('', 'FRT', '', 'select (CAST(ID as CHAR(1)) ||'' - ''|| DESCFRT) FRT FROM TIPFRT WHERE ID = ' + Value);
end;

procedure TfmManImpCtaNovoSemDesc_Red.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  if not (pedct2.FieldByName('qtdatendida').AsInteger > 0) then
  begin
    QRLabel17.Caption := 'Quantidade';
    QRDBText39.DataField := 'QTPRE2';
    //lbQtd.Caption := 'Qtd.Atendida';
  end
  else
  begin
    QRLabel17.Caption := 'Qtd. Falta';
    QRDBText39.DataField := 'qtdatendida';
    //lbQtd.Caption := 'Qtd. Falta';
  end;
end;

procedure TfmManImpCtaNovoSemDesc_Red.QRDBText13Print(sender: TObject;
  var Value: String);
begin
   value := copy(PedCta.FieldbyName('CEPCLI').AsString, 1, 5) + '-' + copy(PedCta.FieldbyName('CEPCLI').AsString, 6, 3)
end;

procedure TfmManImpCtaNovoSemDesc_Red.bandSumarioBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
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

