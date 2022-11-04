unit PedR21;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorDateEdit, clipbrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmPedR21 = class(TfmPadrao)
    CmpR09: TwwQuery;
    DsR09: TwwDataSource;
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
    CmpR09SEQARQ: TStringField;
    CmpR09CODCLP: TStringField;
    CmpR09CODGRU: TStringField;
    CmpR09CODSUB: TStringField;
    CmpR09CODPRO: TStringField;
    CmpR09QTDEST: TFloatField;
    CmpR09DSCPRO: TStringField;
    CmpR09MARCA: TStringField;
    CmpR09CODITE: TStringField;
    CmpR09IDEPRO: TStringField;
    rgExibir: TRadioGroup;
    rgStatus: TRadioGroup;
    Colunas1: TMenuItem;
    Panel1: TPanel;
    grR09: TdxDBGrid;
    CODITE: TdxDBGridMaskColumn;
    DSCPRO: TdxDBGridMaskColumn;
    IDEPRO: TdxDBGridColumn;
    MARCA: TdxDBGridColumn;
    QTDEST: TdxDBGridColumn;
    gbGrupo: TGroupBox;
    ckAtacado: TCheckBox;
    ckVarejo: TCheckBox;
    CmpR09DULCMP: TDateTimeField;
    grR09Column6: TdxDBGridColumn;
    CmpR09QTDCMP: TFloatField;
    grR09Column7: TdxDBGridColumn;
    ckbItensCadastrados: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grR09ReloadGroupList(Sender: TObject);
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
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure ckAtacadoClick(Sender: TObject);
    procedure ckVarejoClick(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq, sFiltro,sFiltrol: string;
  end;

var
  fmPedR21: TfmPedR21;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqGru, PsqSub,
  PsqPro, PsqClp, PsqCli, PsqVen, AuxIni, AuxPsq, PsqPed, PsqCmp, ManCol;

{$R *.DFM}

procedure TfmPedR21.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmPedR21.FormCreate(Sender: TObject);
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

procedure TfmPedR21.bPesquisaClick(Sender: TObject);
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

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdPsqDteRes1);
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdPsqDteRes2);

  sFiltro := ' and ( ( PedLib.SitLib = ' + QuotedStr('Faturado') + ' )' + _BR;

  sFiltro := sFiltro + ' or ( PedLib.SitLib = ' + QuotedStr('Devolvido') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )' + _BR;

  sFiltro := sFiltro + ' or ( PedLib.SitLib = ' + QuotedStr('Cancelado') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )' + _BR;

  sFiltro := sFiltro + ' )' + _BR;

  sFiltro := sFiltro + ' and PedLib.AtuEst = ' + QuotedStr('Sim') + _BR;

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) + _BR;
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date)) + _BR;

  if Trim(EdCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodVen = ' + QuotedStr(EdCodVen.Text) + _BR;
  if Trim(EdCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodCli = ' + QuotedStr(EdCodCli.Text) + _BR;
  if Trim(EdCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and PedLb2.CodEmp = ' + QuotedStr(EdCodEmp.Text) + _BR;

  if GFlgAce = 'Sim' then
    sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim') + _BR;

  sFiltrol := ' and LojPed.SitPed = ' + QuotedStr('Recebida') + ' and LojPed.FlgVal = ' + QuotedStr('Nao');

  if Trim(EdCodVen.Text) <> '' then
    sFiltrol := sFiltrol + ' and LojPed.CodVen = ' + QuotedStr(EdCodVen.Text);
  if Trim(EdCodCli.Text) <> '' then
    sFiltrol := sFiltrol + ' and LojPed.CodCli = ' + QuotedStr(EdCodCli.Text);
  if Trim(EdCodEmp.Text) <> '' then
    sFiltrol := sFiltrol + ' and LojPe2.CodEmp = ' + QuotedStr(EdCodEmp.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltrol := sFiltrol + ' and LojPed.DteMov >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltrol := sFiltrol + ' and LojPed.DteMov <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR05 Where SeqArq = ' + QuotedStr(SeqArq) + _BR;
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR09 Where SeqArq = ' + QuotedStr(SeqArq) + _BR;
    ExecSQL;

  end;

  if (ckVarejo.Checked) then
  begin
    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into CmpR05(SeqArq,CodClp,CodGru,CodSub,CodPro,QtdPed,QtdEst)' + _BR +
        ' Select DISTINCT ' + QuotedStr(SeqArq) + ',' + _BR +
        ' LojPe2.CodClp,' + _BR +
        ' LojPe2.CodGru,' + _BR +
        ' LojPe2.CodSub,' + _BR +
        ' LojPe2.CodPro,' + _BR +
        ' LojPe2.QtpPe2,' + _BR +
        QuotedStr('0') + _BR +
        ' From LojPe2,LojPed' + _BR +
        ' Where LojPe2.CodEmp = LojPed.CodEmp' + _BR +
        ' and LojPe2.DtePed = LojPed.DtePed' + _BR +
        ' and LojPe2.NumPed = LojPed.NumPed' + _BR +
        sFiltrol + _BR +
        ' and LojPed.AtuEst = ' + QuotedStr('Sim');
      ExecSQL;
      clipboard.AsText := '-- Select 01' + Text + _BR + _BR;
    end;
  end;

  if (ckAtacado.Checked) then
  begin
    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into CmpR05(SeqArq,CodClp,CodGru,CodSub,CodPro,QtdPed,QtdEst)' + _BR +
        ' Select ' + QuotedStr(SeqArq) + ',' + _BR +
        ' PedLb2.CodClp,' + _BR +
        ' PedLb2.CodGru,' + _BR +
        ' PedLb2.CodSub,' + _BR +
        ' PedLb2.CodPro,' + _BR +
        ' Sum(PedLb2.QtpLb2),' + _BR +
        QuotedStr('0') + _BR +
        ' From PedLb2,PedLib' + _BR +
        ' Where PedLb2.CodEmp = PedLib.CodEmp' + _BR +
        ' and PedLb2.DteRes = PedLib.DteRes' + _BR +
        ' and PedLb2.NumRes = PedLib.NumRes' + _BR +
        ' and PedLb2.SeqLib = PedLib.SeqLib' + sFiltro + _BR +
        ' Group by PedLb2.CodClp,PedLb2.CodGru,PedLb2.CodSub,PedLb2.CodPro';
      clipboard.AsText := clipboard.AsText + Text + _BR + _BR;
      ExecSQL;

    end;
  end;

  sFiltro := '';

  if GFlgAce = 'Sim' then
  begin

    if GEmpLog > 0 then
      sFiltro := sFiltro + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog)) + _BR
    else
      sFiltro := sFiltro + ' and GerEmp.ExiEst = ' + QuotedStr('Sim') + _BR;

  end
  else
    sFiltro := sFiltro + ' and GerEmp.ExiEst = ' + QuotedStr('Sim') + _BR;

  clipboard.AsText := '-- Select 02' + clipboard.AsText + _BR + _BR;
  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into CmpR05(SeqArq,CodClp,CodGru,CodSub,CodPro,QtdEst,QtdPed,DULCMP,QTDCMP)' + _BR +
      ' Select ' + QuotedStr(SeqArq) + ',' + _BR +
      ' EstIte.CodClp,' + _BR +
      ' EstIte.CodGru,' + _BR +
      ' EstIte.CodSub,' + _BR +
      ' EstIte.CodPro,' + _BR +
      ' Sum(EstIte.QtdIte) as QtdEst,' + QuotedStr('0') + _BR +
      ' ,EstIte.DULCMP' + _BR +
      ' ,EstIte.QTDCMP' + _BR +
      ' From EstIte,GerEmp,EstPro' + _BR +
      ' Where EstIte.CodEmp = GerEmp.CodEmp' + _BR +
      ' and EstIte.CodClp = EstPro.CodClp' + _BR +
      ' and EstIte.CodGru = EstPro.CodGru' + _BR +
      ' and EstIte.CodSub = EstPro.CodSub' + _BR +
      ' and EstIte.CodPro = EstPro.CodPro' + sFiltro + _BR +
      ' Group by EstIte.CodClp,EstIte.CodGru,EstIte.CodSub,EstIte.CodPro,EstIte.DULCMP, EstIte.QTDCMP';
    clipboard.AsText := clipboard.AsText + Text + _BR + _BR;
    ExecSQL;

  end;

  clipboard.AsText := '-- Select 03' + clipboard.AsText + _BR + _BR;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into CmpR09(SeqArq,CodClp,CodGru,CodSub,CodPro,QtdPed,QtdEst,DULCMP,QTDCMP)' + _BR +
      ' Select ' + QuotedStr(SeqArq) + ',' + _BR +
      ' CodClp,' + _BR +
      ' CodGru,' + _BR +
      ' CodSub,' + _BR +
      ' CodPro,' + _BR +
      ' Sum(QtdPed),' + _BR +
      ' Sum(QtdEst), ' +
      ' MAX(DULCMP),' + _BR +
      ' MAX(QTDCMP)' + _BR +                                                 
      ' From CmpR05' + _BR +
      ' Where SeqArq = ' + QuotedStr(SeqArq) + _BR +
      ' Group by CodClp,CodGru,CodSub,CodPro';
    clipboard.AsText := clipboard.AsText + Text + _BR + _BR;
    ExecSQL;

  end;

  clipboard.AsText := '-- Select 04' + clipboard.AsText + _BR + _BR;

  with CmpR09, SQL do
  begin

    Close;
    Text := ' Select CmpR09.*,' + _BR +
      ' EstPro.IdePro,' + _BR +
      ' EstPro.DscPro,' + _BR +
      ' CmpR09.CodClp || ' + QuotedStr('-') + ' || CmpR09.CodGru || ' + QuotedStr('.') + ' || CmpR09.CodSub || ' + QuotedStr('.') +
        ' || CmpR09.CodPro as CodIte,' + _BR +
      ' TextoOcor(IntStrZeros(EstPro.CodMrc,3),' + QuotedStr('-') + ',EstMrc.NomMrc,' + QuotedStr('') + ',' + QuotedStr('') + ',' + QuotedStr('') + ','
      + QuotedStr('') + ') as Marca' + _BR +
      ' From CmpR09 LEFT JOIN EstPro ON (CmpR09.CodClp = EstPro.CodClp ' + _BR +
      ' AND  CmpR09.CodGru = EstPro.CodGru ' + _BR +
      ' AND  CmpR09.CodSub = EstPro.CodSub ' + _BR +
      ' AND  CmpR09.CodPro = EstPro.CodPro)' + _BR +
      ' LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)' + _BR +
      ' Where CmpR09.SeqArq = ' + QuotedStr(SeqArq) + _BR +
      ' and CmpR09.QtdPed = ' + QuotedStr('0');

    case rgStatus.Itemindex of
      0: Text := Text + ' and EstPro.FlbPro = ' + QuotedStr(' ') + _BR;
      1: Text := Text + ' and EstPro.FlbPro = ' + QuotedStr('*') + _BR;
    end;

    if(ckbItensCadastrados.Checked) then
       begin
          if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
            Text := Text + ' and EstPro.DTCPRO >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
          if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
            Text := Text + ' and EstPro.DTCPRO <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
       end;

    case rgExibir.Itemindex of
      0: Text := Text + ' and CmpR09.QtdEst >  0' + _BR;
      1: Text := Text + ' and CmpR09.QtdEst <= 0' + _BR;
    end;

    if Trim(EdCodCat.Text) <> '' then
      Text := Text + ' and EstPro.CodCat = ' + QuotedStr(EdCodCat.Text) + _BR;
    if Trim(EdCodTip.Text) <> '' then
      Text := Text + ' and EstPro.CodTip = ' + QuotedStr(EdCodTip.Text) + _BR;
    if Trim(EdCodMrc.Text) <> '' then
      Text := Text + ' and EstPro.CodMrc = ' + QuotedStr(EdCodMrc.Text) + _BR;
    if Trim(EdCodClp.Text) <> '' then
      Text := Text + ' and EstPro.CodClp = ' + QuotedStr(EdCodClp.Text) + _BR;
    if Trim(EdCodGru.Text) <> '' then
      Text := Text + ' and EstPro.CodGru = ' + QuotedStr(EdCodGru.Text) + _BR;
    if Trim(EdCodSub.Text) <> '' then
      Text := Text + ' and EstPro.CodSub = ' + QuotedStr(EdCodSub.Text) + _BR;
    if Trim(EdCodPro.Text) <> '' then
      Text := Text + ' and EstPro.CodPro = ' + QuotedStr(EdCodPro.Text) + _BR;

    clipboard.AsText := clipboard.AsText + Text + _BR + _BR;
    Open;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR05 Where SeqArq = ' + QuotedStr(SeqArq) + _BR;
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR09 Where SeqArq = ' + QuotedStr(SeqArq) + _BR;
    ExecSQL;

  end;

  grR09.FullExpand;

  grR09.SetFocus;

end;

procedure TfmPedR21.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmPedR21.bImprimirClick(Sender: TObject);
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
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : ' + EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR21.grR09ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR21.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Rela��o de Itens n�o Movimentados no Periodo.htm', grR09.SaveToHTML);
end;

procedure TfmPedR21.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Rela��o de Itens n�o Movimentados no Periodo.xls', grR09.SaveToXLS);
end;

procedure TfmPedR21.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Rela��o de Itens n�o Movimentados no Periodo.xml', grR09.SaveToXML);
end;

procedure TfmPedR21.BbPsqEmpClick(Sender: TObject);
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

procedure TfmPedR21.EdCodEmpExit(Sender: TObject);
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

procedure TfmPedR21.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmPedR21.BbPsqClpClick(Sender: TObject);
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

procedure TfmPedR21.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = ' + QuotedStr(EdCodClp.Text);
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

procedure TfmPedR21.BbPsqGruClick(Sender: TObject);
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

procedure TfmPedR21.EdCodGruExit(Sender: TObject);
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
      fmsgErro('Grupo Informado n�o Encontrado.', EdCodGru);

  end
  else
    EdNomGru.Text := '';
end;

procedure TfmPedR21.BbPsqSubClick(Sender: TObject);
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

procedure TfmPedR21.EdCodSubExit(Sender: TObject);
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

    end;

    if Trim(quSQL.FieldbyName('NomSub').AsString) <> '' then
      EdNomSub.Text := quSql.FieldByName('NomSub').AsString
    else
      fmsgErro('SubGrupo Informado n�o Encontrado.', EdCodSub);

  end
  else
    EdNomSub.Text := '';
end;

procedure TfmPedR21.BbPsqProClick(Sender: TObject);
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

procedure TfmPedR21.EdCodProExit(Sender: TObject);
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

procedure TfmPedR21.BbPsqCliClick(Sender: TObject);
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

procedure TfmPedR21.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = ' + QuotedStr(EdCodCli.Text);
      Open;

      EdNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdNomCli.Text := '';
end;

procedure TfmPedR21.BbPsqVenClick(Sender: TObject);
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

procedure TfmPedR21.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(EdCodVen.Text);
      Open;

      EdNomVen.Text := quSql.FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdNomVen.Text := '';
end;

procedure TfmPedR21.bPsqCatClick(Sender: TObject);
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

procedure TfmPedR21.EdCodCatExit(Sender: TObject);
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

procedure TfmPedR21.bPsqTipClick(Sender: TObject);
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

procedure TfmPedR21.EdCodTipExit(Sender: TObject);
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

procedure TfmPedR21.bPsqMrcClick(Sender: TObject);
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

procedure TfmPedR21.EdCodMrcExit(Sender: TObject);
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

procedure TfmPedR21.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

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
end;

procedure TfmPedR21.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

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
end;

procedure TfmPedR21.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

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
end;

procedure TfmPedR21.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqClp := TfmPsqClp.Create(Self);

      fmPsqClp.ShowModal;

      if Trim(fmPsqClp.CodClp) <> '' then
      begin

        EdCodClp.Text := fmPsqClp.CodClp;
        EdNomClp.Text := fmPsqClp.NomClp;

      end;

    finally

      FreeAndNil(fmPsqClp);

    end;

    if Trim(EdCodClp.Text) <> '' then
      EdCodGru.SetFocus;

  end;
end;

procedure TfmPedR21.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

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

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxPsq.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxPsq.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxPsq.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodGru.Text) <> '' then
      EdCodSub.SetFocus;

  end;
