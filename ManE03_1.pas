unit ManE03_1;

interface

uses
  Wwquery, RLXLSFilter, Db, DBTables, RLPDFFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLPreviewForm, RLReport, Classes, Controls, Windows, Messages,
  SysUtils, Forms, Dialogs, Provider, Wwdatsrc, math, QuickRpt, QRCtrls;

type
  TfmManE03_1 = class(TForm)
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedCt2: TQuery;
    DsPedCt2: TDataSource;
    DsPedCta: TDataSource;
    quSql: TQuery;
    PedCta: TQuery;
    RLXLSFilter1: TRLXLSFilter;
    PedPar: TwwQuery;
    PedParEXIREN: TStringField;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    PedCt2CODCLP: TStringField;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    PedCt2DESCT2: TStringField;
    PedCt2VLQCT2: TFloatField;
    PedCt2QTPCT2: TFloatField;
    PedCt2CODUND: TStringField;
    PedCt2ICMCT2: TFloatField;
    PedCt2CLSIPI: TStringField;
    PedCt2IPICT2: TFloatField;
    PedCt2TOTGE2: TFloatField;
    PedCt2NROCT2: TIntegerField;
    PedCt2CODITE: TStringField;
    PedCt2TRBSUB: TStringField;
    PedCt2MRGSUB: TFloatField;
    PedCt2OBSCT2: TStringField;
    PedCt2CODST2: TStringField;
    PedCt2ICMSUB: TFloatField;
    PedCt2TOTSUB: TFloatField;
    PedCt2TOTIPI: TFloatField;
    PedCt2TOTICM: TFloatField;
    PedCt2FLGQTD: TIntegerField;
    PedCt2QTDEST: TFloatField;
    PedCt2QTDATENDIDA: TFloatField;
    PedCt2TOTCT2: TFloatField;
    PedCt2VLUCT2: TFloatField;
    PedCtaID_PEDCTA: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaCODCLI: TIntegerField;
    PedCtaNOMCLI: TStringField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODATD: TIntegerField;
    PedCtaTOTITE: TFloatField;
    PedCtaTOTIPI: TFloatField;
    PedCtaTOTSUB: TFloatField;
    PedCtaTOTDSR: TFloatField;
    PedCtaTOTDSP: TFloatField;
    PedCtaTOTCST: TFloatField;
    PedCtaTOTREN: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCtaMEDDSC: TFloatField;
    PedCtaTOTDSC: TFloatField;
    PedCtaDSCREG: TFloatField;
    PedCtaOBSCTA: TMemoField;
    PedCtaOBSENT: TStringField;
    PedCtaOBSVAL: TStringField;
    PedCtaSITCTA: TStringField;
    PedCtaTOTICMS_ITEM: TFloatField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppNomEmp: TRLLabel;
    ppCodVen: TRLDBText;
    RLDBText1: TRLDBText;
    ppImagem: TRLImage;
    ppEndEmp: TRLLabel;
    ppCepEmp: TRLLabel;
    ppCidEmp: TRLLabel;
    ppUfeEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    ppFaxEmp: TRLLabel;
    ppWebEmp: TRLLabel;
    ppEmaEmp: TRLLabel;
    RLDraw14: TRLDraw;
    ppPedido: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel93: TRLLabel;
    RLLabel94: TRLLabel;
    ppFonVen: TRLLabel;
    RLLabel96: TRLLabel;
    ppEmaVen: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel109: TRLLabel;
    ppApeVen: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel63: TRLLabel;
    ppCodCli: TRLDBText;
    ppNomCli: TRLLabel;
    ppFonCli: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel62: TRLLabel;
    ppCgcCli: TRLLabel;
    ppEmaCli: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel1: TRLLabel;
    EdOb1Cta: TRLDBText;
    RLDraw8: TRLDraw;
    RLLabel9: TRLLabel;
    ppObsVal: TRLDBText;
    RLLabel10: TRLLabel;
    ppObsEnt: TRLDBText;
    RLGroup1: TRLGroup;
    RLDraw2: TRLDraw;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpCt2: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe2: TRLDBText;
    ppDesCt2: TRLDBText;
    ppVlqCt2: TRLDBText;
    ppNroCt2: TRLDBText;
    ppIpiCt2: TRLDBText;
    ppIcmCt2: TRLDBText;
    RLDraw5: TRLDraw;
    ppCodIte: TRLDBText;
    ppClsIpi: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand7: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    lbQtd: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel32: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel42: TRLLabel;
    lbSaldo: TRLLabel;
    RLBand5: TRLBand;
    RLLabel47: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel49: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw13: TRLDraw;
    RLMemo4: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo1: TRLMemo;
    lbCnpj: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText8: TRLDBText;
    PEDCT3: TwwQuery;
    PEDCT3NROCT3: TIntegerField;
    PEDCT3PRACT3: TIntegerField;
    PEDCT3VENC: TDateTimeField;
    PEDCT3VLPCT3: TFloatField;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    rlVenc: TRLMemo;
    rlValor: TRLMemo;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLDBText2BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure RLDBText3BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure RLDBText4BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure RLDBText8BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure RLDBText6BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure ppTotGe2BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure RLDBText9BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure RLDBText11BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure RLDBText12BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure ppCodIteBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    PraMed: real;
    vlripi, vlricm, vlrsub, vlrite: Double;
    totipi, toticm, totsub, totite: Double;
    qtdItens : integer;

    totFalta: real;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE03_1: TfmManE03_1;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

