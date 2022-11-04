unit ManMkp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao, ComCtrls;

type
  TfmManMkp = class(TfmShowPadrao)
    Label1: TLabel;
    Label3: TLabel;
    lbTotGer: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbTotCst: TLabel;
    lbMarkup: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    ck0: TCheckBox;
    ck1: TCheckBox;
    ck2: TCheckBox;
    ck3: TCheckBox;
    ck4: TCheckBox;
    ck5: TCheckBox;
    ck6: TCheckBox;
    ck7: TCheckBox;
    ck8: TCheckBox;
    PaintBox: TPaintBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dtpInicio: TDateTimePicker;
    dtpFim: TDateTimePicker;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure calcularMarkup(dataInicio, dataFim: string);
    procedure CalcularMarkupItem(DataInicio, DataFim: string);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManMkp: TfmManMkp;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManPri;

{$R *.DFM}

procedure TfmManMkp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TfmManMkp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManMkp.FormShow(Sender: TObject);
var
  DtInic, DtFina: TDateTime;
begin
  inherited;
  DtInic := StrToDate('01/' + copy(DateToStr(Date), 4, 7));
  DtFina := date;

  dtpInicio.Date := (DtInic);
  dtpFim.Date := (DtFina);

  //calcularMarkup(dtInic, dtFina);

end;

procedure TfmManMkp.calcularMarkup(dataInicio, dataFim: string);
var
  Markup, TotGer, TotCst: real;
begin

  with fmManPri.quSQL, SQL do
  begin

    Close;
    Text := ' Select Sum(PedLib.TotLib) as TotLib,' +
      ' Sum(PedLib.TotCst) as TotCst,' +
      ' Sum(PedLib.TotIpc) as TotIpc,' +
      ' Sum((Select Round(Sum(TotDsr),2) From FatPed Where FatPed.CodEmp = PedLib.CodEmp' +
      ' and FatPed.DteRes = PedLib.DteRes' +
      ' and FatPed.NumRes = PedLib.NumRes' +
      ' and FatPed.SeqLib = PedLib.SeqLib)) as TotDsr' +
      ' From PedLib' +
      ' Where PedLib.DteFat >= ' + dataInicio +
      ' and PedLib.DteFat <= ' + dataFim +
      ' and PedLib.IntFin  = ' + QuotedStr('Sim') +
      ' and PedLib.ModPfa  = ' + QuotedStr('Vendas') +
      ' and ( ( PedLib.SitLib = ' + QuotedStr('Faturado') + ' ) ' +
      ' or ( PedLib.SitLib = ' + QuotedStr('Devolvido') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )  ' +
      ' or ( PedLib.SitLib = ' + QuotedStr('Cancelado') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) ) )';
    Open;

    TotGer := FieldbyName('TotLib').AsFloat - (FieldbyName('TotIpc').AsFloat + FieldbyName('TotDsr').AsFloat);
    TotCst := FieldbyName('TotCst').AsFloat;

  end;

  with fmManPri.quSQL, SQL do
  begin

    Close;
    Text := ' Select Count(*) as QtdReg From rdb$relations' +
      ' Where rdb$relations.rdb$relation_name = ' + QuotedStr('LOJPED');
    Open;

  end;

  if fmManPri.quSQL.FieldbyName('QtdReg').AsInteger > 0 then
  begin

    with fmManPri.quSQL, SQL do
    begin

      Close;
      Text := ' Select Sum(LojPed.TotPed) as TotPed,' +
        '        Sum(LojPed.TotCst) as TotCst' +
        ' From LojPed' +
        ' Where LojPed.DopRpe >= ' + dataInicio +
        '   and LojPed.DopRpe <= ' + dataFim +
        '   and LojPed.ModPfa  = ' + QuotedStr('Vendas') +
        '   and LojPed.SitPed  = ' + QuotedStr('Recebida') +
        '   and LojPed.FlgVal  = ' + QuotedStr('Nao');
      Open;

      TotGer := TotGer + FieldbyName('TotPed').AsFloat;
      TotCst := TotCst + FieldbyName('TotCst').AsFloat;

    end;
  end;

  if TotCst > 0 then
    Markup := fRound(((TotGer - TotCst) * 100) / TotCst, 2)
  else
    Markup := 0;

  lbTotGer.Caption := FormatFloat('###,###,##0.00', TotGer);
  lbTotCst.Caption := FormatFloat('###,###,##0.00', TotCst);
  lbMarkup.Caption := FormatFloat('###,###,##0.00', Markup);
