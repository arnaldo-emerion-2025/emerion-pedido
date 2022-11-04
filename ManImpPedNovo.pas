unit ManImpPedNovo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QRPDFFilt, Db, DBTables, Wwquery, QRCtrls, QuickRpt, ExtCtrls, QRPrntr,
  StdCtrls, Mask, DBCtrls;

type
  TfmManImpPedNovo = class(TForm)
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
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResHRERES: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    PedResPEDANT: TStringField;
    PedResQTIRES: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResLANEST: TStringField;
    PedResCODFIL: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResCODTIP: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResCODATD: TIntegerField;
    PedResTOTRES: TFloatField;
    PedResTOTSUB: TFloatField;
    PedResTOTGER: TFloatField;
    PedResTOTCST: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResMEDACR: TFloatField;
    PedResTOTACR: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResMEDDCO: TFloatField;
    PedResTOTDCO: TFloatField;
    PedResDSCREG: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDGER: TFloatField;
    PedResTOTREN: TFloatField;
    PedResUSUREJ: TIntegerField;
    PedResFLGOCO: TStringField;
    PedResFLGIMP: TStringField;
    PedResATUEST: TStringField;
    PedResSITRES: TStringField;
    PedResNOMCLI: TStringField;
    PedRe2CLSIPI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResCEPCLI: TStringField;
    PedResAPEVEN: TStringField;
    PedResAPEATD: TStringField;
    PedResFLGFEC: TStringField;
    PedResNOMEMP: TStringField;
    PedResENDENT: TMemoField;
    PedResEND1: TMemoField;
    PedResEND2: TMemoField;
    PedResFONE: TStringField;
    PedResEMAEMP: TStringField;
    PedResWEBEMP: TStringField;
    PEDRE3: TwwQuery;
    PEDRE3SEQRE3: TIntegerField;
    PEDRE3PRARE3: TIntegerField;
    PEDRE3VENC: TDateTimeField;
    PEDRE3VLPRE3: TFloatField;
    PedResNOMTRA: TStringField;
    PedResCIDTRA: TStringField;
    PedResFONETRA: TStringField;
    PedResENDTRA: TMemoField;
    PedResCGCTRA: TStringField;
    PedResUFETRA: TStringField;
    PedResCEPTRA: TStringField;
    PedResINSCLI: TStringField;
    PedRe2TOTDSR: TFloatField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape3: TQRShape;
    qSubDetalhe: TQRSubDetail;
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
    QRDBText21: TQRDBText;
    bandSumario: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    mmVenc: TQRMemo;
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
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRBand2: TQRBand;
    QRShape6: TQRShape;
    QRSysData2: TQRSysData;
    mmOBS: TQRDBText;
    QRLabel41: TQRLabel;
    PedResOBSRES: TStringField;
    mmObsRe2: TQRDBText;
    PedRe2OBSRE2: TStringField;
    lbPedCompra: TQRLabel;
    mmPedCompra: TQRDBText;
    lbItemCompra: TQRLabel;
    mmItemCompra: TQRDBText;
    PedRe2NUMPEDCOMPRA: TStringField;
    PedRe2NUMITEMCOMPRA: TIntegerField;
    QRLabel42: TQRLabel;
    QRDBText29: TQRDBText;
    PedResTOTFRT: TFloatField;
    PedResTOTSEG: TFloatField;
    PedResTOTOUTDESP: TFloatField;
    PedResTOTDESPESA: TFloatField;
    PedRe2TOTFRT: TFloatField;
    PedRe2TOTSEG: TFloatField;
    PedRe2TOTOUTDESP: TFloatField;
    PedRe2TOTDESPESA: TFloatField;
    QRDBText30: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText32: TQRDBText;
    PedResEMAVEN: TStringField;
    PedResTELEFONE: TMemoField;
    PedRe2VALLIQTRB: TFloatField;
    PedRe2TOTITETRB: TFloatField;
    QRLabel45: TQRLabel;
    QRDBText50: TQRDBText;
    LogPrint: TQRImage;
    lbMarkup: TQRLabel;
    edMarkup: TQRDBText;
    lbCusto: TQRLabel;
    edCusto: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    PedResCGCEMP: TStringField;
    PedResINSEMP: TStringField;
    QRDBText53: TQRDBText;
    QRLabel46: TQRLabel;
    PedResID_FRETE: TIntegerField;
    QRLabel47: TQRLabel;
    QRDBText54: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText55: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText58: TQRDBText;
    QRShape7: TQRShape;
    QRDBText59: TQRDBText;
    QRLabel52: TQRLabel;
    PedResTOTICM: TFloatField;
    procedure qSubDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure PedRe2CalcFields(DataSet: TDataSet);
    procedure QRDBText9Print(sender: TObject; var Value: string);
    procedure QRDBText50Print(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText51Print(sender: TObject; var Value: string);
    procedure QRDBText52Print(sender: TObject; var Value: string);
    procedure QRDBText53Print(sender: TObject; var Value: String);
    procedure QRDBText33Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    function SavePDF(Path: string): boolean;
    procedure PreviewPerson(Sender: TObject);
  public
    { Public declarations }
    function ShowModal(Numres: integer): integer;
    function EnviaEmail(Numres: integer): Boolean;
  end;

var
  fmManImpPedNovo: TfmManImpPedNovo;

implementation

uses ManGDB, ufrmPreview, bbfuncao;

{$R *.DFM}

function TfmManImpPedNovo.ShowModal(Numres: integer): integer;
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

  mmVenc.Lines.Clear;
  mmValor.Lines.Clear;

  
  if(FmManGdb.BuscaSimples('PEDPAR', 'IMP_PARCELA_PEDIDO', ' 1 = 1') = '1') then
     begin
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

  {  mmVenc.Height := (mmVenc.Height - 1) * pedre3.RecordCount;
    mmValor.Height := mmVenc.Height;

    bandSumario.Height := bandSumario.Height + mmVenc.Height;}

  QuickRep1.PreviewWidth := Screen.Width - 2;
  QuickRep1.PreviewHeight := Screen.Height - 2;
  QuickRep1.PrevInitialZoom := qrZoomToWidth; //qrZoomOther;
  QuickRep1.Zoom := 100;
  //QuickRep1.Prepare;

  QuickRep1.PreviewModal;

  if messagebox(handle, 'Deseja enviar pedido de venda por email?', 'Pedido de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
    EnviaEmail(Numres);

  Self.Close;
end;

function TfmManImpPedNovo.EnviaEmail(Numres: integer): Boolean;
var
  strPDF: string;
  strNomCli, strEmailCli, IdCli: string;
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

  lbMarkup.Enabled := False;
  edMarkup.Enabled := False;

  lbCusto.Enabled := False;
  edCusto.Enabled := False;

  QuickRep1.Prepare;

  IdCli := FmManGdb.BuscaSimples('PEDRES', 'CODCLI', ' NUMRES = ' + inttostr(NUMRES));
  strNomCli := FmManGdb.BuscaSimples('Fincli', 'APECLI', ' CODCLI = ' + IdCli);
  strEmailCli := FmManGdb.BuscaSimples('Fincli', 'EM1CLI', ' CODCLI = ' + IdCli);

  strPDF := ExtractFilePath(Application.exename) + '\PedidoVenda ' + inttostr(numres) + '.pdf';

  if SavePDF(strPDF) then
  begin
    try

      SendMailMAPI('Pedido de venda ' + inttostr(numres), 'Segue em anexo pedido de venda ' + inttostr(numres), strPDF, GUsu_Nm, GUsu_Ema, strNomCli,
        strEmailCli);
    finally
      DeleteFile(strPDF);
    end;

  end
  else
    showmessage('Arquivo para envio não encontrado');

  Self.Close;

end;

function TfmManImpPedNovo.SavePDF(Path: string): boolean;
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

procedure TfmManImpPedNovo.qSubDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (trim(PedRe2OBSRE2.AsString) <> '') or (trim(PedRe2NUMPEDCOMPRA.AsString) <> '') or (trim(PedRe2NUMITEMCOMPRA.AsString) <> '') then
  begin
    qSubDetalhe.Height := 31;
    mmObsRe2.Enabled := True;
    lbPedCompra.Enabled := True;
    mmPedCompra.Enabled := True;
    lbItemCompra.Enabled := True;
    mmItemCompra.Enabled := True;
  end
  else
  begin
    qSubDetalhe.Height := 17;
    mmObsRe2.Enabled := False;
    lbPedCompra.Enabled := False;
    mmPedCompra.Enabled := False;
    lbItemCompra.Enabled := False;
    mmItemCompra.Enabled := False;
  end;

end;

procedure TfmManImpPedNovo.PreviewPerson(Sender: TObject);
begin
  FrmPreview.showmodal;
end;

procedure TfmManImpPedNovo.FormCreate(Sender: TObject);
begin
  //QuickRep1.onpreview:=PreviewPerson(QuickRep1);

  if FileExists(ExtractFilePath(Application.ExeName) + 'print.bmp') then
    LogPrint.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'print.bmp');

end;

procedure TfmManImpPedNovo.QuickRep1Preview(Sender: TObject);
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

procedure TfmManImpPedNovo.PedRe2CalcFields(DataSet: TDataSet);
begin
  if PedRe2QTPRE2.AsFloat > 0 then
    PedRe2VALLIQTRB.AsFloat := fRound(PedRe2TOTITETRB.AsFloat / PedRe2QTPRE2.AsFloat, 2);
end;

procedure TfmManImpPedNovo.QRDBText9Print(sender: TObject;
  var Value: string);
begin
  Value := PedResCODCLI.AsString + ' - ' + Trim(Value);
end;

procedure TfmManImpPedNovo.QRDBText50Print(sender: TObject;
  var Value: string);
begin
  Value := Value;
end;

procedure TfmManImpPedNovo.QuickRep1BeforePrint(Sender: TCustomQuickRep;
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

procedure TfmManImpPedNovo.QRDBText51Print(sender: TObject;
  var Value: string);
begin
  Value := 'CNPJ: ' + Value;
end;

procedure TfmManImpPedNovo.QRDBText52Print(sender: TObject;
  var Value: string);
begin
  Value := 'I.E.: ' + Value;
end;

procedure TfmManImpPedNovo.QRDBText53Print(sender: TObject;
  var Value: String);
begin
Value := fmManGdb.BuscaSimples('', 'FRT', '', 'select (CAST(ID as CHAR(1)) ||'' - ''|| DESCFRT) FRT FROM TIPFRT WHERE ID = ' + ifthen(Value = '','-1',Value));
end;

procedure TfmManImpPedNovo.QRDBText33Print(sender: TObject;
  var Value: String);
var
   strAux: String;
begin
   if(FmManGdb.BuscaSimples('PEDPAR', 'SUPRIMIR_ZEROS', ' 1 = 1') = '1') then
      begin
         strAux := '';
         strAux := strAux + IntToStr(StrToInt(copy(Value,1,3))) + '.';
         strAux := strAux + IntToStr(StrToInt(copy(Value,5,4))) + '.';
         strAux := strAux + IntToStr(StrToInt(copy(Value,10,5)));
         Value := strAux;
      end;
end;

end.
