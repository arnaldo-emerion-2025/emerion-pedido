unit ManSep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorEdit,clipbrd, DBGrids;

type
  TfmManSep = class(TfmPadrao)
    PedRes: TQuery;
    DsRes: TwwDataSource;
    quSql: TQuery;
    PedResNUMRES: TIntegerField;
    PedResTOTGER: TFloatField;
    PedResSLDGER: TFloatField;
    RDprint10: TRDprint;
    UpRes: TUpdateSQL;
    PedRe2: TQuery;
    PedRe2DSCPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    DsRe2: TwwDataSource;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResTOTRES: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResAPETRA: TStringField;
    PedResFLGIMP: TStringField;
    PedResCODVEN: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResCODFIL: TIntegerField;
    PedResLANEST: TStringField;
    PedResQTIRES: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResFLGSLD: TStringField;
    PedResQTDIMP: TIntegerField;
    PedResSITRES: TStringField;
    PedResPEDANT: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResUFERES: TStringField;
    quSQL1: TQuery;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2NRORE2: TIntegerField;
    PedRe2SLDRE2: TFloatField;
    PedResCODATD: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResDSRPFA: TStringField;
    PedResNOMCLI: TStringField;
    PedResNOMPFA: TStringField;
    PedResCLIENTE: TStringField;
    RDprint1: TRDprint;
    Panel2: TPanel;
    Label2: TLabel;
    Bevel2: TBevel;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    bAtualizar: TBitBtn;
    pnQtdReg: TPanel;
    grRes: TDBGrid;
    Panel3: TPanel;
    Label3: TLabel;
    Bevel3: TBevel;
    pnDteRes: TPanel;
    pnImpresso: TPanel;
    pnApeTra: TPanel;
    Panel4: TPanel;
    bExcluir: TSpeedButton;
    bImprimir: TSpeedButton;
    bIncluir: TSpeedButton;
    grRe2: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure batualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RDprint10NewPage(Sender: TObject; Pagina: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure CountRegistros;
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure PedResNOMPFAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure PedResCLIENTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure grResKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grResDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    {Private declarations}
    Linha: Integer;
    sBase: string;
    GImpRef: string;
    GImpLoc: string;
    GImpMrc: string;
    GImpTra: string;
    GImpObs: string;
    GImpFin: string;
  public
    {Public declarations}
    DteRes: TDateTime;
    CodEmp, NumRes, SeqLib: integer;
  end;

var
  NomTra: string;
  EndTr1: string;
  EndTr2: string;
  EndTr3: string;
  NomVen: string;
  NomAtd: string;
  NomCli: string;
  EndEn1: string;
  EndEn2: string;
  EndEn3: string;
  fmManSep: TfmManSep;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, AuxPsq, EmaPed,
     DM_Imprint, manLogSep;

{$R *.DFM}

procedure TfmManSep.CountRegistros;
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select Count(*) as QtdReg From PedRes' +
      ' Where PedRes.SitRes = ' + QuotedStr('Aguardando Separacao de Estoque');

    if CodEmp > 0 then
    begin

      Text := Text + ' and PedRes.CodEmp = ' + QuotedStr(IntToStr(CodEmp));
      Text := Text + ' and PedRes.DteRes = ' + QuotedStr(fDateToSQL(DteRes));
      Text := Text + ' and PedRes.NumRes = ' + QuotedStr(IntToStr(NumRes));

    end;

    Open;

    if FieldbyName('QtdReg').AsInteger > 0 then
      pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger) + ' Pedido(s)'
    else
      pnQtdReg.Caption := '0 Pedido(s)';

  end;

  //CodEmp := 0;
  //NumRes := 0;

end;

procedure TfmManSep.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    close;

  if key = 115 then
    bIncluir.OnClick(Sender);

  if key = 116 then
    bImprimir.OnClick(Sender);

  if key = 117 then
    bExcluir.OnClick(Sender);

