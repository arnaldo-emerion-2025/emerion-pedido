unit ManVisuRegras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, dxExEdtr, dxEdLib,
  dxDBELib, dxDBColorPickEdit, ExtCtrls, StdCtrls, DBCtrls,
  dxDBColorDateEdit, dxDBEdtr, dxDBColorLookupEdit, dxDBColorEdit,
  dxCntner, dxEditor, dxDBColorCurrencyEdit, Db, Wwdatsrc, DBTables,
  Wwquery, ClipBrd;

type
  TFmManVisuRegras = class(TfmPadrao)
    EstStr: TwwQuery;
    EstStrCODSTR: TStringField;
    EstStrNOMSTR: TStringField;
    EstStrTIPSTR: TStringField;
    DsStr: TwwDataSource;
    EstUfe: TwwQuery;
    DsUfe: TwwDataSource;
    EstIcm: TwwQuery;
    StringField2: TStringField;
    EstIcmCODICM: TStringField;
    EstIcmPERICM: TFloatField;
    DsIcm: TwwDataSource;
    EstTxf: TwwQuery;
    EstTxfCODTXF: TStringField;
    EstTxfTIPTXF: TStringField;
    EstTxfDSRTXF: TStringField;
    DsTxf: TwwDataSource;
    GerUfe: TwwQuery;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    DsGerUfe: TwwDataSource;
    EstUfe_01: TwwQuery;
    EstUfe_01CODSTR: TStringField;
    EstUfe_01TIPSTR: TStringField;
    EstUfe_01SIGUFE: TStringField;
    EstUfe_01ICMSUB: TFloatField;
    EstUfe_01MRGSUB: TFloatField;
    EstUfe_01BASESB: TFloatField;
    EstUfe_01CODCFO: TStringField;
    EstUfe_01REGICM: TStringField;
    EstUfe_01TIPICM: TStringField;
    EstUfe_01REGIPI: TStringField;
    EstUfe_01TIPIPI: TStringField;
    EstUfe_01CODTXF: TStringField;
    EstUfe_01CODTME: TStringField;
    EstUfe_01DTEENV: TDateTimeField;
    quSQL2: TwwQuery;
    EstUfe_02: TwwQuery;
    EstUfe_02CODSTR: TStringField;
    EstUfe_02TIPSTR: TStringField;
    EstUfe_02SIGUFE: TStringField;
    EstUfe_02ICMSUB: TFloatField;
    EstUfe_02MRGSUB: TFloatField;
    EstUfe_02BASESB: TFloatField;
    EstUfe_02CODCFO: TStringField;
    EstUfe_02REGICM: TStringField;
    EstUfe_02TIPICM: TStringField;
    EstUfe_02REGIPI: TStringField;
    EstUfe_02TIPIPI: TStringField;
    EstUfe_02CODTXF: TStringField;
    EstUfe_02CODTME: TStringField;
    EstUfe_02DTEENV: TDateTimeField;
    quSQL3: TwwQuery;
    EstTme: TwwQuery;
    EstTmeCODTME: TStringField;
    EstTmeNOMTME: TStringField;
    DsTme: TwwDataSource;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label107: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EdIcmSub: TdxDBColorCurrencyEdit;
    EdMrgSub: TdxDBColorCurrencyEdit;
    EdBasesb: TdxDBColorCurrencyEdit;
    EdCodCfo: TdxDBColorEdit;
    EdRegIcm: TdxDBColorEdit;
    CbNomIcm: TdxDBColorLookupEdit;
    EdCodTxf: TdxDBColorEdit;
    CbNomTxf: TdxDBColorLookupEdit;
    EdSigUfe: TdxDBColorEdit;
    CbNomUfe: TdxDBColorLookupEdit;
    EdCodTme: TdxDBColorEdit;
    CbNomTme: TdxDBColorLookupEdit;
    EdDteEnv: TdxDBColorDateEdit;
    Label15: TLabel;
    Shape6: TShape;
    Label73: TLabel;
    EdCodStr: TdxDBColorEdit;
    EdNomStr: TdxDBColorEdit;
    EdTipStr: TdxDBColorPickEdit;
    Panel8: TPanel;
    Panel5: TPanel;
    grUfe: ThGrid;
    Label14: TLabel;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label1: TLabel;
    Label4: TLabel;
    EstUfeCODSTR: TStringField;
    EstUfeTIPSTR: TStringField;
    EstUfeSIGUFE: TStringField;
    EstUfeICMSUB: TFloatField;
    EstUfeMRGSUB: TFloatField;
    EstUfeBASESB: TFloatField;
    EstUfeCODCFO: TStringField;
    EstUfeREGICM: TStringField;
    EstUfeTIPICM: TStringField;
    EstUfeREGIPI: TStringField;
    EstUfeTIPIPI: TStringField;
    EstUfeCODTXF: TStringField;
    EstUfeCODTME: TStringField;
    EstUfeDTEENV: TDateTimeField;
    EstUfeCODTCL: TIntegerField;
    EstUfeNOMUFE: TStringField;
    EstTxfDSCTXF: TMemoField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmManVisuRegras: TFmManVisuRegras;

implementation

uses ManRes;

{$R *.DFM}

procedure TFmManVisuRegras.FormShow(Sender: TObject);
begin
  inherited;
  EstUfe.Locate('SIGUFE', fmManRes.PedResUFERES.AsString, [loPartialKey]);
end;

end.