{$R *.DFM}

procedure TfmManE03_1.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE03_1.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if FileExists('C:\Emerion\Print.bmp') then
    ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
    ppImagem.Picture.Bitmap.FreeImage;

  ppNomEmp.Caption := Trim(GRazEmp);
  ppEndEmp.Caption := Trim(GEndEmp);
  ppCepEmp.Caption := 'CEP. ' + Trim(GCepEmp);

  ppCidEmp.Caption := 'MUNICIPIO ' + Trim(GCidEmp);

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select GerUfe.NomUfe From GerUfe Where GerUfe.SigUfe = ' + Quotedstr(GUfeEmp);
    Open;

    ppUfeEmp.Caption := 'ESTADO ' + Trim(FieldbyName('NomUfe').AsString);

  end;

  ppFonEmp.Caption := 'FONE: ' + Trim(GFonEmp);
  ppFaxEmp.Caption := 'FAX: ' + Trim(GFaxEmp);

  ppWebEmp.Caption := 'http://' + Trim(GWebEmp);
  ppEmaEmp.Caption := 'e-mail: ' + Trim(GEmaEmp);
  lbCnpj.Caption := 'CNPJ: '+ GCgcEmp;

  ppPedido.Caption := 'COTAÇÃO No. ' + fNumZeros(IntToStr(PedCtaId_PedCta.Value), 6);

  if PedCtaCodCli.Value > 0 then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCli.NomCli,' +
        '        FinCli.CgcCli,' +
        '        FinCli.Pt3Cli,' +
        '        FinCli.Fo3Cli,' +
        '        FinCli.Em1Cli ' +
        ' From FinCli' +
        ' Where FinCli.CodCli = ' + QuotedStr(IntToStr(PedCtaCodCli.Value));
      Open;

      ppNomCli.Caption := Trim(FieldbyName('NomCli').AsString);
      ppCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);
      ppEmaCli.Caption := Trim(FieldbyName('Em1Cli').AsString);

      if Trim(FieldbyName('Pt3Cli').AsString) <> '' then
        ppFonCli.Caption := '(' + Trim(FieldbyName('Pt3Cli').AsString) + ') ' + Trim(FieldbyName('Fo3Cli').AsString)
      else
        ppFonCli.Caption := Trim(FieldbyName('Fo3Cli').AsString);

    end;

  end
  else
  begin

    ppNomCli.Caption := '';
    ppCgcCli.Caption := '';
    ppEmaCli.Caption := '';
    ppFonCli.Caption := '';

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(IntToStr(PedCtaCodVen.Value));
    Open;

    ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select GerUsu.EmaUsu,' +
      '        GerUsu.PrtUsu,' +
      '        GerUsu.FonUsu ' +
      ' From GerUsu' +
      ' Where GerUsu.CodVen = ' + QuotedStr(IntToStr(PedCtaCodVen.Value));
    Open;

    if Trim(FieldbyName('PrtUsu').AsString) <> '' then
      ppFonVen.Caption := '(' + Trim(FieldbyName('PrtUsu').AsString) + ') ' + Trim(FieldbyName('FonUsu').AsString)
    else
      ppFonVen.Caption := Trim(FieldbyName('FonUsu').AsString);

    ppEmaVen.Caption := Trim(FieldbyName('EmaUsu').AsString);

  end;

  if PedCtaCodAtd.Value > 0 then
  begin

    if Trim(PedParTipAtd.Value) = 'Atendente' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = ' + QuotedStr(IntToStr(PedCtaCodAtd.Value));
        Open;

        //ppApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select GerUsu.EmaUsu,' +
          '        GerUsu.PrtUsu,' +
          '        GerUsu.FonUsu ' +
          ' From GerUsu' +
          ' Where GerUsu.CodAtd = ' + QuotedStr(IntToStr(PedCtaCodAtd.Value));
        Open;

        {if Trim(FieldbyName('PrtUsu').AsString) <> '' then
          ppFonAtd.Caption := '(' + Trim(FieldbyName('PrtUsu').AsString) + ') ' + Trim(FieldbyName('FonUsu').AsString)
        else
          ppFonAtd.Caption := Trim(FieldbyName('FonUsu').AsString);

        ppEmaAtd.Caption := Trim(FieldbyName('EmaUsu').AsString); }

      end;

    end
    else
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(IntToStr(PedCtaCodAtd.Value));
        Open;

        //ppApeAtd.Caption := FieldbyName('ApeVen').AsString;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select GerUsu.EmaUsu,' +
          '        GerUsu.PrtUsu,' +
          '        GerUsu.FonUsu ' +
          ' From GerUsu' +
          ' Where GerUsu.CodVen = ' + QuotedStr(IntToStr(PedCtaCodAtd.Value));
        Open;

        {if Trim(FieldbyName('PrtUsu').AsString) <> '' then
          ppFonAtd.Caption := '(' + Trim(FieldbyName('PrtUsu').AsString) + ') ' + Trim(FieldbyName('FonUsu').AsString)
        else
          ppFonAtd.Caption := Trim(FieldbyName('FonUsu').AsString);

        ppEmaAtd.Caption := Trim(FieldbyName('EmaUsu').AsString);}

      end;
    end;

  end
  else
  begin

    {ppApeAtd.Caption := '';
    ppFonAtd.Caption := '';
    ppEmaAtd.Caption := ''; }

  end;
