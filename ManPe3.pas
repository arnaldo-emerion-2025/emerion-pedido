unit ManPe3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, RDprint, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxEdLib, AlignEdit, FShowPadrao,
  dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManPe3 = class(TfmShowPadrao)
    PedRe3: TwwQuery;
    DsRe3: TwwDataSource;
    PaintBox: TPaintBox;
    grRe3: ThGrid;
    PedRe3CODEMP: TIntegerField;
    PedRe3NUMRES: TIntegerField;
    PedRe3SEQRE3: TIntegerField;
    PedRe3PRARE3: TIntegerField;
    PedRe3VLPRE3: TFloatField;
    pnTit: TdxDBColorEdit;
    grTit: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    UpRe3: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    RDprint1: TRDprint;
    Panel1: TPanel;
    EdPraRe3: TdxDBColorEdit;
    EdVlpRe3: TdxDBColorCurrencyEdit;
    PedRe3DTERES: TDateTimeField;
    PedRe3NRORE3: TIntegerField;
    Label9: TLabel;
    Label1: TLabel;
    quSQL1: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure PedRe3NewRecord(DataSet: TDataSet);
    procedure EdPraRe3Exit(Sender: TObject);
    procedure grRe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraRe3KeyPress(Sender: TObject; var Key: Char);
    procedure bRetornar;
    procedure bContinuar;
    procedure Panel1Exit(Sender: TObject);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  Linha: Integer;
  fmManPe3: TfmManPe3;
  sCabe, NomVen, NomAtd, NomCli, EndEn1, EndEn2, EndEn3: string;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManPed, ManPri, PsqBan, AuxPsq,
     DM_Imprint, ManImpPedNovo, ManImpPedNovoSemDesc, ManRes;

{$R *.DFM}

procedure TfmManPe3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
  begin

    if PedRe3.State <> dsBrowse then
      PedRe3.CancelUpdates;

    if EdPraRe3.Enabled then
    begin

      EdPraRe3.Enabled := False;

      EdPraRe3.Font.Style := [fsBold];

      grRe3.SetFocus;

    end
    else
      bRetornar;
  end;

  if key = 123 then
  begin

    if grRe3.Focused then
      bContinuar;

  end;
end;

procedure TfmManPe3.FormShow(Sender: TObject);
begin
  inherited;

  PedRe3.Close;
  PedRe3.Params[0].AsInteger := fmManPed.PedResCodEmp.AsInteger;
  PedRe3.Params[1].AsDateTime := fmManPed.PedResDteRes.AsDateTime;
  PedRe3.Params[2].AsInteger := fmManPed.PedResNumRes.AsInteger;
  PedRe3.Open;

  if fmManPed.PedResQtpRes.Value = 0 then
  begin

    PedRe3.Append;

    EdPraRe3.SetFocus;

  end
  else
    grRe3.SetFocus;

end;

procedure TfmManPe3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe3.PedRe3NewRecord(DataSet: TDataSet);
begin

  PedRe3.DisableControls;

  PedRe3PraRe3.Value := 0;
  PedRe3CodEmp.Value := fmManPed.PedResCodEmp.Value;
  PedRe3DteRes.Value := fmManPed.PedResDteRes.Value;
  PedRe3NumRes.Value := fmManPed.PedResNumRes.Value;
  PedRe3SeqRe3.Value := fmManPed.PedResSeqPar.Value + 1;
  PedRe3NroRe3.Value := fmManPed.PedResQtpRes.Value + 1;

  PedRe3.EnableControls;

  EdPraRe3.Enabled := True;

  EdPraRe3.Font.Style := [];

  EdPraRe3.SetFocus;

end;

