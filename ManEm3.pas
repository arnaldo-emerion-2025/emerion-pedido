unit ManEm3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManEm3 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppImagem: TRLImage;
    ppNomEmp: TRLMemo;
    ppEndEmp: TRLLabel;
    ppRefEmp: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    p2Titulo: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    ppNomCli: TRLLabel;
    ppNumCta: TRLLabel;
    ppCodCli: TRLLabel;
    ppCodVen: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    ppUfeCta: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel46: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpCt2: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel50: TRLLabel;
    ppObsCnd: TRLLabel;
    ppObsEnt: TRLLabel;
    ppObsVal: TRLLabel;
    ppObsCta: TRLMemo;
    ppTotIte: TRLLabel;
    PedCta: TwwQuery;
    PedCt2: TwwQuery;
    PedCtaCODEMP: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaNUMCTA: TIntegerField;
    PedCtaHRECTA: TStringField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODPFA: TStringField;
    PedCtaTIPPFA: TStringField;
    PedCtaUFECTA: TStringField;
    PedCtaQTICTA: TIntegerField;
    PedCtaSEQITE: TIntegerField;
    PedCtaCODCLI: TIntegerField;
    PedCtaNOMCLI: TStringField;
    PedCtaBASIPI: TFloatField;
    PedCtaTOTIPI: TFloatField;
    PedCtaBASICM: TFloatField;
    PedCtaTOTICM: TFloatField;
    PedCtaBASSUB: TFloatField;
    PedCtaTOTSUB: TFloatField;
    PedCtaTOTITE: TFloatField;
    PedCtaTOTREN: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCtaDSCREG: TFloatField;
    PedCtaDSCCOM: TFloatField;
    PedCtaMEDDCO: TFloatField;
    PedCtaMEDPRM: TFloatField;
    PedCtaMEDDSC: TFloatField;
    PedCtaMEDACR: TFloatField;
    PedCtaTOTDSC: TFloatField;
    PedCtaTOTDSR: TFloatField;
    PedCtaTOTDSP: TFloatField;
    PedCtaTOTACR: TFloatField;
    PedCtaTOTDCO: TFloatField;
    PedCtaTOTVEN: TFloatField;
    PedCtaTOTCST: TFloatField;
    PedCtaCODATD: TIntegerField;
    PedCtaCODUSU: TIntegerField;
    PedCtaCODFIL: TIntegerField;
    PedCtaLANEST: TStringField;
    PedCtaATUEST: TStringField;
    PedCtaINTFIN: TStringField;
    PedCtaFLGTAB: TStringField;
    PedCtaFLGCTB: TStringField;
    PedCtaSEQCTA: TStringField;
    PedCtaCONSUM: TStringField;
    PedCtaCODIPI: TStringField;
    PedCtaTIPIPI: TStringField;
    PedCtaTRBIPI: TStringField;
    PedCtaREDIPI: TFloatField;
    PedCtaBSCIPI: TFloatField;
    PedCtaCODICM: TStringField;
    PedCtaTIPICM: TStringField;
    PedCtaTRBICM: TStringField;
    PedCtaREDICM: TFloatField;
    PedCtaBSCICM: TFloatField;
    PedCtaINCREV: TFloatField;
    PedCtaINCFIN: TFloatField;
    PedCtaTXFIPI: TStringField;
    PedCtaTXFICM: TStringField;
    PedCtaEMPRES: TIntegerField;
    PedCtaDTERES: TDateTimeField;
    PedCtaNUMRES: TIntegerField;
    PedCtaOBSCND: TStringField;
    PedCtaOBSENT: TStringField;
    PedCtaOBSVAL: TStringField;
    PedCtaOBSCLI: TStringField;
    PedCtaOBSCTA: TMemoField;
    PedCtaSITCTA: TStringField;
    PedCtaFLGPSQ: TStringField;
    PedCtaFLGSLD: TStringField;
    PedCtaFLGOCO: TStringField;
    PedCtaCGCCLI: TStringField;
    PedCtaINSCLI: TStringField;
    PedCtaCLITAB: TStringField;
    PedCtaCODTCL: TIntegerField;
    PedCtaCODGCL: TIntegerField;
    DsMasterPedCta: TDataSource;
    RLLabel4: TRLLabel;
    DsPedCt2: TDataSource;
    DsPedCta: TDataSource;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    ppApeVen: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    ppObsCli: TRLLabel;
    quSql: TwwQuery;
    ppTelefone: TRLLabel;
    ppFax: TRLLabel;
    PedCt2CODEMP: TIntegerField;
    PedCt2DTECTA: TDateTimeField;
    PedCt2NUMCTA: TIntegerField;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    PedCt2DESCT2: TStringField;
    PedCt2OBSCT2: TStringField;
    PedCt2QTPCT2: TFloatField;
    PedCt2CODUND: TStringField;
    PedCt2VLUCT2: TFloatField;
    PedCt2DSCCT2: TFloatField;
    PedCt2VLQCT2: TFloatField;
    PedCt2ICMCT2: TFloatField;
    PedCt2TOTCT2: TFloatField;
    PedCt2TOTREN: TFloatField;
    PedCt2NOMMRC: TStringField;
    PedCt2NROCT2: TIntegerField;
    PedCt2TOTGE2: TFloatField;
    RLLabel3: TRLLabel;
    ppTotGer: TRLLabel;
    PedCt2IPICT2: TFloatField;
    RLLabel6: TRLLabel;
    RLLabel13: TRLLabel;
    ppCodAtd: TRLLabel;
    RLLabel15: TRLLabel;
    ppApeAtd: TRLLabel;
    PedCt2REFCT2: TStringField;
    ppDesCt2: TRLLabel;
    ppCodIte: TRLLabel;
    RLLabel1: TRLLabel;
    PedCt2REFPRO: TStringField;
    lblObs: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    GImpRef: string;
  public
    { Public declarations }
  end;

