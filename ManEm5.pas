unit ManEm5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManEm5 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
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
    DsPedRe2: TDataSource;
    DsPedRes: TDataSource;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    quSql: TwwQuery;
    ppNumRes: TRLDBText;
    ppCodVen: TRLDBText;
    ppCodCli: TRLDBText;
    ppEndEn2: TRLLabel;
    RLLabel6: TRLLabel;
    ppNomVen: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    ppDteFat: TRLDBText;
    PedRes: TwwQuery;
    RLLabel15: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand5: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpRe2: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe2: TRLDBText;
    ppDesRe2: TRLDBText;
    ppVlqRe2: TRLDBText;
    ppCodPro: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel50: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel20: TRLLabel;
    ppTexto2: TRLMemo;
    RLLabel21: TRLLabel;
    ppTexto3: TRLMemo;
    RLLabel23: TRLLabel;
    ppTexto4: TRLMemo;
    ppTexto5: TRLMemo;
    RLLabel24: TRLLabel;
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
    pnTotRes: TRLLabel;
    ppQtsRes: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    pnTotGer: TRLLabel;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResDTFRES: TDateTimeField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResTOTRES: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResTOTGER: TFloatField;
    PedResCEPCLI: TStringField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResCODTRA: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResQTIRES: TIntegerField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2VLQRE2: TFloatField;
    PedRe2QTPRE2: TFloatField;
    PedRe2CODUND: TStringField;
    PedRe2IPIRE2: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRe2REFRE2: TStringField;
    PNTotIPI: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    GImpRef : string;
  public
    { Public declarations }
  end;

var
  PraMed   : real;
  fmManEm5 : TfmManEm5;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManEm5.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManEm5.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select ApeVen From FinVen Where FinVen.CodVen = '''+ IntToStr(PedResCodVen.Value) +'''';
       Open;

       ppNomVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomCli From FinCli Where FinCli.CodCli = '''+ IntToStr(PedResCodCli.Value) +'''';
       Open;

       ppNomCli.Caption := FieldbyName('NomCli').AsString;

  end;

  if Trim( PedResTenCli.Value ) <> '' then
     ppEndEn1.Caption := Trim( PedResTenCli.Value )+ ' ' +Trim( PedResEndCli.Value )
  else
     ppEndEn1.Caption := Trim( PedResEndCli.Value );

  if Trim( PedResNumCli.Value ) <> '' then
     ppEndEn1.Caption := ppEndEn1.Caption+ ', ' +Trim( PedResNumCli.Value );

  if Trim( PedResBaiCli.Value ) <> '' then
     ppEndEn1.Caption := ppEndEn1.Caption+ ' ' +Trim( PedResBaiCli.Value );
     
  ppEndEn2.Caption := 'Cidade '+Trim( PedResCidCli.Value )+ ' - ' +PedResUfeCli.Value;
  
  if Trim( PedResCepCli.Value ) <> '' then
     ppEndEn2.Caption := ppEndEn2.Caption + ' Cep ' +copy(PedResCepCli.Value,1,5)+ '-' +copy(PedResCepCli.Value,6,3);

end;

procedure TfmManEm5.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From PedRe3'+
               ' Where PedRe3.CodEmp = :CodEmp'+
               '   and PedRe3.DteRes = :DteRes'+
               '   and PedRe3.NumRes = :NumRes'+
               ' Order by PedRe3.SeqRe3';

       with Params do begin

            Params[0].AsInteger  := PedResCodEmp.Value;
            Params[1].AsDateTime := PedResDteRes.Value;
            Params[2].AsInteger  := PedResNumRes.Value;

       end;

       Open;
       First;

  end;

  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;
  ppTexto4.Lines.clear;
  ppTexto5.Lines.clear;

  PraMed := 0;

  while not quSQL.Eof do begin

        if quSql.FieldbyName('VlpRe3').AsFloat > 0 then begin
        
           ppTexto2.Lines.Add(IntToStr(quSql.FieldbyName('PraRe3').AsInteger));
           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpRe3').AsFloat));

           PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

        end;
        
        quSql.Next;

  end;

  if PedResQtpRes.Value > 0 then PraMed := PraMed / StrToFloat(IntToStr(PedResQtpRes.Value));