procedure TfmManPe3.EdPraRe3Exit(Sender: TObject);
begin
  inherited;
  if (Tecla = 'UP') then
  begin

    if fmManPed.PedResQtpRes.AsFloat > 0 then
    begin

      EdPraRe3.Enabled := False;

      EdPraRe3.Font.Style := [fsBold];

      if PedRe3.State <> dsBrowse then
        PedRe3.CancelUpdates
      else
      begin

        if not PedRe3.Bof then
          PedRe3.Prior;

      end;

      grRe3.SetFocus;

    end
    else
      EdPraRe3.SetFocus;

  end;
end;

procedure TfmManPe3.grRe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroRe3: integer;
begin

  if key = 13 then
  begin {Tecla - ENTER}

    EdPraRe3.Enabled := True;

    EdPraRe3.Font.Style := [];

    EdPraRe3.SetFocus;

  end;

  if key = 40 then
  begin {Tecla - Seta para Baixo}

    if PedRe3NroRe3.Value = fmManPed.PedResQtpRes.Value then
      PedRe3.Append;

  end;

  if key = 46 then
  begin {Tecla - DEL}

    if PedRe3CodEmp.Value > 0 then
    begin

      NroRe3 := PedRe3NroRe3.Value;

      PedRe3.Delete;

      with PedRe3 do
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

          if PedRe3.State <> dsBrowse then
            PedRe3.CancelUpdates;

          grRe3.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedRe3.Close;
      PedRe3.Open;

      fmManPed.PedRes.Close;
      fmManPed.PedRes.Open;

      if NroRe3 < fmManPed.PedResQtpRes.Value then
        PedRe3.Locate('CodEmp;NumRes;NroRe3', VarArrayOf([PedRe3CodEmp.Value, PedRe3NumRes.Value, NroRe3]), [LoPartialKey])
      else
      begin

        if fmManPed.PedResQtpRes.Value = 0 then
          PedRe3.Append
        else
          PedRe3.Last;

      end;
    end;
  end;
end;

procedure TfmManPe3.EdPraRe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManPe3.bRetornar;
begin

  if PedRe3.State <> dsBrowse then
    PedRe3.CancelUpdates;

  close;

end;

