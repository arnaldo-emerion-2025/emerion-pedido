unit PedR10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorDateEdit, clipBrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmPedR10 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label26: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label7: TLabel;
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
    bImprimir: TBitBtn;
    Label20: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    PedResTOTPED: TFloatField;
    PedResQTDPED: TIntegerField;
    PedResTOTFAT: TFloatField;
    PedResTOTCAN: TFloatField;
    PedResTOTDEV: TFloatField;
    PedResQTDCLI: TIntegerField;
    PedResQTDATI: TIntegerField;
    PedResVENDEDOR: TStringField;
    grResTOTPED: TdxDBGridMaskColumn;
    grResQTDPED: TdxDBGridMaskColumn;
    grResTOTFAT: TdxDBGridMaskColumn;
    grResTOTCAN: TdxDBGridMaskColumn;
    grResTOTDEV: TdxDBGridMaskColumn;
    grResTOTCRE: TdxDBGridMaskColumn;
    grResQTDCLI: TdxDBGridMaskColumn;
    grResQTDATI: TdxDBGridMaskColumn;
    grResVENDEDOR: TdxDBGridMaskColumn;
    PedResTOTCRE: TFloatField;
    PedResTOTDEB: TFloatField;
    grResTOTDEB: TdxDBGridColumn;
    PedResTOTCFA: TFloatField;
    grResTOTCFA: TdxDBGridColumn;
    PedResTOTLIQ: TFloatField;
    grResTOTLIQ: TdxDBGridColumn;
    PedResFATLIQ: TFloatField;
    grResFATLIQ: TdxDBGridColumn;
    rgStatus: TRadioGroup;
    rgTipo: TRadioGroup;
    Colunas1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    SeqArq: string;
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmPedR10: TfmPedR10;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
  AuxPsq, ManGDB, ManPri, PsqGve, PsqCve, ManCol;

{$R *.DFM}

procedure TfmPedR10.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmPedR10.FormCreate(Sender: TObject);
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

procedure TfmPedR10.bbPesquisaClick(Sender: TObject);
var
  sFiltro1, sFiltro2, sFiltro3, sFiltro4, sFiltro5, sFiltro6: string;
  sFiltro1_Ant, sFiltro2_Ant: string;