end;

procedure TfmManE03_1.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  {if PedCtaTotCli.Value > 0 then
  begin

    RLLabel71.Visible := True;

    ppTotCli.Visible := True;
    ppPerCli.Visible := True;

  end; }

  RLMemo1.Lines.Clear;
  RLMemo3.Lines.Clear;
  RLMemo4.Lines.Clear;

  RLMemo1.Lines.Add('Qtde de Itens');
  RLMemo3.Lines.Add(IntToStr(qtdItens) + '        ');
  RLMemo4.Lines.Add('');

end;

procedure TfmManE03_1.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if PedParUsaDec.Value = 'Nao' then
    PedCt2QtpCt2.DisplayFormat := '###,###,##0';

  qtdItens := 0;

end;

procedure TfmManE03_1.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if pedct2FLGQTD.AsInteger = 1 then
  begin
    lbSaldo.Caption := 'Saldo disponível';
    lbQtd.Caption := 'Qtd.Atendida';
  end
  else
  begin
    lbSaldo.Caption := 'Falta no Pedido';
    lbQtd.Caption := 'Qtd. Falta';

    //totFalta := totFalta + PedCt2TOTGE2.AsFloat;

  end;
end;

procedure TfmManE03_1.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  vlripi := (PedCt2VLQCt2.AsFloat * abs(PedCt2QTDATENDIDA.AsFloat)) * (PedCt2IPICT2.AsFloat / 100);
  vlricm := (PedCt2VLQCt2.AsFloat * abs(PedCt2QTDATENDIDA.AsFloat)) * (PedCt2ICMCT2.AsFloat / 100);

  if (pedct2codst2.AsString <> '00') and (pedct2codst2.AsString <> '60') and (pedct2codst2.AsString <> '40') and (pedct2codst2.AsString <> '41') and
    (pedct2codst2.AsString <> '50') and (pedct2codst2.AsString <> '51') then
    vlrsub := (((((PedCt2VLQCt2.AsFloat * abs(PedCt2QTDATENDIDA.AsFloat)) + vlripi) * (1 + (pedct2MrgSub.AsFloat / 100))) * (PedCt2ICMSUB.AsFloat / 100)) -
      vlricm)
  else
    vlrsub := 0;

  if (vlrsub < 0) then
    vlrsub := 0;
  vlrite := (PedCt2VLQCt2.AsFloat * abs(PedCt2QTDATENDIDA.AsFloat));

  if PedCt2FLGQTD.AsInteger = 1 then
  begin
    totipi := vlripi + totipi;
    toticm := vlricm + toticm;
    totsub := vlrsub + totsub;
    totite := vlrite + totite;

  end;
  inc(qtdItens);

