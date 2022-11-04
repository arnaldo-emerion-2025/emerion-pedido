unit DM_Imprint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RDprint, Db, DBTables, BbFuncao, Bbgeral;

type
  TfmDM_Imprint = class(TDataModule)
    RDprint1: TRDprint;
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    PedAnt, DtfRes, DteRes, HreRes, NumRes, CodEmp, CodVen, NomCli,
      NomAtd, NomVen, CodAtd, CodCli, UfeRes, CgcCli, QtdImp: string;

    NomTra, EndTr1, EndTr2,
      EndTr3, EndEn1, EndEn2, EndEn3, ObsRes,
      GImpMrc, GImpTra, GImpObs, GImpFin, GImpLoc,
      ImpRef, codref, DesRe2, NumPro, DscPro,
      LocPro, NomMrc: string;

    sCabe: string;

    Linha: integer;
  public
    { Public declarations }
    formatDecimalViaSep  : string;
    procedure ImpPedidoVenda(idPed: Integer);
    procedure ImpViaSep(idPed: Integer);
  end;

var
  fmDM_Imprint: TfmDM_Imprint;

implementation

uses ManGDB, ManViaSep, manPed;

{$R *.DFM}

{ TDataModule1 }

procedure TfmDM_Imprint.ImpPedidoVenda(idPed: Integer);
var
  QuPedRes: TQuery;
  QuTemp: TQuery;

  PrMedio: Double;
  CodEmp, CodEit, TotEst, Coluna: integer;