end;

procedure TfmManSep.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,' +
    ' PedRes.DteRes, ' +
    ' PedRes.NumRes, ' +
    ' PedRes.UfeRes, ' +
    ' PedRes.HreRes, ' +
    ' PedRes.DtfRes, ' +
    ' PedRes.CodPfa, ' +
    ' PedRes.TipPfa, ' +
    ' PedRes.CodVen, ' +
    ' PedRes.CodAtd, ' +
    ' PedRes.CodCli, ' +
    ' PedRes.CodTra, ' +
    ' PedRes.CodFil, ' +
    ' PedRes.LanEst, ' +
    ' PedRes.QtiRes, ' +
    ' PedRes.QtpRes, ' +
    ' PedRes.QtdImp, ' +
    ' PedRes.FlgSld, ' +
    ' PedRes.TotRes, ' +
    ' PedRes.TotIpi, ' +
    ' PedRes.TotGer, ' +
    ' PedRes.SldGer, ' +
    ' PedRes.FlgImp, ' +
    ' PedRes.PedAnt, ' +
    ' PedRes.SitRes, ' +
    ' FinTra.ApeTra, ' +
    ' EstPfa.DsrPfa, ' +
    ' FinCli.NomCli ' +
    ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli) ' +
    ' LEFT JOIN FinTra ON (PedRes.CodTra = FinTra.CodTra) ' +
    ' LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa ' +
    ' AND  PedRes.TipPfa = EstPfa.TipPfa) ' +
    ' Where PedRes.SitRes = ' + QuotedStr('Aguardando Separacao de Estoque');

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

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select UsaDec From PedPar';
    Open;

    if FieldbyName('UsaDec').AsString = 'Sim' then
      PedRe2SldRe2.DisplayFormat := '###,###,##0.0000'
    else
      PedRe2SldRe2.DisplayFormat := '###,###,##0';

  end;

  EdPsqNumRes.SetFocus;

end;

procedure TfmManSep.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManSep.bImprimirClick(Sender: TObject);
var
  {PraMed, VlpCrp: real;
  NomMrc, NumPro, DscPro, RefPro: string;
  Coluna, CodMrc, QtdCol, CodEit: integer;
  TenCli, EndCli, NumCli, BaiCli, CidCli, UfeCli, CepCli, ObsRes, NomEnt, ImpRef, codref: string;}

  modelo: TModelo;
  EndTr3, sImprProd: string;
  NomMrc, NumPro, DscPro, GImpLoc: string;
  TotEst, ValDup, PrMedio: real;
  CodMrc, Tam, Coluna, CodEit: integer;
  NomTra, EndTr1, EndTr2, sImprPed, DesRe2, ObsRes, ImpRef, codref, LocPro: string;
  i: Integer;
  Found: Integer;
