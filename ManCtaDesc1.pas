unit ManCtaDesc1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManCtaDesc1 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label33: TLabel;
    BbSair: TBitBtn;
    EdDscCt2: TdxDBColorCurrencyEdit;
    procedure BbSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManCtaDesc1: TfmManCtaDesc1;

implementation

uses dxDemoUtils, Bbmensag, Bbfuncao, ManGDB, ManCt2;

{$R *.DFM}

procedure TfmManCtaDesc1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCtaDesc1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
  begin

    fmManCt2.PedCta.CancelUpdates;

    Close;

  end;
end;

procedure TfmManCtaDesc1.BbSairClick(Sender: TObject);
begin

  ActiveControl := nil;

  with fmManCt2.PedCta do
  begin

    fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
    ;

    try

      ApplyUpdates; {Tenta aplicar as alterações}
      ;

      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
      ;

    except

      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
      ;

      fmManCt2.PedCta.Edit;

      EdDscCt2.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManCt2.PedCta.Close;
  fmManCt2.PedCta.Open;

  fmManCt2.PedCt2.Close;
  fmManCt2.PedCt2.Open;

  close;

end;

procedure TfmManCtaDesc1.FormShow(Sender: TObject);
begin
  inherited;

  {fmManCt2.pnDesCt2.Visible := True;
  fmManCt2.pnObsCt2.Visible := True;

  fmManCt2.EdDesCt2.Enabled := False;
  fmManCt2.EdObsCt2.Enabled := False;}

  fmManCt2.EdDesCt2.ReadOnly := True;
  fmManCt2.EdObsCt2.ReadOnly := True;

  fmManCt2.PedCta.Edit;

  EdDscCt2.SetFocus;

end;

end.
