unit PedR15;

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

  TfmPedR15 = class(TfmPadrao)
    PedR15: TwwQuery;
    DsR15: TwwDataSource;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grR15: TdxDBGrid;
    bImprimir: TBitBtn;
    Label26: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label19: TLabel;
    Label8: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCCl: TSpeedButton;
    bPsqGve: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    Label7: TLabel;
    Label11: TLabel;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdPsqNomCli: TdxColorEdit;
    PedR15CODEMP: TIntegerField;
    PedR15DTERES: TDateTimeField;
    PedR15NUMRES: TIntegerField;
    PedR15NRONFS: TIntegerField;
    PedR15DTEFAT: TDateTimeField;
    PedR15TOTBRT: TFloatField;
    PedR15TOTLIQ: TFloatField;
    PedR15DSCPER: TFloatField;
    PedR15DSCPRT: TFloatField;
    PedR15DIFDSC: TFloatField;
    PedR15MARPRE: TFloatField;
    PedR15MARPED: TFloatField;
    PedR15LUCROL: TFloatField;
    PedR15LUCROP: TFloatField;
    PedR15TOTNAT: TFloatField;
    PedR15CLIENTE: TStringField;
    PedR15VENDEDOR: TStringField;
    DTERES: TdxDBGridDateColumn;
    NUMRES: TdxDBGridMaskColumn;
    NRONFS: TdxDBGridMaskColumn;
    DTEFAT: TdxDBGridDateColumn;
    TOTBRT: TdxDBGridMaskColumn;
    TOTLIQ: TdxDBGridMaskColumn;
    DSCPER: TdxDBGridMaskColumn;
    DSCPRT: TdxDBGridMaskColumn;
    DIFDSC: TdxDBGridMaskColumn;
    MARPRE: TdxDBGridMaskColumn;
    MARPED: TdxDBGridMaskColumn;
    LUCROL: TdxDBGridMaskColumn;
    LUCROP: TdxDBGridMaskColumn;
    TOTNAT: TdxDBGridMaskColumn;
    CLIENTE: TdxDBGridMaskColumn;
    VENDEDOR: TdxDBGridMaskColumn;
    CSTPRT: TdxDBGridColumn;
    PedR15CSTPRT: TFloatField;
    PedR15TOTPER: TFloatField;
    TOTPER: TdxDBGridColumn;
    PedR15CSTPFI: TFloatField;
    PedR15CSTVME: TFloatField;
    CSTVME: TdxDBGridColumn;
    CSTPFI: TdxDBGridColumn;
    Colunas1: TMenuItem;
    PedR15TOTIPI: TFloatField;
    PedR15TOTSUB: TFloatField;
    PedR15TOTGE2: TFloatField;
    TOTGE2: TdxDBGridMaskColumn;
    TOTIPI: TdxDBGridMaskColumn;
    TOTSUB: TdxDBGridMaskColumn;
    PedR15SEQLIB: TIntegerField;
    PedR15CODCLI: TIntegerField;
    PedR15APECLI: TStringField;
    PedR15CODVEN: TIntegerField;
    PedR15APEVEN: TStringField;
    PedR15MARGBRT: TFloatField;
    PedR15MARGPED: TFloatField;
    MARGBRT: TdxDBGridMaskColumn;
    MARGPED: TdxDBGridMaskColumn;
    PedR15CGCCLI: TStringField;
    PedR15NOMCLI: TStringField;
    NOMCLI: TdxDBGridColumn;
    CGCCLI: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure grR15ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure bPsqCClClick(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq: string;
  end;

var
  fmPedR15: TfmPedR15;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqEmp, PsqVen,
  PsqAtd, PsqCli, PsqGve, PsqCve, ManCol;

{$R *.DFM}

procedure TfmPedR15.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmPedR15.FormCreate(Sender: TObject);
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

procedure TfmPedR15.bSelecionarClick(Sender: TObject);
var
  sFiltro: string;
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

  sFiltro := ' and PedLib.ModPfa = ''' + 'Vendas' + ''' and ( ( PedLib.SitLib = ''' + 'Faturado' + ''' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = ''' + 'Devolvido' + ''' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = ''' + 'Cancelado' + ''' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodVen = ''' + EdPsqCodVen.Text + '''';

  if GFlgAce = 'Sim' then
    sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR15 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  PedR15.Close;
  PedR15.SQL.Text := ' Select PedLib.CodEmp, ' + _BR +
                     '        PedLib.DteRes, ' + _BR +
                     '        PedLib.NumRes, ' + _BR +
                     '        PedLib.SeqLib, ' + _BR +
                     '        PedLib.NroNfs, ' + _BR +
                     '        PedLib.DteFat, ' + _BR +
                     '        PedLib.CodCli, ' + _BR +
                     '        FinCli.ApeCli, ' + _BR +
                     '        FinCli.CgcCli, ' + _BR +
                     '        FinCli.NomCli, ' + _BR +
                     '        PedLib.CodVen, ' + _BR +
                     '        FinVen.ApeVen, ' + _BR +
                     '        Round(Sum((PedLb2.UltQts * PedLb2.VlqLb2)),2) TotLiq, ' + _BR +
                     '        Round(Sum((PedLb2.UltQts * PedLb2.VluLb2)) ,2) TotBrt, ' + _BR +
                     '        Round(Sum(PedLb2.TotCst),4) CstPrt, ' + _BR +
                     '        Round(Sum(PedLb2.UltQts * PedLb2.VpfCst),4) CstPfi, ' + _BR +
                     '        Round(Sum(PedLb2.UltQts * PedLb2.VmeCst),4) CstVme, ' + _BR +
                     '        Round(Sum(PedLb2.UltQts * (( PedLb2.VluLb2 * PedLb2.DscPer )/100)),2) as DscPer, ' + _BR +
                     '        Round(Sum(PedLb2.TotDsc),2) DscPrt, ' + _BR +
                     '        case when (Round(Sum(PedLb2.UltQts * (( PedLb2.VluLb2 * PedLb2.DscPer )/100)),2) > 0) THEN ROUND(((Round(Sum(PedLb2.TotDsc),2) * 100)/Round(Sum(PedLb2.UltQts * (( PedLb2.VluLb2 * PedLb2.DscPer )/100)),2)) - 100,2) else 0 end DifDsc, ' + _BR +
                     '        case when (Round(Sum(PedLb2.TotCst),4) > 0) THEN ROUND(((Round(Sum((PedLb2.UltQts * PedLb2.VluLb2)),2) - Round(Sum(PedLb2.TotCst),4)) * 100)/Round(Sum(PedLb2.TotCst),4),2) else 0 end MarPre, ' + _BR +
                     '        case when (Round(Sum(PedLb2.TotCst),4) > 0) THEN ROUND(((Round(Sum((PedLb2.UltQts * PedLb2.VlqLb2)),2) - Round(Sum(PedLb2.TotCst),4)) * 100)/Round(Sum(PedLb2.TotCst),4),2) else 0 end MarPed, ' + _BR +
                     '        case when (Round(Sum(PedLb2.UltQts*PedLb2.VluLb2),4) > 0) THEN Round(((Sum(Coalesce(PedLb2.UltQts,0) * Coalesce(PedLb2.VluLb2,0)) - Sum(Coalesce(PedLb2.UltQts,0)*PedRe2.VCSRE2))/Sum(PedLb2.UltQts*PedLb2.VluLb2))*100,4) else 0 end MargBrt, '+ _BR +
                     '        case when (Round(Sum(PedLb2.UltQts*PedLb2.VluLb2),4) > 0) THEN Round(((Sum(Coalesce(PedLb2.UltQts,0) * Coalesce(PedLb2.VlqLb2,0)) - Sum(Coalesce(PedLb2.UltQts,0)*PedRe2.VCSRE2))/Sum(PedLb2.UltQts*PedLb2.VlqLb2))*100,4) else 0 end MargPed, '+ _BR +
                     '        Round(Round(Sum((PedLb2.UltQts * PedLb2.VlqLb2)),2) - Round(Sum(PedLb2.TotCst),4),4) LuCroL, ' + _BR +
                     '        Round(Round(Sum((PedLb2.UltQts * PedLb2.VluLb2)) ,2) - Round(Sum(PedLb2.TotCst),4),4) LuCroP, ' + _BR +
                     '        Round(Sum(PedLb2.SldLb2 * ( PedLb2.VlqLb2 - PedLb2.VdrLb2 )),4) as TotNat, ' + _BR +
                     '        Round(Round(Sum((PedLb2.UltQts * PedLb2.VluLb2)) ,2) -Round(Sum(PedLb2.UltQts * (( PedLb2.VluLb2 * PedLb2.DscPer )/100)),2),2) TotPer, ' + _BR +
                     '        Round(Sum(PedLb2.totipi),2) totipi, ' + _BR +
                     '        Round(Sum(PedLB2.totsub),2) totsub, ' + _BR +
                     '        Round(Sum(PedLB2.totge2),2) totge2, ' + _BR +
                     '        IntStrZeros(PedLib.CodCli,5)||'' - ''||FinCli.ApeCli as Cliente, ' + _BR +
                     '        IntStrZeros(PedLib.CodVen,3)||'' - ''||FinVen.ApeVen as Vendedor ' + _BR +


                     '   From PedLib ' + _BR +
                     '   left join PedLb2 on PedLb2.CodEmp = PedLib.CodEmp' + _BR +
                     '                   and PedLb2.DteRes = PedLib.DteRes' + _BR +
                     '                   and PedLb2.NumRes = PedLib.NumRes' + _BR +
                     '                   and PedLb2.SeqLib = PedLib.SeqLib' + _BR +

                     '   left join FinVen on PedLib.CodVen = FinVen.CodVen' + _BR +
                     '   left join FinCli on PedLib.CodCli = FinCli.CodCli' + _BR +

                     '   left join PedRe2 on PedRe2.CodEmp = PedLb2.CodEmp' + _BR +
                     '                   and PedRe2.DteRes = PedLb2.DteRes' + _BR +
                     '                   and PedRe2.NumRes = PedLb2.NumRes' + _BR +
                     '                   and PedRe2.seqre2 = PedLb2.seqre2' + _BR +
                     ' Where 1 = 1 ' + _BR + sFiltro + _BR;

     if Trim(EdPsqCodGve.Text) <> '' then
       PedR15.SQL.Text := PedR15.SQL.Text + ' and FinVen.CodGve = ''' + EdPsqCodGve.Text + '''' + _BR;

     if Trim(EdPsqCodCve.Text) <> '' then
       PedR15.SQL.Text := PedR15.SQL.Text + ' and FinVen.CodCve = ''' + EdPsqCodCve.Text + '''' + _BR;

     PedR15.SQL.Text := PedR15.SQL.Text + ' Group by PedLib.CodEmp, PedLib.DteRes,PedLib.NumRes,PedLib.SeqLib,PedLib.NroNfs,PedLib.DteFat,PedLib.CodCli,FinCli.ApeCli,FinCli.CgcCli,FinCli.NomCli,PedLib.CodVen,FinVen.ApeVen' + _BR;

     PedR15.SQL.Text := PedR15.SQL.Text + ' Order by PedLib.CodEmp, PedLib.DteRes,PedLib.NumRes,PedLib.SeqLib,PedLib.NroNfs,PedLib.DteFat,PedLib.CodCli,FinCli.ApeCli,FinCli.CgcCli,FinCli.NomCli,PedLib.CodVen,FinVen.ApeVen' + _BR;

  if debughook > 0 then
    clipboard.AsText := PedR15.SQL.Text;

  PedR15.Open;



  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From PedR15 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  grR15.FullExpand;

  grR15.SetFocus;

end;

procedure TfmPedR15.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmPedR15.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR15.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : ' + EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : ' + EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : ' + EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : ' + EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR15.grR15ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR15.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Analise de Pedidos Realizados no Periodo.htm', grR15.SaveToHTML);
end;

procedure TfmPedR15.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Analise de Pedidos Realizados no Periodo.xls', grR15.SaveToXLS);
end;

procedure TfmPedR15.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Analise de Pedidos Realizados no Periodo.xml', grR15.SaveToXML);
end;

procedure TfmPedR15.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmPedR15.BbPsqEmpClick(Sender: TObject);
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

procedure TfmPedR15.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmPedR15.bPsqVenClick(Sender: TObject);
begin
  inherited;

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

procedure TfmPedR15.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select ApeVen From FinVen' +
        ' Where CodVen = ''' + EdPsqCodVen.Text + '''';
      Open;

      EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdPsqNomVen.Text := '';
end;

procedure TfmPedR15.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR15.EdPsqCodGveExit(Sender: TObject);
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

procedure TfmPedR15.bPsqCClClick(Sender: TObject);
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

procedure TfmPedR15.EdPsqCodCveExit(Sender: TObject);
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

procedure TfmPedR15.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      EdPsqNomCli.Text := fmPsqCli.NomCli;
      EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR15.EdPsqCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomCli From FinCli Where CodCli = ''' + EdPsqCodCli.Text + '''';
      Open;

      EdPsqNomCli.Text := FieldByName('NomCli').AsString;

    end;

  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmPedR15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR15.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR15 := nil;
end;

procedure TfmPedR15.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(fmPedR15.grR15);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

end.