begin
  ClipBoard.astext := '';
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
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqDteRes1);
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqDteRes2);

  sFiltro1 := '';
  sFiltro2 := '';
  sFiltro3 := '';
  sFiltro4 := '';
  sFiltro5 := '';
  sFiltro6 := '';

  sFiltro1_Ant := '';
  sFiltro2_Ant := '';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR10 Where PedR10.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR11 Where PedR11.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;


  if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then
  begin

    if Trim(EdPsqCodEmp.Text) <> '' then
    begin

      sFiltro2 := ' and PedRes.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      sFiltro3 := ' and PedLib.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      sFiltro4 := ' and PedLib.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      sFiltro5 := ' and FatDev.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      sFiltro6 := ' and FatDep.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

    end;

    if Trim(EdPsqCodGve.Text) <> '' then
      sFiltro1 := sFiltro1 + ' and FinVen.CodGve = ' + QuotedStr(EdPsqCodGve.Text);
    if Trim(EdPsqCodCve.Text) <> '' then
      sFiltro1 := sFiltro1 + ' and FinVen.CodCve = ' + QuotedStr(EdPsqCodCve.Text);

    if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
      sFiltro3 := sFiltro3 + ' and PedLib.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
    if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
      sFiltro3 := sFiltro3 + ' and PedLib.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
    if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
      sFiltro2 := sFiltro2 + ' and PedRes.DteRes >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
    if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
      sFiltro2 := sFiltro2 + ' and PedRes.DteRes <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
    if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
      sFiltro4 := sFiltro4 + ' and PedLib.DteDel >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
    if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
      sFiltro4 := sFiltro4 + ' and PedLib.DteDel <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
    if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
      sFiltro5 := sFiltro5 + ' and FatDev.DteDev >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
    if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
      sFiltro5 := sFiltro5 + ' and FatDev.DteDev <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
    if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
      sFiltro6 := sFiltro6 + ' and FatDep.DteDep >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
    if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
      sFiltro6 := sFiltro6 + ' and FatDep.DteDep <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

    if GFlgAce = 'Sim' then
    begin

      sFiltro3 := sFiltro3 + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');
      sFiltro2 := sFiltro2 + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = ' + QuotedStr('Sim');
      sFiltro4 := sFiltro4 + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + #13 +
        ' Select ' + QuotedStr(SeqArq) + ' SeqArq,' + _BR +
        ' PedRes.CodVen,' + _BR +
        ' FinVen.ApeVen,' + _BR +
        ' Sum(BasCom) TotPed,' + _BR +
        QuotedStr('0') + ' TotFat,' + _BR +
        QuotedStr('0') + ' TotCan,' + _BR +
        QuotedStr('0') + ' TotDev,' + _BR +
        QuotedStr('0') + ' TotCre,' + _BR +
        QuotedStr('0') + ' TotDeb,' + _BR +
        QuotedStr('0') + ' QtdCli,' + _BR +
        QuotedStr('0') + ' QtdAti,Count(*) as QtdReg,' + _BR +
        QuotedStr('0') + _BR + ' TotCfa ' + _BR +
        ' From PedRes,FinVen' + _BR +
        ' Where PedRes.CodVen = FinVen.CodVen' + _BR +
        ' and PedRes.IntFin = ' + QuotedStr('Sim') + _BR +
        ' and PedRes.ModPfa = ' + QuotedStr('Vendas') + _BR +
        sFiltro1 + _BR +
        sFiltro2;

      if Trim(EdPsqCodVen.Text) <> '' then
        Text := Text + _BR + ' and PedRes.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

      Text := Text + _BR + ' group by PedRes.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 01' + _BR + _BR + quSql.sql.text;

      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ' + QuotedStr(SeqArq) + ' SeqArq,' + _BR +
        ' PedLib.CodVen,' + _BR +
        ' FinVen.ApeVen,' + _BR +
        QuotedStr('0') + ' TotPed,' + _BR +
        ' Sum(BasCom) TotFat,' + _BR +
        QuotedStr('0') + ' TotCan,' + _BR +
        QuotedStr('0') + ' TotDev,' + _BR +
        ' Sum(TotCom) TotCre,' + _BR +
        QuotedStr('0') + ' TotDeb,' + _BR +
        QuotedStr('0') + ' QtdCli,' + _BR +
        QuotedStr('0') + ' QtdAti,' + _BR +
        QuotedStr('0') + ' QtdPed,' + _BR +
        QuotedStr('0') + ' TotCfa ' + _BR +
        ' From PedLib,FinVen' + _BR +
        ' Where PedLib.CodVen = FinVen.CodVen' + _BR +
        ' and PedLib.SitLib = ' + QuotedStr('Faturado') + _BR +
        ' and PedLib.IntFin = ' + QuotedStr('Sim') + _BR +
        ' and PedLib.ModPfa = ' + QuotedStr('Vendas') + _BR +
        sFiltro1 + _BR +
        sFiltro3;

      if Trim(EdPsqCodVen.Text) <> '' then
        Text := Text + _BR + ' and PedLib.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

      Text := Text + _BR + ' group by PedLib.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 02 ' + _BR + quSql.sql.text;

      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ' + QuotedStr(SeqArq) + ' SeqArq,' + _BR +
        ' PedLib.CodVen,' + _BR +
        ' FinVen.ApeVen,' + _BR +
        QuotedStr('0') + ' TotPed,' + _BR +
        ' Sum(BasCom) TotFat,' + _BR +
        QuotedStr('0') + ' TotCan,' + _BR +
        QuotedStr('0') + ' TotDev,' + _BR +
        ' Sum(TotCom) TotCre,' + _BR +
        QuotedStr('0') + ' TotDeb,' + _BR +
        QuotedStr('0') + ' QtdCli,' + _BR +
        QuotedStr('0') + ' QtdAti,' + _BR +
        QuotedStr('0') + ' QtdPed,' + _BR +
        QuotedStr('0') + ' TotCfa ' + _BR +
        ' From PedLib,FinVen' + _BR +
        ' Where PedLib.CodVen = FinVen.CodVen' + _BR +
        ' and PedLib.SitLib = ' + QuotedStr('Devolvido') + _BR +
        ' and PedLib.IntFin = ' + QuotedStr('Sim') + _BR +
        ' and PedLib.ModPfa = ' + QuotedStr('Vendas') + _BR +
        sFiltro1 + _BR +
        sFiltro3;

      if Trim(EdPsqCodVen.Text) <> '' then
        Text := Text + _BR + ' and PedLib.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

      Text := Text + _BR + ' group by PedLib.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 03 ' + _BR + quSql.sql.text;

      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ' + QuotedStr(SeqArq) + ' SeqArq,' + _BR +
        ' PedLib.CodVen,' + _BR +
        ' FinVen.ApeVen,' + _BR +
        QuotedStr('0') + ' TotPed,' + _BR +
        ' Sum(BasCom) TotFat,' + _BR +
        QuotedStr('0') + ' TotCan,' + _BR +
        QuotedStr('0') + ' TotDev,' + _BR +
        ' Sum(TotCom) TotCre,' + _BR +
        QuotedStr('0') + ' TotDeb,' + _BR +
        QuotedStr('0') + ' QtdCli,' + _BR +
        QuotedStr('0') + ' QtdAti,' + _BR +
        QuotedStr('0') + ' QtdPed,' + _BR +
        QuotedStr('0') + ' TotCfa ' + _BR +
        ' From PedLib,FinVen' + _BR +
        ' Where PedLib.CodVen = FinVen.CodVen' + _BR +
        '   and PedLib.SitLib = ' + QuotedStr('Cancelado') + _BR +
        ' and PedLib.IntFin = ' + QuotedStr('Sim') + _BR +
        ' and PedLib.ModPfa = ' + QuotedStr('Vendas') + _BR +
        sFiltro1 + _BR +
        sFiltro3;

      if Trim(EdPsqCodVen.Text) <> '' then
        Text := Text + _BR + ' and PedLib.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

      Text := Text + _BR + ' group by PedLib.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 04 ' + _BR + quSql.sql.text;

      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ' + QuotedStr(SeqArq) + ',' + _BR +
        ' PedRes.CodVen,' + _BR +
        ' FinVen.ApeVen,' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        ' Sum(BasCom),' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + _BR +
        ' From PedRes,FinVen' + _BR +
        ' Where PedRes.CodVen = FinVen.CodVen' + _BR +
        ' and PedRes.SitRes = ' + QuotedStr('Cancelado') + _BR +
        ' and PedRes.IntFin = ' + QuotedStr('Sim') + ' and PedRes.ModPfa = ' + QuotedStr('Vendas') + _BR + sFiltro1 + _BR + sFiltro2;

      if Trim(EdPsqCodVen.Text) <> '' then
        Text := Text + ' and PedRes.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

      Text := Text + ' group by PedRes.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 05 ' + _BR + quSql.sql.text;

      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ' + QuotedStr(SeqArq) + ',' + _BR +
        ' FatDev.CodVen,' + _BR +
        ' FinVen.ApeVen,' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        ' Sum(BasCom),' + _BR +
        QuotedStr('0') + ',' + _BR +
        ' Sum(TotCom),' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + _BR +
        ' From FatDev,FinVen' + _BR +
        ' Where FatDev.CodVen = FinVen.CodVen' + _BR +
        ' and FatDev.SitDev = ' + QuotedStr('Devolvido') +
        ' and FatDev.IntFin = ' + QuotedStr('Sim') +
        ' and FatDev.ModPfa in (' + QuotedStr('Vendas') + ',' + QuotedStr('Devolucoes') + ') ' +
        ' and FatDev.FlgDif = ' + QuotedStr('Nao') + _BR + sFiltro1 + _BR + sFiltro5;

      if Trim(EdPsqCodVen.Text) <> '' then
        Text := Text + ' and FatDev.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

      Text := Text + ' group by FatDev.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 06 ' + _BR + quSql.sql.text;

      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ' + QuotedStr(SeqArq) + ',' + _BR +
        ' FatDep.CodVen,' + _BR +
        ' FinVen.ApeVen,' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        ' Sum(BasCom),' + _BR +
        QuotedStr('0') + ',' + _BR +
        ' Sum(TotCom),' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + _BR +
        ' From FatDep,FinVen' + _BR +
        ' Where FatDep.CodVen = FinVen.CodVen' + _BR +
        ' and FatDep.SitDep = ' + QuotedStr('Concluido') + ' and FatDep.IntFin = ' + QuotedStr('Sim') + ' and FatDep.ModPfa = ' + QuotedStr('Vendas') + _BR +
        sFiltro1 + _BR + sFiltro6;

      if Trim(EdPsqCodVen.Text) <> '' then
        Text := Text + ' and FatDep.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

      Text := Text + ' group by FatDep.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 07 ' + _BR + quSql.sql.text;

      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ' + QuotedStr(SeqArq) + ',' + _BR +
        ' FinVen.CodVen,' + _BR +
        ' FinVen.ApeVen as NomVen,' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        ' (Select Count(*) From FinCli Where FinCli.CodVen = FinVen.CodVen),' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + ',' + _BR +
        QuotedStr('0') + _BR +
        ' From FinVen';

      if Trim(EdPsqCodVen.Text) <> '' then
      begin

        if pos('Where FinVen', Text) > 0 then
          Text := Text + ' and FinVen.CodVen = ' + QuotedStr(EdPsqCodVen.Text)
        else
          Text := Text + ' Where FinVen.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

      end;

      if Trim(EdPsqCodGve.Text) <> '' then
      begin

        if pos('Where FinVen', Text) > 0 then
          Text := Text + ' and FinVen.CodGve = ' + QuotedStr(EdPsqCodGve.Text)
        else
          Text := Text + ' Where FinVen.CodGve = ' + QuotedStr(EdPsqCodGve.Text);

      end;

      if Trim(EdPsqCodCve.Text) <> '' then
      begin

        if pos('Where FinVen', Text) > 0 then
          Text := Text + ' and FinVen.CodCve = ' + QuotedStr(EdPsqCodCve.Text)
        else
          Text := Text + ' Where FinVen.CodCve = ' + QuotedStr(EdPsqCodCve.Text);

      end;

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 08 ' + _BR + quSql.sql.text;

      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ''' + SeqArq + ''',' + _BR +
        ' PedRes.CodVen,' + _BR +
        ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
        ' Count(Distinct PedRes.CodCli),''' + '0' + ''',''' + '0' + '''' + _BR +
        ' From PedRes,FinVen' + _BR +
        ' Where PedRes.CodVen = FinVen.CodVen' + _BR +
        ' and PedRes.IntFin = ''' + 'Sim' + '''' + _BR +
        ' and PedRes.ModPfa = ''' + 'Vendas' + '''' + _BR + sFiltro1 + _BR + sFiltro2 + ' group by PedRes.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 09 ' + _BR + quSql.sql.text;
      ExecSQL;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
        ' Select ''' + SeqArq + ''',' + _BR +
        ' PedLib.CodVen,' + _BR +
        ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
        ' Sum(TotCom),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
        ' Sum(BasCom)' + _BR +
        ' From PedLib,FinVen' + _BR +
        ' Where PedLib.CodVen = FinVen.CodVen' + _BR +
        ' and PedLib.SitLib = ''' + 'Cancelado' + '''' + _BR +
        ' and PedLib.IntFin = ''' + 'Sim' + '''' + _BR +
        ' and PedLib.ModPfa = ''' + 'Vendas' + '''' + _BR + sFiltro1 + _BR + sFiltro4 + _BR + ' group by PedLib.CodVen,FinVen.ApeVen';

      if (debughook <> 0) then
        ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 10 ' + _BR + quSql.sql.text;
      ExecSQL;

    end;
  end;

  if (rgTipo.ItemIndex = 0) or (rgTipo.ItemIndex = 2) then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select Count(*) as QtdReg From rdb$relations' +
        ' Where rdb$relations.rdb$relation_name = ' + QuotedStr('LOJPED');
      Open;

    end;

    if quSQL.FieldbyName('QtdReg').AsInteger > 0 then
    begin

      sFiltro1_Ant := sFiltro1;
      sFiltro2_Ant := sFiltro2;

      (* Se o Banco de Dados possui FrenteLoja - Acrescenta-se a Comissão  *)
      (* do Modulo                                                         *)

      sFiltro1 := '';
      sFiltro2 := '';
      sFiltro3 := '';
      sFiltro4 := '';
      sFiltro5 := '';
      sFiltro6 := '';

      if Trim(EdPsqCodEmp.Text) <> '' then
      begin

        sFiltro2 := ' and LojPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';
        sFiltro3 := ' and LojPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';
        sFiltro4 := ' and LojPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';
        sFiltro5 := ' and LojDev.CodEmp = ''' + EdPsqCodEmp.Text + '''';
        sFiltro6 := ' and LojGer.CodEmp = ''' + EdPsqCodEmp.Text + '''';

      end;

      if Trim(EdPsqCodGve.Text) <> '' then
        sFiltro1 := sFiltro1 + ' and FinVen.CodGve = ''' + EdPsqCodGve.Text + '''';
      if Trim(EdPsqCodCve.Text) <> '' then
        sFiltro1 := sFiltro1 + ' and FinVen.CodCve = ''' + EdPsqCodCve.Text + '''';

      if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
        sFiltro3 := sFiltro3 + ' and LojPed.DopRpe >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
        sFiltro3 := sFiltro3 + ' and LojPed.DopRpe <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
        sFiltro2 := sFiltro2 + ' and LojPed.DtePed >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
        sFiltro2 := sFiltro2 + ' and LojPed.DtePed <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
        sFiltro4 := sFiltro4 + ' and LojPed.DteDel >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
        sFiltro4 := sFiltro4 + ' and LojPed.DteDel <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
        sFiltro5 := sFiltro5 + ' and LojDev.DteDev >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
        sFiltro5 := sFiltro5 + ' and LojDev.DteDev <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
        sFiltro6 := sFiltro6 + ' and LojGer.DopGer >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
        sFiltro6 := sFiltro6 + ' and LojGer.DopGer <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojPed.CodVen,' + _BR +
          ' FinVen.ApeVen,' + _BR +
          ' Sum(LojPed.BasCom),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' +
          ''',Count(*) as QtdReg,''' + '0' + '''' + _BR +
          ' From LojPed,FinVen' + _BR +
          ' Where LojPed.CodVen = FinVen.CodVen' + _BR +
          ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojPed.TipCpa = ''' + 'Vendedor' + '''' + _BR + sFiltro1 + _BR + sFiltro2;

        

        if Trim(EdPsqCodVen.Text) <> '' then
          Text := Text + ' and LojPed.CodVen = ''' + EdPsqCodVen.Text + '''';

        Text := Text + ' group by LojPed.CodVen,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 11 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojPed.CodAtd,' + _BR +
          ' FinVen.ApeVen,' + _BR +
          ' Sum(LojPed.BasCom),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' +
          ''',Count(*) as QtdReg,''' + '0' + '''' + _BR +
          ' From LojPed,FinVen' + _BR +
          ' Where LojPed.CodAtd = FinVen.CodVen' + _BR +
          ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojPed.TipCpa = ''' + 'Atendente' + '''' + _BR + sFiltro1 + _BR + sFiltro2;

        if Trim(EdPsqCodVen.Text) <> '' then
          Text := Text + ' and LojPed.CodAtd = ''' + EdPsqCodVen.Text + '''';

        Text := Text + ' group by LojPed.CodAtd, FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 12 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojPed.CodVen,' + _BR +
          ' FinVen.ApeVen,''' + '0' + ''',' + _BR +
          ' Sum(LojPed.BasCom),''' + '0' + ''',''' + '0' + ''',' + _BR +
          ' Sum(LojPed.TotCom),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' + _BR +
          ' From LojPed,FinVen' + _BR +
          ' Where LojPed.CodVen = FinVen.CodVen' + _BR +
          ' and ( LojPed.SitPed = ''' + 'Recebida' + ''' or LojPed.SitPed = ''' + 'Cancelada' + ''' )' + _BR +
          ' and LojPed.TipCpa = ''' + 'Vendedor' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR + sFiltro1 + _BR + sFiltro3;

        if Trim(EdPsqCodVen.Text) <> '' then
          Text := Text + ' and LojPed.CodVen = ''' + EdPsqCodVen.Text + '''';

        Text := Text + ' group by LojPed.CodVen,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 13 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojPed.CodAtd,' + _BR +
          ' FinVen.ApeVen,''' + '0' + ''',' + _BR +
          ' Sum(LojPed.BasCom),''' + '0' + ''',''' + '0' + ''',' + _BR +
          ' Sum(LojPed.TotCom),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' + _BR +
          ' From LojPed,FinVen' + _BR +
          ' Where LojPed.CodAtd = FinVen.CodVen' + _BR +
          ' and ( LojPed.SitPed = ''' + 'Recebida' + ''' or LojPed.SitPed = ''' + 'Cancelada' + ''' )' + _BR +
          ' and LojPed.TipCpa = ''' + 'Atendente' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR + sFiltro1 + _BR + sFiltro3;

        if Trim(EdPsqCodVen.Text) <> '' then
          Text := Text + ' and LojPed.CodAtd = ''' + EdPsqCodVen.Text + '''';

        Text := Text + ' group by LojPed.CodAtd,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 14 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojDev.CodVen,' + _BR +
          ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
          ' Sum(LojDev.BasCom),''' + '0' + ''',' + _BR +
          ' Sum(LojDev.TotCom),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' + _BR +
          ' From LojDev,LojPed,FinVen' + _BR +
          ' Where LojDev.CodEmp = LojPed.CodEmp' + _BR +
          ' and LojDev.DtePed = LojPed.DtePed' + _BR +
          ' and LojDev.NumPed = LojPed.NumPed' + _BR +
          ' and LojDev.CodVen = FinVen.CodVen' + _BR +
          ' and LojDev.SitDev = ''' + 'Concluida' + '''' + _BR +
          ' and LojDev.TipCpa = ''' + 'Vendedor' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojDev.ModPfa = ''' + 'Vendas' + '''' + _BR + sFiltro1 + _BR + sFiltro5;

        if Trim(EdPsqCodVen.Text) <> '' then
          Text := Text + ' and LojDev.CodVen = ''' + EdPsqCodVen.Text + '''';

        Text := Text + ' group by LojDev.CodVen,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 15 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojDev.CodAtd,' + _BR +
          ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
          ' Sum(LojDev.BasCom),''' + '0' + ''',' + _BR +
          ' Sum(LojDev.TotCom),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' + _BR +
          ' From LojDev,LojPed,FinVen' + _BR +
          ' Where LojDev.CodEmp = LojPed.CodEmp' + _BR +
          ' and LojDev.DtePed = LojPed.DtePed' + _BR + _BR +
          ' and LojDev.NumPed = LojPed.NumPed' + _BR +
          ' and LojDev.CodAtd = FinVen.CodVen' + _BR +
          ' and LojDev.SitDev = ''' + 'Concluida' + '''' + _BR +
          ' and LojDev.TipCpa = ''' + 'Atendente' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojDev.ModPfa = ''' + 'Vendas' + '''' + _BR + sFiltro1 + _BR + sFiltro5;

        if Trim(EdPsqCodVen.Text) <> '' then
          Text := Text + ' and LojDev.CodAtd = ''' + EdPsqCodVen.Text + '''';

        Text := Text + ' group by LojDev.CodAtd,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 16 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojGer.CodVen,' + _BR +
          ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
          ' Sum(LojGer.BasCom),''' + '0' + ''',' + _BR +
          ' Sum(LojGer.TotCom),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' + _BR +
          ' From LojGer,FinVen' + _BR +
          ' Where LojGer.CodVen = FinVen.CodVen' + _BR +
          ' and LojGer.SitGer = ''' + 'Concluida' + '''' + _BR + sFiltro1 + _BR + sFiltro6;

        if Trim(EdPsqCodVen.Text) <> '' then
          Text := Text + ' and LojGer.CodVen = ''' + EdPsqCodVen.Text + '''';

        Text := Text + ' group by LojGer.CodVen,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 17 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      if rgTipo.ItemIndex = 0 then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
            ' Select ''' + SeqArq + ''',' + _BR +
            ' FinVen.CodVen,' + _BR +
            ' FinVen.ApeVen as NomVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
            ' (Select Count(*) From FinCli Where FinCli.CodVen = FinVen.CodVen),''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' + _BR +
            ' From FinVen' + _BR;

          if Trim(EdPsqCodVen.Text) <> '' then
          begin

            if pos('Where FinVen', Text) > 0 then
              Text := Text + ' and FinVen.CodVen = ''' + EdPsqCodVen.Text + ''''
            else
              Text := Text + ' Where FinVen.CodVen = ''' + EdPsqCodVen.Text + '''';

          end;

          if Trim(EdPsqCodGve.Text) <> '' then
          begin

            if pos('Where FinVen', Text) > 0 then
              Text := Text + ' and FinVen.CodGve = ''' + EdPsqCodGve.Text + ''''
            else
              Text := Text + ' Where FinVen.CodGve = ''' + EdPsqCodGve.Text + '''';

          end;

          if Trim(EdPsqCodCve.Text) <> '' then
          begin

            if pos('Where FinVen', Text) > 0 then
              Text := Text + ' and FinVen.CodCve = ''' + EdPsqCodCve.Text + ''''
            else
              Text := Text + ' Where FinVen.CodCve = ''' + EdPsqCodCve.Text + '''';

          end;

          if (debughook <> 0) then
            ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 18 ' + _BR + quSql.sql.text;
          ExecSQL;

        end;
      end;

      if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
            ' Select ''' + SeqArq + ''',' + _BR +
            ' LojPed.CodVen,' + _BR +
            ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
            ' Count(Distinct LojPed.CodCli),''' + '0' + ''',''' + '0' + '''' + _BR +
            ' From LojPed,FinVen' + _BR +
            ' Where LojPed.CodVen = FinVen.CodVen' + _BR +
            ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR +
            ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
            ' and LojPed.TipCpa = ''' + 'Vendedor' + '''' + _BR +
            ' and LojPed.CodCli is not null ' + sFiltro1 + sFiltro2 + _BR + _BR +
            ' and not Exists(Select * From PedRes Where PedRes.CodVen = LojPed.CodVen' + _BR +
            ' and PedRes.CodCli = LojPed.CodCli' + _BR +
            ' and PedRes.IntFin = ''' + 'Sim' + '''' + _BR +
            ' and PedRes.ModPfa = ''' + 'Vendas' + '''' + sFiltro2_Ant + ' )';

          Text := Text + ' group by LojPed.CodVen,FinVen.ApeVen';

          if (debughook <> 0) then
            ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 19 ' + _BR + quSql.sql.text;

          ExecSQL;

        end;

      end
      else
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
            ' Select ''' + SeqArq + ''',' + _BR +
            ' LojPed.CodVen,' + _BR +
            ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
            ' Count(Distinct LojPed.CodCli),''' + '0' + ''',''' + '0' + '''' + _BR +
            ' From LojPed,FinVen' + _BR +
            ' Where LojPed.CodVen = FinVen.CodVen' + _BR +
            ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR +
            ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
            ' and LojPed.TipCpa = ''' + 'Vendedor' + '''' + _BR +
            ' and LojPed.CodCli is not null ' + _BR + sFiltro1 + _BR + sFiltro2 + _BR +
            ' and not Exists(Select * From PedRes Where PedRes.CodVen = LojPed.CodVen' +
            ' and PedRes.CodCli = LojPed.CodCli' +
            ' and PedRes.IntFin = ''' + 'Sim' + '''' +
            ' and PedRes.ModPfa = ''' + 'Vendas' + '''' + _BR + sFiltro2_Ant + ' )';

          Text := Text + ' group by LojPed.CodVen,FinVen.ApeVen';

          if (debughook <> 0) then
            ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 20 ' + _BR + quSql.sql.text;

          ExecSQL;

        end;
      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojPed.CodAtd,' + _BR +
          ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' + _BR +
          ' Count(Distinct LojPed.CodCli),''' + '0' + ''',''' + '0' + '''' + _BR +
          ' From LojPed,FinVen' + _BR +
          ' Where LojPed.CodAtd = FinVen.CodVen' + _BR +
          ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojPed.TipCpa = ''' + 'Atendente' + '''' + _BR + sFiltro1 + _BR + sFiltro2 + _BR + ' group by LojPed.CodAtd,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 21 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojPed.CodVen,' + _BR +
          ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',Sum(LojPed.TotCom),''' + '0' + ''',''' + '0' + ''','''
          + '0' + ''',' + _BR +
          ' Sum(LojPed.BasCom)' + _BR +
          ' From LojPed,FinVen' + _BR +
          ' Where LojPed.CodVen = FinVen.CodVen' + _BR +
          ' and LojPed.SitPed = ''' + 'Cancelada' + '''' + _BR +
          ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojPed.TipCpa = ''' + 'Vendedor' + '''' + _BR + sFiltro1 + _BR + sFiltro4 + _BR + ' group by LojPed.CodVen,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 22 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
          ' Select ''' + SeqArq + ''',' + _BR +
          ' LojPed.CodAtd,' + _BR +
          ' FinVen.ApeVen,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',Sum(LojPed.TotCom),''' + '0' + ''',''' + '0' + ''','''
          + '0' + ''',' + _BR +
          ' Sum(LojPed.BasCom)' + _BR +
          ' From LojPed,FinVen' + _BR +
          ' Where LojPed.CodAtd = FinVen.CodVen' + _BR +
          ' and LojPed.SitPed = ''' + 'Cancelada' + '''' + _BR +
          ' and LojPed.ModPfa = ''' + 'Vendas' + '''' + _BR +
          ' and LojPed.FlgVal = ''' + 'Nao' + '''' + _BR +
          ' and LojPed.TipCpa = ''' + 'Atendente' + '''' + _BR + sFiltro1 + _BR + sFiltro4 +
          ' group by LojPed.CodAtd,FinVen.ApeVen';

        if (debughook <> 0) then
          ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 23 ' + _BR + quSql.sql.text;

        ExecSQL;

      end;
    end;
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into PedR11(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)' + _BR +
      ' Select PedR10.SeqArq,' + _BR +
      ' PedR10.CodVen,' + _BR +
      ' PedR10.ApeVen,' + _BR +
      ' Sum(TotPed) as TotPed,' + _BR +
      ' Sum(TotFat) as TotFat,' + _BR +
      ' Sum(TotCan) as TotCan,' + _BR +
      ' Sum(TotDev) as TotDev,' + _BR +
      ' Sum(TotCre) as TotCre,' + _BR +
      ' Sum(TotDeb) as TotDeb,' + _BR +
      ' Sum(QtdCli) as QtdCli,' + _BR +
      ' Sum(QtdAti) as QtdAti,' + _BR +
      ' Sum(QtdPed) as QtdPed,' + _BR +
      ' Sum(TotCfa) as TotCfa' + _BR +
      ' From PedR10 Where PedR10.SeqArq = ''' + SeqArq + '''';

    Text := Text + ' Group by PedR10.SeqArq,PedR10.CodVen,PedR10.ApeVen';

    if (debughook <> 0) then
      ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 24 ' + _BR + quSql.sql.text;

    ExecSQL;

  end;

  with PedRes, SQL do
  begin

    Close;
    Text := ' Select Sum(PedR11.TotPed) as TotPed,' + _BR +
      ' Sum(PedR11.TotFat) as TotFat,' + _BR +
      ' Sum(PedR11.TotCan) as TotCan,' + _BR +
      ' Sum(PedR11.TotDev) as TotDev,' + _BR +
      ' Sum(PedR11.TotCre) as TotCre,' + _BR +
      ' Sum(PedR11.TotDeb) as TotDeb,' + _BR +
      ' Sum(PedR11.QtdCli) as QtdCli,' + _BR +
      ' Sum(PedR11.QtdAti) as QtdAti,' + _BR +
      ' Sum(PedR11.QtdPed) as QtdPed,' + _BR +
      ' Sum(PedR11.TotCfa) as TotCfa,' + _BR +
      ' Sum(PedR11.TotFat - (PedR11.TotCfa + PedR11.TotDev)) as FatLiq,' + _BR +
      ' Round(Sum(PedR11.TotCre) - Sum(PedR11.TotDeb),2) as TotLiq,' + _BR +
      ' TextoOcor(IntStrZeros(PedR11.CodVen,3),''' + '-' + ''',PedR11.ApeVen,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as Vendedor' + _BR +
      ' From PedR11 Where PedR11.SeqArq = ''' + SeqArq + '''';

    if Trim(EdPsqCodVen.Text) <> '' then
      Text := Text + ' and PedR11.CodVen = ''' + EdPsqCodVen.Text + '''';

    case rgStatus.Itemindex of
      0: Text := Text + ' and ( PedR11.TotPed > 0 or  PedR11.TotFat > 0 )';
      1: Text := Text + ' and ( PedR11.TotPed = 0 and PedR11.TotFat = 0 )';
    end;

    Text := Text + ' Group by TextoOcor(IntStrZeros(PedR11.CodVen,3),''' + '-' + ''',PedR11.ApeVen,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' +
      ''')';

    if (debughook <> 0) then
      ClipBoard.AsText := ClipBoard.AsText + _BR + ' --Query 25 ' + _BR + quSql.sql.text;
    Open;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR10 Where PedR10.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR11 Where PedR11.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR10.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim(EdPsqCodEmp.Text) <> '' then
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
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdPsqApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmPedR10.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR10.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmPedR10.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select ApeVen From FinVen Where CodVen = ''' + EdPsqCodVen.Text + '''';
      Open;

      EdPsqNomVen.Text := quSql.FieldByName('ApeVen').AsString;
    end;

  end
  else
    EdPsqNomVen.Text := '';