begin

  QuPedRes := TQuery.Create(Self);
  QuTemp := TQuery.Create(Self);

  try
    QuPedRes.DatabaseName := 'ISade';
    QuTemp.DatabaseName := 'ISade';

    QuPedRes.Active := False;

    QuPedRes.SQL.Text := 'Select * from pedres where numres = ' + inttostr(idPed);
    QuPedRes.Active := True;

    PedAnt := quPedRes.FieldByName('PedAnt').AsString;
    DtfRes := FormatDateTime('dd/mm/yyyy', quPedRes.FieldByName('DtfRes').AsDateTime);
    NumRes := quPedRes.FieldByName('NumRes').AsString;
    HreRes := quPedRes.FieldByName('HreRes').AsString;
    QtdImp := QuPedRes.FieldByname('QtdImp').AsString;
    DteRes := FormatDateTime('dd/mm/yyyy', quPedRes.FieldByName('DteRes').AsDateTime);
    CodVen := quPedRes.FieldByName('CodVen').AsString;
    CodAtd := quPedRes.FieldByName('CodAtd').AsString;
    CodCli := quPedRes.FieldByName('CodCli').AsString;
    UfeRes := quPedRes.FieldByName('UfeRes').AsString;
    CgcCli := quPedRes.FieldByName('CgcCli').AsString;

    NomVen := fmManGdb.BuscaSimples('FinVen', 'ApeVen', ' CodVen = ' + IntToStr(QuPedRes.FieldByName('CodVen').AsInteger));
    NomAtd := fmManGdb.BuscaSimples('FinAtd', 'ApeAtd', ' CodAtd = ' + IntToStr(QuPedRes.FieldByName('CodAtd').AsInteger));
    NomCli := fmManGdb.BuscaSimples('FinCli', 'NomCli', ' CodCli = ' + IntToStr(QuPedRes.FieldByName('CodCli').AsInteger));

    QuTemp.Close;
    QuTemp.SQL.Text := ' Select FinTra.NomTra,' +
      ' FinTra.TenTra,' +
      ' FinTra.EndTra,' +
      ' FinTra.NumTra,' +
      ' FinTra.BaiTra,' +
      ' FinTra.CidTra,' +
      ' FinTra.SigUfe,' +
      ' FinTra.CepTra,' +
      ' FinTra.PrtTra,' +
      ' FinTra.FonTra' +
      ' From FinTra ' +
      ' Where FinTra.CodTra = ' + IntToStr(QuPedRes.FieldByName('CodTra').AsInteger);
    QuTemp.Open;

    if Trim(QuTemp.FieldbyName('NomTra').AsString) <> '' then
    begin

      NomTra := QuTemp.FieldbyName('NomTra').AsString;

      if Trim(QuTemp.FieldbyName('TenTra').AsString) <> '' then
        EndTr1 := Trim(QuTemp.FieldbyName('TenTra').AsString) + ' ' + Trim(QuTemp.FieldbyName('EndTra').AsString)
      else
        EndTr1 := Trim(QuTemp.FieldbyName('EndTra').AsString);

      if Trim(QuTemp.FieldbyName('NumTra').AsString) <> '' then
        EndTr1 := EndTr1 + ', ' + Trim(QuTemp.FieldbyName('NumTra').AsString);

      if Trim(QuTemp.FieldbyName('BaiTra').AsString) <> '' then
        EndTr1 := EndTr1 + ' Bairro ' + Trim(QuTemp.FieldbyName('BaiTra').AsString);

      EndTr2 := 'Cidade ' + Trim(QuTemp.FieldbyName('CidTra').AsString) + ' UF ' + QuTemp.FieldbyName('SigUfe').AsString;

      if Trim(QuTemp.FieldbyName('CepTra').AsString) <> '' then
        EndTr2 := EndTr2 + ' Cep: ' + copy(QuTemp.FieldbyName('CepTra').AsString, 1, 5) + '-' + copy(QuTemp.FieldbyName('CepTra').AsString, 6, 3);

      EndTr3 := 'TeleFone ' + '(' + Trim(QuTemp.FieldbyName('PrtTra').AsString) + ') ' + Trim(QuTemp.FieldbyName('FonTra').AsString);

    end;

    EndEn1 := Trim(QuPedRes.FieldbyName('NomEnt').AsString);

    if Trim(QuPedRes.FieldbyName('TenCli').AsString) <> '' then
      EndEn2 := Trim(QuPedRes.FieldbyName('TenCli').AsString) + ' ' + Trim(QuPedRes.FieldbyName('EndCli').AsString)
    else
      EndEn2 := Trim(QuPedRes.FieldbyName('EndCli').AsString);

    if Trim(QuPedRes.FieldbyName('NumCli').AsString) <> '' then
      EndEn2 := EndEn2 + ', ' + Trim(QuPedRes.FieldbyName('NumCli').AsString);

    if Trim(QuPedRes.FieldbyName('BaiCli').AsString) <> '' then
      EndEn2 := EndEn2 + ' Bairro ' + Trim(QuPedRes.FieldbyName('BaiCli').AsString);

    // EndEn3 := 'Cidade ' + Trim(QuPedRes.FieldbyName('CidCli').AsString) + ' UF ' + QuPedRes.FieldbyName('UfeCli').AsString;

    EndEn3 := 'Cidade ' + Trim(QuPedRes.FieldbyName('CidCli').AsString) + ' UF ' + QuPedRes.FieldbyName('UfeCli').AsString;

    if Trim(QuPedRes.FieldbyName('CepCli').AsString) <> '' then
      EndEn3 := EndEn3 + ' Cep: ' + copy(QuPedRes.FieldbyName('CepCli').AsString, 1, 5) + '-' + copy(QuPedRes.FieldbyName('CepCli').AsString, 6, 3);

    ObsRes := QuPedRes.FieldbyName('ObsRes').AsString;

    CodEmp := QuPedRes.FieldbyName('CodEmp').AsInteger;

    //Não sei a finalidade
    if QuPedRes.FieldbyName('LanEst').Value = 'Sim' then
    begin
      if QuPedRes.FieldbyName('CodFil').Value > 0 then
        CodEmp := QuPedRes.FieldbyName('CodFil').Value;
    end;

    //if sImprPed = 'S' then
    sCabe := '1';
    //else
    //   sCabe := '2';

    CodEit := QuPedRes.FieldbyName('CodEmp').AsInteger;

    //Continuo não sabendo
    if QuPedRes.FieldbyName('LanEst').Value = 'Sim' then
    begin
      if QuPedRes.FieldbyName('CodFil').Value > 0 then
        CodEit := QuPedRes.FieldbyName('CodFil').Value;
    end;

    rdprint1.OpcoesPreview.Preview := True;
    rdprint1.OpcoesPreview.PreviewZoom := 100;
    rdprint1.TamanhoQteLPP := seis;
    rdprint1.UsaGerenciadorImpr := True;

    with quTemp, SQL do
    begin

      Close;
      Text := ' Select * From PedPar';
      Open;

      if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
        GFlgImp := FieldByName('FlgImp').AsString
      else
        GFlgImp := 'Sim';

      GImpMrc := FieldByName('ImpMrc').AsString;
      GImpTra := FieldByName('ImpTra').AsString;
      GImpObs := FieldByName('ImpObs').AsString;
      GImpFin := FieldByName('ImpFin').AsString;
      GImpLoc := FieldbyName('ImpLoc').AsString;

    end;

    if GFlgImp = 'Nao' then
    begin
      if GCodVen_Id > 0 then
      begin
        rdprint1.OpcoesPreview.BotaoGravar := Inativo;
        rdprint1.OpcoesPreview.BotaoImprimir := Inativo;

      end;
    end;

    rdprint1.TamanhoQteColunas := 136;
    rdprint1.FonteTamanhoPadrao := s17cpp;

    {Inicio...}
    with rdprint1 do
    begin

      abrir; {inicializa o arquivo de impressao...}

      TotEst := 0;

      //Itens ----------------------------------------------------------------------------
      quTemp.Close;
      quTemp.SQL.Text := ' Select PedRe2.CodGru,' +
        ' PedRe2.CodSub,' +
        ' PedRe2.CodPro,' +
        ' PedRe2.DesRe2,' +
        ' PedRe2.ObsRe2,' +
        ' PedRe2.QtpRe2,' +
        ' PedRe2.VluRe2,' +
        ' PedRe2.DscRe2,' +
        ' PedRe2.DspRe2,' +
        ' PedRe2.PacRe2,' +
        ' PedRe2.VlqRe2,' +
        ' PedRe2.TotRe2' +
        ' From PedRe2' +
        ' Where PedRe2.CodEmp = ' + QuPedRes.FieldbyName('CodEmp').AsString +
        ' and PedRe2.DteRes = ' + quotedStr(FormatDateTime('yyyy-mm-dd', QuPedRes.FieldbyName('DteRes').AsDateTime)) +
        ' and PedRe2.NumRes = ' + QuPedRes.FieldbyName('NumRes').AsString +
        ' Order by PedRe2.NroRe2';
      quTemp.Open;

      ImpRef := fmManGDB.BuscaSimples('PEDPAR', 'IMPREF', ' 1 = 1 ');

      quTemp.First;

      while not quTemp.Eof do
      begin

        if (uppercase(ImpRef) <> 'SIM') then
          codref := quTemp.FieldbyName('CodGru').AsString + '.' + quTemp.FieldbyName('CodSub').AsString + '.' + quTemp.FieldbyName('CodPro').AsString
        else
          codref := fmManGDB.BuscaSimples('ESTPRO', 'REFPRO', ' CODCLP = ' + QuotedStr('1') + ' and ' + ' CODGRU = ' +
            QuotedStr(quTemp.FieldbyName('CodGru').AsString) + ' and ' + ' CODSUB = ' + QuotedStr(quTemp.FieldbyName('CodSub').AsString) + ' and ' +
            ' CODPRO = '
            + QuotedStr(quTemp.FieldbyName('CodPro').AsString));

        //codref := quTemp.FieldbyName('CodGru').AsString + '.' + quTemp.FieldbyName('CodSub').AsString + '.' + quTemp.FieldbyName('CodPro').AsString;

        imp(Linha, 001, codref);

        DesRe2 := copy(Trim(quTemp.FieldbyName('DesRe2').AsString), 1, 55);

        imp(Linha, 016, DesRe2);
        imp(Linha, 072, PreString(FormatFloat('###,##0.0000', quTemp.FieldbyName('QtpRe2').AsFloat), 12));
        imp(Linha, 085, PreString(FormatFloat('###,##0.0000', quTemp.FieldbyName('VluRe2').AsFloat), 12));
        imp(Linha, 099, PreString(FormatFloat('##0.00', fRound(quTemp.FieldbyName('DscRe2').AsFloat + quTemp.FieldbyName('DspRe2').AsFloat, 2)), 06));
        imp(Linha, 106, PreString(FormatFloat('##0.00', quTemp.FieldbyName('PacRe2').AsFloat), 06));
        imp(Linha, 113, PreString(FormatFloat('###,##0.0000', quTemp.FieldbyName('VlqRe2').AsFloat), 12));
        imp(Linha, 126, PreString(FormatFloat('#,###,##0.00', quTemp.FieldbyName('TotRe2').AsFloat), 12));

        if Trim(quTemp.FieldbyName('ObsRe2').AsString) <> '' then
        begin

          Inc(Linha);

          imp(Linha, 016, Trim(quTemp.FieldbyName('ObsRe2').AsString));

        end;

        Linha := Linha + 1;

        if Linha > 61 then
          rdprint1.novapagina;

        quTemp.Next;

      end;

      imp(Linha, 126, fReplicate('-', 12));
      Linha := Linha + 1;

      if Linha > 61 then
        rdprint1.novapagina;

      imp(Linha, 100, 'Total de Itens        :');
      imp(Linha, 126, PreString(FormatFloat('#,###,##0.00', quPedres.FieldByName('TotRes').Value), 12));

      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      imp(Linha, 100, 'Total ICMS Substituto :');
      imp(Linha, 126, PreString(FormatFloat('#,###,##0.00', quPedres.FieldByName('TotSub').Value), 12));

      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      imp(Linha, 100, 'Total de IPI          :');
      imp(Linha, 126, PreString(FormatFloat('#,###,##0.00', quPedres.FieldByName('TotIpi').Value), 12));

      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      imp(Linha, 100, 'Total do Pedido       :');
      imp(Linha, 126, PreString(FormatFloat('#,###,##0.00', quPedres.FieldByName('TotGer').Value), 12));

      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      if GGUs_Id = 1 then
      begin

        imp(Linha, 100, 'Custo Total           :');
        imp(Linha, 126, PreString(FormatFloat('#,###,##0.00', quPedres.FieldByName('TotCst').Value), 12));

        Linha := Linha + 3;

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'Acrescimos            :  ' + PreString(FormatFloat('##0.00', quPedres.FieldByName('MedAcr').Value), 6) + '(%) ' +
          PreString(FormatFloat('###,##0.00', quPedres.FieldByName('TotAcr').Value), 12), [NORMAL, NEGRITO]);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'Descontos (Vendedor)  :  ' + PreString(FormatFloat('##0.00', quPedres.FieldByName('MedDsc').Value), 6) + '(%) ' +
          PreString(FormatFloat('###,##0.00', quPedres.FieldByName('TotDsc').Value), 12), [NORMAL, NEGRITO]);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'Dsc. ICMS Obrigatorio :  ' + PreString(FormatFloat('##0.00', quPedres.FieldByName('DscReg').Value), 6) + '(%) ' +
          PreString(FormatFloat('###,##0.00', quPedres.FieldByName('TotDsr').Value), 12), [NORMAL, NEGRITO]);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'Descontos (Gerencia)  :  ' + PreString(FormatFloat('##0.00', quPedres.FieldByName('MedDco').Value), 6) + '(%) ' +
          PreString(FormatFloat('###,##0.00', quPedres.FieldByName('TotDco').Value), 12), [NORMAL, NEGRITO]);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'Desc. Promocional     :  ' + PreString(FormatFloat('##0.00', quPedres.FieldByName('MedPrm').Value), 6) + '(%) ' +
          PreString(FormatFloat('###,##0.00', quPedres.FieldByName('TotDsp').Value), 12), [NORMAL, NEGRITO]);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;
        //Lite exige que tenha média de comissão
        impf(Linha, 001, '% de Comissao         :  ' + PreString(FormatFloat('##0.00', quPedres.FieldByName('MedCom').Value), 6) + '(%) ' +
          PreString(FormatFloat('###,##0.00', quPedres.FieldByName('TotCom').Value), 12), [NORMAL, NEGRITO]);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        //Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'Margem                :  ' + PreString(FormatFloat('##0.00', quPedres.FieldByName('TotRen').Value), 6) + '(%) ', [NORMAL, NEGRITO]);
        Inc(Linha);

      end;

      Linha := Linha + 1;

      if Linha > 61 then
        rdprint1.novapagina;

      if Trim(quPedres.FieldByName('SitRes').Value) <> 'Aguardando Pagamento Antecipado' then
      begin

        if (Trim(quPedres.FieldByName('SitRes').Value) = 'Aguardando Liberacao do Depto Comercial') or
          (Trim(quPedres.FieldByName('SitRes').Value) = 'Aguardando Liberacao do Depto Financeiro') then
          impf(Linha, 001, 'Total de Itens        : ' + PreString(IntToStr(quPedres.FieldByName('QtiRes').Value), 08) +
            '        ******** SUJEITO A APROVACAO ********', [NORMAL, NEGRITO])
        else
          impf(Linha, 001, 'Total de Itens        : ' + PreString(IntToStr(quPedres.FieldByName('QtiRes').Value), 08), [NORMAL, NEGRITO]);

      end
      else
        impf(Linha, 001, 'Total de Itens        : ' + PreString(IntToStr(quPedres.FieldByName('QtiRes').Value), 08) +
          '       ******** AGUARDANDO PAGAMENTO ********', [NORMAL, NEGRITO]);

      Linha := Linha + 1;

      if Linha > 61 then
        rdprint1.novapagina;

      impf(Linha, 001, fReplicate('-', 80), [NORMAL]);
      Linha := Linha + 1;

      if Linha > 61 then
        rdprint1.novapagina;

      impf(Linha, 001, 'INFORMACOES ADICIONAIS:', [NORMAL, NEGRITO]);
      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      impf(Linha, 001, 'Cond. de Pagto.:', [NORMAL, NEGRITO]);
      impf(Linha, 031, 'Prazo', [NORMAL, NEGRITO]);
      impf(Linha, 042, 'Valor Parcela', [NORMAL, NEGRITO]);
      impf(Linha, 072, 'Prazo', [NORMAL, NEGRITO]);
      impf(Linha, 083, 'Valor Parcela', [NORMAL, NEGRITO]);

      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      //Vencimento ------------------------------------------------------------------------------------
      quTemp.Close;
      quTemp.SQL.Text := ' Select * From PedRe3' +
        ' Where CodEmp = ''' + IntToStr(quPedres.FieldByName('CodEmp').Value) + '''' +
        '   and DteRes = ''' + fDateToSQL(quPedres.FieldByName('DteRes').Value) + '''' +
        '   and NumRes = ''' + IntToStr(quPedres.FieldByName('NumRes').Value) + '''' +
        ' Order by CodEmp,NumRes,SeqRe3';
      quTemp.Open;
      quTemp.First;

      Coluna := 31;
      PrMedio := 0;

      while not quTemp.Eof do
      begin

        impf(Linha, Coluna + 00, PreString(IntToStr(quTemp.FieldbyName('PraRe3').AsInteger), 5), [NORMAL, NEGRITO]);
        impf(Linha, Coluna + 09, PreString(FormatFloat('###,###,##0.00', quTemp.FieldbyName('VlpRe3').AsFloat), 14), [NORMAL, NEGRITO]);

        if coluna = 31 then
          Coluna := Coluna + 41
        else
        begin

          coluna := 31;

          Linha := Linha + 1;

        end;

        PrMedio := PrMedio + quTemp.FieldbyName('PraRe3').AsInteger;

        quTemp.Next;

        if Linha > 61 then
          rdprint1.novapagina;

      end;

      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      if quPedRes.FieldByName('QtpRes').Value > 0 then
        PrMedio := PrMedio / quPedRes.FieldByName('QtpRes').AsFloat
      else
        PrMedio := 0;

      impf(Linha, 001, 'Prazo Medio : ' + FormatFloat('##0.00', PrMedio) + ' Dias', [NORMAL, NEGRITO]);

      Linha := Linha + 1;

      if Linha > 61 then
        rdprint1.novapagina;

      impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      if quPedRes.FieldByName('CodTra').AsInteger > 0 then
      begin

        impf(Linha, 001, 'Transportadora : ' + preString(IntToStr(quPedRes.FieldByName('CodTra').Value), 7) + ' - ' + NomTra, [NORMAL, NEGRITO]);
        Linha := Linha + 1;

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, '                 ' + EndTr1, [NORMAL, NEGRITO]);
        Linha := Linha + 1;

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, '                 ' + EndTr2, [NORMAL, NEGRITO]);
        Linha := Linha + 1;

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, '                 ' + EndTr3, [NORMAL, NEGRITO]);

      end
      else
        impf(Linha, 001, 'Transportadora : ', [NORMAL, NEGRITO]);

      Linha := Linha + 2;

      if Linha > 61 then
        rdprint1.novapagina;

      impf(Linha, 001, 'Observacoes    : ', [NORMAL, NEGRITO]);
      impf(Linha, 030, copy(ObsRes, 001, 040), [NORMAL]);

      if Trim(copy(ObsRes, 041, 040)) <> '' then
      begin

        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 030, copy(ObsRes, 041, 040), [NORMAL]);

      end;

      if Trim(copy(ObsRes, 081, 040)) <> '' then
      begin

        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 030, copy(ObsRes, 081, 040), [NORMAL]);

      end;

      if Trim(copy(ObsRes, 121, 040)) <> '' then
      begin

        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 030, copy(ObsRes, 121, 040), [NORMAL]);

      end;

      if Trim(copy(ObsRes, 161, 040)) <> '' then
      begin

        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 030, copy(ObsRes, 161, 040), [NORMAL]);

      end;

      if Trim(copy(ObsRes, 201, 040)) <> '' then
      begin

        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 030, copy(ObsRes, 201, 040), [NORMAL]);

      end;

      Linha := Linha + 4;

      if Linha > 61 then
        rdprint1.novapagina;

      impf(Linha, 001, 'Data : ___/___/_____ Nota : __________ Ass. CPD : ______________________________', [NORMAL, NEGRITO]);

      if fmmangdb.BuscaSimples('PEDPAR', 'TIP_IMP_PED', ' 1 = 1 ') = 'Matricial' then
        rdprint1.Impressora := Epson
      else

      if fmmangdb.BuscaSimples('PEDPAR', 'TIP_IMP_PED', ' 1 = 1 ') = 'Grafica' then
        rdprint1.Impressora := grafico;

      Fechar; {Finaliza e inicia impressao ou preview}

      //Pedido Finalizado --------------------------------------------------------------------------------------------------

    end;
  finally
    FreeAndNil(QuPedRes);
    FreeAndNil(QuTemp);
  end;

end;

procedure TfmDM_Imprint.ImpViaSep(idPed: Integer);
var
  QuPedRes: TQuery;
  QuTemp: TQuery;
  QuTemp1: TQuery;

  PrMedio, PraMed,QtdTotal: Double;
  ItensTotal : integer;
  CodEmp, CodEit, TotEst, Coluna, CodMrc: integer;

begin

  QuPedRes := TQuery.Create(Self);
  QuTemp := TQuery.Create(Self);
  QuTemp1 := TQuery.Create(Self);

            QtdTotal := 0;
          ItensTotal := 0;

  try

    QuPedRes.DatabaseName := 'ISade';
    QuTemp.DatabaseName := 'ISade';
    QuTemp1.DatabaseName := 'ISade';

    QuPedRes.SQL.Text := 'Select * from pedres where numres = ' + inttostr(idPed);
    QuPedRes.Active := True;

    PedAnt := quPedRes.FieldByName('PedAnt').AsString;
    DtfRes := FormatDateTime('dd/mm/yyyy', quPedRes.FieldByName('DtfRes').AsDateTime);
    NumRes := quPedRes.FieldByName('NumRes').AsString;
    HreRes := quPedRes.FieldByName('HreRes').AsString;
    QtdImp := QuPedRes.FieldByname('QtdImp').AsString;
    DteRes := FormatDateTime('dd/mm/yyyy', quPedRes.FieldByName('DteRes').AsDateTime);
    CodVen := quPedRes.FieldByName('CodVen').AsString;
    CodAtd := quPedRes.FieldByName('CodAtd').AsString;
    CodCli := quPedRes.FieldByName('CodCli').AsString;
    UfeRes := quPedRes.FieldByName('UfeRes').AsString;
    CgcCli := quPedRes.FieldByName('CgcCli').AsString;

    NomVen := fmManGdb.BuscaSimples('FinVen', 'ApeVen', ' CodVen = ' + IntToStr(QuPedRes.FieldByName('CodVen').AsInteger));
    NomAtd := fmManGdb.BuscaSimples('FinAtd', 'ApeAtd', ' CodAtd = ' + IntToStr(QuPedRes.FieldByName('CodAtd').AsInteger));
    NomCli := fmManGdb.BuscaSimples('FinCli', 'NomCli', ' CodCli = ' + IntToStr(QuPedRes.FieldByName('CodCli').AsInteger));

    QuTemp.Close;
    QuTemp.SQL.Text := ' Select FinTra.NomTra,' +
      ' FinTra.TenTra,' +
      ' FinTra.EndTra,' +
      ' FinTra.NumTra,' +
      ' FinTra.BaiTra,' +
      ' FinTra.CidTra,' +
      ' FinTra.SigUfe,' +
      ' FinTra.CepTra,' +
      ' FinTra.PrtTra,' +
      ' FinTra.CgcTra,' +
      ' FinTra.FonTra' +
      ' From FinTra ' +
      ' Where FinTra.CodTra = ' + IntToStr(QuPedRes.FieldByName('CodTra').AsInteger);
    QuTemp.Open;

    if Trim(QuTemp.FieldbyName('NomTra').AsString) <> '' then
    begin

      NomTra := QuTemp.FieldbyName('NomTra').AsString;

      if Trim(QuTemp.FieldbyName('TenTra').AsString) <> '' then
        EndTr1 := Trim(QuTemp.FieldbyName('TenTra').AsString) + ' ' + Trim(QuTemp.FieldbyName('EndTra').AsString)
      else
        EndTr1 := Trim(QuTemp.FieldbyName('EndTra').AsString);

      if Trim(QuTemp.FieldbyName('NumTra').AsString) <> '' then
        EndTr1 := EndTr1 + ', ' + Trim(QuTemp.FieldbyName('NumTra').AsString);

      if Trim(QuTemp.FieldbyName('BaiTra').AsString) <> '' then
        EndTr1 := EndTr1 + ' Bairro ' + Trim(QuTemp.FieldbyName('BaiTra').AsString);

      EndTr2 := 'Cidade ' + Trim(QuTemp.FieldbyName('CidTra').AsString) + ' UF ' + QuTemp.FieldbyName('SigUfe').AsString;

      if Trim(QuTemp.FieldbyName('CepTra').AsString) <> '' then
        EndTr2 := EndTr2 + ' Cep: ' + copy(QuTemp.FieldbyName('CepTra').AsString, 1, 5) + '-' + copy(QuTemp.FieldbyName('CepTra').AsString, 6, 3);

      EndTr3 := 'TeleFone ' + '(' + Trim(QuTemp.FieldbyName('PrtTra').AsString) + ') '
                + Trim(QuTemp.FieldbyName('FonTra').AsString);

    end;

    EndEn1 := Trim(QuPedRes.FieldbyName('NomEnt').AsString);

    if Trim(QuPedRes.FieldbyName('TenCli').AsString) <> '' then
      EndEn2 := Trim(QuPedRes.FieldbyName('TenCli').AsString) + ' ' + Trim(QuPedRes.FieldbyName('EndCli').AsString)
    else
      EndEn2 := Trim(QuPedRes.FieldbyName('EndCli').AsString);

    if Trim(QuPedRes.FieldbyName('NumCli').AsString) <> '' then
      EndEn2 := EndEn2 + ', ' + Trim(QuPedRes.FieldbyName('NumCli').AsString);

    if Trim(QuPedRes.FieldbyName('BaiCli').AsString) <> '' then
      EndEn2 := EndEn2 + ' Bairro ' + Trim(QuPedRes.FieldbyName('BaiCli').AsString);

    EndEn3 := 'Cidade ' + Trim(QuPedRes.FieldbyName('CidCli').AsString) + ' UF ' + QuPedRes.FieldbyName('UfeCli').AsString;

    if Trim(QuPedRes.FieldbyName('CepCli').AsString) <> '' then
      EndEn3 := EndEn3 + ' Cep: ' + copy(QuPedRes.FieldbyName('CepCli').AsString, 1, 5) + '-' + copy(QuPedRes.FieldbyName('CepCli').AsString, 6, 3);

    ObsRes := QuPedRes.FieldbyName('ObsRes').AsString;

    CodEmp := QuPedRes.FieldbyName('CodEmp').AsInteger;

    //Não sei a finalidade
    if QuPedRes.FieldbyName('LanEst').Value = 'Sim' then
    begin
      if QuPedRes.FieldbyName('CodFil').Value > 0 then
        CodEmp := QuPedRes.FieldbyName('CodFil').Value;
    end;

    CodEit := QuPedRes.FieldbyName('CodEmp').Value;

    //Continuo não sabendo
    if QuPedRes.FieldbyName('LanEst').Value = 'Sim' then
    begin
      if QuPedRes.FieldbyName('CodFil').Value > 0 then
        CodEit := QuPedRes.FieldbyName('CodFil').Value;
    end;

    rdprint1.OpcoesPreview.Preview := True;
    rdprint1.OpcoesPreview.PreviewZoom := 100;
    rdprint1.TamanhoQteLPP := seis;
    rdprint1.UsaGerenciadorImpr := True;

    with quTemp, SQL do
    begin

      Close;
      Text := ' Select * From PedPar';
      Open;

      if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
        GFlgImp := FieldByName('FlgImp').AsString
      else
        GFlgImp := 'Sim';

      GImpMrc := FieldByName('ImpMrc').AsString;
      GImpTra := FieldByName('ImpTra').AsString;
      GImpObs := FieldByName('ImpObs').AsString;
      GImpFin := FieldByName('ImpFin').AsString;
      GImpLoc := FieldbyName('ImpLoc').AsString;
    end;

    if GFlgImp = 'Nao' then
    begin
      if GCodVen_Id > 0 then
      begin
        rdprint1.OpcoesPreview.BotaoGravar := Inativo;
        rdprint1.OpcoesPreview.BotaoImprimir := Inativo;

      end;
    end;

    rdprint1.TamanhoQteColunas := 136;
    rdprint1.FonteTamanhoPadrao := s17cpp;  


    {Inicio...}
    with rdprint1 do
    begin
      if fmmangdb.BuscaSimples('pedpar', 'VIA_SEP_GRAF', ' 1 = 1 ') <> 'S' then
      begin
        rdprint1.Abrir;
        sCabe := '2';

        //NovaPagina;

        quTemp.Close;
        quTemp.SQL.Text := ' Select PedRe2.CodEmp,' +
          ' PedRe2.CodClp,' +
          ' PedRe2.CodGru,' +
          ' PedRe2.CodSub,' +
          ' PedRe2.CodPro,' +
          ' PedRe2.CodUnd,' +
          ' PedRe2.QtpRe2' +
          ' From PedRe2,EstQte QTE ' +
          ' Where PedRe2.CodEmp = :CodEmp' +
          ' and PedRe2.DteRes = :DteRes' +
          ' and PedRe2.NumRes = :NumRes' +
          ' and QTE.CodEmp = :CodEit' +
          ' and QTE.CodClp = PedRe2.CodClp' +
          ' and QTE.CodGru = PedRe2.CodGru' +
          ' and QTE.CodSub = PedRe2.CodSub' +
          ' and QTE.CodPro = PedRe2.CodPro' +
          ' and QTE.CodTam = PedRe2.CodTam' +
          ' and QTE.CodCor = PedRe2.CodCor' +
          ' and (QTE.QtdQte - ((SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) + QTE.QtdRma)) > 0' +
          ' Order by PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

        quTemp.Params[0].AsInteger := quPedres.FieldByName('CodEmp').AsInteger;
        quTemp.Params[1].AsDateTime := quPedres.FieldByName('DteRes').AsDateTime;
        quTemp.Params[2].AsInteger := quPedres.FieldByName('NumRes').AsInteger;
        quTemp.Params[3].AsInteger := quPedres.FieldByName('CodEmp').AsInteger;

        quTemp.Open;

        quTemp.First;

        if quTemp.FieldbyName('CodEmp').AsInteger > 0 then
        begin

          ImpRef := fmManGDB.BuscaSimples('PEDPAR', 'IMPREFDEP', ' 1 = 1 ');

          while not quTemp.Eof do
          begin
            QtdTotal := QtdTotal + quTemp.FieldbyName('QtpRe2').AsFloat;
            inc(ItensTotal);

            with QuTemp1, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodMrc,' +
                ' EstPro.NumPro,' +
                ' EstPro.DscPro,' +
                ' EstPro.LocPro ' +
                ' From EstPro' +
                ' Where EstPro.CodClp = :CodClp' +
                ' and EstPro.CodGru = :CodGru' +
                ' and EstPro.CodSub = :CodSub' +
                ' and EstPro.CodPro = :CodPro';

              with Params do
              begin

                Params[0].AsString := quTemp.FieldbyName('CodClp').AsString;
                Params[1].AsString := quTemp.FieldbyName('CodGru').AsString;
                Params[2].AsString := quTemp.FieldbyName('CodSub').AsString;
                Params[3].AsString := quTemp.FieldbyName('CodPro').AsString;

              end;

              Open;

              NumPro := FieldbyName('NumPro').AsString;
              DscPro := FieldbyName('DscPro').AsString;
              CodMrc := FieldbyName('CodMrc').AsInteger;
              LocPro := FieldbyName('LocPro').AsString;

            end;

            with QuTemp1, SQL do
            begin

              Close;
              Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = :CodMrc';

              with Params do
              begin

                Params[0].AsInteger := CodMrc;

              end;

              Open;

              NomMrc := FieldbyName('NomMrc').AsString;

            end;

            if (uppercase(ImpRef) <> 'SIM') then
              codref := quTemp.FieldbyName('CodGru').AsString + '.' + quTemp.FieldbyName('CodSub').AsString + '.' + quTemp.FieldbyName('CodPro').AsString
            else
              codref := fmManGDB.BuscaSimples('ESTPRO', 'REFPRO', ' CODCLP = ' + QuotedStr('1') + ' and ' + ' CODGRU = ' +
                QuotedStr(quTemp.FieldbyName('CodGru').AsString) + ' and ' + ' CODSUB = ' + QuotedStr(quTemp.FieldbyName('CodSub').AsString) + ' and ' +
                ' CODPRO = ' + QuotedStr(quTemp.FieldbyName('CodPro').AsString));
            //Usando fonte  comp17 para caber toda descrição do item solicitado por fertronica
            impf(Linha, 001, codref, [comp17]);

            impf(Linha, 027, copy(Trim(DscPro), 1, 70), [comp17]);

            if fEncDecimal(quTemp.FieldbyName('QtpRe2').AsFloat) > 0 then
              impf(Linha, 114, Prestring(FormatFloat(formatDecimalViaSep, quTemp.FieldbyName('QtpRe2').AsFloat), 10), [comp17])
              //impf(Linha, 114, Prestring(FormatFloat('###,##0.0000', quTemp.FieldbyName('QtpRe2').AsFloat), 10), [comp17])
            else
              impf(Linha, 114, Prestring(FormatFloat('####,###,##0', quTemp.FieldbyName('QtpRe2').AsFloat), 10), [comp17]);

            impf(Linha, 126, '______', [comp17]);

            impf(Linha, 135, Trim(quTemp.FieldbyName('CodUnd').AsString), [comp17]);

            Inc(Linha);

            //Segunda Linha do Item
            if UpperCase(Trim(GImpLoc)) = 'SIM' then
            begin
              if(Trim(LocPro) <> '') then
                 begin
                    impf(Linha, 027, 'Localização: ' + Trim(LocPro), [comp17]);
                    Inc(Linha);
                 end;
            end;

            if Trim(GImpMrc) = 'Sim' then
            begin

              if Trim(NomMrc) <> '' then
              begin

                if Trim(NumPro) <> '' then
                  impf(Linha, 027, Trim(NomMrc) + ' - ' + Trim(NumPro), [NORMAL])
                else
                  impf(Linha, 027, Trim(NomMrc), [NORMAL]);

              end
              else
              begin

                if Trim(NumPro) <> '' then
                  impf(Linha, 027, Trim(NumPro), [NORMAL]);

              end;

              Inc(Linha);

            end;

            quTemp.Next;

            if not quTemp.EOF then
            begin

              if Trim(GImpTra) = 'Sim' then
              begin

                impf(Linha, 027, '-----------------------------------------------------', [NORMAL]);

                Inc(Linha);

              end;
            end;

            if Linha > 61 then
              rdprint1.novapagina;

          end;

          Inc(Linha);

        end;

        with quTemp, SQL do
        begin

          Close;
          Text := ' Select PedRe2.CodEmp,' +
            ' PedRe2.CodClp,' +
            ' PedRe2.CodGru,' +
            ' PedRe2.CodSub,' +
            ' PedRe2.CodPro,' +
            ' PedRe2.CodUnd,' +
            ' PedRe2.QtpRe2' +
            ' From PedRe2,EstQte QTE' +
            ' Where PedRe2.CodEmp = :CodEmp' +
            ' and PedRe2.DteRes = :DteRes' +
            ' and PedRe2.NumRes = :NumRes' +
            ' and QTE.CodEmp = :CodEit' +
            ' and QTE.CodClp = PedRe2.CodClp' +
            ' and QTE.CodGru = PedRe2.CodGru' +
            ' and QTE.CodSub = PedRe2.CodSub' +
            ' and QTE.CodPro = PedRe2.CodPro' +
            ' and QTE.CodTam = PedRe2.CodTam' +
            ' and QTE.CodCor = PedRe2.CodCor' +
            ' and (QTE.QtdQte - ((SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) + QTE.QtdRma)) <= 0' +
            ' Order by PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

          quTemp.Params[0].AsInteger := quPedres.FieldByName('CodEmp').Value;
          quTemp.Params[1].AsDateTime := quPedres.FieldByName('DteRes').Value;
          quTemp.Params[2].AsInteger := quPedres.FieldByName('NumRes').Value;
          quTemp.Params[3].AsInteger := quPedres.FieldByName('CodEmp').Value;

          Open;

        end;

        quTemp.First;

        if quTemp.FieldbyName('CodEmp').AsInteger > 0 then
        begin

          Inc(Linha);

          if Linha > 61 then
            rdprint1.novapagina;

          rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);
          Inc(Linha);

          if Linha > 61 then
            rdprint1.novapagina;

          rdprint1.impf(Linha, 001, 'Produtos Abaixo do Estoque Disponivel', [NORMAL, NEGRITO]);
          Inc(Linha);

          rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);
          Inc(Linha);

          if Linha > 61 then
            rdprint1.novapagina;


          while not quTemp.Eof do
          begin
            QtdTotal := QtdTotal + quTemp.FieldbyName('QtpRe2').AsFloat;
            inc(ItensTotal);
            with QuTemp1, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodMrc,' +
                ' EstPro.NumPro,' +
                ' EstPro.LocPro,' +
                ' EstPro.DscPro' +
                ' From EstPro' +
                ' Where EstPro.CodClp = :CodClp' +
                '   and EstPro.CodGru = :CodGru' +
                '   and EstPro.CodSub = :CodSub' +
                '   and EstPro.CodPro = :CodPro';

              with Params do
              begin

                Params[0].AsString := quTemp.FieldbyName('CodClp').AsString;
                Params[1].AsString := quTemp.FieldbyName('CodGru').AsString;
                Params[2].AsString := quTemp.FieldbyName('CodSub').AsString;
                Params[3].AsString := quTemp.FieldbyName('CodPro').AsString;

              end;

              Open;

              NumPro := FieldbyName('NumPro').AsString;
              DscPro := FieldbyName('DscPro').AsString;
              CodMrc := FieldbyName('CodMrc').AsInteger;
              LocPro := FieldbyName('LocPro').AsString;

            end;

            with QuTemp1, SQL do
            begin

              Close;
              Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = :CodMrc';

              with Params do
              begin

                Params[0].AsInteger := CodMrc;

              end;

              Open;

              NomMrc := FieldbyName('NomMrc').AsString;

            end;

            if (uppercase(ImpRef) <> 'SIM') then
              codref := quTemp.FieldbyName('CodGru').AsString + '.' + quTemp.FieldbyName('CodSub').AsString + '.' + quTemp.FieldbyName('CodPro').AsString
            else
              codref := fmManGDB.BuscaSimples('ESTPRO', 'REFPRO', ' CODCLP = ' + QuotedStr('1') + ' and ' + ' CODGRU = ' +
                QuotedStr(quTemp.FieldbyName('CodGru').AsString) + ' and ' + ' CODSUB = ' + QuotedStr(quTemp.FieldbyName('CodSub').AsString) + ' and ' +
                ' CODPRO = ' + QuotedStr(quTemp.FieldbyName('CodPro').AsString));
            //Usando fonte  comp17 para caber toda descrição do item solicitado por fertronica
            impf(Linha, 001, codref, [comp17]);

            impf(Linha, 027, copy(Trim(DscPro), 1, 70), [comp17]);

            if fEncDecimal(quTemp.FieldbyName('QtpRe2').AsFloat) > 0 then
               impf(Linha, 114, Prestring(FormatFloat(formatDecimalViaSep, quTemp.FieldbyName('QtpRe2').AsFloat), 10), [comp17])
              //impf(Linha, 114, Prestring(FormatFloat('###,##0.0000', quTemp.FieldbyName('QtpRe2').AsFloat), 10), [comp17])
            else
              impf(Linha, 114, Prestring(FormatFloat('####,###,##0', quTemp.FieldbyName('QtpRe2').AsFloat), 10), [comp17]);

            impf(Linha, 126, '______', [comp17]);

            impf(Linha, 135, Trim(quTemp.FieldbyName('CodUnd').AsString), [comp17]);

            {impf(Linha, 001, quTemp.FieldbyName('CodGru').AsString + '.' + quTemp.FieldbyName('CodSub').AsString + '.' + quTemp.FieldbyName('CodPro').AsString, [NORMAL]);

            impf(Linha, 027, copy(Trim(DscPro), 1, 40), [NORMAL]);

            if fEncDecimal(quTemp.FieldbyName('QtpRe2').AsFloat) > 0 then
               impf(Linha, 097, Prestring(FormatFloat('###,##0.0000', quTemp.FieldbyName('QtpRe2').AsFloat), 12), [NORMAL])
            else
               impf(Linha, 097, Prestring(FormatFloat('####,###,##0', quTemp.FieldbyName('QtpRe2').AsFloat), 12), [NORMAL]);

            impf(Linha, 118, '________', [NORMAL]);

            impf(Linha, 134, Trim(quTemp.FieldbyName('CodUnd').AsString), [NORMAL]);}

            Inc(Linha);

            //Segunda Linha do Item
            if UpperCase(Trim(GImpLoc)) = 'SIM' then
            begin
               if(Trim(LocPro) <> '') then
                  begin
                     impf(Linha, 027, Trim(LocPro), [comp17]);
                     Inc(Linha);
                  end;
            end;

            if Trim(GImpMrc) = 'Sim' then
            begin

              if Trim(NomMrc) <> '' then
              begin

                if Trim(NumPro) <> '' then
                  impf(Linha, 027, Trim(NomMrc) + ' - ' + Trim(NumPro), [NORMAL])
                else
                  impf(Linha, 027, Trim(NomMrc), [NORMAL]);

              end
              else
              begin

                if Trim(NumPro) <> '' then
                  impf(Linha, 027, Trim(NumPro), [NORMAL]);

              end;

              Inc(Linha);

            end;

            quTemp.Next;

            if not quTemp.EOF then
            begin

              if Trim(GImpTra) = 'Sim' then
              begin

                impf(Linha, 027, '-----------------------------------------------------', [NORMAL]);

                Inc(Linha);

              end;
            end;

            if Linha > 61 then
              rdprint1.novapagina;

          end;
        end;

        Inc(Linha);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'Total de Itens : ' + PreString(IntToStr(ItensTotal), 08), [NORMAL, NEGRITO]);

        IF fmManGdb.BuscaSimples('PEDPAR','IMPQTDVIASEP', ' 1 = 1') = 'S' then
        impf(Linha, 78, 'Total de Pacotes : ' + PreString(IntToStr(TRUNC(QtdTotal)), 08), [NORMAL, NEGRITO]);

        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

        Inc(Linha);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'INFORMACOES ADICIONAIS:', [NORMAL, NEGRITO]);

        if Trim(GImpFin) = 'Sim' then
        begin

          Inc(Linha);
          Inc(Linha);

          if Linha > 61 then
            rdprint1.novapagina;

          impf(Linha, 001, 'Cond. de Pagto.:', [NORMAL, NEGRITO]);
          impf(Linha, 031, 'Prazo', [NORMAL, NEGRITO]);
          impf(Linha, 042, 'Valor Parcela', [NORMAL, NEGRITO]);
          impf(Linha, 072, 'Prazo', [NORMAL, NEGRITO]);
          impf(Linha, 083, 'Valor Parcela', [NORMAL, NEGRITO]);

          Inc(Linha);
          Inc(Linha);

          if Linha > 61 then
            rdprint1.novapagina;

          with quTemp, SQL do
          begin

            Close;
            Text := ' Select * From PedRe3' +
              ' Where PedRe3.CodEmp = ' + IntToStr(quPedRes.FieldByname('CodEmp').AsInteger) +
              ' and PedRe3.DteRes = ' + quotedStr(FormatDateTime('yyyy-mm-dd', quPedRes.FieldByname('DteRes').AsDateTime)) +
              ' and PedRe3.NumRes = ' + IntToStr(quPedRes.FieldByname('NumRes').AsInteger) +
              ' Order by PedRe3.SeqRe3 ';
            Open;
            First;

          end;

          Coluna := 31;
          PraMed := 0;

          while not quTemp.Eof do
          begin

            impf(Linha, Coluna + 00, PreString(IntToStr(quTemp.FieldbyName('PraRe3').AsInteger), 5), [NORMAL, NEGRITO]);
            impf(Linha, Coluna + 09, PreString(FormatFloat('###,###,##0.00', quTemp.FieldbyName('VlpRe3').AsFloat), 14), [NORMAL, NEGRITO]);

            if coluna = 31 then
              Coluna := Coluna + 41
            else
            begin

              coluna := 31;

              Inc(Linha);

            end;

            PraMed := PraMed + quTemp.FieldbyName('PraRe3').AsInteger;

            quTemp.Next;

            if Linha > 61 then
              rdprint1.novapagina;

          end;

          Inc(Linha);
          Inc(Linha);

          if Linha > 61 then
            rdprint1.novapagina;

          if quPedres.FieldByName('QtpRes').AsFloat > 0 then
            PraMed := PraMed / quPedres.FieldByName('QtpRes').AsFloat
          else
            PraMed := 0;

          impf(Linha, 001, 'Prazo Medio : ' + FormatFloat('##0.00', PraMed) + ' Dias', [NORMAL, NEGRITO]);

        end;

        Inc(Linha);
        Inc(Linha);

        if Linha > 61 then
          rdprint1.novapagina;

        if quPedRes.FieldByName('CodTra').AsInteger > 0 then
        begin

          impf(Linha, 001, 'Transportadora : ' + preString(IntToStr(quPedRes.FieldByName('CodTra').AsInteger), 7) + ' - ' + NomTra, [NORMAL, NEGRITO]);
          Linha := Linha + 1;

          if Linha > 61 then
            rdprint1.novapagina;

          impf(Linha, 001, '                 ' + EndTr1, [NORMAL, NEGRITO]);
          Linha := Linha + 1;

          if Linha > 61 then
            rdprint1.novapagina;

          impf(Linha, 001, '                 ' + EndTr2, [NORMAL, NEGRITO]);
          Linha := Linha + 1;

          if Linha > 61 then
            rdprint1.novapagina;

          impf(Linha, 001, '                 ' + EndTr3, [NORMAL, NEGRITO]);

        end
        else
          impf(Linha, 001, 'Transportadora : ', [NORMAL, NEGRITO]);

        Inc(Linha);
        Inc(Linha);

        if Trim(GImpObs) = 'Sim' then
        begin

          if Linha > 61 then
            rdprint1.novapagina;

          impf(Linha, 001, 'Observacoes    : ', [NORMAL, NEGRITO]);
          impf(Linha, 030, copy(ObsRes, 001, 040), [NORMAL]);

          if Trim(copy(ObsRes, 041, 040)) <> '' then
          begin

            Inc(Linha);

            if Linha > 61 then
              rdprint1.novapagina;

            impf(Linha, 030, copy(ObsRes, 041, 040), [NORMAL]);

          end;

          if Trim(copy(ObsRes, 081, 040)) <> '' then
          begin

            Inc(Linha);

            if Linha > 61 then
              rdprint1.novapagina;

            impf(Linha, 030, copy(ObsRes, 081, 040), [NORMAL]);

          end;

          if Trim(copy(ObsRes, 121, 040)) <> '' then
          begin

            Inc(Linha);

            if Linha > 61 then
              rdprint1.novapagina;

            impf(Linha, 030, copy(ObsRes, 121, 040), [NORMAL]);

          end;

          if Trim(copy(ObsRes, 161, 040)) <> '' then
          begin

            Inc(Linha);

            if Linha > 61 then
              rdprint1.novapagina;

            impf(Linha, 030, copy(ObsRes, 161, 040), [NORMAL]);

          end;

          if Trim(copy(ObsRes, 201, 040)) <> '' then
          begin

            Inc(Linha);

            if Linha > 61 then
              rdprint1.novapagina;

            impf(Linha, 030, copy(ObsRes, 201, 040), [NORMAL]);

          end;

          Inc(Linha);
          Inc(Linha);

        end;

        if Linha > 61 then
          rdprint1.novapagina;

        impf(Linha, 001, 'Separado Por   : ______________________ Conferido Por : ______________________', [NORMAL, NEGRITO]);
        Inc(Linha);
        Inc(Linha);
        Inc(Linha);
        impf(Linha, 001, 'Qtde Volume    : ______________________ Peso Liquido  : ______________________', [NORMAL, NEGRITO]);

        if fmmangdb.BuscaSimples('PEDPAR', 'TIP_IMP_PED', ' 1 = 1 ') = 'Matricial' then
          rdprint1.Impressora := Epson
        else if fmmangdb.BuscaSimples('PEDPAR', 'TIP_IMP_PED', ' 1 = 1 ') = 'Grafica' then
          rdprint1.Impressora := grafico;

        Fechar; {Finaliza e inicia impressao ou preview}

      end;


      if fmmangdb.BuscaSimples('pedpar', 'VIA_SEP_GRAF', ' 1 = 1 ') = 'S' then
      begin

        fmManViaSep := TfmManViaSep.Create(Self);

        try
          fmManViaSep.AbreSeperacao(quPedRes.FieldByName('NUMRES').AsInteger, quPedRes.FieldByName('CodEmp').AsInteger,
            quPedRes.FieldByName('DTERES').asDateTime);

        finally
          fmManViaSep.pedre2.Active := False;
          FreeAndnil(fmManViaSep);
        end;
      end;

    end;

  finally
    FreeAndNil(QuPedRes);
    FreeAndNil(QuTemp);
    FreeAndNil(QuTemp1);

  end;

end;

procedure TfmDM_Imprint.RDprint1NewPage(Sender: TObject; Pagina: Integer);
var
  TitCodRef, ImpRefDep, ImpRef: string;

begin
  inherited;

  Linha := 1;

  if sCabe = '1' then
  begin

    rdprint1.impf(Linha, 001, 'GERENCIA (PD)', [EXPANDIDO, NORMAL]);

    Inc(Linha);

    if PedAnt = 'Nao' then
      rdprint1.impf(Linha, 001, 'Entregar em ' + DtfRes, [EXPANDIDO, NORMAL])
    else
      rdprint1.impf(Linha, 001, 'Entregar em ' + DtfRes + ' - ANTECIPADO', [EXPANDIDO, NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Pedido       : ' + NumRes, [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 075, 'Data : ' + DteRes, [NORMAL]);
    rdprint1.impf(Linha, 111, 'Hora : ' + HreRes, [NORMAL]);
    rdprint1.impf(Linha, 128, 'Nro Imp : ' + QtdImp, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Vendedor     : ' + CodVen + ' - ' + NomVen, [NORMAL]);

    Inc(Linha);

    if CodAtd <> '' then
    begin

      rdprint1.impf(Linha, 001, 'Atendente    : ' + CodAtd + ' - ' + NomAtd, [NORMAL]);

      Inc(Linha);

    end;

    rdprint1.impf(Linha, 001, 'Cliente      : ' + CodCli + ' - ' + copy(NomCli, 1, 40), [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 120, UfeRes, [EXPANDIDO, NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Entrega      : ' + EndEn1, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, '               ' + EndEn2, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, '               ' + EndEn3, [NORMAL]);

    Inc(Linha);

    if Trim(CgcCli) <> '' then
    begin

      if Length(Trim(CgcCli)) > 11 then
        rdprint1.impf(Linha, 001, 'CNPJ         : ' + fFormatCgcCpf(CgcCli), [NORMAL, NEGRITO])
      else
        rdprint1.impf(Linha, 001, 'CPF          : ' + fFormatCgcCpf(CgcCli), [NORMAL, NEGRITO]);

    end
    else
      rdprint1.impf(Linha, 001, 'CNPJ/CPF     : ', [NORMAL, NEGRITO]);

    rdprint1.impf(Linha, 114, 'Pagina No. ' + fNumZeros(IntToStr(Pagina), 3), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

    Inc(Linha);

    ImpRef := fmManGDB.BuscaSimples('PEDPAR', 'IMPREF', ' 1 = 1 ');

    if uppercase(ImpRef) <> 'SIM' then
      TitCodRef := 'Nosso Codigo'
    else
      TitCodRef := 'Referencia';

    rdprint1.impf(Linha, 001, TitCodRef, [comp17]);
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

    if PedAnt = 'Nao' then
      rdprint1.impf(Linha, 001, 'Entregar em ' + DtfRes, [EXPANDIDO, NORMAL])
    else
      rdprint1.impf(Linha, 001, 'Entregar em ' + DtfRes + ' - ANTECIPADO', [EXPANDIDO, NORMAL]);

    rdprint1.impf(Linha, 114, 'Pagina No. ' + fNumZeros(IntToStr(Pagina), 3), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Pedido       : ' + preString(NumRes, 7), [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 075, 'Data : ' + DteRes, [NORMAL]);
    rdprint1.impf(Linha, 111, 'Hora : ' + HreRes, [NORMAL]);
    rdprint1.impf(Linha, 128, 'Nro Imp : ' + QtdImp, [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Vendedor     : ' + preString(CodVen, 7) + ' - ' + NomVen, [NORMAL]);

    Inc(Linha);

    if CodAtd <> '' then
    begin

      rdprint1.impf(Linha, 001, 'Atendente    : ' + preString(CodAtd, 7) + ' - ' + NomAtd, [NORMAL]);

      Inc(Linha);

    end;

    rdprint1.impf(Linha, 001, 'Cliente      : ' + preString(CodCli, 7) + ' - ' + copy(NomCli, 1, 40), [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 120, UfeRes, [EXPANDIDO, NORMAL]);

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

end;

procedure TfmDM_Imprint.DataModuleCreate(Sender: TObject);
var
   aux, I  : Integer;
begin
   aux := fmManGDB.BuscaSimplesInt('PEDPAR','QTD_DEC_VIA_SEP','1 = 1');

   if(aux > 0) then
      begin
         formatDecimalViaSep := '#.';

         for I := 0 to aux -1 do
            begin
               formatDecimalViaSep := formatDecimalViaSep + '0';
            end
      end
   else
      formatDecimalViaSep := '0';
end;

end.
