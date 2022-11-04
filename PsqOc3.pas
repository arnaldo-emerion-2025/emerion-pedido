unit PsqOc3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, hGrid;

type
  TfmPsqOc3 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    grPro: TdxDBGraphicEdit;
    FinCrp: TwwQuery;
    DsCrp: TwwDataSource;
    Label9: TLabel;
    grCrp: ThGrid;
    FinCrpCODEMP: TIntegerField;
    FinCrpDTECRE: TDateTimeField;
    FinCrpNUMCRE: TFloatField;
    FinCrpNUMCRP: TIntegerField;
    FinCrpPRACRP: TIntegerField;
    FinCrpDTVCRP: TDateTimeField;
    FinCrpVLPCRP: TFloatField;
    FinCrpVJUCRP: TFloatField;
    FinCrpVTXCRP: TFloatField;
    FinCrpSEQCRP: TIntegerField;
    FinCrpVPPCRP: TFloatField;
    FinCrpVJPCRP: TFloatField;
    FinCrpVTPCRP: TFloatField;
    FinCrpVDSCRP: TFloatField;
    FinCrpVDDCRP: TFloatField;
    FinCrpTOTCRP: TFloatField;
    FinCrpVLSCRP: TFloatField;
    FinCrpFLPCRP: TStringField;
    FinCrpFLRCRP: TStringField;
    FinCrpSCICRP: TStringField;
    FinCrpOBSCRP: TStringField;
    FinCrpCODBAN: TIntegerField;
    FinCrpDULCRP: TDateTimeField;
    FinCrpFLGNEG: TStringField;
    FinCrpCNACRP: TStringField;
    FinCrpFLGPRO: TStringField;
    FinCrpFLGCAR: TStringField;
    FinCrpNOSNUM: TStringField;
    FinCrpFLGTRG: TStringField;
    FinCrpFLGCNA: TStringField;
    FinCrpCODAGB: TStringField;
    FinCrpCODCNB: TStringField;
    FinCrpNOMBAN: TStringField;
    FinCrpNROCRP: TIntegerField;
    FinCrpFLGATU: TStringField;
    FinCrpFLGDEV: TStringField;
    FinCrpFLGDEL: TStringField;
    FinCrpFLGBAI: TStringField;
    FinCrpQTPCRE: TStringField;
    FinCrpATRASO: TFloatField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPsqOc3: TfmPsqOc3;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqOc3.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqOc3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

end.