end;

procedure TfmPedR10.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqVen := TfmPsqVen.Create(Self);

      fmPsqVen.ShowModal;

      if fmPsqVen.CodVen > 0 then
      begin

        EdPsqNomVen.Text := fmPsqVen.NomVen;
        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

      end;

    finally

      FreeAndNil(fmPsqVen);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'V';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodVen > 0 then
      begin

        EdPsqNomVen.Text := fmAuxPsq.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmPedR10.BbPsqVenClick(Sender: TObject);
begin

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
      EdPsqNomVen.Text := fmPsqVen.NomVen;

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR10.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmPedR10.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR10.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : ' + EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : ' + EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos Em : ' + EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);

  case rgStatus.Itemindex of
    0: dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Com Movimentação');
    1: dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Sem Movimentação');
    2: dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Todos');
  end;

  case rgTipo.Itemindex of
    0: dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Varejo');
    1: dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Atacado');
    2: dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Todos');
  end;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR10.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR10.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Fechamento de Comissões (Sintetico).htm', grRes.SaveToHTML);
end;

procedure TfmPedR10.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Fechamento de Comissões (Sintetico).xls', grRes.SaveToXLS);
end;

procedure TfmPedR10.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Fechamento de Comissões (Sintetico).xml', grRes.SaveToXML);
end;

