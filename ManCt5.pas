unit ManCt5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  dxDBColorCurrencyEdit, ExtCtrls, dxDBColorEdit, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, dxCntner, StdCtrls, Fpadrao, FShowPadrao;

type
  TfmManCt5 = class(TfmShowPadrao)
    Label9: TLabel;
    Label1: TLabel;
    grPro: TdxDBGraphicEdit;
    grCt3: ThGrid;
    pnTit: TdxDBColorEdit;
    grTit: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    EdPraCt3: TdxDBColorEdit;
    EdVlpCt3: TdxDBColorCurrencyEdit;
    DsCt3: TwwDataSource;
    UpCt3: TUpdateSQL;
    quSQL: TwwQuery;
    PedCt3: TwwQuery;
    PedCt3ID_PEDCT3: TIntegerField;
    PedCt3PRACT3: TIntegerField;
    PedCt3VLPCT3: TFloatField;
    PedCt3FLGAPR: TStringField;
    PedCt3FLGATU: TStringField;
    PedCt3NROCT3: TIntegerField;
    PedCt3NUMCTA: TIntegerField;
    PedCt3DTECTA: TDateTimeField;
    PedCt3CODEMP: TIntegerField;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Exit(Sender: TObject);
    procedure PedCt3NewRecord(DataSet: TDataSet);
    procedure grCt3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPraCt3KeyPress(Sender: TObject; var Key: Char);
    procedure EdPraCt3Exit(Sender: TObject);
    procedure PedCt3BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure bRetornar;
    procedure bContinuar;
  public
    { Public declarations }
  end;

var
  fmManCt5: TfmManCt5;

implementation

uses ManCt2, ManGDB, bbMensag, ManPed;

{$R *.DFM}

procedure TfmManCt5.FormShow(Sender: TObject);
begin
  PedCt3.Close;
  PedCt3.Params[0].AsInteger  := fmManCt2.PedCtaCODEMP.AsInteger;
  PedCt3.Params[1].AsInteger  := fmManCt2.PedCt2NUMCTA.AsInteger;
  PedCt3.Params[2].AsDateTime := fmManCt2.PedCtaDTECTA.AsDateTime;
  PedCt3.Open;

  //if fmManCt2.PedCtaQtiCt3.Value = 0 then
  if(true) then
  begin
    PedCt3.Append;
    EdPraCt3.SetFocus;
  end
  else
    grCt3.SetFocus;
end;

procedure TfmManCt5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key = 115 then
  begin {F4 - A Vista}

    //Thiago
    //if fmManCt2.PedCtaQtiCt3.Value > 0 then
    if(true) then
    begin

      EdPraCt3.Enabled := False;

      EdPraCt3.Font.Style := [fsBold];

      if PedCt3.State <> dsBrowse then
        PedCt3.CancelUpdates
      else
      begin

        if not PedCt3.Bof then
          PedCt3.Prior;

      end;

      grCt3.SetFocus;

    end
    else
      EdPraCt3.SetFocus;

    //Thiago

    //Id_PedCt2 := fmManCt2.PedCt2Id_PedCt2.Value;

    if PedCt3.State <> dsBrowse then
      PedCt3.CancelUpdates;

    if EdPraCt3.Enabled then
    begin

      EdPraCt3.Enabled := False;

      EdPraCt3.Font.Style := [fsBold];

      grCt3.SetFocus;

    end;

    fmManCt2.PedCta.Edit;

    //fmManCt2.PedCtaFlgAvi.Value := 'Sim';

    with fmManCt2.PedCta do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;

      try

        ApplyUpdates; {Tenta aplicar as altera��es}
        ;

        fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
        ;

      except

        fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
        ;

        if fmManCt2.PedCta.State <> dsBrowse then
          fmManCt2.PedCta.CancelUpdates;

        grCt3.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    PedCt3.Close;
    PedCt3.Open;

    fmManCt2.PedCta.Close;
    fmManCt2.PedCta.Open;

    fmManCt2.PedCt2.Close;
    fmManCt2.PedCt2.Open;

    //fmManCt2.PedCt2.Locate('Id_PedCt2', Id_PedCt2, [LoPartialKey]);

    grCt3.SetFocus;

  end;

  if key = 27 then
  begin
    fmManCt2.Finalizar := 'N';

    if PedCt3.State <> dsBrowse then
      PedCt3.CancelUpdates;

    if EdPraCt3.Enabled then
    begin

      EdPraCt3.Enabled := False;

      EdPraCt3.Font.Style := [fsBold];

      grCt3.SetFocus;

    end
    else
      bRetornar;
  end;

  if key = 123 then
  begin

    if grCt3.Focused then
      bContinuar;

  end;