end;

procedure TfmManMkp.Button1Click(Sender: TObject);
var
  dtInicio, dtFim: string;
begin
  inherited;
  dtInicio := QuotedStr(FormatDateTime('yyyy-mm-dd', dtpInicio.Date));
  dtFim := QuotedStr(FormatDateTime('yyyy-mm-dd', dtpFim.Date));
  //calcularMarkup(dtInicio, dtFim);
  CalcularMarkupItem(dtInicio, dtFim);
end;

procedure TfmManMkp.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ck0.checked := True;
  ck1.checked := False;
  ck2.checked := False;
  ck3.checked := True;
  ck4.checked := True;
  ck5.checked := True;
  ck6.checked := False;
  ck7.checked := False;
  ck8.checked := True;

end;

procedure TfmManMkp.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  ck0.checked := False;
  ck1.checked := True;
  ck2.checked := True;
  ck3.checked := False;
  ck4.checked := False;
  ck5.checked := False;
  ck6.checked := True;
  ck7.checked := True;
  ck8.checked := False;
end;

procedure TfmManMkp.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  ck0.checked := True;
  ck1.checked := True;
  ck2.checked := True;
  ck3.checked := True;
  ck4.checked := True;
  ck5.checked := True;
  ck6.checked := True;
  ck7.checked := True;
  ck8.checked := True;
end;

procedure TfmManMkp.CalcularMarkupItem(DataInicio, DataFim: string);
var
  Markup, TotGer, TotCst: real;
  strOrigem: string;