begin
  inherited;
  if PedResCodEmp.Value > 0 then
  begin

    CodEmp := PedResCodEmp.AsInteger;
    DteRes := PedResDteRes.AsDateTime;
    NumRes := PedResNumRes.AsInteger;

    with PedRes, SQL do
    begin

      Close;
      Text := sBase +
        ' and PedRes.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
        ' and PedRes.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
        ' and PedRes.NumRes = ' + QuotedStr(IntToStr(NumRes));
      Open;

    end;

    CountRegistros;

    if PedResCodEmp.Value > 0 then
    begin

      if fMsg('Imprime via de Separação dos Itens em Estoque ?', 'O') then
      begin

        //if ((pos('WINDOWS 10', ObterVersaoWindows) > 0) or (gStrWindows = '10')) then
        //begin
        //   //ImprimeViaSep(PedResCodEmp.Asinteger, PedResNumRes.Asinteger, PedResDteRes.AsDateTime);
        //   fmManPri.ImprimeViaSeparacaoDinamicamente(PedResCodEmp.Asinteger, PedResNumRes.Asinteger, PedResDteRes.AsDateTime);
        //end
        //else
        //  fmDM_Imprint.impviasep(PedResNUMRES.AsInteger);

        fmManPri.ImprimeViaSeparacaoDinamicamente(PedResCodEmp.Asinteger, PedResNumRes.Asinteger, PedResDteRes.AsDateTime);

        CodEmp := PedResCodEmp.AsInteger;
        DteRes := PedResDteRes.AsDateTime;
        NumRes := PedResNumRes.AsInteger;

        PedRes.Edit;

        PedResQtdImp.AsInteger := PedResQtdImp.AsInteger + 1;

        with PedRes do
        begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

          try

            ApplyUpdates; {Tenta aplicar as alterações}

            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

          except

            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

            if PedRes.State <> dsBrowse then
              PedRes.CancelUpdates;

            grRes.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRes.Close;
        PedRes.Open;

        PedRes.Locate('CodEmp;DteRes;NumRes', VarArrayOf([CodEmp, DteRes, NumRes]), [LoPartialKey]);

      end;

      //-------------------------------------------------------------------------
      if fMsg('Via de Separação Impressa Corretamente ?', 'O') then
      begin

        CodEmp := PedResCodEmp.AsInteger;
        DteRes := PedResDteRes.AsDateTime;
        NumRes := PedResNumRes.AsInteger;

        PedRes.Edit;

        PedResFlgSld.AsString := '*';

        //PedResQtdImp.AsInteger := PedResQtdImp.AsInteger + 1;

        PedResFlgImp.AsString := 'Sim';

        with PedRes do
        begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

          try

            ApplyUpdates; {Tenta aplicar as alterações}

            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

          except

            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

            if PedRes.State <> dsBrowse then
              PedRes.CancelUpdates;

            grRes.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRes.Close;
        PedRes.Open;

        PedRes.Locate('CodEmp;DteRes;NumRes', VarArrayOf([CodEmp, DteRes, NumRes]), [LoPartialKey]);

      end;
    end;
  end;

end;

procedure TfmManSep.bIncluirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if PedResCodEmp.Value > 0 then
    begin

      if PedResFlgImp.Value = 'Sim' then
      begin

        if fMsg('Confirma Liberação da Separacao do Pedido para Faturamento ?', 'O') then
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

          PedRes.Edit;

          if (PedResPEDANT.AsString = 'Sim') then
          begin
            PedResSitRes.Value := 'Aguardando Confirmacao do Pagamento';
          end
          else
          begin
            PedResSitRes.Value := 'Aguardando Liberacao para Faturamento';
          end;

          with PedRes do
          begin

            fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

            try

              ApplyUpdates; {Tenta aplicar as alterações}

              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

            except

              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

              if PedRes.State <> dsBrowse then
                PedRes.CancelUpdates;

              PedRes.Close;
              PedRes.Open;

              PedRes.Locate('CodEmp;DteRes;NumRes', VarArrayOf([CodEmp, DteRes, NumRes]), [LoPartialKey]);

              grRes.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          EdPsqNumRes.Text := '';

          with PedRes, SQL do
          begin

            Close;
            Text := sBase + ' Order by PedRes.NumRes';
            Open;

          end;

          CountRegistros;

        end;

      end
      else
        fmsgErro('Operação não Pode ser Realizada. Via para Separação do Pedido não Impressa.', nil);

    end;

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManSep.bExcluirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if PedResCodEmp.Value > 0 then
    begin

      if fMsg('Confirma Retorno do Pedido para o Vendedor ?', 'O') then
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

        PedRes.Edit;

        PedResSitRes.Value := 'Aguardando Complemento';

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

            if PedRes.State <> dsBrowse then
              PedRes.CancelUpdates;

            PedRes.Close;
            PedRes.Open;

            PedRes.Locate('CodEmp;DteRes;NumRes', VarArrayOf([CodEmp, DteRes, NumRes]), [LoPartialKey]);

            grRes.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

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

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManSep.batualizarClick(Sender: TObject);
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

    if PedResCodEmp.Value > 0 then
    begin

      CodEmp := PedResCodEmp.Value;
      DteRes := PedResDteRes.Value;
      NumRes := PedResNumRes.Value;

    end;

    CountRegistros;

  end
  else
  begin

    with PedRes, SQL do
    begin

      Close;
      Text := sBase + ' Order by PedRes.NumRes';

      if (DebugHook > 0) then
        clipboard.astext:=text;
        
      Open;

    end;

    CountRegistros;

  end;