procedure TfmPedR10.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqGve := TfmPsqGve.Create(Self);

    fmPsqGve.ShowModal;

    if fmPsqGve.CodGve > 0 then
    begin

      EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);
      EdPsqNomGve.Text := fmPsqGve.NomGve;

    end;

  finally

    FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR10.bPsqCveClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqCve := TfmPsqCve.Create(Self);

    fmPsqCve.ShowModal;

    if fmPsqCve.CodCve > 0 then
    begin

      EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);
      EdPsqNomCve.Text := fmPsqCve.NomCve;

    end;

  finally

    FreeAndNil(fmPsqCve);

  end;
end;

procedure TfmPedR10.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmPedR10.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodGve.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomGve From FinGve Where CodGve = ''' + EdPsqCodGve.Text + '''';
      Open;

      EdPsqNomGve.Text := FieldByName('NomGve').AsString;

    end;

  end
  else
    EdPsqNomGve.Text := '';
end;

procedure TfmPedR10.EdPsqCodCveExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodCve.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomCve From FinCve Where CodCve = ''' + EdPsqCodCve.Text + '''';
      Open;

      EdPsqNomCve.Text := FieldByName('NomCve').AsString;

    end;

  end
  else
    EdPsqNomCve.Text := '';
end;

procedure TfmPedR10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR10 Where PedR10.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR11 Where PedR11.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmPedR10.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR10 := nil;
end;

procedure TfmPedR10.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(fmPedR10.grRes);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

end.

