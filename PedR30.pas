unit PedR30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppDB, ppDBPipe,
  ppCtrls, ppStrtch, ppMemo, ppBands, ppClass, ppVar, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, dxColorEdit, dxColorDateEdit, clipbrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmPedR30 = class(TfmPadrao)
    FINPGC: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    bImprime: TBitBtn;
    rgTipo: TRadioGroup;
    rgComissao: TRadioGroup;
    FinCre: TwwQuery;
    dsCre: TwwDataSource;
    lb_Registro: TLabel;
    FinCreNUMRES: TIntegerField;
    FinCreDTERES: TDateTimeField;
    FinCreDTEFAT: TDateTimeField;
    FinCreDPGPGC: TDateTimeField;
    FinCreCODVEN: TIntegerField;
    FinCreNRONFS: TIntegerField;
    FinCreTOTLIB: TFloatField;
    FinCreMEDCOM: TFloatField;
    FinCreBASCOM: TFloatField;
    FinCreTOTCOM: TFloatField;
    FinCreCLIENTE: TStringField;
    PedRes: TwwQuery;
    DSPGC: TDataSource;
    FINPGCNUMRES: TIntegerField;
    FINPGCDTERES: TDateTimeField;
    FINPGCDTEFAT: TDateTimeField;
    FINPGCCODVEN: TIntegerField;
    FINPGCCODCLI: TIntegerField;
    FINPGCNOMCLI: TStringField;
    FINPGCTOTLIB: TFloatField;
    FINPGCMEDCOM: TFloatField;
    FINPGCPERCOM: TFloatField;
    FINPGCBASCOM: TFloatField;
    FINPGCTOTCOM: TFloatField;
    FINPGCNRONFS: TStringField;
    FINPGCDTECRE: TDateTimeField;
    FINPGCDTEVEN: TDateTimeField;
    FINPGCNUMCRE: TFloatField;
    FINPGCNUMCRP: TIntegerField;
    PedResNUMRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResDTEFAT: TDateTimeField;
    PedResCODVEN: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResNOMCLI: TStringField;
    PedResTOTLIB: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResPERCOM: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResNRONFS: TStringField;
    PedResDTECRE: TDateTimeField;
    PedResDTEVEN: TDateTimeField;
    EdApeEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdCodEmp: TdxColorEdit;
    Label26: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
    SeqArq: string;
  public
    {Public declarations}
  end;

var
  fmPedR30: TfmPedR30;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManPri, ManGDB, AuxIni, PsqEmp, ManEm9,
  ManE10, ManEm10, manRelVendaPorVendedor;

{$R *.DFM}

procedure TfmPedR30.bbPesquisaClick(Sender: TObject);
var
  FilLib, FilLoj, FilVen, FilAte, FaturaSQL, FinanceiroSQL, sFiltro: string;

const
  _BR = #13 + #10;
