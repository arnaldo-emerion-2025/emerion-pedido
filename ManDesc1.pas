unit ManDesc1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManDesc1 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label33: TLabel;
    BbSair: TBitBtn;
    EdDscRes: TdxDBColorCurrencyEdit;
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
  fmManDesc1: TfmManDesc1;

implementation

uses dxDemoUtils, Bbmensag, Bbfuncao, ManGDB, ManPed;

{$R *.DFM}

procedure TfmManDesc1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDesc1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
  begin

    fmManPed.PedRes.CancelUpdates;

    Close;

  end;
end;

procedure TfmManDesc1.BbSairClick(Sender: TObject);
begin

  ActiveControl := nil;

  with fmManPed.PedRes do
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

      fmManPed.PedRes.Edit;

      EdDscRes.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManPed.PedRes.Close;
  fmManPed.PedRes.Open;

  fmManPed.PedRe2.Close;
  fmManPed.PedRe2.Open;

  close;

end;

procedure TfmManDesc1.FormShow(Sender: TObject);
begin
  inherited;

  {fmManPed.pnDesRe2.Visible := True;
  fmManPed.pnObsRe2.Visible := True;}

  fmManPed.EdDesRe2.Enabled := False;
  fmManPed.EdObsRe2.Enabled := False;

  fmManPed.PedRes.Edit;

  EdDscRes.SetFocus;

end;

end.
