unit ManFin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorEdit;

type
  TfmManFin = class(TfmPadrao)
    PedRes: TwwQuery;
    PedOco: TwwQuery;
    DsLib: TwwDataSource;
    DsRes: TwwDataSource;
    Label2: TLabel;
    Bevel2: TBevel;
    grRes: ThGrid;
    quSql: TwwQuery;
    PedResNUMRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResNOMCLI: TStringField;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    UpRes: TUpdateSQL;
    PedOcoCODEMP: TIntegerField;
    PedOcoNUMRES: TIntegerField;
    PedOcoSEQOCO: TIntegerField;
    PedOcoNOMOCO: TStringField;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    PedOcoDTERES: TDateTimeField;
    bAnalise: TSpeedButton;
    pnFlbCli: TPanel;
    dbRes: TdxDBGraphicEdit;
    PedOcoTIPOCO: TStringField;
    PedOcoNRORE2: TIntegerField;
    bVencimento: TSpeedButton;
    bAtualizar: TBitBtn;
    bObservar: TSpeedButton;
    PedResCODEMP: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResFLBCLI: TStringField;
    PedResSITRES: TStringField;
    PedResFLGSLD: TStringField;
    PedResFLGGER: TStringField;
    pnQtdReg: TPanel;
    pnApeTra: TPanel;
    PedResCODTRA: TIntegerField;
    PedResAPETRA: TStringField;
    pnVendedor: TPanel;
    mmPopCli: TPopupMenu;
    ABE0101: TMenuItem;
    ABE0102: TMenuItem;
    FIN02010301: TMenuItem;
    Label1: TLabel;
    Memo1: TMemo;
    quRAF: TwwQuery;
    quRAFFATURADO: TFloatField;
    quRAFRECEBIDO: TFloatField;
    quRAFVLR_EM_ABERTO: TFloatField;
    quRAFQTD_EM_ABERTO: TIntegerField;
    quRAFCANCELADO_DEVOLVIDO: TFloatField;
    quRAFQTD_CANCELADO_DEVOLVIDO: TIntegerField;
    quRAFCHEQUE_PENDENTE: TFloatField;
    quRAFCHEQUE_DEVOLVIDO: TFloatField;
    quRAFTOT_RECEBER: TFloatField;
    quRAFTOT_INCOBRAVEL: TFloatField;
    quRAFTIT_DESC: TFloatField;
    quRAFTOTAL_ACRESCIMO: TFloatField;
    quRAFTOT_DESCONTO: TFloatField;
    quRAFTOTAL_EM_ATRASO: TFloatField;
    quRAFPESQUISADO_DESDE: TDateTimeField;
    quRAFPERIODO_PESQ: TFloatField;
    quRAFMAIOR_COMPRA: TFloatField;
    quRAFMAIOR_COMPRA_DATA: TDateTimeField;
    quRAFMENOR_COMPRA: TFloatField;
    quRAFMENOR_COMPRA_DATA: TDateTimeField;
    quRAFULTIMA_COMPRA: TFloatField;
    quRAFULTIMA_COMPRA_DATA: TDateTimeField;
    quRAFMEDIA_COMPRA: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    quRAFQTD_TOT_INCOBRAVEL: TIntegerField;
    quRAFQTD_TOTAL_EM_ATRASO: TIntegerField;
    quRAFPRAZO_MEDIO: TFloatField;
    quRAFATRASO_MEDIO: TFloatField;
    quRAFLIMITE: TFloatField;
    quRAFDATA_LIMITE: TDateTimeField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bIncluirClick(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bAnaliseClick(Sender: TObject);
    procedure bVencimentoClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bObservarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure FIN02010301Click(Sender: TObject);
    procedure PedOcoAfterOpen(DataSet: TDataSet);
  private
    {Private declarations}
    sBase: string;
    CodEmp: integer;
    DteRes: TDateTime;
    NumRes, NumRes2: integer;
  public
    {Public declarations}
  end;

var
  fmManFin: TfmManFin;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManObs, ManLre,
  ManPre, ManObp, ManCli;

{$R *.DFM}

procedure TfmManFin.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    close;

  if key = 113 then
    bVencimento.OnClick(Sender);

  if key = 114 then
    bEditar.OnClick(Sender);

  if key = 115 then
    bIncluir.OnClick(Sender);

  if key = 116 then
    bObservar.OnClick(Sender);

  if key = 117 then
    bAnalise.OnClick(Sender);

end;

procedure TfmManFin.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,' +
    '        PedRes.DteRes,' +
    '        PedRes.NumRes,' +
    '        PedRes.CodVen,' +
    '        PedRes.CodCli,' +
    '        PedRes.CodPfa,' +
    '        PedRes.CodTra,' +
    '        PedRes.TotRes,' +
    '        PedRes.TotGer,' +
    '        PedRes.TotRen,' +
    '        PedRes.FlgSld,' +
    '        PedRes.FlgGer,' +
    '        PedRes.SitRes,' +
    '        FinTra.ApeTra,' +
    '        FinCli.NomCli,' +
    '        FinCli.FlbCli ' +
    ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)' +
    '             LEFT JOIN FinTra ON (PedRes.CodTra = FinTra.CodTra)' +
    ' Where PedRes.SitRes = ' + QuotedStr('Aguardando Liberacao do Depto Financeiro');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
  begin

    if GCodVen_Id > 0 then
      sBase := sBase + ' and PedRes.CodVen = ' + QuotedStr(IntToStr(GCodVen_Id));

  end;

  with PedRes, SQL do
  begin

    Close;
    Text := sBase + ' Order by PedRes.NumRes';
    Open;

  end;

  CountRegistros;

  EdPsqNumRes.SetFocus;