end;

procedure TfmManCt5.bRetornar;
begin

  if PedCt3.State <> dsBrowse then
    PedCt3.CancelUpdates;

  close;

end;

procedure TfmManCt5.bContinuar;
var
  Id_PedCt2: integer;
begin
  if fMsg('Confirma informa��es ?', 'O') then
  begin

    Id_PedCt2 := fmManCt2.PedCt2Id_PedCt2.Value;

    fmManCt2.PedCta.Edit;

    fmManCt2.PedCtaSitCta.Value := 'Concluida';

    with fmManCt2.PedCta do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;

      try

        ApplyUpdates; {Tenta aplicar as altera��es}
        ;

        fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
        ;

      except

        fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
        ;

        fmManCt2.Finalizar := 'N';

        if fmManCt2.PedCta.State <> dsBrowse then
          fmManCt2.PedCta.CancelUpdates;

        grCt3.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    fmManCt2.PedCta.Close;
    fmManCt2.PedCta.Open;

    fmManCt2.PedCt2.Close;
    fmManCt2.PedCt2.Open;

    fmManCt2.PedCt2.Locate('Id_PedCt2', Id_PedCt2, [LoPartialKey]);

    fmManCt2.Finalizar := 'S';

    {if fMsg('Confirma impress�o da via interna ?', 'O') then
    begin

      try

        fmManE02 := TfmManE02.Create(Self);

        fmManE02.PedCta.Close;
        fmManE02.PedCta.Params[0].AsInteger := fmManCt2.PedCtaId_PedCta.Value;
        fmManE02.PedCta.Open;

        fmManE02.RLReport1.PreviewModal;

      finally

        FreeAndNil(fmManE02);

      end;
    end;}

    Close;

  end;
end;

procedure TfmManCt5.Panel1Exit(Sender: TObject);
var
  NroCt3: integer;
  Id_PedCt2: integer;
begin
  if PedCt3.State <> dsBrowse then
  begin

    Id_PedCt2 := fmManCt2.PedCt2Id_PedCt2.Value;

    if PedCt3PraCt3.Value >= 0 then
    begin

      if PedCt3.State = dsInsert then
      begin

        with PedCt3 do
        begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
          ;

          try

            ApplyUpdates; {Tenta aplicar as altera��es}
            ;

            fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
            ;

          except

            fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
            ;

            if PedCt3.State = dsBrowse then
              PedCt3.Edit;

            EdPraCt3.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedCt3.Close;
        PedCt3.Open;

        fmManCt2.PedCta.Close;
        fmManCt2.PedCta.Open;

        PedCt3.Append;

        EdPraCt3.SetFocus;

      end
      else
      begin

        NroCt3 := PedCt3NroCt3.Value;

        with PedCt3 do
        begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
          ;

          try

            ApplyUpdates; {Tenta aplicar as altera��es}
            ;

            fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
            ;

          except

            fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
            ;

            if PedCt3.State = dsBrowse then
              PedCt3.Edit;

            EdPraCt3.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedCt3.Close;
        PedCt3.Open;

        //PedCt3.Locate('Id_PedCta;NroCt3', VarArrayOf([PedCt3Id_PedCta.Value, NroCt3]), [LoPartialKey]);

        fmManCt2.PedCta.Close;
        fmManCt2.PedCta.Open;

        fmManCt2.PedCt2.Close;
        fmManCt2.PedCt2.Open;

        fmManCt2.PedCt2.Locate('Id_PedCt2', Id_PedCt2, [LoPartialKey]);

        //if PedCt3NroCt3.Value = fmManCt2.PedCtaQtiCt3.Value then
        if(true) then
          PedCt3.Append
        else
        begin

          EdPraCt3.Enabled := False;

          EdPraCt3.Font.Style := [fsBold];

          grCt3.SetFocus;

        end;
      end;

    end
    else
      fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdPraCt3);

  end
  else
  begin

    EdPraCt3.Enabled := False;

    EdPraCt3.Font.Style := [fsBold];

    grCt3.SetFocus;

  end;