end;

procedure TfmManEm5.RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppPraMed.Caption := FormatFloat('##0.00',PraMed)+' Dias';

  ppEndTr1.Caption := ' ';
  ppEndTr2.Caption := ' ';
  ppEndTr3.Caption := ' ';
  ppEndTr4.Caption := ' ';
  
  with quSQL,SQL do begin

       Close;
       Text := ' Select * From FinTra Where FinTra.CodTra = :CodTra';

       with Params do begin

            Params[0].AsInteger := PedResCodTra.Value;

       end;

       Open;

       ppEndTr1.Caption := FieldbyName('NomTra').AsString;

       if Trim( FieldbyName('TenTra').AsString ) <> '' then
          ppEndTr2.Caption := Trim( FieldbyName('TenTra').AsString )+ ' ' +Trim( FieldbyName('EndTra').AsString )
       else
          ppEndTr2.Caption := Trim( FieldbyName('EndTra').AsString );

       if Trim( FieldbyName('NumTra').AsString ) <> '' then
          ppEndTr2.Caption := ppEndTr2.Caption+ ', ' +Trim( FieldbyName('NumTra').AsString );

       if Trim( FieldbyName('BaiTra').AsString ) <> '' then
          ppEndTr2.Caption := ppEndTr2.Caption+ ' ' +Trim( FieldbyName('BaiTra').AsString );

       if Trim( FieldbyName('CidTra').AsString ) <> '' then
          ppEndTr3.Caption := 'Cidade '+Trim( FieldbyName('CidTra').AsString );

       if Trim( FieldbyName('SigUfe').AsString ) <> '' then
          ppEndTr3.Caption := ppEndTr3.Caption+ ' - ' +FieldbyName('SigUfe').AsString;

       if Trim( FieldbyName('CepTra').AsString ) <> '' then
          ppEndTr3.Caption := ppEndTr3.Caption + ' Cep ' +copy(FieldbyName('CepTra').AsString,1,5)+ '-' +copy(FieldbyName('CepTra').AsString,6,3);

       if Trim( FieldbyName('PrtTra').AsString ) <> '' then begin

          ppEndTr4.Caption := 'TeleFone '+'('+Trim( FieldbyName('PrtTra').AsString )+')';

          if Trim( FieldbyName('FonTra').AsString ) <> '' then
             ppEndTr4.Caption := ppEndTr4.Caption+ ' ' +Trim( FieldbyName('FonTra').AsString );

          end
       else
          begin

          if Trim( FieldbyName('FonTra').AsString ) <> '' then
             ppEndTr4.Caption := 'TeleFone '+Trim( FieldbyName('FonTra').AsString );

       end;   
  end;
end;

procedure TfmManEm5.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  if Trim(GImpRef) = 'Sim' then
     ppCodPro.Caption := PedRe2RefRe2.Value
  else
     ppCodPro.Caption := PedRe2CodGru.Value+'.'+PedRe2CodSub.Value+'.'+PedRe2CodPro.Value;
end;

procedure TfmManEm5.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  pnTotRes.Caption := FormatFloat('###,###,##0.00',PedResTotRes.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',PedResTotGer.Value);
  pnTotIPI.Caption := FormatFloat('###,###,##0.00',PedResTotipi.Value);

  ppQtsRes.Caption := IntToStr(PedResQtiRes.Value);

end;

procedure TfmManEm5.FormCreate(Sender: TObject);
begin
  with quSQL,SQL do begin

       Close;
       Text := ' Select ImpRef,UsaDec From PedPar';
       Open;

       GImpRef := FieldByName('ImpRef').AsString;

       if FieldbyName('UsaDec').AsString = 'Sim' then begin

          PedRe2QtpRe2.DisplayFormat := '###,###,##0.0000';

          ppQtpRe2.DisplayMask := '###,###,##0.0000';

          end
       else
          begin

          PedRe2QtpRe2.DisplayFormat := '###,###,##0';

          ppQtpRe2.DisplayMask := '###,###,##0';

       end;
  end;
end;

end.
