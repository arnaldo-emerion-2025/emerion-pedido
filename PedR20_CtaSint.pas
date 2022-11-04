unit PedR20_CtaSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorDateEdit, DBGrids, clipbrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmPedR20_CtaSint = class(TfmPadrao)
    DsR17: TwwDataSource;
    Label17: TLabel;
    EdDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdDteres2: TdxColorDateEdit;
    EdCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    bImprimir: TBitBtn;
    Label26: TLabel;
    Label22: TLabel;
    EdCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdNomVen: TdxColorEdit;
    Label7: TLabel;
    EdCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdNomCli: TdxColorEdit;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdCodCat: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqClp: TSpeedButton;
    bPsqMrc: TSpeedButton;
    bPsqTip: TSpeedButton;
    bPsqCat: TSpeedButton;
    EdNomCat: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomPro: TdxColorEdit;
    Label20: TLabel;
    EdCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdNomGve: TdxColorEdit;
    Colunas1: TMenuItem;
    PedR17: TQuery;
    grR17: TdxDBGrid;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PedR17CODEMP: TIntegerField;
    PedR17CODITE: TStringField;
    PedR17DSCPRO: TStringField;
    PedR17QTPCT2: TFloatField;
    PedR17QTPRE2: TFloatField;
    PedR17QTPLB2: TFloatField;
    PedR17SLDLB2: TFloatField;
    PedR17ULTQTS: TFloatField;
    PedR17VLQLB2: TFloatField;
    PedR17TOTLB2: TFloatField;
    grR17CODEMP: TdxDBGridMaskColumn;
    grR17CODITE: TdxDBGridMaskColumn;
    grR17DSCPRO: TdxDBGridMaskColumn;
    grR17QTPCT2: TdxDBGridMaskColumn;
    grR17QTPRE2: TdxDBGridMaskColumn;
    grR17QTPLB2: TdxDBGridMaskColumn;
    grR17SLDLB2: TdxDBGridMaskColumn;
    grR17ULTQTS: TdxDBGridMaskColumn;
    grR17VLQLB2: TdxDBGridMaskColumn;
    grR17TOTLB2: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure grR177ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodGveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;
  end;

var
  fmPedR20_CtaSint: TfmPedR20_CtaSint;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqEmp, PsqVen,
  PsqAtd, PsqGCl, PsqCCl, PsqMcr, PsqMrg, PsqSet, PsqMst, PsqCli, AuxIni,
  PsqGve, ManCol;

{$R *.DFM}

procedure TfmPedR20_CtaSint.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin

    DefaultExt := ADefaultExt;

    Filter := AFilter;

    FileName := AFileName;

    if Execute then
      AMethod(FileName, True);

  end;
end;

procedure TfmPedR20_CtaSint.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := 'Select ' + _BR +
    ' cta.CodEmp,' + _BR +
    ' ct2.CodClp || ''-'' || ct2.CodGru || ''.'' || ct2.CodSub || ''.'' || ct2.CodPro as CodIte,' + _BR +
    ' pro.DscPro,' + _BR +
    ' sum(coalesce(ct2.qtpct2,0.0)) as qtpct2,' + _BR +
    ' sum(coalesce(re2.qtpre2,0.0)) as qtpre2,' + _BR +
    ' sum(coalesce(lb2.ultqts,0.0)) as qtplb2,' + _BR +
    ' sum(coalesce(lb2.SldLb2,0.0) + coalesce(ct2.QtnCt2,0.0)) as SldLb2,' + _BR +
    ' sum(coalesce(lb2.UltQts,0.0)) as UltQts,' + _BR +
    ' sum(Round(ct2.vlqct2,4)) as VlqLb2,' + _BR +
    ' sum(Round(((coalesce(lb2.SldLb2,0.0) + coalesce(ct2.QtnCt2,0.0)) * (ct2.vlqct2)),4)) as TotLb2 ' + _BR +
    '  From pedct2 ct2 ' + _BR +
    ' join pedcta cta on cta.numcta = ct2.numcta ' + _BR +
    ' left join PedRe2 re2 on re2.id_pedct2 = ct2.id_pedct2 ' + _BR +
    ' join PedRes res on res.numcta = cta.numcta ' + _BR +
    ' left join PedLib lib on lib.codemp = res.codemp ' + _BR +
    ' and lib.dteres = res.dteres ' + _BR +
    ' and lib.numres = res.numres ' + _BR +
    ' and lib.sitlib <> ''Cancelado'' ' + _BR +
    ' left join PedLb2 lb2 on lb2.codemp = lib.codemp ' + _BR +
    ' and lb2.dteres = lib.dteres ' + _BR +
    ' and lb2.numres = lib.numres ' + _BR +
    ' and lb2.seqlib = lib.seqlib ' + _BR +
    ' and lb2.Id_PedRe2 = re2.Id_PedRe2 ' + _BR +

    ' join estpro pro on pro.codclp = ct2.codclp ' + _BR +
    ' and pro.codgru = ct2.codgru ' + _BR +
    ' and pro.codsub = ct2.codsub ' + _BR +
    ' and pro.codpro = ct2.codpro ' + _BR +
    ' join FinCli cli on cta.CodCli = cli.CodCli ' + _BR +
    ' join FinVen ven on cta.CodVen = ven.CodVen ' + _BR +
    ' Where 1 = 1' + _BR +
    ' and cta.sitcta = ' + QuotedStr('Atendida') + _BR +
    ' and res.sitres <> ' + QuotedStr('Cancelado') + _BR;

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmPedR20_CtaSint.bSelecionarClick(Sender: TObject);
var
  strAux: string;
