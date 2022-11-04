unit PedR06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxColorDateEdit,clipbrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmPedR06 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    bPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grRes: TdxDBGrid;
    grResDSCR06: TdxDBGridMaskColumn;
    grResCODITE: TdxDBGridMaskColumn;
    bImprimir: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdCodPro: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    grResQTDPED: TdxDBGridColumn;
    grResTOTPED: TdxDBGridColumn;
    grResQTDREG: TdxDBGridColumn;
    Label20: TLabel;
    Label22: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdCodCli: TdxColorEdit;
    EdCodVen: TdxColorEdit;
    BbPsqVen: TSpeedButton;
    BbPsqCli: TSpeedButton;
    EdNomCli: TdxColorEdit;
    EdNomVen: TdxColorEdit;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    EdCodMrc: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    bPsqTip: TSpeedButton;
    bPsqMrc: TSpeedButton;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomCat: TdxColorEdit;
    Label16: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    grResTOTCST: TdxDBGridColumn;
    grResMARKUP: TdxDBGridColumn;
    Label23: TLabel;
    Label24: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    Label25: TLabel;
    Label26: TLabel;
    EdCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdNomGve: TdxColorEdit;
    Colunas1: TMenuItem;
    GroupBox1: TGroupBox;
    ckCan: TCheckBox;
    ckDev: TCheckBox;
    GroupBox2: TGroupBox;
    ckComercial: TCheckBox;
    ckLoja: TCheckBox;
    wwQuery1: TwwQuery;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField10: TStringField;
    PedResSEQARQ: TStringField;
    PedResCODCLP: TStringField;
    PedResCODGRU: TStringField;
    PedResCODSUB: TStringField;
    PedResCODPRO: TStringField;
    PedResQTDPED: TFloatField;
    PedResTOTPED: TFloatField;
    PedResTOTCST: TFloatField;
    PedResQTDREG: TIntegerField;
    PedResCODTAM: TStringField;
    PedResCODCOR: TStringField;
    PedResDSCPRO: TStringField;
    PedResCODITE: TStringField;
    PedResMARKUP: TFloatField;
    PedResCODNCM: TStringField;
    grResCODNCM: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodGveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure PedResCalcFields(DataSet: TDataSet);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq, sFiltro: string;
  end;

var
  fmPedR06: TfmPedR06;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqGru, PsqSub,
  PsqPro, PsqClp, PsqCli, PsqVen, AuxIni, PsqGve, ManCol;

{$R *.DFM}