end;

procedure TfmPedR21.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;
      fmAuxIni.CodGru := EdCodGru.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
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

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;
      fmAuxPsq.CodGru := EdCodGru.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxPsq.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxPsq.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxPsq.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;
        EdCodSub.Text := fmAuxPsq.CodSub;
        EdNomSub.Text := fmAuxPsq.NomSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodSub.Text) <> '' then
      EdCodPro.SetFocus;

  end;
end;

procedure TfmPedR21.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;
      fmAuxIni.CodGru := EdCodGru.Text;
      fmAuxIni.CodSub := EdCodSub.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodPro) <> '' then
      begin

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
      EdCodCli.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;
      fmAuxPsq.CodGru := EdCodGru.Text;
      fmAuxPsq.CodSub := EdCodSub.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxPsq.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxPsq.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxPsq.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodPro) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;
        EdCodSub.Text := fmAuxPsq.CodSub;
        EdNomSub.Text := fmAuxPsq.NomSub;
        EdCodPro.Text := fmAuxPsq.CodPro;
        EdNomPro.Text := fmAuxPsq.DscPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodPro.Text) <> '' then
      EdCodCli.SetFocus;

  end;
end;

procedure TfmPedR21.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'C';

      fmAuxIni.sCodVen_Id := GCodVen_Id;

      fmAuxIni.sGUs_Id := GGUs_Id;

      fmAuxIni.sCodAtd_Id := GCodAtd_Id;

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCli > 0 then
      begin

        EdNomCli.Text := fmAuxIni.NomCli;
        EdCodCli.Text := IntToStr(fmAuxIni.CodCli);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdCodCli.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'C';

      fmAuxPsq.sCodVen_Id := GCodVen_Id;

      fmAuxPsq.sGUs_Id := GGUs_Id;

      fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        EdNomCli.Text := fmAuxPsq.NomCli;
        EdCodCli.Text := IntToStr(fmAuxPsq.CodCli);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    EdCodCli.SetFocus;

  end;
end;

procedure TfmPedR21.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqVen := TfmPsqVen.Create(Self);

      fmPsqVen.ShowModal;

      if fmPsqVen.CodVen > 0 then
      begin

        EdNomVen.Text := fmPsqVen.NomVen;
        EdCodVen.Text := IntToStr(fmPsqVen.CodVen);

      end;

    finally

      FreeAndNil(fmPsqVen);

    end;

    EdCodVen.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'V';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodVen > 0 then
      begin

        EdNomVen.Text := fmAuxPsq.NomVen;
        EdCodVen.Text := IntToStr(fmAuxPsq.CodVen);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    EdCodVen.SetFocus;

  end;
end;

procedure TfmPedR21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR21.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR21 := nil;
end;

procedure TfmPedR21.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(fmPedR21.grR09);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

procedure TfmPedR21.ckAtacadoClick(Sender: TObject);
begin
  inherited;
  if (ckVarejo.Checked = False) and (ckAtacado.Checked = False) then
  ckAtacado.Checked := True;

end;

procedure TfmPedR21.ckVarejoClick(Sender: TObject);
begin
  inherited;
  if (ckVarejo.Checked = False) and (ckAtacado.Checked = False) then
  ckVarejo.Checked := True;
end;

end.