var
  fmManEm3: TfmManEm3;

implementation

uses Bbgeral, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManEm3.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManEm3.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if FileExists('C:\Emerion\Print.bmp') then
    ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
    ppImagem.Picture.Bitmap.FreeImage;

  ppNomEmp.Lines.Clear;
  ppNomEmp.Lines.Add(GRazEmp);
  ppNomEmp.Lines.Add('CNPJ ' + GCgcEmp);
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

  if Trim(GFonUsu) <> '' then
    ppTeleFone.Caption := 'Telefone ' + GFonUsu
  else
    ppTeleFone.Caption := ' ';

  if Trim(GFaxUsu) <> '' then
    ppFax.Caption := 'Fax ' + GFaxUsu
  else
    ppFax.Caption := ' ';

  ppNumCta.Caption := IntToStr(PedCtaNumCta.Value);

  ppObsCli.Caption := PedCtaObsCli.Value;

  if PedCtaCodCli.Value > 0 then
    ppCodCli.Caption := IntToStr(PedCtaCodCli.Value)
  else
    ppCodCli.Caption := ' ';

  ppNomCli.Caption := PedCtaNomCli.Value;
  ppUfeCta.Caption := PedCtaUfeCta.Value;

  if PedCtaCodVen.Value > 0 then
    ppCodVen.Caption := IntToStr(PedCtaCodVen.Value)
  else
    ppCodVen.Caption := ' ';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select ApeVen From FinVen Where CodVen = ''' + IntToStr(PedCtaCodVen.Value) + '''';
    Open;

    ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  if PedCtaCodAtd.Value > 0 then
  begin

    ppCodAtd.Caption := IntToStr(PedCtaCodAtd.Value);

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select ApeVen From FinVen Where CodVen = ''' + IntToStr(PedCtaCodAtd.Value) + '''';
      Open;

      ppApeAtd.Caption := FieldbyName('ApeVen').AsString;

    end;

  end
  else
  begin

    ppCodAtd.Caption := ' ';
    ppApeAtd.Caption := ' ';

  end;
end;

procedure TfmManEm3.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppObsCnd.Caption := PedCtaObsCnd.Value;
  ppObsEnt.Caption := PedCtaObsEnt.Value;
  ppObsVal.Caption := PedCtaObsVal.Value;

  ppObsCta.Lines.Clear;

  ppObsCta.Lines.Add(PedCtaObsCta.Value);

  ppTotIte.Caption := FormatFloat('###,###,##0.00', PedCtaTotIte.Value);
  ppTotGer.Caption := FormatFloat('###,###,##0.00', PedCtaTotGer.Value);

end;

procedure TfmManEm3.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  verificador: string;
begin

  if Length(Trim(PedCt2NomMrc.Value)) > 1 then
    ppCodIte.Caption := fNumZeros(IntToStr(PedCt2NroCt2.Value), 3) + ' ' + PedCt2CodGru.Value + '.' + PedCt2CodSub.Value + '.' + PedCt2CodPro.Value
  else
    ppCodIte.Caption := fNumZeros(IntToStr(PedCt2NroCt2.Value), 3) + ' ' + PedCt2CodGru.Value + '.' + PedCt2CodSub.Value + '.' + PedCt2CodPro.Value;

  ppDesCt2.Caption := copy(Trim(PedCt2DesCt2.Value), 1, 70);

  verificador := FmManGdb.BuscaSimples('PEDPAR', 'IMPMRC', '1=1');

  if (verificador = 'Sim') then
    ppCodIte.Caption := ppCodIte.Caption + '.' + PedCt2NomMrc.Value;

  verificador := fmManGDB.BuscaSimples('PEDPAR', 'REFINT', '1=1');

  verificador := fmManGDB.BuscaSimples('PEDPAR', 'REFINT', '1=1');

  case StrToInt(verificador) of
    0: lblObs.Caption := 'Ref. Int.: ' + PedCt2REFPRO.AsString;
    1: lblObs.Caption := PedCt2OBSCT2.AsString;
  end;

end;

procedure TfmManEm3.FormCreate(Sender: TObject);
begin
  with quSQL, SQL do
  begin

    Close;
    Text := ' Select ImpRef,UsaDec From PedPar';
    Open;

    GImpRef := FieldByName('ImpRef').AsString;

    if FieldbyName('UsaDec').AsString = 'Sim' then
    begin

      PedCt2QtpCt2.DisplayFormat := '###,###,##0.0000';

      ppQtpCt2.DisplayMask := '###,###,##0.0000';

    end
    else
    begin

      PedCt2QtpCt2.DisplayFormat := '###,###,##0';

      ppQtpCt2.DisplayMask := '###,###,##0';

    end;
  end;
end;

end.