begin

  ActiveControl := nil;

  if Trim(EdPsqCodVen.Text) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqCodVen);
  if Trim(fLimpaStr(EdPsqDteres1.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqDteres1);
  if Trim(fLimpaStr(EdPsqDteres2.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqDteres2);

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select FLGDEL,SEQIMP from GerPar';
    Open;

    if Trim(FieldbyName('FLGDEL').AsString) = '*' then
    begin

      GFlgAce := 'Sim';

      if FieldbyName('SEQIMP').AsInteger > 0 then
        GEmpLog := FieldbyName('SEQIMP').AsInteger;

    end
    else
    begin

      GEmpLog := 0;
      GFlgAce := 'Nao';

    end;
  end;

  FaturaSQL := '';
  if rgComissao.ItemIndex = 0 then
  begin
    if Trim(EdPsqCodVen.Text) = '' then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqCodVen);

    if Trim(fLimpaStr(EdPsqDteRes1.Text)) = '' then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqDteRes1);
    if Trim(fLimpaStr(EdPsqDteRes2.Text)) = '' then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqDteRes2);

    FilLoj := '';

    if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then
    begin

      FilLib := ' Where PedLib.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) + _BR +
        ' and PedLib.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date)) + _BR +
        ' and PedLib.CodVen  = ' + QuotedStr(EdPsqCodVen.Text) + _BR +
        ' and PedLib.IntFin  = ' + QuotedStr('Sim') + _BR +
        ' and PedLib.ModPfa  = ' + QuotedStr('Vendas') + _BR;

      if Trim(EdCodEmp.Text) <> '' then
        FilLib := FilLib + ' and PedLib.CodEmp = ' + EdCodEmp.Text + _BR;

      FilLib := FilLib + ' and ( PedLib.SitLib = ''' + 'Faturado' + ''' or PedLib.SitLib = ''' + 'Cancelado' + ''' or PedLib.SitLib = ''' + 'Devolvido' + ''' )'
        + _BR;

      if GFlgAce = 'Sim' then
        FilLib := FilLib + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim') + _BR;

      FaturaSQL :=
        ' Select PedLib.NumRes, PedLib.DteRes, PedLib.DteFat, PedLib.CodVen, ' + _BR
        + ' PedLib.CodCli, FinCli.NomCli, PedLib.TotLib, fincom.percom, PedLib.MedCom, ' + _BR
        + ' PedLib.BasCom, PedLib.TotCom, Cast(PedLib.NroNfs as varchar(10)) NroNfs, ' + _BR
        + ' PedLib.codcli, FinCli.nomcli, PedLib.DteRes DteCre, PedLib.DteRes DteVen ' + _BR
        + ' From PedLib ' + _BR
        + ' LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli) ' + _BR
        + ' join finven on (finven.codven = pedlib.codven) ' + _BR
        + ' left join fincom on (fincom.codcom = finven.codcom) ' + _BR
        + FilLib;
    end;

    if ((rgTipo.ItemIndex = 0) or (rgTipo.ItemIndex = 2)) and (Trim(GFlgAce) <> 'Sim') then
    begin

      if FaturaSQL <> '' then
        FaturaSQL := FaturaSQL + ' Union ' + _BR;

      FilLoj := '';

      FilLoj := ' where LojPed.DopRpe >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) + _BR +
        '   and LojPed.DopRpe <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date)) + _BR +
        '   and LojPed.CodVen  = ' + QuotedStr(EdPsqCodVen.Text) + _BR +
        '   and LojPed.ModPfa  = ' + QuotedStr('Vendas') + _BR +
        '   and LojPed.FlgVal  = ' + QuotedStr('Nao') + _BR +
        '   and LojPed.TipCpa  = ' + QuotedStr('Vendedor') + _BR;

      FilLoj := FilLoj + ' and ( LojPed.SitPed = ''Recebida'' or LojPed.SitPed = ''Cancelada'' )' + _BR;

      if Trim(EdCodEmp.Text) <> '' then
        FilLoj := FilLoj + ' and LojPed.CodEmp = ' + EdCodEmp.Text + _BR;

      FaturaSQL := FaturaSQL +
        ' Select LojPed.NumPed NumRes, LojPed.DtePed DteRes, LojPed.DopRpe DteFat, ' + _BR
        + ' LojPed.CodVen, LojPed.CodCli, LojPed.NomCli, LojPed.TotPed TotLib, fincom.percom, ' + _BR
        + ' LojPed.MedCom, LojPed.BasCom, LojPed.TotCom, Cast(LOJPED.NroNfs as varchar(10)) NroNfs, ' + _BR
        + ' LojPed.codcli, LojPed.nomcli, LojPed.DtePed DteCre, LojPed.DtePed DteVen ' + _BR
        + ' From LojPed ' + _BR
        + ' join finven on (finven.codven = lojped.codven) ' + _BR
        + ' left join fincom on (fincom.codcom = finven.codcom) ' + _BR
        + FilLoj;

    end;

    PedRes.close;
    PedRes.sql.text := FaturaSQL;
    //clipboard.AsText := PedRes.sql.text;
    PedRes.Open;

    lb_Registro.Caption := 'Foram encontrados : ' + inttostr(PedRes.RecordCount) + ' Registros no faturamento';
  end
  else
  begin
    FilLib := '';
    FilLoj := '';

    if Trim(EdCodEmp.Text) <> '' then
    begin
      FilLib := FilLib + ' and PedLib.CodEmp = ' + EdCodEmp.Text + _BR;
      FilLoj := FilLoj + ' and LojPed.CodEmp = ' + EdCodEmp.Text + _BR;
    end;
    // Alterado o Calculo para Suncar
    FINPGC.Active := false;
    FINPGC.SQL.Text := ' Select PedLib.NumRes, PedLib.DteRes, PedLib.DteFat, PedLib.CodVen, PedLib.CodCli, FinCli.NomCli, ' + _BR
      + ' ((Finpgc.vpppgc*PedLib.TOTLIB)/pedlib.totger)as TotLib, PedLib.MedCom, fincom.percom, ' + _BR
      + ' ((Finpgc.vpppgc*PedLib.BasCom)/pedlib.totger)as Bascom,((Finpgc.vpppgc*PedLib.TotCom)/pedlib.totger)as TOTCOM, ' + _BR
      + ' Cast(PedLib.NroNfs as varchar(10)) NroNfs, Finpgc.dpgpgc DteCre,fincrp.dtvcrp DteVen, Finpgc.numcre, Finpgc.numcrp ' + _BR
      + ' From PedLib ' + _BR
      + ' JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli) ' + _BR
      + ' join finven on (finven.codven = pedlib.codven) ' + _BR
      + ' join fincom on (fincom.codcom = finven.codcom) ' + _BR
      + ' join FATPED on (PedLib.codemp = fatped.codemp and PedLib.numres = fatped.numres and PedLib.dteres = fatped.dteres) ' + _BR
      + ' left join fincre on (fincre.codemp = Fatped.codemp and fincre.dtefat = fatped.dteres and fincre.numcre = fatped.nronfs) ' + _BR
      + ' left join fincrp on (fincrp.codemp = fincre.codemp and fincrp.numcre = fincre.numcre and fincrp.dtecre = fincre.dtecre) ' + _BR
      + ' left join Finpgc on (finpgc.codemp = fincrp.codemp and finpgc.numcre = fincrp.numcre and finpgc.dtecre = fincrp.dtecre and finpgc.numcrp = fincrp.numcrp) ' +
        _BR
      + ' Where ' + _BR
      + ' PedLib.CodCli = FinCli.CodCli ' + _BR
      + ' and Finpgc.dpgpgc >= ' + quotedstr(FormatDateTime('mm/dd/yyyy', EdPsqDteres1.Date)) + ' ' + _BR
      + ' and Finpgc.dpgpgc <= ' + quotedstr(FormatDateTime('mm/dd/yyyy', EdPsqDteres2.Date)) + ' ' + _BR
      + ' and PedLib.CodVen  = ' + QuotedStr(EdPsqCodVen.Text) + ' ' + _BR
      + ' and PedLib.IntFin  = ' + QuotedStr('Sim') + ' ' + _BR
      + ' and PedLib.ModPfa  = ' + QuotedStr('Vendas') + ' ' + _BR
      + ' and ( PedLib.SitLib = ' + QuotedStr('Faturado') + ' or PedLib.SitLib = ' + QuotedStr('Cancelado') + ' or PedLib.SitLib = ' + QuotedStr('Devolvido') +
        ' ) ' + _BR
      + FilLib
      + ' Union All' + _BR
      + ' Select LojPed.NumPed NumRes, LojPed.DtePed DteRes, LojPed.DopRpe DteFat, LojPed.CodVen, LojPed.CodCli, ' + _BR
      + ' LojPed.NomCli, LojPed.TotPed TotLib, LojPed.MedCom, fincom.percom,' + _BR
      + ' ((Finpgc.vpppgc*LojPed.BasCom)/lojped.totger)as Bascom, ((Finpgc.vpppgc*LojPed.TotCom)/lojped.totger)as TOTCOM, ' + _BR
      + ' Cast(LOJPED.NroNfs as varchar(10)) NroNfs, Finpgc.dpgpgc DteCre,fincrp.dtvcrp DteVen, Finpgc.numcre, Finpgc.numcrp ' + _BR
      + ' From LojPed ' + _BR
      + ' join finven on (finven.codven = lojped.codven) ' + _BR
      + ' join fincom on (fincom.codcom = finven.codcom) ' + _BR
      + ' left join LOJFAT on (lojfat.codemp = lojped.codemp and lojfat.dteped = lojped.dteped and lojfat.numped = lojped.numped) ' + _BR
      + ' left join fincre on (fincre.codemp = lojfat.codemp and fincre.dtefat = lojfat.dtefat and fincre.numcre = lojfat.nronfs) ' + _BR
      + ' left join fincrp on (fincrp.codemp = fincre.codemp and fincrp.numcre = fincre.numcre and fincrp.dtecre = fincre.dtecre) ' + _BR
      + ' left join Finpgc on (finpgc.codemp = fincrp.codemp and finpgc.numcre = fincrp.numcre and finpgc.dtecre = fincrp.dtecre and finpgc.numcrp = fincrp.numcrp) ' +
        _BR
      + ' where ' + _BR
      + ' Finpgc.dpgpgc >= ' + quotedstr(FormatDateTime('mm/dd/yyyy', EdPsqDteres1.Date)) + ' ' + _BR
      + ' and Finpgc.dpgpgc <= ' + quotedstr(FormatDateTime('mm/dd/yyyy', EdPsqDteres2.Date)) + ' ' + _BR
      + ' and LojPed.CodVen  = ' + QuotedStr(EdPsqCodVen.Text) + ' ' + _BR
      + ' and LojPed.ModPfa  = ' + QuotedStr('Vendas') + ' ' + _BR
      + ' and LojPed.FlgVal  = ' + QuotedStr('Nao') + ' ' + _BR
      + ' and LojPed.TipCpa  = ' + QuotedStr('Vendedor') + ' ' + _BR
      + ' and (LojPed.SitPed = ' + QuotedStr('Recebida') + ' or LojPed.SitPed = ' + QuotedStr('Cancelada') + ' ) '
      + FilLoj;

    FINPGC.Active := True;

    lb_Registro.Caption := 'Foram encontrados : ' + inttostr(FINPGC.RecordCount) + ' Registros no recebimento';

  end;

  bImprime.SetFocus;

end;

procedure TfmPedR30.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select ApeVen From FinVen Where CodVen = ''' + EdPsqCodVen.Text + '''';
      Open;

      EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdPsqNomVen.Text := '';
end;

procedure TfmPedR30.BbPsqVenClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'V';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodVen > 0 then
    begin

      EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);
      EdPsqNomVen.Text := fmAuxIni.NomVen;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmPedR30.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;

  lb_Registro.Caption := '';
end;

procedure TfmPedR30.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR30.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  //Opção de comissão por faturamento e recebimento. Feito para litec

  //if rgComissao.ItemIndex = 1 then
  begin

    if FINPGC.Active then
    begin

      FINPGC.Last;
      FINPGC.First;

      if FINPGC.RecordCount > 0 then
      begin
        try
          fmManEm10 := TfmManEm10.Create(Self);

          fmManEm10.p2Titulo.Caption := 'Resumo de Vendas por Vendedor (Analitico) por Recebimento';

          fmManEm10.RLReport1.PreviewModal;

        finally

          FreeAndNil(fmManEm10);

        end;
      end
      else
        fmsg('Não há registros a serem visualizados. Favor verifique o filtro e tente novamente.', 'E');
    end
    else
      fmsg('Necessário carregar dados para gerar relatório de comissão. Favor verifique filtro e acione o botão selecionar.', 'E');
  end;

end;

procedure TfmPedR30.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmPedR30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR30 Where PedR30.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  Action := caFree;

end;

procedure TfmPedR30.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR30 := nil;
end;

procedure TfmPedR30.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
    copy(TimeToStr(Time), 1, 2) +
    copy(TimeToStr(Time), 4, 2) +
    copy(TimeToStr(Time), 7, 2) +
    FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
    FNumZeros(Trim(IntToStr(Random(50000))), 5);

end;

procedure TfmPedR30.BbPsqEmpClick(Sender: TObject);
begin
  inherited;
  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdApeEmp.Text := fmPsqEmp.ApeEmp;
      EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR30.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodEmp.Text) <> '' then
  begin

    if GFlgAce <> 'Sim' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FLGDEL,SEQIMP from GerPar';
        Open;

        if Trim(FieldbyName('FLGDEL').AsString) = '*' then
        begin

          GFlgAce := 'Sim';

          if FieldbyName('SEQIMP').AsInteger > 0 then
            GEmpLog := FieldbyName('SEQIMP').AsInteger;

        end
        else
        begin

          GEmpLog := 0;
          GFlgAce := 'Nao';

        end;
      end;
    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdCodEmp);

      end;
    end;

  end
  else
    EdApeEmp.Text := '';
end;

procedure TfmPedR30.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

end.
