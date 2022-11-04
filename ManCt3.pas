unit ManCt3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppStrtch, ppMemo, Psock, NMsmtp, dxfProgressBar,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCt3 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdObsCnd: TdxDBColorEdit;
    EdObsEnt: TdxDBColorEdit;
    EdObsVal: TdxDBColorEdit;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdObsCta: TdxDBColorMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdObsCli: TdxDBColorEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    procedure ImprimeCTA;
  end;

var
  fmManCt3: TfmManCt3;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, bbFuncao, BbMensag, Fpreview, ManGDB, ManCt2,
  ManEma, ManEm2, ManEm3, ManImpCtaNovo, ManImpCtaNovoSemDesc,
  ManImpCtaReduz, ManImpCtaNovoSemDesc_Red, ManE03_1, ManCt5, ManPri,
  ManCta;

{$R *.DFM}

procedure TfmManCt3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManCt3.FormShow(Sender: TObject);
begin
  inherited;

  fmManCt2.PedCta.Edit;

  EdObsCli.Text := fmManCt2.PedCtaObsCli.Value;
  EdObsCnd.Text := fmManCt2.PedCtaObsCnd.Value;
  EdObsEnt.Text := fmManCt2.PedCtaObsEnt.Value;
  EdObsVal.Text := fmManCt2.PedCtaObsVal.Value;
  EdObsCta.Text := fmManCt2.PedCtaObsCta.Value;

  EdObsCli.SetFocus;

end;

procedure TfmManCt3.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCt3.bContinuarClick(Sender: TObject);
var
  NroCt2: integer;
begin

  NroCt2 := fmManCt2.PedCt2NroCt2.Value;

  if fmManCt2.PedCta.State = dsBrowse then
    fmManCt2.PedCta.Edit;

  fmManCt2.PedCtaObsCli.Value := EdObsCli.Text;
  fmManCt2.PedCtaObsCnd.Value := EdObsCnd.Text;
  fmManCt2.PedCtaObsEnt.Value := EdObsEnt.Text;
  fmManCt2.PedCtaObsVal.Value := EdObsVal.Text;
  fmManCt2.PedCtaObsCta.Value := EdObsCta.Text;

  with fmManCt2.PedCta do
  begin

    fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

    try

      ApplyUpdates; {Tenta aplicar as alterações}

      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

    except

      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

      fmManCt2.Finalizar := 'N';

      if fmManCt2.PedCta.State = dsBrowse then
        fmManCt2.PedCta.Edit;

      EdObsCli.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  //if(debughook > 0) then
  begin
    try
      fmManCt5 := TfmManCt5.Create(Self);
      fmManCt5.ShowModal;
    finally
      FreeAndNil(fmManCt5);
    end;
  end;

  if fmManCt2.PedCta.State = dsBrowse then
    fmManCt2.PedCta.Edit;

  //if(debughook = 0) then
  //   begin
  //      fmManCt2.Finalizar := 'S';
  //   end;

  if fmManCt2.Finalizar = 'S' then
  begin
    if fMsg('Confirma Cotacao ?', 'O') then
    begin

      fmManCt2.PedCtaSitCta.Value := 'Concluida';

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

          fmManCt2.Finalizar := 'N';

          if fmManCt2.PedCta.State = dsBrowse then
            fmManCt2.PedCta.Edit;

          EdObsCli.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      fmManCt2.PedCta.Close;
      fmManCt2.PedCta.Open;

      fmManCt2.PedCt2.Close;
      fmManCt2.PedCt2.Open;

      fmManCt2.PedCt2.Locate('CodEmp;DteCta;NumCta;NroCt2', VarArrayOf([fmManCt2.PedCt2CodEmp.Value, fmManCt2.PedCt2DteCta.Value, fmManCt2.PedCt2NumCta.Value,
        NroCt2]), [LoPartialKey]);

      fmManCt2.Finalizar := 'S';

      {if fMsg('Confirma a Impressão da Via Interna ?', 'O') then
      begin
        if fMsg('Impressão da Via Com Desconto ?', 'O') then
        begin
          try
            fmManEma := TfmManEma.Create(Self);
            fmManEma.PedCta.Close;
            fmManEma.PedCta.Params[0].AsInteger := fmManCt2.PedCtaCodEmp.Value;
            fmManEma.PedCta.Params[1].AsDateTime := fmManCt2.PedCtaDteCta.Value;
            fmManEma.PedCta.Params[2].AsInteger := fmManCt2.PedCtaNumCta.Value;
            fmManEma.PedCta.Open;
            fmManEma.RLReport1.PreviewModal;
          finally
            FreeAndNil(fmManEma);
          end;
        end
        else
        begin
          try
            fmManEm3 := TfmManEm3.Create(Self);
            fmManEm3.PedCta.Close;
            fmManEm3.PedCta.Params[0].AsInteger := fmManCt2.PedCtaCodEmp.Value;
            fmManEm3.PedCta.Params[1].AsDateTime := fmManCt2.PedCtaDteCta.Value;
            fmManEm3.PedCta.Params[2].AsInteger := fmManCt2.PedCtaNumCta.Value;
            fmManEm3.PedCta.Open;
            fmManEm3.RLReport1.PreviewModal;
          finally
            FreeAndNil(fmManEm3);
          end;
        end;
      end;}

      ImprimeCTA;

      Close;

    end;
  end;
end;

procedure TfmManCt3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManCt2.PedCta.State <> dsBrowse then
    fmManCt2.PedCta.CancelUpdates;
end;