begin

  if (ck0.checked = False) and
    (ck1.checked = False) and
    (ck2.checked = False) and
    (ck3.checked = False) and
    (ck4.checked = False) and
    (ck5.checked = False) and
    (ck6.checked = False) and
    (ck7.checked = False) and
    (ck8.checked = False) then
  begin
    Messagebox(handle, 'Obrigatório informar grupo de origem do item para calcular Markup.', 'Alerta', mb_ok + mb_iconInformation);
    abort;
  end;

  strOrigem := '';

  strOrigem := strOrigem + ifthen(ck0.checked, ',' + quotedStr('0'), '');
  strOrigem := strOrigem + ifthen(ck1.checked, ',' + quotedStr('1'), '');
  strOrigem := strOrigem + ifthen(ck2.checked, ',' + quotedStr('2'), '');
  strOrigem := strOrigem + ifthen(ck3.checked, ',' + quotedStr('3'), '');
  strOrigem := strOrigem + ifthen(ck4.checked, ',' + quotedStr('4'), '');
  strOrigem := strOrigem + ifthen(ck5.checked, ',' + quotedStr('5'), '');
  strOrigem := strOrigem + ifthen(ck6.checked, ',' + quotedStr('6'), '');
  strOrigem := strOrigem + ifthen(ck7.checked, ',' + quotedStr('7'), '');
  strOrigem := strOrigem + ifthen(ck8.checked, ',' + quotedStr('8'), '');

  Delete(strOrigem, 1, 1);

  with fmManPri.quSQL, SQL do
  begin

    {Close;
    Text := ' Select Sum(PedLib.TotLib) as TotLib,' +
      ' Sum(PedLib.TotCst) as TotCst,' +
      ' Sum(PedLib.TotIpc) as TotIpc,' +
      ' Sum((Select Round(Sum(TotDsr),2) From FatPed Where FatPed.CodEmp = PedLib.CodEmp' +
      ' and FatPed.DteRes = PedLib.DteRes' +
      ' and FatPed.NumRes = PedLib.NumRes' +
      ' and FatPed.SeqLib = PedLib.SeqLib)) as TotDsr' +
      ' From PedLib' +
      ' Where PedLib.DteFat >= ' + dataInicio +
      ' and PedLib.DteFat <= ' + dataFim +
      ' and PedLib.IntFin  = ' + QuotedStr('Sim') +
      ' and PedLib.ModPfa  = ' + QuotedStr('Vendas') +
      ' and ( ( PedLib.SitLib = ' + QuotedStr('Faturado') + ' ) ' +
      ' or ( PedLib.SitLib = ' + QuotedStr('Devolvido') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )  ' +
      ' or ( PedLib.SitLib = ' + QuotedStr('Cancelado') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) ) )';
     Open;}

    Close;
    Text :=
      ' Select SUM(lb2.TOTLB2) TotLib, ' +
      ' Sum(lb2.TotCst) as TotCst, ' +
      ' Sum(Lb2.TotIpc) as TotIpc, ' +
      ' Sum((Select Round(Sum(fp2.TotDsr),2) ' +
      ' From FatPed fp ' +
      ' join Fatpe2 fp2 on fp2.CodEmp = fp.CodEmp ' +
      ' and fp2.dteres = fp.dteres ' +
      ' and fp2.numres = fp.numres ' +
      ' and fp2.seqlib = fp.seqlib ' +
      ' and fp2.seqfat = fp.seqfat ' +
      ' Where fp.CodEmp = lb.CodEmp ' +
      ' and fp.DteRes = Lb.DteRes ' +
      ' and fp.NumRes = Lb.NumRes ' +
      ' and fp.SeqLib = Lb.SeqLib ' +
      ' AND fp2.codst1 in (' + strOrigem + '))) as TotDsr ' +
      ' From PedLib lb ' +
      ' join pedlb2 lb2 on lb2.codemp = lb.codemp ' +
      ' and lb2.dteres = lb.dteres ' +
      ' and lb2.numres = lb.numres ' +
      ' and lb2.seqlib = lb.seqlib ' +
      ' Where PedLib.DteFat >= ' + dataInicio +
      ' and PedLib.DteFat <= ' + dataFim +
      ' and PedLib.IntFin  = ' + QuotedStr('Sim') +
      ' and PedLib.ModPfa  = ' + QuotedStr('Vendas') +
      ' and ( ( PedLib.SitLib = ' + QuotedStr('Faturado') + ' ) ' +
      ' or ( PedLib.SitLib = ' + QuotedStr('Devolvido') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )  ' +
      ' or ( PedLib.SitLib = ' + QuotedStr('Cancelado') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) ) )' +
      ' AND lb2.codst1 in (' + strOrigem + ')';
    Open;

    TotGer := FieldbyName('TotLib').AsFloat - (FieldbyName('TotIpc').AsFloat + FieldbyName('TotDsr').AsFloat);
    TotCst := FieldbyName('TotCst').AsFloat;

  end;

  with fmManPri.quSQL, SQL do
  begin

    Close;
    Text := ' Select Count(*) as QtdReg From rdb$relations' +
      ' Where rdb$relations.rdb$relation_name = ' + QuotedStr('LOJPED');
    Open;

  end;

  if fmManPri.quSQL.FieldbyName('QtdReg').AsInteger > 0 then
  begin

    with fmManPri.quSQL, SQL do
    begin

      {Close;
      Text := ' Select Sum(LojPed.TotPed) as TotPed,' +
        '        Sum(LojPed.TotCst) as TotCst' +
        ' From LojPed' +
        ' Where LojPed.DopRpe >= ' + dataInicio +
        '   and LojPed.DopRpe <= ' + dataFim +
        '   and LojPed.ModPfa  = ' + QuotedStr('Vendas') +
        '   and LojPed.SitPed  = ' + QuotedStr('Recebida') +
        '   and LojPed.FlgVal  = ' + QuotedStr('Nao');
      Open;}

      Close;
      Text := ' Select Sum(L2.TotPe2) as TotPed,' +
        ' Sum(L2.TotCst) as TotCst ' +
        ' From LojPed lp ' +
        ' join lojpe2 l2 on lp.codemp = l2.codemp and lp.dteped = l2.dteped and lp.numped = l2.numped ' +
        ' Where LojPed.DopRpe >= ' + dataInicio +
        ' and LojPed.DopRpe <= ' + dataFim +
        ' and LojPed.ModPfa  = ' + QuotedStr('Vendas') +
        ' and LojPed.SitPed  = ' + QuotedStr('Recebida') +
        ' and LojPed.FlgVal  = ' + QuotedStr('Nao') +
        ' and l2.CODST1 in (' + strOrigem + ')';
      Open;

      TotGer := TotGer + FieldbyName('TotPed').AsFloat;
      TotCst := TotCst + FieldbyName('TotCst').AsFloat;

    end;
  end;

  if TotCst > 0 then
    Markup := fRound(((TotGer - TotCst) * 100) / TotCst, 2)
  else
    Markup := 0;

  lbTotGer.Caption := FormatFloat('###,###,##0.00', TotGer);
  lbTotCst.Caption := FormatFloat('###,###,##0.00', TotCst);
  lbMarkup.Caption := FormatFloat('###,###,##0.00', Markup);

end;

end.
