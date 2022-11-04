unit fmReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Data.DBXFirebird, Data.DB,
  Datasnap.DBClient, SimpleDS, Data.FMTBcd, Data.SqlExpr, frxDBSet,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    frxReport1: TfrxReport;
    dsLojPed: TDataSource;
    dsLojPe2: TDataSource;
    dsLojRp2: TDataSource;
    fxDbLojPed: TfrxDBDataset;
    fxDbLojPe2: TfrxDBDataset;
    fxDbLojRp2: TfrxDBDataset;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    LojPed: TSQLDataSet;
    LojPe2: TSQLDataSet;
    LojRp2: TSQLDataSet;
    LojPe2CODEMP: TIntegerField;
    LojPe2DTEPED: TSQLTimeStampField;
    LojPe2NUMPED: TIntegerField;
    LojPe2CODGRU: TStringField;
    LojPe2CODSUB: TStringField;
    LojPe2CODPRO: TStringField;
    LojPe2DESPE2: TStringField;
    LojPe2QTPPE2: TFMTBCDField;
    LojPe2VLQPE2: TFMTBCDField;
    LojPe2ICMPE2: TFMTBCDField;
    LojPe2TOTIPI: TFMTBCDField;
    LojPe2TOTIBPT: TFMTBCDField;
    LojPe2TOTGE2: TFMTBCDField;
    LojRp2CODEMP: TIntegerField;
    LojRp2DTEPED: TSQLTimeStampField;
    LojRp2NUMPED: TIntegerField;
    LojRp2SEQRP2: TIntegerField;
    LojRp2CODMOD: TIntegerField;
    LojRp2TOTMOD: TFMTBCDField;
    LojRp2RECMOD: TFMTBCDField;
    LojRp2SLDMOD: TFMTBCDField;
    LojRp2SEQMOD: TIntegerField;
    LojRp2QTDMOD: TIntegerField;
    LojRp2FLGDIR: TStringField;
    LojRp2QTDORD: TIntegerField;
    LojRp2NRORP2: TIntegerField;
    LojRp2FLGATU: TStringField;
    LojRp2NROMOD: TIntegerField;
    LojRp2NOMMOD: TStringField;
    LojPedCODEMP: TIntegerField;
    LojPedDTEPED: TSQLTimeStampField;
    LojPedNUMPED: TIntegerField;
    LojPedHREPED: TStringField;
    LojPedCODVEN: TIntegerField;
    LojPedCODCLI: TIntegerField;
    LojPedNOMCLI: TStringField;
    LojPedTOTPED: TFMTBCDField;
    LojPedTOTIPI: TFMTBCDField;
    LojPedTOTGER: TFMTBCDField;
    LojPedTOTIBPT: TFloatField;
    LojPedSITPED: TStringField;
    LojPedAPEVEN: TStringField;
    LojPedRECMOD: TFMTBCDField;
    LojPedTRCMOD: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uDM;

end.