procedure TfmPedR06.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmPedR06.FormCreate(Sender: TObject);
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

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmPedR06.bPesquisaClick(Sender: TObject);
begin

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

  if (ckComercial.Checked) then
  begin
  sFiltro := ' and ( ( PedLib.SitLib = ' + QuotedStr('Faturado') + ' )';

  if ckDev.Checked then
    sFiltro := sFiltro + ' or ( PedLib.SitLib = ' + QuotedStr('Devolvido') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  if ckCan.Checked then
    sFiltro := sFiltro + ' or ( PedLib.SitLib = ' + QuotedStr('Cancelado') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);

  if Trim(EdCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodEmp = ' + QuotedStr(EdCodEmp.Text);
  if Trim(EdCodGve.Text) <> '' then
    sFiltro := sFiltro + ' and FinVen.CodGve = ' + QuotedStr(EdCodGve.Text);
  if Trim(EdCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodVen = ' + QuotedStr(EdCodVen.Text);
  if Trim(EdCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodCli = ' + QuotedStr(EdCodCli.Text);
  if Trim(EdCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and PedLb2.CodEit = ' + QuotedStr(EdCodEmp.Text);
  if Trim(EdCodGru.Text) <> '' then
    sFiltro := sFiltro + ' and PedLb2.CodGru = ' + QuotedStr(EdCodGru.Text);
  if Trim(EdCodSub.Text) <> '' then
    sFiltro := sFiltro + ' and PedLb2.CodSub = ' + QuotedStr(EdCodSub.Text);
  if Trim(EdCodPro.Text) <> '' then
    sFiltro := sFiltro + ' and PedLb2.CodPro = ' + QuotedStr(EdCodPro.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if GFlgAce = 'Sim' then
    sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR06 Where SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into PedR06 (SEQARQ, CODCLP, CODGRU, CODSUB, CODPRO, CODTAM, CODCOR, DSCPRO, QTDPED, TOTPED, TOTCST, MARKUP, QTDREG) ' +_BR+
      ' Select ' + QuotedStr(SeqArq) + ',' +_BR+
      ' PedLb2.CodClp,' +_BR+
      ' PedLb2.CodGru,' +_BR+
      ' PedLb2.CodSub,' +_BR+
      ' PedLb2.CodPro,' +_BR+
      ' PedLb2.CodTam,' +_BR+
      ' PedLb2.CodCor,' + QuotedStr(' ') + ',' +_BR+
      ' Round(Sum(PedLb2.UltQts),4) as QtdPed,' +_BR+
      ' Round(Sum(PedLb2.TotLb2 - (PedLb2.TotDsr /*+ PedLb2.TotIpc*/)),2) as TotLb2,' +_BR+
      ' Round(Sum(PedLb2.TotCst),2) as TotCst,' + QuotedStr('0') + ',' +_BR+
      ' Count(*) as QtdReg' +_BR+

      ' From PedLib' +_BR+

      ' left join pedlb2 lb2 on lb2.codemp = pedlib.codemp and' +_BR+
                        ' lb2.dteres = pedlib.dteres and' +_BR+
                        ' lb2.numres = pedlib.numres and' +_BR+
                        ' lb2.seqlib = pedlib.seqlib' +_BR+

      ' left join finven ven on ven.codven = pedlib.codven' +_BR+

      ' Where PedLb2.CodEmp = PedLib.CodEmp' +_BR+
      ' and PedLb2.DteRes = PedLib.DteRes' +_BR+
      ' and PedLb2.NumRes = PedLib.NumRes' +_BR+
      ' and PedLb2.SeqLib = PedLib.SeqLib' +_BR+
      ' and PedLib.CodVen = FinVen.CodVen' + _BR + sFiltro;

    if Trim(EdCodCat.Text) <> '' then
      Text := Text + _BR+' and PedLb2.CodCat = ' + QuotedStr(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      Text := Text + _BR+' and PedLb2.CodTip = ' + QuotedStr(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      Text := Text + _BR+' and PedLb2.CodMrc = ' + QuotedStr(EdCodMrc.Text);

    Text := Text + ' Group by PedLb2.CodClp,PedLb2.CodGru,PedLb2.CodSub,PedLb2.CodPro,PedLb2.CodTam,PedLb2.CodCor';

    if DebugHook > 0 then
    clipboard.astext := '--Select 0001'+#10#13+quSQL.SQL.Text;


    ExecSQL;

  end;
  end;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (ckLoja.Checked) then
  begin
    sFiltro := ' and LojPed.SitPed = ' + QuotedStr('Recebida');

    if Trim(EdPsqModPfa.Text) <> '' then
    begin

      if Trim(EdPsqModPfa.Text) <> 'Vales' then
        sFiltro := sFiltro + _BR+' and LojPed.ModPfa = ' + QuotedStr(EdPsqModPfa.Text) + ' and LojPed.FlgVal = ' + QuotedStr('Nao')
      else
        sFiltro := sFiltro + _BR+' and LojPed.FlgVal = ' + QuotedStr('Sim');

    end;

    if Trim(EdCodVen.Text) <> '' then
      sFiltro := sFiltro + _BR+' and LojPed.CodVen = ' + QuotedStr(EdCodVen.Text);
    if Trim(EdCodCli.Text) <> '' then
      sFiltro := sFiltro + _BR+' and LojPed.CodCli = ' + QuotedStr(EdCodCli.Text);
    if Trim(EdCodEmp.Text) <> '' then
      sFiltro := sFiltro + _BR+' and LojPe2.CodEit = ' + QuotedStr(EdCodEmp.Text);
    if Trim(EdCodGru.Text) <> '' then
      sFiltro := sFiltro + _BR+' and LojPe2.CodGru = ' + QuotedStr(EdCodGru.Text);
    if Trim(EdCodSub.Text) <> '' then
      sFiltro := sFiltro + _BR+' and LojPe2.CodSub = ' + QuotedStr(EdCodSub.Text);
    if Trim(EdCodPro.Text) <> '' then
      sFiltro := sFiltro + _BR+' and LojPe2.CodPro = ' + QuotedStr(EdCodPro.Text);

    if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
      sFiltro := sFiltro + _BR+' and LojPed.DteMov >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
    if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
      sFiltro := sFiltro + _BR+' and LojPed.DteMov <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR06 (SEQARQ,CODCLP,CODGRU,CODSUB,CODPRO,CODTAM,CODCOR,' +_BR+
        'DSCPRO,QTDPED,TOTPED,TOTCST,MARKUP,QTDREG)' +_BR+
        ' Select ''' + SeqArq + ''',' +_BR+
        '        LojPe2.CodClp,' +_BR+
        '        LojPe2.CodGru,' +_BR+
        '        LojPe2.CodSub,' +_BR+
        '        LojPe2.CodPro,' +_BR+
        '        LojPe2.CodTam,' +_BR+
        '        LojPe2.CodCor,''' + ' ' + ''',' +_BR+
        '        Round(Sum(LojPe2.QtpPe2),4) as QtdPed,' +_BR+
        '        Round(Sum(LojPe2.TotGe2),2) as TotLb2,' +_BR+
        '        Round(Sum(LojPe2.TotCst),2) as TotCst,''' + '0' + ''',' +_BR+
        '        Count(*) as QtdReg' +_BR+
        ' From LojPe2,LojPed' +_BR+
        ' Where LojPe2.CodEmp = LojPed.CodEmp' +_BR+
        '   and LojPe2.DtePed = LojPed.DtePed' +_BR+
        '   and LojPe2.NumPed = LojPed.NumPed' + _BR+sFiltro +
        ' Group by LojPe2.CodClp,LojPe2.CodGru,LojPe2.CodSub,LojPe2.CodPro,LojPe2.CodTam,LojPe2.CodCor';

    if DebugHook > 0 then
      clipboard.astext := clipboard.astext + #10#13+#10#13+'--Select 0002'+#10#13+quSQL.SQL.Text;

      ExecSQL;

    end;

  end;

  with PedRes, SQL do
  begin

    Close;
    Text :=
      ' select' +
          ' SEQARQ,' +     
          ' CODCLP,' +
          ' CODGRU,' +
          ' CODSUB,' +
          ' CODPRO,' +
          ' Sum(QTDPED) as QTDPED,' +
          ' Sum(TOTPED) as TOTPED,' +
          ' Sum(TOTCST) as TOTCST,' +
          ' Sum(QTDREG) as QTDREG,' +
          ' CODTAM,' +
          ' CODCOR,' +
          ' EstPro.DscPro,' +
          ' EstPro.CODNCM ' +
      ' From PedR06' +
      ' LEFT JOIN EstPro ON (PedR06.CodClp = EstPro.CodClp AND' +
      '                      PedR06.CodGru = EstPro.CodGru AND' +
      '                      PedR06.CodSub = EstPro.CodSub AND' +
      '                      PedR06.CodPro = EstPro.CodPro)' +
      ' Where PedR06.SeqArq = ' + QuotedStr(SeqArq);

    if Trim(EdCodClp.Text) <> '' then
      Text := Text + _BR+' and PedR06.CodClp = ' + QuotedStr(EdCodClp.Text);
    if Trim(EdCodCat.Text) <> '' then
      Text := Text + _BR+' and EstPro.CodCat = ' + QuotedStr(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      Text := Text + _BR+' and EstPro.CodTip = ' + QuotedStr(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      Text := Text + _BR+' and EstPro.CodMrc = ' + QuotedStr(EdCodMrc.Text);

    Text := Text + _BR + ' group by SEQARQ, CODCLP, CODGRU, CODSUB, CODPRO, CODTAM, CODCOR, DSCPRO, CODNCM';

    if DebugHook > 0 then
      clipboard.astext := clipboard.astext + #10#13+#10#13+'--Select 0003'+#10#13+quSQL.SQL.Text;

    Open;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR06 Where SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR06.FormShow(Sender: TObject);
begin
  inherited;

  EdCodClp.Text := '1';

  EdNomClp.Text := 'ACABADO';

  EdCodEmp.SetFocus;

end;

procedure TfmPedR06.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdCodEmp.Text + ' - ' + EdApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : ' + EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : ' + EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : ' + EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classifica��o : ' + EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : ' + EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : ' + EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : ' + EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : ' + EdCodCli.Text + ' - ' + EdNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de Vendedores : ' + EdCodGve.Text + ' - ' + EdNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdCodVen.Text + ' - ' + EdNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : ' + EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR06.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR06.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de Produtos.htm', grRes.SaveToHTML);
end;

procedure TfmPedR06.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de Produtos.xls', grRes.SaveToXLS);
end;

procedure TfmPedR06.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de Produtos.xml', grRes.SaveToXML);
end;

procedure TfmPedR06.BbPsqEmpClick(Sender: TObject);
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

  EdCodEmp.SetFocus;

end;

procedure TfmPedR06.EdCodEmpExit(Sender: TObject);
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

        fmsgErro('Empresa Informada n�o Encontrada.', EdCodEmp);

      end;
    end;

  end
  else
    EdApeEmp.Text := '';
end;

procedure TfmPedR06.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmPedR06.BbPsqClpClick(Sender: TObject);
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

procedure TfmPedR06.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomClp From EstClp ' +
        ' Where CodClp = ' + QuotedStr(EdCodClp.Text);
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomClp').AsString) <> '' then
      EdNomClp.Text := quSql.FieldByName('NomClp').AsString
    else
      fmsgErro('Classifica��o Informada n�o Encontrada.', EdCodClp);

  end
  else
    EdNomClp.Text := '';
end;

procedure TfmPedR06.BbPsqGruClick(Sender: TObject);
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

procedure TfmPedR06.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodGru.Text) <> '' then
  begin

    EdCodGru.Text := FNumZeros(EdCodGru.Text, 3);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomGru From EstGru ' +
        ' Where CodGru = ' + QuotedStr(EdCodGru.Text);
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomGru').AsString) <> '' then
      EdNomGru.Text := quSql.FieldByName('NomGru').AsString
    else
      fmsgErro('Grupo Informado n�o Encontrado.', EdCodGru);

  end
  else
    EdNomGru.Text := '';
end;

procedure TfmPedR06.BbPsqSubClick(Sender: TObject);
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

procedure TfmPedR06.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodSub.Text) <> '' then
  begin

    EdCodSub.Text := FNumZeros(EdCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomSub From EstSub ' +
        ' Where CodGru = ' + QuotedStr(EdCodGru.Text) +
        '   and CodSub = ' + QuotedStr(EdCodSub.Text);
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomSub').AsString) <> '' then
      EdNomSub.Text := quSql.FieldByName('NomSub').AsString
    else
      fmsgErro('SubGrupo Informado n�o Encontrado.', EdCodSub);

  end
  else
    EdNomSub.Text := '';
end;

procedure TfmPedR06.BbPsqProClick(Sender: TObject);
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

  if Trim(EdCodPro.Text) <> '' then
    bPesquisa.SetFocus;

end;

procedure TfmPedR06.EdCodProExit(Sender: TObject);
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

    end;

    if Trim(quSQL.FieldbyName('DscPro').AsString) <> '' then
      EdNomPro.Text := quSql.FieldByName('DscPro').AsString
    else
      fmsgErro('Item Informado n�o Encontrado.', EdCodPro);

  end
  else
    EdNomPro.Text := '';
end;

procedure TfmPedR06.BbPsqCliClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      EdCodCli.Text := IntToStr(fmPsqCli.CodCli);
      EdNomCli.Text := fmPsqCli.NomCli;

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR06.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomCli From FinCli Where CodCli = ' + QuotedStr(EdCodCli.Text);
      Open;

      EdNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdNomCli.Text := '';
end;

procedure TfmPedR06.BbPsqVenClick(Sender: TObject);
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

procedure TfmPedR06.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select ApeVen From FinVen Where CodVen = ' + QuotedStr(EdCodVen.Text);
      Open;

      EdNomVen.Text := quSql.FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdNomVen.Text := '';
end;

procedure TfmPedR06.bPsqCatClick(Sender: TObject);
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

procedure TfmPedR06.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCat.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomCat From EstCat Where CodCat = ' + QuotedStr(EdCodCat.Text);
      Open;

      EdNomCat.Text := FieldByName('NomCat').AsString;

    end;

  end
  else
    EdNomCat.Text := '';
end;

procedure TfmPedR06.bPsqTipClick(Sender: TObject);
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

procedure TfmPedR06.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodTip.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomTip From EstTip Where CodTip = ' + QuotedStr(EdCodTip.Text);
      Open;

      EdNomTip.Text := FieldByName('NomTip').AsString;

    end;

  end
  else
    EdNomTip.Text := '';
end;

procedure TfmPedR06.bPsqMrcClick(Sender: TObject);
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

procedure TfmPedR06.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodMrc.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomMrc From EstMrc Where CodMrc = ' + QuotedStr(EdCodMrc.Text);
      Open;

      EdNomMrc.Text := FieldByName('NomMrc').AsString;

    end;

  end
  else
    EdNomMrc.Text := '';
end;

procedure TfmPedR06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR06 Where SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmPedR06.EdCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodGve.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomGve From FinGve Where CodGve = ' + QuotedStr(EdCodGve.Text);
      Open;

      EdNomGve.Text := FieldByName('NomGve').AsString;

    end;

  end
  else
    EdNomGve.Text := '';
end;

procedure TfmPedR06.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR06.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR06 := nil;
end;

procedure TfmPedR06.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(fmPedR06.grRes);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

procedure TfmPedR06.PedResCalcFields(DataSet: TDataSet);
begin
  inherited;
  PedResCODITE.AsString := PedResCODCLP.AsString + '-' +
                           PedResCODGRU.AsString + '.' +
                           PedResCODSUB.AsString + '.' +
                           PedResCODPRO.AsString;

  if(PedResTOTCST.asFloat > 0) then
     PedResMARKUP.AsFloat  := fRound(((PedResTOTPED.asFloat / PedResTOTCST.asFloat) - 1) * 100, 2)
  else
     PedResMARKUP.AsFloat  := 0.0;
end;

end.

