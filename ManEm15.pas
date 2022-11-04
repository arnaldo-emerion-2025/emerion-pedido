unit ManEm15;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManEm15 = class(TForm)
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
    RLLabel16: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    ppTelefone: TRLLabel;
    ppFax: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    ppClsIpi: TRLDBText;
    ppVlqPe2: TRLDBText;
    ppCodUnd: TRLDBText;
    RLLabel29: TRLLabel;
    ppQtpPe2: TRLDBText;
    ppDesPe2: TRLLabel;
    ppCodPro: TRLLabel;
    ppObsPe2: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel42: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel43: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel18: TRLLabel;
    ppEndEn1: TRLLabel;
    ppEndEn2: TRLLabel;
    RLLabel20: TRLLabel;
    ppTexto2: TRLMemo;
    ppTexto1: TRLMemo;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    ppTexto4: TRLMemo;
    ppTexto3: TRLMemo;
    RLLabel24: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel51: TRLLabel;
    RLDraw3: TRLDraw;
    ppTotPe2: TRLDBText;
    ppIcmPe2: TRLDBText;
    ppIpiPe2: TRLLabel;
    ppTotIpi: TRLLabel;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    FatPed: TQuery;
    FatPe2: TQuery;
    dsFatPedFatPe2: TDataSource;
    dsFatPed: TDataSource;
    dsFatPe2: TDataSource;
    ppCodSit: TRLLabel;
    quSQL: TQuery;
    ppNomCli: TRLLabel;
    ppCgcCli: TRLLabel;
    ppEndCli: TRLLabel;
    ppBaiCli: TRLLabel;
    ppCepCli: TRLLabel;
    ppCidCli: TRLLabel;
    ppFonCli: TRLLabel;
    ppInscli: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel80: TRLLabel;
    ppUfeCli: TRLLabel;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    ppBasIcm: TRLDBText;
    RLLabel5: TRLLabel;
    ppTotIcm: TRLDBText;
    RLLabel27: TRLLabel;
    ppBasSub: TRLDBText;
    RLLabel28: TRLLabel;
    ppTotSub: TRLDBText;
    RLLabel47: TRLLabel;
    ppTotFat: TRLDBText;
    RLLabel50: TRLLabel;
    ppTotFrt: TRLDBText;
    ppTotSeg: TRLDBText;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    ppTotDes: TRLDBText;
    ppIpiFat: TRLDBText;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    ppTotGer: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel58: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel52: TRLLabel;
    RLDBText9: TRLDBText;
    FatPedCODEMP: TIntegerField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedNRONFS: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedBASICM: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedBASSUB: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTFRT: TFloatField;
    FatPedTOTSEG: TFloatField;
    FatPedTOTDES: TFloatField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedNOMTRA: TStringField;
    FatPedTENTRA: TStringField;
    FatPedENDTRA: TStringField;
    FatPedCIDTRA: TStringField;
    FatPedUFETRA: TStringField;
    FatPedTIPFRT: TStringField;
    FatPedNROFAT: TStringField;
    FatPedMARFAT: TStringField;
    FatPedESPFAT: TStringField;
    FatPedPLCTRA: TStringField;
    FatPedUFEPLC: TStringField;
    FatPedTOTLIQ: TFloatField;
    FatPedTOTBRT: TFloatField;
    FatPedQTDVOL: TIntegerField;
    FatPedTENCLI: TStringField;
    FatPedENDCLI: TStringField;
    FatPedNUMCLI: TStringField;
    FatPedBAICLI: TStringField;
    FatPedCIDCLI: TStringField;
    FatPedUFECLI: TStringField;
    FatPedCEPCLI: TStringField;
    FatPe2CODGRU: TStringField;
    FatPe2CODSUB: TStringField;
    FatPe2CODPRO: TStringField;
    FatPe2NROPE2: TIntegerField;
    FatPe2DESPE2: TStringField;
    FatPe2OBSPE2: TStringField;
    FatPe2CLSIPI: TStringField;
    FatPe2CODST1: TStringField;
    FatPe2CODST2: TStringField;
    FatPe2CODUND: TStringField;
    FatPe2QTPPE2: TFloatField;
    FatPe2VLQPE2: TFloatField;
    FatPe2TOTPE2: TFloatField;
    FatPe2ICMPE2: TFloatField;
    FatPe2IPIPE2: TFloatField;
    FatPe2TOTIPI: TFloatField;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PraMed   : real;
  fmManEm15 : TfmManEm15;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManEm15.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManEm15.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
var
  EndCli : string;
  CodCli : Integer;