begin
  sFiltro := '';
  ActiveControl := nil;

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

  sOrdem := ' group by pedcta.CodEmp,pedct2.CodClp,pedct2.CodGru,pedct2.CodSub,pedct2.CodPro,estpro.dscpro ' + _BR +
    ' Order by pedcta.CodEmp,pedct2.CodClp,pedct2.CodGru,pedct2.CodSub,pedct2.CodPro,estpro.dscpro ';

  //sFiltro := ' and pedcta.ModPfa = ' + QuotedStr('Vendas') + _BR;

  if ((Trim(fLimpaStr(EdDteRes1.Text)) = '') or (Trim(fLimpaStr(EdDteRes2.Text)) = '')) then
  begin
    Showmessage('Obrigatório Informar o Período em que deseja a Relação');
    Abort;
  end;
  {sFiltro :=  ' and ( ( PedLib.SitLib = ' + QuotedStr('Faturado') + ' )';
  sFiltro := sFiltro + ' or ( PedLib.SitLib = ' + QuotedStr('Devolvido') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';
  sFiltro := sFiltro + ' or ( PedLib.SitLib = ' + QuotedStr('Cancelado') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )'; }

  if Trim(fLimpaStr(EdDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and pedcta.dtecta >= ' + QuotedStr(fDateToSQL(EdDteRes1.Date)) + _BR;
  if Trim(fLimpaStr(EdDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and pedcta.dtecta <= ' + QuotedStr(fDateToSQL(EdDteRes2.Date)) + _BR;

  if Trim(EdCodGve.Text) <> '' then
    sFiltro := sFiltro + ' and FinVen.CodGve = ' + QuotedStr(EdCodGve.Text) + _BR;
  if Trim(EdCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and pedcta.CodVen = ' + QuotedStr(EdCodVen.Text) + _BR;
  if Trim(EdCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and pedcta.CodCli = ' + QuotedStr(EdCodCli.Text) + _BR;
  if Trim(EdCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and pedcta.CodEmp = ' + QuotedStr(EdCodEmp.Text) + _BR;
  if Trim(EdCodClp.Text) <> '' then
    sFiltro := sFiltro + ' and pedct2.CodClp = ' + QuotedStr(EdCodClp.Text) + _BR;
  if Trim(EdCodGru.Text) <> '' then
    sFiltro := sFiltro + ' and pedct2.CodGru = ' + QuotedStr(EdCodGru.Text) + _BR;
  if Trim(EdCodSub.Text) <> '' then
    sFiltro := sFiltro + ' and pedct2.CodSub = ' + QuotedStr(EdCodSub.Text) + _BR;
  if Trim(EdCodPro.Text) <> '' then
    sFiltro := sFiltro + ' and pedct2.CodPro = ' + QuotedStr(EdCodPro.Text) + _BR;
  if Trim(EdCodCat.Text) <> '' then
    sFiltro := sFiltro + ' and estpro.CodCat = ' + QuotedStr(EdCodCat.Text) + _BR;
  if Trim(EdCodTip.Text) <> '' then
    sFiltro := sFiltro + ' and estpro.CodTip = ' + QuotedStr(EdCodTip.Text) + _BR;
  if Trim(EdCodMrc.Text) <> '' then
    sFiltro := sFiltro + ' and estpro.CodMrc = ' + QuotedStr(EdCodMrc.Text) + _BR;

  sFiltro := sFiltro + ' and (coalesce(PedLb2.SldLb2,0) + coalesce(PedCt2.QtnCt2,0)) > ''0'' ' + _BR;

  {if GFlgAce = 'Sim' then
    sFiltro := sFiltro + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');}

  //sFiltro := sFiltro + ' and (coalesce(PedLb2.SldLb2,0) + coalesce(PedCt2.QtnCt2,0)) > ' + QuotedStr('0') + _BR;

  with PedR17, SQL do
  begin

    Active := False;
    strAux := sBase + sFiltro + sOrdem;

    if debughook > 0 then
      clipboard.AsText := strAux;

    Text := strAux;
    Active := True;

  end;

  grR17.FullExpand;

  grR17.SetFocus;

  Application.ProcessMessages;

end;

procedure TfmPedR20_CtaSint.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmPedR20_CtaSint.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;

  //a rotina abaixo é apenas para abrir o dataset com where 1 <> 1
  //PedR17.active := false;
  //PedR17.active := true;  
end;

procedure TfmPedR20_CtaSint.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdCodEmp.Text + ' - ' + EdApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : ' + EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : ' + EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : ' + EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : ' + EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : ' + EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : ' + EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : ' + EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : ' + EdCodCli.Text + ' - ' + EdNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de Vendedores : ' + EdCodGve.Text + ' - ' + EdNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdCodVen.Text + ' - ' + EdNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : ' + EdDteRes1.Text + ' a ' + EdDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR20_CtaSint.grR177ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR20_CtaSint.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação Sintético de Itens não Atendidos.htm', grR17.SaveToHTML);
end;

procedure TfmPedR20_CtaSint.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação Sintético de Itens não Atendidos.xls', grR17.SaveToXLS);
end;

procedure TfmPedR20_CtaSint.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação Sintético de Itens não Atendidos.xml', grR17.SaveToXML);
end;

procedure TfmPedR20_CtaSint.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmPedR20_CtaSint.bPsqEmpClick(Sender: TObject);
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

procedure TfmPedR20_CtaSint.EdCodEmpExit(Sender: TObject);
begin
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

procedure TfmPedR20_CtaSint.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdCodVen.Text := IntToStr(fmPsqVen.CodVen);
      EdNomVen.Text := fmPsqVen.NomVen;

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR20_CtaSint.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(EdCodVen.Text);
      Open;

      EdNomVen.Text := FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdNomVen.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      EdNomCli.Text := fmPsqCli.NomCli;
      EdCodCli.Text := IntToStr(fmPsqCli.CodCli);

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR20_CtaSint.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = ' + QuotedStr(EdCodCli.Text);
      Open;

      EdNomCli.Text := FieldByName('NomCli').AsString;

    end;

  end
  else
    EdNomCli.Text := '';
end;

procedure TfmPedR20_CtaSint.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCat.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select EstCat.NomCat From EstCat Where EstCat.CodCat = ' + QuotedStr(EdCodCat.Text);
      Open;

      EdNomCat.Text := FieldByName('NomCat').AsString;

    end;

  end
  else
    EdNomCat.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'Categoria';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCat > 0 then
    begin

      EdNomCat.Text := fmAuxIni.NomCat;
      EdCodCat.Text := IntToStr(fmAuxIni.CodCat);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodCat.Text) <> '' then
    EdCodTip.SetFocus;

end;

procedure TfmPedR20_CtaSint.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodTip.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select EstTip.NomTip From EstTip Where EstTip.CodTip = ' + QuotedStr(EdCodTip.Text);
      Open;

      EdNomTip.Text := FieldByName('NomTip').AsString;

    end;

  end
  else
    EdNomTip.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);

    fmAuxIni.TipoPesq := 'Tipo';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodTip > 0 then
    begin

      EdNomTip.Text := fmAuxIni.NomTip;
      EdCodTip.Text := IntToStr(fmAuxIni.CodTip);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodTip.Text) <> '' then
    EdCodMrc.SetFocus;

end;

procedure TfmPedR20_CtaSint.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodMrc.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = ' + QuotedStr(EdCodMrc.Text);
      Open;

      EdNomMrc.Text := FieldByName('NomMrc').AsString;

    end;

  end
  else
    EdNomMrc.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqMrcClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);

    fmAuxIni.TipoPesq := 'Marca';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodMrc > 0 then
    begin

      EdNomMrc.Text := fmAuxIni.NomMrc;
      EdCodMrc.Text := IntToStr(fmAuxIni.CodMrc);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodMrc.Text) <> '' then
    EdCodClp.SetFocus;

end;

procedure TfmPedR20_CtaSint.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = ' + QuotedStr(EdCodClp.Text);
      Open;

      EdNomClp.Text := FieldByName('NomClp').AsString;

    end;

  end
  else
    EdNomClp.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

    fmAuxIni.TipoPesq := 'Cls';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodClp) <> '' then
    begin

      EdCodClp.Text := fmAuxIni.CodClp;
      EdNomClp.Text := fmAuxIni.NomClp;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodClp.Text) <> '' then
    EdCodGru.SetFocus;

end;

procedure TfmPedR20_CtaSint.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodGru.Text) <> '' then
  begin

    EdCodGru.Text := FNumZeros(EdCodGru.Text, 3);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = ' + QuotedStr(EdCodGru.Text);
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomGru').AsString) <> '' then
      EdNomGru.Text := quSql.FieldByName('NomGru').AsString
    else
      fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

  end
  else
    EdNomGru.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);
    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;

    fmAuxIni.TipoPesq := 'G';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodGru) <> '' then
    begin

      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodGru.Text) <> '' then
    EdCodSub.SetFocus;

