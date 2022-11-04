unit PsqUve;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit;

type
  TfmPsqUve = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grRes: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    PedResNUMRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResVLURE2: TFloatField;
    PedResVLQRE2: TFloatField;
    PedResDSCRE2: TFloatField;
    PedResQTPRE2: TFloatField;
    PedResPACRE2: TFloatField;
    Label2: TLabel;
    PedResSITRES: TStringField;
    pnSitRes: TPanel;
    Label4: TLabel;
    PedResIPIRE2: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqUve: TfmPsqUve;

implementation

uses ManGDB, dxDemoUtils, Bbgeral;

{$R *.DFM}

procedure TfmPsqUve.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TfmPsqUve.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqUve.FormShow(Sender: TObject);
begin
  inherited;
  grRes.SetFocus;
end;

procedure TfmPsqUve.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnSitRes.Caption := Trim(PedResSitRes.Value);
end;

end.
