unit PsqHreCta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, hGrid;

type
  TfmPsqHreCta = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    PedLogCta: TwwQuery;
    DsLogCta: TwwDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grLog: ThGrid;
    Label9: TLabel;
    PedLogCtaDTELOG: TDateTimeField;
    PedLogCtaHRELOG: TStringField;
    PedLogCtaSITANT: TStringField;
    PedLogCtaSITATU: TStringField;
    PedLogCtaLOGUSU: TStringField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPsqHreCta: TfmPsqHreCta;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqHreCta.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqHreCta.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

end.