end;

procedure TfmPedR20_CtaSint.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodSub.Text) <> '' then
  begin

    EdCodSub.Text := FNumZeros(EdCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select EstSub.NomSub' +
        ' From EstSub ' +
        ' Where EstSub.CodGru = ' + QuotedStr(EdCodGru.Text) +
        '   and EstSub.CodSub = ' + QuotedStr(EdCodSub.Text);
      Open;

      EdNomSub.Text := FieldByName('NomSub').AsString;

    end;

  end
  else
    EdNomSub.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;
    if Trim(EdCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdCodGru.Text;
    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

    fmAuxIni.TipoPesq := 'S';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodSub) <> '' then
    begin

      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;
      EdCodSub.Text := fmAuxIni.CodSub;
      EdNomSub.Text := fmAuxIni.NomSub;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodSub.Text) <> '' then
    EdCodPro.SetFocus;

end;

procedure TfmPedR20_CtaSint.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodPro.Text) <> '' then
  begin

    EdCodPro.Text := FNumStrZero(EdCodPro.Text);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select DscPro From EstPro ' +
        ' Where CodClp = :CodClp' +
        '   and CodGru = :CodGru' +
        '   and CodSub = :CodSub' +
        '   and CodPro = :CodPro';

      with Params do
      begin

        Params[0].AsString := EdCodClp.Text;
        Params[1].AsString := EdCodGru.Text;
        Params[2].AsString := EdCodSub.Text;
        Params[3].AsString := EdCodPro.Text;

      end;

      Open;

      EdNomPro.Text := FieldByName('DscPro').AsString;

    end;

  end
  else
    EdNomPro.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);
    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;
    if Trim(EdCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdCodGru.Text;
    if Trim(EdCodSub.Text) <> '' then
      fmAuxIni.CodGru := EdCodSub.Text;

    fmAuxIni.TipoPesq := 'I';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodPro) <> '' then
    begin

      EdCodClp.Text := fmAuxIni.CodClp;
      EdNomClp.Text := fmAuxIni.NomClp;
      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;
      EdCodSub.Text := fmAuxIni.CodSub;
      EdNomSub.Text := fmAuxIni.NomSub;
      EdCodPro.Text := fmAuxIni.CodPro;
      EdNomPro.Text := fmAuxIni.DscPro;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  EdCodPro.SetFocus;

end;

procedure TfmPedR20_CtaSint.EdCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodGve.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinGve.NomGve From FinGve Where FinGve.CodGve = ' + QuotedStr(EdCodGve.Text);
      Open;

      EdNomGve.Text := FieldByName('NomGve').AsString;

    end;

  end
  else
    EdNomGve.Text := '';
end;

procedure TfmPedR20_CtaSint.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqGve := TfmPsqGve.Create(Self);

    fmPsqGve.ShowModal;

    if fmPsqGve.CodGve > 0 then
    begin

      EdCodGve.Text := IntToStr(fmPsqGve.CodGve);
      EdNomGve.Text := fmPsqGve.NomGve;

    end;

  finally

    FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR20_CtaSint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR20_CtaSint.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR20_CtaSint := nil;
end;

procedure TfmPedR20_CtaSint.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(fmPedR20_CtaSint.grR17);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

end.