end;

procedure TfmManSep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManSep.RDprint10NewPage(Sender: TObject; Pagina: Integer);
var
  CodRef, ImpRefDep, TitCodRef: string;
begin
  inherited;

  rdprint1.impf(Linha, 001, 'DEPOSITO', [EXPANDIDO, NORMAL]);

  Inc(Linha);

  if PedResPedAnt.Value = 'Nao' then
    rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(PedResDtfRes.Value), [EXPANDIDO, NORMAL])
  else
    rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(PedResDtfRes.Value) + ' - ANTECIPADO', [EXPANDIDO, NORMAL]);

  rdprint1.impf(Linha, 114, 'Pagina No. ' + fNumZeros(IntToStr(Pagina), 3), [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, 'Pedido       : ' + preString(IntToStr(PedResNumRes.Value), 7), [NORMAL, NEGRITO]);
  rdprint1.impf(Linha, 075, 'Data : ' + DateToStr(PedResDteRes.AsDateTime), [NORMAL]);
  rdprint1.impf(Linha, 111, 'Hora : ' + PedResHreRes.AsString, [NORMAL]);
  rdprint1.impf(Linha, 128, 'Nro Imp : ' + PedResQtdImp.AsString, [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, 'Vendedor     : ' + preString(IntToStr(PedResCodVen.Value), 7) + ' - ' + NomVen, [NORMAL]);

  Inc(Linha);

  if PedResCodAtd.Value > 0 then
  begin

    rdprint1.impf(Linha, 001, 'Atendente    : ' + preString(IntToStr(PedResCodAtd.Value), 7) + ' - ' + NomAtd, [NORMAL]);

    Inc(Linha);

  end;

  rdprint1.impf(Linha, 001, 'Cliente      : ' + preString(IntToStr(PedResCodCli.Value), 7) + ' - ' + copy(NomCli, 1, 40), [NORMAL, NEGRITO]);
  rdprint1.impf(Linha, 120, PedResUfeRes.Value, [EXPANDIDO, NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, 'Entrega      : ' + EndEn1, [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, '               ' + EndEn2, [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, '               ' + EndEn3, [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

  Inc(Linha);
  ImpRefDep := fmManGDB.BuscaSimples('PEDPAR', 'IMPREFDEP', ' 1 = 1 ');

  if uppercase(ImpRefDep) <> 'SIM' then
    TitCodRef := 'Nosso Codigo'
  else
    TitCodRef := 'Referencia';

  rdprint1.impf(Linha, 001, TitCodRef {'Nosso Codigo'}, [NORMAL]);
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

procedure TfmManSep.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSep := nil;
end;

procedure TfmManSep.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnApeTra.Caption := PedResApeTra.Value;

  if PedResFlgImp.Value = 'Sim' then
    pnImpresso.Caption := 'Impresso'
  else
    pnImpresso.Caption := 'Nao Impresso';

  if PedResCodEmp.Value > 0 then
    pnDteRes.Caption := ' Emitido Em ' + (PedResDteRes.AsString)
  else
    pnDteRes.Caption := ' Emitido Em ';

end;

procedure TfmManSep.PedResNOMPFAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if PedResCodEmp.Value > 0 then
    Text := PedResCodPfa.Value + ' - ' + PedResDsrPfa.Value
  else
    Text := ' ';
end;

procedure TfmManSep.PedResCLIENTEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if PedResCodEmp.Value > 0 then
    Text := IntToStr(PedResCodCli.Value) + ' - ' + PedResNomCli.Value
  else
    Text := ' ';
end;

procedure TfmManSep.RDprint1NewPage(Sender: TObject; Pagina: Integer);
var
  CodRef, ImpRefDep, TitCodRef: string;
begin
  inherited;
  Linha := 1;
  rdprint1.impf(Linha, 001, 'DEPOSITO', [EXPANDIDO, NORMAL]);

  Inc(Linha);

  if PedResPedAnt.Value = 'Nao' then
    rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(PedResDtfRes.Value), [EXPANDIDO, NORMAL])
  else
    rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(PedResDtfRes.Value) + ' - ANTECIPADO', [EXPANDIDO, NORMAL]);

  rdprint1.impf(Linha, 114, 'Pagina No. ' + fNumZeros(IntToStr(Pagina), 3), [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, 'Pedido       : ' + preString(IntToStr(PedResNumRes.Value), 7), [NORMAL, NEGRITO]);
  rdprint1.impf(Linha, 075, 'Data : ' + DateToStr(PedResDteRes.Value), [NORMAL]);
  rdprint1.impf(Linha, 111, 'Hora : ' + PedResHreRes.Value, [NORMAL]);
  rdprint1.impf(Linha, 128, 'Nro Imp : ' + PedResQtdImp.AsString, [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, 'Vendedor     : ' + preString(IntToStr(PedResCodVen.Value), 7) + ' - ' + NomVen, [NORMAL]);

  Inc(Linha);

  if PedResCodAtd.Value > 0 then
  begin

    rdprint1.impf(Linha, 001, 'Atendente    : ' + preString(IntToStr(PedResCodAtd.Value), 7) + ' - ' + NomAtd, [NORMAL]);

    Inc(Linha);

  end;

  rdprint1.impf(Linha, 001, 'Cliente      : ' + preString(IntToStr(PedResCodCli.Value), 7) + ' - ' + copy(NomCli, 1, 40), [NORMAL, NEGRITO]);
  rdprint1.impf(Linha, 120, PedResUfeRes.Value, [EXPANDIDO, NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, 'Entrega      : ' + EndEn1, [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, '               ' + EndEn2, [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, '               ' + EndEn3, [NORMAL]);

  Inc(Linha);

  rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

  Inc(Linha);
  ImpRefDep := fmManGDB.BuscaSimples('PEDPAR', 'IMPREFDEP', ' 1 = 1 ');

  if uppercase(ImpRefDep) <> 'SIM' then
    TitCodRef := 'Nosso Codigo'
  else
    TitCodRef := 'Referencia';

  rdprint1.impf(Linha, 001, TitCodRef {'Nosso Codigo'}, [NORMAL]);
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

procedure TfmManSep.grResKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ( key in [ord('l'),ord('L')] ) and (shift = [ssCTRL]) then
  begin
       fmManLogSep := TfmManLogSep.Create(self);
       try
           fmManLogSep.ShowModal(PedresCodemp.AsInteger,PedresNumres.AsInteger,PedresDteRes.AsDatetime);
       finally
            FreeAndNil(fmManLogSep);
       end;
  end;
end;

procedure TfmManSep.grResDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if PedRes.IsEmpty then exit;

  if PedResQTDIMP.AsInteger > 0 then
  begin
    if (gdSelected in State) and grRes.Focused then
    begin
      grRes.Canvas.Brush.Color := $0001019E;
      grRes.Canvas.Font.Color := clWhite;
      grRes.DefaultDrawDataCell(Rect, Column.Field, State);
    end
    else
    begin
      grRes.Canvas.Brush.Color := $005151F4;
      grRes.Canvas.Font.Color := clWhite;
      grRes.DefaultDrawDataCell(Rect, Column.Field, State);
    end;
  end;
end;

end.