end;

procedure TfmManE03_1.FormCreate(Sender: TObject);
begin
  totipi := 0;
  toticm := 0;
  totsub := 0;
  totite := 0;

  vlripi := 0;
  vlricm := 0;
  vlrsub := 0;
  vlrite := 0;

  totFalta := 0;
end;

procedure TfmManE03_1.RLDBText2BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', totite);
end;

procedure TfmManE03_1.RLDBText3BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', totipi);
end;

procedure TfmManE03_1.RLDBText4BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', totSub);
end;

procedure TfmManE03_1.RLDBText8BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', totIcm);
end;

procedure TfmManE03_1.RLDBText6BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', ((totite + totipi + totsub) - PedCtaTOTDSR.AsFloat));
end;

procedure TfmManE03_1.ppTotGe2BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', ((vlrite + vlripi + vlrsub)));
end;

procedure TfmManE03_1.RLDBText9BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', vlrSub);
end;

procedure TfmManE03_1.RLDBText11BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', vlripi);
end;

procedure TfmManE03_1.RLDBText12BeforePrint(Sender: TObject;
  var Text: string; var PrintIt: Boolean);
begin
  Text := formatFloat('#,##0.00', vlricm);
end;

procedure TfmManE03_1.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
   vlrTot, vlrParc: double;
   QtdReg: integer;
   aux  : double;
   acumula : String;
begin

  PEDCT3.Active := False;
  PEDCT3.Active := True;

  PEDCT3.Last;
  PEDCT3.First;

  rlVenc.Lines.clear;
  rlValor.Lines.clear;

  acumula := fmManGDB.BuscaSimples('PEDPAR','FLG_ACUMULA_IMP', ' 1 = 1');

  if (UpperCase(acumula) = 'SIM') then
     vlrTot := totIte
  else
     vlrTot := ((totite + totipi + totsub) - PedCtaTOTDSR.AsFloat);

  if PEDCT3.RecordCount > 0 then
    vlrParc := vlrTot / PEDCT3.RecordCount
  else
    vlrParc := vlrTot;

  QtdReg := 0;

  if vlrTot > 0 then
  begin

    while not PEDCT3.Eof do
    begin

      if PEDCT3.FieldbyName('VlpCt3').AsFloat > 0 then
      begin

        rlVenc.Lines.Add(PEDCT3.FieldbyName('PraCt3').AsString);

        if ((UpperCase(acumula) = 'SIM') and (QtdReg = 0)) then
          rlValor.Lines.Add(FormatFloat('###,###,##0.00', vlrParc + totipi + totsub))
        else
          rlValor.Lines.Add(FormatFloat('###,###,##0.00', vlrParc));
          //rlValor.Lines.Add(PEDCT3.FieldbyName('VLPCT3').AsString);

        PraMed := PraMed + PEDCT3.FieldbyName('PraCt3').AsInteger;

        Inc(QtdReg);

      end;

      PEDCT3.Next;

    end;
  end;

  if QtdReg > 0 then
    begin
       PraMed := PraMed / StrToFloat(IntToStr(QtdReg));
       RLLabel13.Caption := FormatFloat('##0.00', PraMed) + ' Dias';
       Application.ProcessMessages;
    end;

end;

procedure TfmManE03_1.ppCodIteBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
var
   strAux: String;
begin
   if(FmManGdb.BuscaSimples('PEDPAR', 'SUPRIMIR_ZEROS', ' 1 = 1') = '1') then
      begin
         strAux := '';
         strAux := strAux + IntToStr(StrToInt(copy(Text,3,3))) + '.';
         strAux := strAux + IntToStr(StrToInt(copy(Text,7,4))) + '.';
         strAux := strAux + IntToStr(StrToInt(copy(Text,12,5)));
         Text := strAux;
      end;
end;

end.