end;
procedure TfmManCt5.PedCt3NewRecord(DataSet: TDataSet);
begin
   PedCt3CODEMP.AsInteger  := fmManCt2.PedCtaCODEMP.AsInteger;
   PedCt3DTECTA.AsDateTime := fmManCt2.PedCtaDTECTA.AsDateTime;
   PedCt3NUMCTA.AsInteger := fmManCt2.PedCtaNUMCTA.AsInteger;

   PedCt3PraCt3.Value := 0;
   PedCt3NroCt3.Value := fmManCt2.PedCtaQtiCt3.Value + 1;

   PedCt3.EnableControls;

   EdPraCt3.Enabled := True;

   EdPraCt3.Font.Style := [];

   EdPraCt3.SetFocus;
end;

procedure TfmManCt5.grCt3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NroCt3: integer;
  Id_PedCt2: integer;
begin
  if key = 13 then
  begin {Tecla - ENTER}

    if PedCt3Id_PedCt3.Value > 0 then
    begin

      EdPraCt3.Enabled := True;

      EdPraCt3.Font.Style := [];

      EdPraCt3.SetFocus;

    end;
  end;

  if key = 40 then
  begin {Tecla - Seta para Baixo}

    if PedCt3NroCt3.Value = fmManCt2.PedCtaQtiCt3.Value then
      PedCt3.Append;

  end;

  if key = 46 then
  begin {Tecla - DEL}

    if PedCt3Id_PedCt3.Value > 0 then
    begin

      Id_PedCt2 := fmManCt2.PedCt2Id_PedCt2.Value;

      NroCt3 := PedCt3NroCt3.Value;

      PedCt3.Delete;

      with PedCt3 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
        ;

        try

          ApplyUpdates; {Tenta aplicar as altera��es}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
          ;

          if PedCt3.State <> dsBrowse then
            PedCt3.CancelUpdates;

          grCt3.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedCt3.Close;
      PedCt3.Open;

      fmManCt2.PedCta.Close;
      fmManCt2.PedCta.Open;

      fmManCt2.PedCt2.Close;
      fmManCt2.PedCt2.Open;

      fmManCt2.PedCt2.Locate('Id_PedCt2', Id_PedCt2, [LoPartialKey]);

      (*if NroCt3 < fmManCt2.PedCtaQtiCt3.Value then
        PedCt3.Locate('Id_PedCta;NroCt3', VarArrayOf([PedCt3Id_PedCta.Value, NroCt3]), [LoPartialKey])
      else
      begin

        if fmManCt2.PedCtaQtiCt3.Value = 0 then
          PedCt3.Append
        else
          PedCt3.Last;

      end;
      *)
    end;
  end;
end;

procedure TfmManCt5.EdPraCt3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManCt5.EdPraCt3Exit(Sender: TObject);
begin
  if (Tecla = 'UP') then
  begin

    if fmManCt2.PedCtaQtiCt3.AsFloat > 0 then
    begin

      EdPraCt3.Enabled := False;

      EdPraCt3.Font.Style := [fsBold];

      if PedCt3.State <> dsBrowse then
        PedCt3.CancelUpdates
      else
      begin

        if not PedCt3.Bof then
          PedCt3.Prior;

      end;

      grCt3.SetFocus;

    end
    else
      EdPraCt3.SetFocus;

  end;
end;

procedure TfmManCt5.PedCt3BeforePost(DataSet: TDataSet);
begin
   if(PedCt3.State in [dsInsert, dsEdit]) then
      if (Trim(PedCt3PRACT3.AsString) = '') then
         PedCt3PRACT3.AsInteger := 0;

end;

end.