procedure TfmManCt3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCt3.ImprimeCTA;
begin
  case strtoint(fmManGdb.BuscaSimples('PEDPAR', 'COT_COMP_RED', ' 1 = 1 ')) of

    0:
      begin
        if fMsg('Confirma Impressão da Via do Cliente ?', 'O') then
        begin
          if fmManGdb.BuscaSimples('PEDPAR', 'INTIMPPED', ' 1 = 1 ') = '2' then
          begin
            fmManImpctaNovo := TfmManImpctaNovo.Create(Self);
            try
              begin
                fmManImpctaNovo.QuickRep1.ReportTitle := 'Impressão da Cotação';
                fmManImpctaNovo.ShowModal(fmManCt2.PedCtaNUMcta.AsInteger, fmManCt2.PedCtaDteCta.AsDateTime);
              end;
            finally
              FreeAndNil(fmManImpctaNovo);
            end;
          end
          else
          begin
            fmManImpctaNovoSemDesc := TfmManImpctaNovoSemDesc.Create(Self);
            try
              begin
                fmManImpctaNovoSemDesc.QuickRep1.ReportTitle := 'Impressão da Cotação';
                fmManImpctaNovoSemDesc.ShowModal(fmManCt2.PedCtaNUMcta.AsInteger, fmManCt2.PedCtaDteCta.AsDateTime);
              end;
            finally
              FreeAndNil(fmManImpctaNovoSemDesc);
            end;
          end;
        end;
      end;

    1:
      begin
        if fMsg('Confirma Impressão da Via do Cliente ?', 'O') then
        begin

          //if ((pos('WINDOWS 10', ObterVersaoWindows) > 0) or (gStrWindows = '10')) then
          if (true) then
          begin
            ImprimeCotacao(fmManCt2.PedCtaCodEmp.Asinteger, fmManCt2.PedCtaNumCta.Asinteger, fmManCt2.PedCtaDteCta.AsDateTime,'2');

            if messagebox(handle, 'Deseja enviar cotação de venda por email?', 'Pedido de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
              fmManCta.EnviaEmail(fmManCt2.PedCtaCodEmp.Asinteger, fmManCt2.PedCtaNumCta.Asinteger, fmManCt2.PedCtaDteCta.AsDateTime,'2');

          end
          else
          begin
            fmManImpctaReduz := TfmManImpctaReduz.Create(Self);
            try
              begin
                fmManImpctaReduz.QuickRep1.ReportTitle := 'Impressão da Cotação';
                fmManImpctaReduz.ShowModal(fmManCt2.PedCtaNUMcta.AsInteger, fmManCt2.PedCtaDteCta.AsDateTime);
              end;
            finally
              FreeAndNil(fmManImpctaReduz);
            end;

          end;

          {fmManImpctaReduz := TfmManImpctaReduz.Create(Self);
          try
            begin
              fmManImpctaReduz.QuickRep1.ReportTitle := 'Impressão da Cotação';
              fmManImpctaReduz.ShowModal(fmManCt2.PedCtaNUMcta.AsInteger, fmManCt2.PedCtaDteCta.AsDateTime);
            end;
          finally
            FreeAndNil(fmManImpctaReduz);
          end;}
        end;
      end;

    2:
      begin
        if fMsg('Confirma Impressão da Via do Cliente ?', 'O') then
        begin
          //if ((pos('WINDOWS 10', ObterVersaoWindows) > 0) or (gStrWindows = '10')) then
          if (true) then
          begin
             ImprimeCotacao(fmManCt2.PedCtaCodEmp.Asinteger, fmManCt2.PedCtaNumCta.Asinteger, fmManCt2.PedCtaDteCta.AsDateTime);

            if messagebox(handle, 'Deseja enviar pedido de venda por email?', 'Pedido de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
              fmManCta.EnviaEmail(fmManCt2.PedCtaCodEmp.Asinteger, fmManCt2.PedCtaNumCta.Asinteger, fmManCt2.PedCtaDteCta.AsDateTime);
          end
          else
          begin
            fmManImpCtaNovoSemDesc_Red := TfmManImpCtaNovoSemDesc_Red.Create(Self);
            try
              begin
                fmManImpCtaNovoSemDesc_Red.QuickRep1.ReportTitle := 'Impressão da Cotação';
                fmManImpCtaNovoSemDesc_Red.ShowModal(fmManCt2.PedCtaNUMcta.AsInteger, fmManCt2.PedCtaDteCta.AsDateTime);
              end;
            finally
              FreeAndNil(fmManImpCtaNovoSemDesc_Red);
            end;
          end;
        end;
      end;
    3:
      begin
        if fMsg('Confirma impressão da via do cliente ?', 'O') then
        begin
        if (true) then
          begin
            ImprimeCotacao(fmManCt2.PedCtaCodEmp.Asinteger, fmManCt2.PedCtaNumCta.Asinteger, fmManCt2.PedCtaDteCta.AsDateTime,'3');

            if messagebox(handle, 'Deseja enviar pedido de venda por email?', 'Cotação de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
              fmManCta.EnviaEmail(fmManCt2.PedCtaCodEmp.Asinteger, fmManCt2.PedCtaNumCta.Asinteger, fmManCt2.PedCtaDteCta.AsDateTime,'3');
          end;
        end;
      end;
    4:
      begin
        if fMsg('Confirma impressão da via do cliente ?', 'O') then
        begin
           ImprimeCotacao(fmManCt2.PedCtaCodEmp.Asinteger, fmManCt2.PedCtaNumCta.Asinteger, fmManCt2.PedCtaDteCta.AsDateTime,'4');

           if messagebox(handle, 'Deseja enviar pedido de venda por email?', 'Cotação de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
                fmManCta.EnviaEmail(fmManCt2.PedCtaCodEmp.Asinteger, fmManCt2.PedCtaNumCta.Asinteger, fmManCt2.PedCtaDteCta.AsDateTime,'4');
        end;
      end;
  end;
end;

end.

