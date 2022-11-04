unit EmaPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLXLSFilter;

type
  TfmEmaPed = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppImagem: TRLImage;
    ppApeEmp: TRLLabel;
    ppNomEmp: TRLLabel;
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
    ppEndEn1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand4: TRLBand;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedRe2: TwwQuery;
    DsMasterPedRes: TDataSource;
    DsPedRe2: TDataSource;
    DsPedRes: TDataSource;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    quSql: TwwQuery;
    ppTelefone: TRLLabel;
    ppFax: TRLLabel;
    ppNumRes: TRLDBText;
    ppCodVen: TRLDBText;
    ppCodCli: TRLDBText;
    ppEndEn2: TRLLabel;
    RLLabel6: TRLLabel;
    ppNomVen: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    PedRes: TwwQuery;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    RLLabel15: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand5: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpRe2: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe2: TRLDBText;
    ppVlqRe2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel50: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel20: TRLLabel;
    ppTexto2: TRLMemo;
    RLLabel21: TRLLabel;
    ppTexto3: TRLMemo;
    RLBand6: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    ppEndTr1: TRLLabel;
    ppEndTr2: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel30: TRLLabel;
    ppPraMed: TRLLabel;
    ppEndTr4: TRLLabel;
    ppEndTr3: TRLLabel;
    ppTotGer: TRLLabel;
    ppQtiRes: TRLLabel;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResREFCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResCEPCLI: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2OBSRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2CODUND: TStringField;
    PedRe2VLQRE2: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRe2NRORE2: TIntegerField;
    PedResQTIRES: TIntegerField;
    PedResTOTGER: TFloatField;
    PedResUFECLI: TStringField;
    PedResQTPRES: TIntegerField;
    PedResCODTRA: TIntegerField;
    ppDteFat: TRLDBText;
    PedResDTFRES: TDateTimeField;
    PedRe2NUMPRO: TStringField;
    ppCodPro: TRLLabel;
    ppObsEn2: TRLLabel;
    ppDesEn2: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PraMed: real;
  fmEmaPed: TfmEmaPed;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmEmaPed.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmEmaPed.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if FileExists('C:\Emerion\Print.bmp') then
    ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
    ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
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

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select ApeVen From FinVen Where FinVen.CodVen = ''' + IntToStr(PedResCodVen.Value) + '''';
    Open;

    ppNomVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomCli From FinCli Where FinCli.CodCli = ''' + IntToStr(PedResCodCli.Value) + '''';
    Open;

    ppNomCli.Caption := FieldbyName('NomCli').AsString;

  end;

  ppEndEn1.Caption := Trim(PedResTenCli.Value) + '. ' + Trim(PedResEndCli.Value) + ' N. ' + Trim(PedResNumCli.Value) + ' B. ' + Trim(PedResBaiCli.Value);

  ppEndEn2.Caption := 'Cidade ' + Trim(PedResCidCli.Value) + ' UF ' + PedResUfeCli.Value + ' Cep: ' + copy(PedResCepCli.Value, 1, 5) + '-' +
    copy(PedResCepCli.Value, 6, 3);

end;

procedure TfmEmaPed.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select * From PedRe3' +
      ' Where PedRe3.CodEmp = :CodEmp' +
      '   and PedRe3.DteRes = :DteRes' +
      '   and PedRe3.NumRes = :NumRes' +
      ' Order by PedRe3.NroRe3';

    with Params do
    begin

      Params[0].AsInteger := PedResCodEmp.Value;
      Params[1].AsDateTime := PedResDteRes.Value;
      Params[2].AsInteger := PedResNumRes.Value;

    end;

    Open;
    First;

  end;

  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;

  PraMed := 0;

  while not quSQL.Eof do
  begin

    ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyyy', PedResDtfRes.Value + quSql.FieldbyName('PraRe3').AsFloat));
    ppTexto3.Lines.Add(FormatFloat('###,###,##0.00', quSql.FieldbyName('VlpRe3').AsFloat));

    PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

    quSql.Next;

  end;

  if PedResQtpRes.Value > 0 then
    PraMed := PraMed / StrToFloat(IntToStr(PedResQtpRes.Value))
  else
    PraMed := 0;

end;

procedure TfmEmaPed.RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppPraMed.Caption := FormatFloat('##0.00', PraMed) + ' Dias';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select * From FinTra Where FinTra.CodTra = :CodTra';

    with Params do
    begin

      Params[0].AsInteger := PedResCodTra.Value;

    end;

    Open;

    ppEndTr1.Caption := FieldbyName('NomTra').AsString;

    ppEndTr2.Caption := Trim(FieldbyName('TenTra').AsString) + ' ' + Trim(FieldbyName('EndTra').AsString) + ' N. ' +
      Trim(FieldbyName('NumTra').AsString) + ' B. ' + Trim(FieldbyName('BaiTra').AsString);

    ppEndTr3.Caption := 'Cidade ' + Trim(FieldbyName('CidTra').AsString) + ' UF ' + FieldbyName('SigUfe').AsString + ' Cep: ' +
      copy(FieldbyName('CepTra').AsString, 1, 5) + '-' + copy(FieldbyName('CepTra').AsString, 6, 3);

    ppEndTr4.Caption := 'TeleFone ' + '(' + Trim(FieldbyName('PrtTra').AsString) + ') ' + Trim(FieldbyName('FonTra').AsString);

  end;
end;

procedure TfmEmaPed.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppCodPro.Caption := PedRe2DesRe2.Value;

  ppDesEn2.Caption := PedRe2CodGru.Value + '.' + PedRe2CodSub.Value + '.' + PedRe2CodPro.Value;

  ppObsEn2.Caption := PedRe2NumPro.Value;

end;

procedure TfmEmaPed.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppTotGer.Caption := FormatFloat('###,###,##0.00', PedResTotGer.Value);

  ppQtiRes.Caption := IntToStr(PedResQtiRes.Value);

end;

end.
