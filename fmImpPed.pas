unit fmImpPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Qrctrls;

type
  TForm1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    PedRes: TwwQuery;
    PedResNUMRES: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODATD: TIntegerField;
    PedResCODPFA: TStringField;
    PedResCODCLI: TIntegerField;
    PedResTOTGER: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDGER: TFloatField;
    PedResFLGFEC: TStringField;
    PedResTOTRES: TFloatField;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResCODTIP: TIntegerField;
    PedResTIPPFA: TStringField;
    PedResTOTREN: TFloatField;
    PedResSITRES: TStringField;
    PedResNOMCLI: TStringField;
    PedResFLGOCO: TStringField;
    PedResFLGIMP: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResCODTRA: TIntegerField;
    PedResLANEST: TStringField;
    PedResCODFIL: TIntegerField;
    PedResTOTCST: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResMEDACR: TFloatField;
    PedResTOTACR: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResDSCREG: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResMEDDCO: TFloatField;
    PedResTOTDCO: TFloatField;
    PedResQTIRES: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResPEDANT: TStringField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    PedResAPEVEN: TStringField;
    PedResAPEATD: TStringField;
    PedResTOTIPI: TFloatField;
    PedResUSUREJ: TIntegerField;
    PedResTOTSUB: TFloatField;
    PedResATUEST: TStringField;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    PedRe2: TwwQuery;
    PedRe2DSCPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2TOTREN: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGPAC: TStringField;
    PedRe2FLGLIB: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.