begin

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

  if Trim( GFonUsu ) <> '' then
     ppTeleFone.Caption := 'Telefone '+ GFonUsu
  else
     ppTeleFone.Caption := ' ';

  if Trim( GFaxUsu ) <> '' then
     ppFax.Caption := 'Fax '+ GFaxUsu
  else
     ppFax.Caption := ' ';

  p2Titulo.Caption := 'Nota Fiscal Fartura No. '+IntToStr(FatPedNroNfs.Value);

  with quSQL,SQL do begin

       Close;
       Text := ' Select CodCli From PedLib'+
               ' Where PedLib.CodEmp = :CodEmp'+
               '   and PedLib.DteRes = :DteRes'+
               '   and PedLib.NumRes = :NumRes'+
               '   and PedLib.SeqLib = :SeqLib';

       with Params do begin

            Params[0].AsInteger  := FatPedCodEmp.Value;
            Params[1].AsDateTime := FatPedDteRes.Value;
            Params[2].AsInteger  := FatPedNumRes.Value;
            Params[3].AsInteger  := FatPedSeqLib.Value;

       end;
               
       Open;

       CodCli := FieldbyName('CodCli').AsInteger;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,'+
               '        FinCli.CgcCli,'+
               '        FinCli.InsCli,'+
               '        FinCli.TefCli,'+
               '        FinCli.EnfCli,'+
               '        FinCli.NrfCli,'+
               '        FinCli.RffCli,'+               
               '        FinCli.BafCli,'+
               '        FinCli.CifCli,'+
               '        FinCli.UffCli,'+
               '        FinCli.CefCli,'+
               '        FinCli.Pt1Cli,'+
               '        FinCli.Fo1Cli From FinCli Where FinCli.CodCli = '''+ IntToStr( CodCli ) +'''';
       Open;

       ppNomCli.Caption := FieldbyName('NomCli').AsString;
       ppCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);
       ppInsCli.Caption := FieldbyName('InsCli').AsString;

       if Trim(FieldbyName('TefCli').AsString) <> '' then
          EndCli := FieldbyName('TefCli').AsString+ ' ' +FieldbyName('EnfCli').AsString
       else
          EndCli := FieldbyName('EnfCli').AsString;

       if Trim(FieldbyName('NrfCli').AsString) <> '' then EndCli := EndCli+ ', ' +Trim(FieldbyName('NrfCli').AsString);

       if Trim(FieldbyName('RffCli').AsString) <> '' then EndCli := EndCli+ ' '  +Trim(FieldbyName('RffCli').AsString);

       ppEndCli.Caption := EndCli;

       ppBaiCli.Caption := FieldbyName('BafCli').AsString;
       ppCidCli.Caption := FieldbyName('CifCli').AsString;
       ppUfeCli.Caption := FieldbyName('UffCli').AsString;

       if Trim(FieldbyName('CefCli').AsString) <> '' then
          ppCepCli.Caption := copy(FieldbyName('CefCli').AsString,1,5)+ '-' +copy(FieldbyName('CefCli').AsString,6,3)
       else
          ppCepCli.Caption := FieldbyName('CefCli').AsString;

       if Trim( FieldbyName('Pt1Cli').AsString ) <> '' then
          ppFonCli.Caption := '('+ FieldbyName('Pt1Cli').AsString+ ') ' +FieldbyName('Fo1Cli').AsString
       else
          ppFonCli.Caption := FieldbyName('Fo1Cli').AsString

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From FatPe3'+
               ' Where FatPe3.CodEmp = :CodEmp'+
               '   and FatPe3.DteRes = :DteRes'+
               '   and FatPe3.NumRes = :NumRes'+
               '   and FatPe3.SeqLib = :SeqLib'+
               '   and FatPe3.SeqFat = :SeqFat'+
               ' Order by FatPe3.NroPe3';

       with Params do begin

            Params[0].AsInteger  := FatPedCodEmp.Value;
            Params[1].AsDateTime := FatPedDteRes.Value;
            Params[2].AsInteger  := FatPedNumRes.Value;
            Params[3].AsInteger  := FatPedSeqLib.Value;
            Params[4].AsInteger  := FatPedSeqFat.Value;

       end;

       Open;
       First;

  end;

  ppTexto1.Lines.clear;
  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;
  ppTexto4.Lines.clear;

  while not quSQL.EOF do begin

        if odd(quSQL.RecNo) then begin

           ppTexto1.Lines.Add(FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpPe3').AsFloat));
           ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyyy',quSql.FieldbyName('DtvPe3').AsDateTime));

           end
        else
           begin

           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpPe3').AsFloat));
           ppTexto4.Lines.Add(FormatDateTime('dd/mm/yyyy',quSql.FieldbyName('DtvPe3').AsDateTime));

        end;

        quSql.Next;

  end;
end;

procedure TfmManEm15.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin 

  ppDesPe2.Caption := FatPe2DesPe2.Value;

  ppCodPro.Caption := FatPe2CodGru.Value+ '.' +FatPe2CodSub.Value+ '.' +FatPe2CodPro.Value;

  ppObsPe2.Caption := FatPe2ObsPe2.Value;

  ppCodSit.Caption := FatPe2CodSt1.Value+ ' ' +FatPe2CodSt2.Value;

  if FatPe2TotIpi.Value > 0 then begin

     ppIpiPe2.Caption := FormatFloat('###',FatPe2IpiPe2.Value);
     ppTotIpi.Caption := FormatFloat('###,###,##0.00',FatPe2TotIpi.Value);

     end
  else
     begin

     ppIpiPe2.Caption := '';
     ppTotIpi.Caption := '';

  end;
end;

procedure TfmManEm15.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppEndEn1.Caption := Trim( FatPedTenCli.Value )+ '. '   +Trim( FatPedEndCli.Value )+' N. '+
                      Trim( FatPedNumCli.Value )+ ' B. ' +Trim( FatPedBaiCli.Value );

  ppEndEn2.Caption := 'Cidade '+Trim( FatPedCidCli.Value )+' UF '+FatPedUfeCli.Value+' Cep: '+
                      copy(FatPedCepCli.Value,1,5)+'-'+copy(FatPedCepCli.Value,6,3);

end;

end.