procedure TfmManPe3.bContinuar;
var sTipoDeImpressao: String;
begin

  // Tipo de Impressão [Grafica / Matricial]
  sTipoDeImpressao := fmManGDB.BuscaSimples('PEDPAR', 'COALESCE(VIA_SEP_GRAF,''S'')', ' 1 = 1 ');

  if fMsg('Confirma o Pedido ?', 'O') then
  begin

    {Pedido Posto}

    fmManPed.PedRes.Edit;
    {fmManPed.quSql.Active := false;
    fmmanped.qusql.sql.text := 'SELECT COUNT(*)as conta FROM FINCRP WHERE CODCLI = ' + QuotedStr(fmmanped.PedResCODCLI.AsString);
    fmmanped.qusql.open;

    if fmManPed.quSql.FieldByName('CONTA').asinteger > 0 then}
    fmManPed.PedResSitRes.AsString := 'Aguardando Separacao de Estoque';
    {else
       fmManPed.PedResSitRes.Value := 'Aguardando Consultas de Cadastro';}
    fmManPed.PedResObsfin.AsString := fmManPed.PedResObsfin.AsString + '.';

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

        if fmManPed.PedRes.State <> dsBrowse then
          fmManPed.PedRes.CancelUpdates;

        fmManPed.Finalizar := 'N';

        grRe3.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    fmManPed.Finalizar := 'S';

    fmManPed.PedRes.Close;
    fmManPed.PedRes.Open;

    if fMsg('Confirma Impressão do Pedido ?', 'O') then
    begin
      if fmmangdb.BuscaSimples('PEDPAR', 'INTIMPPED', '1=1') = '2' then
      begin
        //Impressão do pedido sem desconto e valor unitário -- Para Portal.
        //if ((pos('WINDOWS 10', ObterVersaoWindows) <= 0) or (gStrWindows = '10')) then
        if (false) then
        begin
          fmManImpPedNovoSemDesc := TfmManImpPedNovoSemDesc.Create(Self);
          try
            fmManImpPedNovoSemDesc.ShowModal(fmManPed.PedResNUMRES.AsInteger);
          finally
            FreeAndNil(fmManImpPedNovoSemDesc);
          end;
        end
        else
        begin

          fmManPri.ImprimePedido(fmManPed.PedResCodEmp.Asinteger, fmManPed.PedResNumRes.Asinteger, fmManPed.PedResDteRes.AsDateTime,'2');

          if messagebox(handle, 'Deseja enviar pedido de venda por email?', 'Pedido de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
            fmManRes.EnviaEmail(fmManPed.PedResCodEmp.Asinteger, fmManPed.PedResNumRes.Asinteger, fmManPed.PedResDteRes.AsDateTime,'2');
        end;
      end
      else
      if fmmangdb.BuscaSimples('PEDPAR', 'INTIMPPED', '1=1') = '3' then
      begin

        fmManPri.ImprimePedido(fmManPed.PedResCodEmp.Asinteger, fmManPed.PedResNumRes.Asinteger, fmManPed.PedResDteRes.AsDateTime,'3');

        if messagebox(handle, 'Deseja enviar pedido de venda por email?', 'Pedido de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
           fmManRes.EnviaEmail(fmManPed.PedResCodEmp.Asinteger, fmManPed.PedResNumRes.Asinteger, fmManPed.PedResDteRes.AsDateTime,'3');
      end
      else
      begin
        fmManImpPedNovo := TfmManImpPedNovo.Create(Self);
        try
          fmManImpPedNovo.ShowModal(fmManPed.PedResNUMRES.AsInteger);
        finally
          FreeAndNil(fmManImpPedNovo);
        end;
      end;

    end;

    if (fmMangdb.BuscaSimples('PEDPAR', 'IMP_DEPOSITO_PEDIDO', ' 1=1 ') <> 'Nao') then
      if fMsg('Imprime via Deposito ?', 'O') then
      begin

        // Verifica Tipo de Impressão [Grafica / Matricial]
        if sTipoDeImpressao = 'S' then  // Grafica
          fmManPri.ImprimeViaSeparacao(fmmanped.PedResCodEmp.Asinteger, fmmanped.PedResNumRes.Asinteger, fmmanped.PedResDteRes.AsDateTime)
        else
          fmDM_Imprint.ImpViaSep(fmmanped.PedResNumRes.Asinteger);

      end;

    close;
  end;

end;

procedure TfmManPe3.Panel1Exit(Sender: TObject);
var
  SeqRe3: integer;
begin
  if PedRe3.State <> dsBrowse then
  begin

    if PedRe3PraRe3.Value >= 0 then
    begin
      //validação de multiplos de 7 para NewImports
      if fmManGDB.BuscaSimples('PEDPAR', 'VALPARCELA', ' 1 = 1 ') = 'Sim' then
      begin
        if (pedre3PRARE3.AsInteger mod 7) <> 0 then
        begin
          MessageBox(handle, 'Atenção!!! Somente são aceitos prazos multiplos de 7 (sete).', 'Validação do prazo de pagamento', MB_OK + MB_ICONINFORMATION);
          abort;
        end;
      end;

      if PedRe3.State = dsInsert then
      begin

        with PedRe3 do
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

            if PedRe3.State = dsBrowse then
              PedRe3.Edit;

            EdPraRe3.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe3.Close;
        PedRe3.Open;

        fmManPed.PedRes.Close;
        fmManPed.PedRes.Open;

        PedRe3.Append;

        EdPraRe3.SetFocus;

      end
      else
      begin

        SeqRe3 := PedRe3SeqRe3.Value;

        with PedRe3 do
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

            if PedRe3.State = dsBrowse then
              PedRe3.Edit;

            EdPraRe3.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe3.Close;
        PedRe3.Open;

        fmManPed.PedRes.Close;
        fmManPed.PedRes.Open;

        PedRe3.Locate('CodEmp;DteRes;NumRes;SeqRe3', VarArrayOf([PedRe3CodEmp.Value, PedRe3DteRes.Value, PedRe3NumRes.Value, SeqRe3]), [LoPartialKey]);

        if PedRe3NroRe3.Value = fmManPed.PedResQtpRes.Value then
          PedRe3.Append
        else
        begin

          EdPraRe3.Enabled := False;

          EdPraRe3.Font.Style := [fsBold];

          grRe3.SetFocus;

        end;
      end;

    end
    else
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPraRe3);

  end
  else
  begin

    EdPraRe3.Enabled := False;

    EdPraRe3.Font.Style := [fsBold];

    grRe3.SetFocus;

  end;
end;

procedure TfmManPe3.RDprint1NewPage(Sender: TObject; Pagina: Integer);
var
  CodRef: string;
begin

  Linha := 1;

  if sCabe = '1' then
  begin

    rdprint1.impf(Linha, 001, 'GERENCIA (PD)', [EXPANDIDO, NORMAL]);

    Inc(Linha);

    if fmManPed.PedResPedAnt.Value = 'Nao' then
      rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(fmManPed.PedResDtfRes.Value), [EXPANDIDO, NORMAL])
    else
      rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(fmManPed.PedResDtfRes.Value) + ' - ANTECIPADO', [EXPANDIDO, NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Pedido       : ' + preString(IntToStr(fmManPed.PedResNumRes.Value), 7), [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 075, 'Data : ' + DateToStr(fmManPed.PedResDteRes.Value), [NORMAL]);
    rdprint1.impf(Linha, 111, 'Hora : ' + fmManPed.PedResHreRes.Value, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Vendedor     : ' + preString(IntToStr(fmManPed.PedResCodVen.Value), 7) + ' - ' + NomVen, [NORMAL]);

    Inc(Linha);

    if fmManPed.PedResCodAtd.Value > 0 then
    begin

      rdprint1.impf(Linha, 001, 'Atendente    : ' + preString(IntToStr(fmManPed.PedResCodAtd.Value), 7) + ' - ' + NomAtd, [NORMAL]);

      Inc(Linha);

    end;

    rdprint1.impf(Linha, 001, 'Cliente      : ' + preString(IntToStr(fmManPed.PedResCodCli.Value), 7) + ' - ' + copy(NomCli, 1, 40), [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 120, fmManPed.PedResUfeRes.Value, [EXPANDIDO, NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Entrega      : ' + EndEn1, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, '               ' + EndEn2, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, '               ' + EndEn3, [NORMAL]);

    Inc(Linha);

    if Trim(fmManPed.PedResCgcCli.Value) <> '' then
    begin

      if Length(Trim(fmManPed.PedResCgcCli.Value)) > 11 then
        rdprint1.impf(Linha, 001, 'CNPJ         : ' + fFormatCgcCpf(fmManPed.PedResCgcCli.Value), [NORMAL, NEGRITO])
      else
        rdprint1.impf(Linha, 001, 'CPF          : ' + fFormatCgcCpf(fmManPed.PedResCgcCli.Value), [NORMAL, NEGRITO]);

    end
    else
      rdprint1.impf(Linha, 001, 'CNPJ/CPF     : ', [NORMAL, NEGRITO]);

    rdprint1.impf(Linha, 114, 'Pagina No. ' + fNumZeros(IntToStr(Pagina), 3), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

    Inc(Linha);

    if upperCase(fmManGDB.BuscaSimples('PEDPAR', 'IMPREFDEP', ' 1 = 1 ')) <> 'SIM' then
      CodRef := 'Nosso Codigo'
    else
      CodRef := 'Referencia';

    rdprint1.impf(Linha, 001, CodRef, [comp17]);
    rdprint1.imp(Linha, 016, 'Descricao');
    rdprint1.imp(Linha, 078, 'Quant');
    rdprint1.imp(Linha, 086, 'Preco Bruto');
    rdprint1.imp(Linha, 099, '% Desc');
    rdprint1.imp(Linha, 106, '% Acrs');
    rdprint1.imp(Linha, 116, 'Preco Liq');
    rdprint1.imp(Linha, 128, 'Total Item');

    Inc(Linha);

    rdprint1.imp(Linha, 001, fReplicate('-', 14));
    rdprint1.imp(Linha, 016, fReplicate('-', 55));
    rdprint1.imp(Linha, 072, fReplicate('-', 12));
    rdprint1.imp(Linha, 085, fReplicate('-', 12));
    rdprint1.imp(Linha, 099, fReplicate('-', 06));
    rdprint1.imp(Linha, 106, fReplicate('-', 06));
    rdprint1.imp(Linha, 113, fReplicate('-', 12));
    rdprint1.imp(Linha, 126, fReplicate('-', 12));

    Inc(Linha);

  end
  else
  begin

    rdprint1.impf(Linha, 001, 'DEPOSITO', [EXPANDIDO, NORMAL]);

    Inc(Linha);

    if fmManPed.PedResPedAnt.Value = 'Nao' then
      rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(fmManPed.PedResDtfRes.Value), [EXPANDIDO, NORMAL])
    else
      rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(fmManPed.PedResDtfRes.Value) + ' - ANTECIPADO', [EXPANDIDO, NORMAL]);

    rdprint1.impf(Linha, 114, 'Pagina No. ' + fNumZeros(IntToStr(Pagina), 3), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Pedido       : ' + preString(IntToStr(fmManPed.PedResNumRes.Value), 7), [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 075, 'Data : ' + DateToStr(fmManPed.PedResDteRes.Value), [NORMAL]);
    rdprint1.impf(Linha, 111, 'Hora : ' + fmManPed.PedResHreRes.Value, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Vendedor     : ' + preString(IntToStr(fmManPed.PedResCodVen.Value), 7) + ' - ' + NomVen, [NORMAL]);

    Inc(Linha);

    if fmManPed.PedResCodAtd.Value > 0 then
    begin

      rdprint1.impf(Linha, 001, 'Atendente    : ' + preString(IntToStr(fmManPed.PedResCodAtd.Value), 7) + ' - ' + NomAtd, [NORMAL]);

      Inc(Linha);

    end;

    rdprint1.impf(Linha, 001, 'Cliente      : ' + preString(IntToStr(fmManPed.PedResCodCli.Value), 7) + ' - ' + copy(NomCli, 1, 40), [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 120, fmManPed.PedResUfeRes.Value, [EXPANDIDO, NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Entrega      : ' + EndEn1, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, '               ' + EndEn2, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, '               ' + EndEn3, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

    Inc(Linha);

    if upperCase(fmManGDB.BuscaSimples('PEDPAR', 'IMPREFDEP', ' 1 = 1 ')) <> 'SIM' then
      CodRef := 'Nosso Codigo'
    else
      CodRef := 'Referencia';

    rdprint1.impf(Linha, 001, CodRef {'Nosso Codigo'}, [NORMAL]);
    rdprint1.impf(Linha, 027, 'Descricao', [NORMAL]);
    rdprint1.impf(Linha, 114, 'Quant.', [NORMAL]);
    rdprint1.impf(Linha, 126, 'Sep.', [NORMAL]);
    rdprint1.impf(Linha, 134, 'UN', [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 14), [NORMAL]);
    rdprint1.impf(Linha, 027, fReplicate('-', 47), [NORMAL]);
    rdprint1.impf(Linha, 114, fReplicate('-', 06), [NORMAL]);
    rdprint1.impf(Linha, 126, fReplicate('-', 04), [NORMAL]);
    rdprint1.impf(Linha, 134, fReplicate('-', 02), [NORMAL]);

    Inc(Linha);

  end;
end;

end.