end;

procedure TfmManFin.bIncluirClick(Sender: TObject);
var
  sCorreto: string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if PedResCodEmp.Value > 0 then
    begin

      CodEmp := PedResCodEmp.Value;
      DteRes := PedResDteRes.Value;
      NumRes := PedResNumRes.Value;

      with PedRes, SQL do
      begin

        Close;
        Text := sBase +
          '   and PedRes.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
          '   and PedRes.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
          '   and PedRes.NumRes = ' + QuotedStr(IntToStr(NumRes));
        Open;

      end;

      CountRegistros;

      if PedResCodEmp.Value > 0 then
      begin

        try

          fmManLre := TfmManLre.Create(Self);

          fmManLre.PedRes.Close;
          fmManLre.PedRes.Params[0].AsInteger := PedResCodEmp.Value;
          fmManLre.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
          fmManLre.PedRes.Params[2].AsInteger := PedResNumRes.Value;
          fmManLre.PedRes.Open;

          fmManLre.ShowModal;

          sCorreto := fmManLre.Liberar;

        finally

          FreeAndNil(fmManLre);

        end;

        if sCorreto = 'Sim' then
        begin

          EdPsqNumRes.Text := '';

          with PedRes, SQL do
          begin

            Close;
            Text := sBase + ' Order by PedRes.NumRes';
            Open;

          end;

          CountRegistros;

        end;
      end;
    end;

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManFin.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManFin.bAnaliseClick(Sender: TObject);
var
  DteRes: TDateTime;
  CodEmp, NumRes, I: integer;
  linhaCompleta : String;

  function getMsgFormatada(tipo: String; tamanhoFinal: Integer; conteudo: String; formato: String = '#,#0.00'): String;
    begin
        if(Trim(conteudo) = '') then
           conteudo := '0';

       if(formato = '#,#0.00') then
          begin
             if(tipo = 'ANTES') then
                Result := Replicate(' ', tamanhoFinal - Length(FormatFloat(formato, StrToFloat(conteudo)))) + FormatFloat(formato, StrToFloat(conteudo))
             else
                Result := FormatFloat(formato, StrToFloat(conteudo)) + Replicate(' ', tamanhoFinal - Length(FormatFloat(formato, StrToFloat(conteudo))));
          end
       else
          begin
             if(tipo = 'ANTES') then
                Result := Replicate(' ', tamanhoFinal - Length(conteudo)) + conteudo
             else
                Result := conteudo + Replicate(' ', tamanhoFinal - Length(conteudo));
          end;
    end;

begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if PedResCodEmp.Value > 0 then
    begin

      CodEmp := PedResCodEmp.Value;
      DteRes := PedResDteRes.Value;
      NumRes := PedResNumRes.Value;

      with PedRes, SQL do
      begin

        Close;
        Text := sBase +
          '   and PedRes.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
          '   and PedRes.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
          '   and PedRes.NumRes = ' + QuotedStr(IntToStr(NumRes)) +
          ' Order by PedRes.NumRes';
        Open;

      end;

      CountRegistros;

      if PedResCodEmp.Value > 0 then
      begin

        if fMsg('Confirma Analise Financeira do Cliente ?', 'O') then
        begin

          PedRes.Edit;

          PedResFlgSld.Value := '*';

          PedResFlgGer.Value := 'Sim';

          with PedRes do
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

              PedRes.Close;
              PedRes.Open;

              PedOco.Close;
              PedOco.Open;

              grRes.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          PedRes.Close;
          PedRes.Open;

          CountRegistros;

          PedOco.Close;
          PedOco.Open;

          grRes.SetFocus;

        end;
      end;
    end;

    quRAF.Active := False;
    quRAF.Params.ParamByName('CODCLI').AsInteger := PedRes.FieldByName('CODCLI').AsInteger;
    quRAF.Active := True;

    Memo1.Lines.add('');
    Memo1.Lines.add('------------------------ANALISE FINANCEIRA-----------------------------------------------');
    Memo1.Lines.add('');

    if(quRAF.RecordCount > 0) then
       begin
          Memo1.Lines.add('Total Faturado        : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('FATURADO').AsString));
          Memo1.Lines.add('Total Recebido        : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('RECEBIDO').AsString));

          Memo1.Lines.add('Valor em Aberto       : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('VLR_EM_ABERTO').AsString) + #9 +
                                                       quRAF.FieldByName('QTD_EM_ABERTO').AsString);

          Memo1.Lines.add('Cancelado / Devolvido : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('CANCELADO_DEVOLVIDO').AsString) + #9 +
                                                       quRAF.FieldByName('QTD_CANCELADO_DEVOLVIDO').AsString);

          Memo1.Lines.add('Cheques Pendentes     : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('CHEQUE_PENDENTE').AsString));
          Memo1.Lines.add('Cheques Devolvidos    : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('CHEQUE_DEVOLVIDO').AsString));
          Memo1.Lines.add('Total a Receber       : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('TOT_RECEBER').AsString));

          Memo1.Lines.add('Total Incobrável      : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('TOT_INCOBRAVEL').AsString) + #9 +
                                                       quRAF.FieldByName('QTD_TOT_INCOBRAVEL').AsString);

          Memo1.Lines.add('Títulos Descontados   : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('TIT_DESC').AsString));

          Memo1.Lines.add('Totais de Acréscimo   : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('TOTAL_ACRESCIMO').AsString));
          Memo1.Lines.add('Totais de Desconto    : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('TOT_DESCONTO').AsString));

          Memo1.Lines.add('Títulos Atrasados     : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('TOTAL_EM_ATRASO').AsString) + #9 +
                                                       quRAF.FieldByName('QTD_TOTAL_EM_ATRASO').AsString);

          Memo1.Lines.add('Pesquisado Desde      : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('PESQUISADO_DESDE').AsString, ''));
          Memo1.Lines.add('Período Pesquisado    : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('PERIODO_PESQ').AsString, ''));

          Memo1.Lines.add('Maior Compra          : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('MAIOR_COMPRA').AsString) + #9 +
                                                       quRAF.FieldByName('MAIOR_COMPRA_DATA').AsString);

          Memo1.Lines.add('Menor Compra          : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('MENOR_COMPRA').AsString) + #9 +
                                                       quRAF.FieldByName('MENOR_COMPRA_DATA').AsString);

          Memo1.Lines.add('Última Compra         : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('ULTIMA_COMPRA').AsString) + #9 +
                                                       quRAF.FieldByName('ULTIMA_COMPRA_DATA').AsString);

          Memo1.Lines.add('Média no Período      : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('MEDIA_COMPRA').AsString));
          Memo1.Lines.add('Prazo Médio           : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('PRAZO_MEDIO').AsString));
          Memo1.Lines.add('Atraso Médio          : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('ATRASO_MEDIO').AsString, ''));

          Memo1.Lines.add('Limite de Crédito     : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('LIMITE').AsString, ''));
          Memo1.Lines.add('Data Limite           : ' + getMsgFormatada('ANTES', 12, quRAF.FieldByName('DATA_LIMITE').AsString, ''));

          linhaCompleta := '';
          for I:= 0 to Memo1.Lines.Count -1 do
             begin
                if(pos('DATA DA ULTIMA ANALISE', Memo1.Lines.Strings[I]) > 0) then
                   linhaCompleta := Memo1.Lines.Strings[I];
             end;

          if(linhaCompleta <> '') then
             begin
                Memo1.Lines.Add(getMsgFormatada('DEPOIS', 22, copy(linhaCompleta, 1, 22),'') + ': ' + getMsgFormatada('ANTES', 12, copy(linhaCompleta, 25, 10), ''));
                Memo1.Lines.Add(getMsgFormatada('DEPOIS', 22, copy(linhaCompleta, 35, 7),'') + ': ' + getMsgFormatada('ANTES', 12, copy(linhaCompleta, 42, 8), ''));
                Memo1.Lines.Add(getMsgFormatada('DEPOIS', 22, copy(linhaCompleta, 50, 7),'') + ': ' + getMsgFormatada('ANTES', 12, copy(linhaCompleta, 57, length(linhaCompleta) - 56), ''));
             end;

          Memo1.Lines.add('');
       end;
  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManFin.bVencimentoClick(Sender: TObject);
begin
  inherited;
  if PedResCodEmp.Value > 0 then
  begin

    CodEmp := PedResCodEmp.Value;
    DteRes := PedResDteRes.Value;
    NumRes := PedResNumRes.Value;

    with PedRes, SQL do
    begin

      Close;
      Text := sBase +
        '   and PedRes.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
        '   and PedRes.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
        '   and PedRes.NumRes = ' + QuotedStr(IntToStr(NumRes));
      Open;

    end;

    CountRegistros;

    if PedResCodEmp.Value > 0 then
    begin

      try

        fmManPre := TfmManPre.Create(Self);

        fmManPre.CodEmp := PedResCodEmp.Value;
        fmManPre.DteRes := PedResDteRes.Value;
        fmManPre.NumRes := PedResNumRes.Value;

        fmManPre.ShowModal;

      finally

        FreeAndNil(fmManPre);

      end;
    end;
  end;
end;

procedure TfmManFin.bEditarClick(Sender: TObject);
var
  sCorreto: string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if PedResCodEmp.Value > 0 then
    begin

      CodEmp := PedResCodEmp.Value;
      DteRes := PedResDteRes.Value;
      NumRes := PedResNumRes.Value;

      with PedRes, SQL do
      begin

        Close;
        Text := sBase +
          '   and PedRes.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
          '   and PedRes.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
          '   and PedRes.NumRes = ' + QuotedStr(IntToStr(NumRes));
        Open;

      end;

      CountRegistros;

      if PedResCodEmp.Value > 0 then
      begin

        try

          fmManObs := TfmManObs.Create(Self);

          fmManObs.Caption := 'Liberações de Pedidos Aguardando Depto Financeiro';

          fmManObs.PedRes.Close;
          fmManObs.PedRes.Params[0].AsInteger := PedResCodEmp.Value;
          fmManObs.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
          fmManObs.PedRes.Params[2].AsInteger := PedResNumRes.Value;
          fmManObs.PedRes.Open;

          fmManObs.ShowModal;

          sCorreto := fmManObs.sCorreto;

        finally

          FreeAndNil(fmManObs);

        end;

        if sCorreto = 'Sim' then
        begin

          EdPsqNumRes.Text := '';

          with PedRes, SQL do
          begin

            Close;
            Text := sBase + ' Order by PedRes.NumRes';
            Open;

          end;

          CountRegistros;

        end;
      end;
    end;

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManFin.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    with PedRes, SQL do
    begin

      Close;
      Text := sBase +
        '   and PedRes.NumRes = ' + QuotedStr(EdPsqNumRes.Text) +
        ' Order by PedRes.NumRes';
      Open;

    end;

  end
  else
  begin

    with PedRes, SQL do
    begin

      Close;
      Text := sBase + ' Order by PedRes.NumRes';
      Open;

    end;
  end;

  CountRegistros;

end;

procedure TfmManFin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManFin.bObservarClick(Sender: TObject);
begin
  inherited;
  if PedResCodEmp.Value > 0 then
  begin

    CodEmp := PedResCodEmp.Value;
    DteRes := PedResDteRes.Value;
    NumRes := PedResNumRes.Value;

    with PedRes, SQL do
    begin

      Close;
      Text := sBase +
        '   and PedRes.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
        '   and PedRes.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
        '   and PedRes.NumRes = ' + QuotedStr(IntToStr(NumRes));
      Open;

    end;

    CountRegistros;

    if PedResCodEmp.Value > 0 then
    begin

      try

        fmManObp := TfmManObp.Create(Self);

        fmManObp.PedRes.Close;
        fmManObp.PedRes.Params[0].AsInteger := PedResCodEmp.Value;
        fmManObp.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
        fmManObp.PedRes.Params[2].AsInteger := PedResNumRes.Value;
        fmManObp.PedRes.Open;

        fmManObp.ShowModal;

      finally

        FreeAndNil(fmManObp);

      end;
    end;
  end;
end;

procedure TfmManFin.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManFin := nil;
end;

procedure TfmManFin.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnApeTra.Caption := PedResApeTra.Value;

  if PedResFlbCli.Value = '*' then
  begin

    if not pnFlbCli.Visible then
      pnFlbCli.Visible := True;

  end
  else
  begin

    if pnFlbCli.Visible then
      pnFlbCli.Visible := False;

  end;

  if PedResCodCli.Value > 0 then
    pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value), 7)
  else
    pnCodCli.Caption := ' Código do Cliente : ';

  if PedResCodVen.AsInteger > 0 then
     pnVendedor.Caption := ' Vendedor: ' + FmManGdb.BuscaSimples('FinVen', 'nomVen',' codven = '+PedResCodVen.AsString)
  else
     pnVendedor.Caption := ' Vendedor: ';      

end;

procedure TfmManFin.CountRegistros;
begin

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select Count(*) as QtdReg From PedRes' +
      ' Where PedRes.SitRes = ' + QuotedStr('Aguardando Liberacao do Depto Financeiro');

    if CodEmp > 0 then
    begin

      Text := Text + ' and PedRes.CodEmp = ' + QuotedStr(IntToStr(CodEmp));
      Text := Text + ' and PedRes.DteRes = ' + QuotedStr(fDateToSQL(DteRes));
      Text := Text + ' and PedRes.NumRes = ' + QuotedStr(IntToStr(NumRes));

    end;

    if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
    begin

      if GCodVen_Id > 0 then
        Text := Text + ' and PedRes.CodVen = ' + QuotedStr(IntToStr(GCodVen_Id));

    end;

    Open;

    if FieldbyName('QtdReg').AsInteger > 0 then
      pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger) + ' Pedido(s)'
    else
      pnQtdReg.Caption := '0 Pedido(s)';

  end;

  CodEmp := 0;
  NumRes := 0;

end;

procedure TfmManFin.FIN02010301Click(Sender: TObject);
var
  Found, i: Integer;
begin
  inherited;
  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[i] is TfmManCli then
      Found := i;
  end;

  if(PedResCODCLI.AsInteger > 0) then
     begin
        fmManCli := TfmManCli.create(Self);
        fmManCli.analiseFinanceira(PedResCODCLI.AsInteger, Found < 0);
     end;
end;

procedure TfmManFin.PedOcoAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if(PedResNUMRES.AsInteger <> NumRes2) then
     begin
        PedOco.First;

        Memo1.Lines.Clear;

        while not(PedOco.EOF) do
           begin
              Memo1.Lines.add(Trim(PedOco.FieldByName('NOMOCO').AsString));
              PedOco.Next;
           end;

        NumRes2 := PedResNUMRES.AsInteger;
     end;
end;

end.
