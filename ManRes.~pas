unit ManRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, RDprint, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit,
  dxColorEdit, dxColorDateEdit, QRPrntr, DBCtrls, clipbrd;

type
  TfmManRes = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDtfRes1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDtfRes2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotRes1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotRes2: TdxColorCurrencyEdit;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    PedResNUMRES: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTOTRES: TFloatField;
    PedResTOTGER: TFloatField;
    PedRe2: TwwQuery;
    UpRes: TUpdateSQL;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    PedResFATGER: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDGER: TFloatField;
    lbF1: TLabel;
    Label15: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    Label24: TLabel;
    bPsqEmp: TSpeedButton;
    EdPsqNomEmp: TdxColorEdit;
    DsRe2: TwwDataSource;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedResCODATD: TIntegerField;
    PedPar: TwwQuery;
    PedParFLGIMP: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2TOTREN: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGPAC: TStringField;
    PedRe2FLGLIB: TStringField;
    PedRe2DSCPRO: TStringField;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResCODTIP: TIntegerField;
    PedResTIPPFA: TStringField;
    PedResTOTREN: TFloatField;
    PedResSITRES: TStringField;
    PedResNOMCLI: TStringField;
    PedResFLGOCO: TStringField;
    PedResFLGIMP: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResCODTRA: TIntegerField;
    PedResLANEST: TStringField;
    PedResCODFIL: TIntegerField;
    PedResTOTCST: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResMEDACR: TFloatField;
    PedResTOTACR: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResDSCREG: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResMEDDCO: TFloatField;
    PedResTOTDCO: TFloatField;
    PedResQTIRES: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResPEDANT: TStringField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    Label5: TLabel;
    Label14: TLabel;
    EdPsqCodAtd: TdxColorEdit;
    bPsqAtd: TSpeedButton;
    EdPsqNomAtd: TdxColorEdit;
    Label1: TLabel;
    Label8: TLabel;
    EdPsqSitRes: TdxColorPickEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdPsqFlgImp: TdxColorPickEdit;
    bSelecionar: TBitBtn;
    pnNomCli: TPanel;
    pnApeVen: TPanel;
    pnTotRen: TPanel;
    dbRes: TdxDBGraphicEdit;
    grRes: ThGrid;
    pnSitRes: TPanel;
    pnDteRes: TPanel;
    pnDtfRes: TPanel;
    pnFlgImp: TPanel;
    dbRe2: TdxDBGraphicEdit;
    grRe2: ThGrid;
    pnTotMka: TPanel;
    PedResAPEVEN: TStringField;
    PedResAPEATD: TStringField;
    PedResTOTIPI: TFloatField;
    quSQL1: TwwQuery;
    PedResUSUREJ: TIntegerField;
    PedResTOTSUB: TFloatField;
    PedResATUEST: TStringField;
    dteent2: TdxColorDateEdit;
    Label21: TLabel;
    dteent1: TdxColorDateEdit;
    Label26: TLabel;
    Label27: TLabel;
    Estado: TdxColorPickEdit;
    Label30: TLabel;
    RDprint1: TRDprint;
    PedResFLGFEC: TStringField;
    Label31: TLabel;
    DBText1: TDBText;
    Label32: TLabel;
    PedResTOTIBPT: TFloatField;
    pnInfGer: TPanel;
    pnTotFat: TPanel;
    Panel3: TPanel;
    pnTotRes: TPanel;
    Panel1: TPanel;
    pnQtdRes: TPanel;
    Panel5: TPanel;
    pnCotacao: TPanel;
    PedResID_PEDCTA: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqEmpClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure PedRe2DSCPROGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
    procedure grResKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    {Private declarations}
    GExiCom: string;

    procedure CountRegistros;
  public

    {Public declarations}
    DteRes: TDateTime;
    CodEmp, NumRes: integer;
    sBase, sFiltro, sOrdem: string;

    function EnviaEmail(CodEmp, Numres: integer; dteres: TdateTime;NroRes :string = '1'): Boolean;
  end;

var
  Linha: Integer;
  fmManRes: TfmManRes;
  sCabe, NomVen, NomAtd, NomRep, NomCli, EndEn1, EndEn2, EndEn3, Permissao: string;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, Bbacesso, ManGDB, PsqEmp, PsqVen,
  PsqPfa, ManPri, AuxPsq, ManPed, PsqRej, PsqOco, ManCpe, PsqCpe, PsqMfp,
  PsqFat, AuxIni, PsqOrc, PsqEst, PsqCpd, PsqHre, PsqLib, PsqAt2, ManEm5,
  EMAPED, DM_Imprint, PsqEs2, ManVisuRegras, ManImpPedNovo,
  ManImpPedNovoSemDesc, manLogSep;

{$R *.DFM}

procedure TfmManRes.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,' +
    'PedRes.DteRes,' +
    'PedRes.NumRes,' +
    'PedRes.HreRes,' +
    'PedRes.DtfRes,' +
    'PedRes.UfeRes,' +
    'PedRes.CgcCli,' +
    'PedRes.PedAnt,' +
    'PedRes.QtiRes,' +
    'PedRes.QtpRes,' +
    'PedRes.LanEst,' +
    'PedRes.CodFil,' +
    'PedRes.CodCli,' +
    'PedRes.CodTra,' +
    'PedRes.CodTip,' +
    'PedRes.CodVen,' +
    'PedRes.CodPfa,' +
    'PedRes.TipPfa,' +
    'PedRes.CodAtd,' +
    'PedRes.TotRes,' +
    'PedRes.TotSub,' +
    'PedRes.TotGer,' +
    'PedRes.TotCst,' +
    'PedRes.MedDsc,' +
    'PedRes.TotDsc,' +
    'PedRes.MedAcr,' +
    'PedRes.TotAcr,' +
    'PedRes.MedPrm,' +
    'PedRes.TotDsp,' +
    'PedRes.MedCom,' +
    'PedRes.TotCom,' +
    'PedRes.MedDco,' +
    'PedRes.TotDco,' +
    'PedRes.DscReg,' +
    'PedRes.TotDsr,' +
    'PedRes.TotIpi,' +
    'PedRes.FatGer,' +
    'PedRes.DevGer,' +
    'PedRes.SldGer,' +
    'PedRes.TotRen,' +
    'PedRes.AtuEst,' +
    'PedRes.SitRes,' +
    'PedRes.UsuRej,' +
    'PedRes.FlgOco,' +
    'PedRes.FlgImp,' +
    'PedRes.TotIBPT,' +
    'FinCli.NomCli,' +
    'FinVen.ApeVen,' +
    'FinAtd.ApeAtd,' +
    'PedRes.FLGFEC, ' +
    'PedRes.ID_PEDCTA ' +
    ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)' +
    ' LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)' +
    ' LEFT JOIN FinAtd ON (PedRes.CodAtd = FinAtd.CodAtd)';

end;

procedure TfmManRes.bSelecionarClick(Sender: TObject);
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

  sFiltro := '';

  sOrdem := ' Order by PedRes.NumRes';

  if Trim(EdPsqSitRes.Text) <> 'Todos' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.SitRes = ' + QuotedStr(EdPsqSitRes.Text)
    else
      sFiltro := ' Where PedRes.SitRes = ' + QuotedStr(EdPsqSitRes.Text);

  end;

  if Trim(EdPsqFlgImp.Text) <> 'Todos' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.FlgImp = ' + QuotedStr(EdPsqFlgImp.Text)
    else
      sFiltro := ' Where PedRes.FlgImp = ' + QuotedStr(EdPsqFlgImp.Text);

  end;

  if Trim(Estado.Text) <> 'Todos' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.uferes = ' + QuotedStr(Estado.Text)
    else
      sFiltro := ' Where PedRes.uferes = ' + QuotedStr(Estado.Text);

  end;

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text)
    else
      sFiltro := ' Where PedRes.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

  end;

  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.NumRes = ' + QuotedStr(EdPsqNumRes.Text)
    else
      sFiltro := ' Where PedRes.NumRes = ' + QuotedStr(EdPsqNumRes.Text);

  end;

  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.CodCli = ' + QuotedStr(EdPsqCodCli.Text)
    else
      sFiltro := ' Where PedRes.CodCli = ' + QuotedStr(EdPsqCodCli.Text);

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.CodVen = ' + QuotedStr(EdPsqCodVen.Text)
    else
      sFiltro := ' Where PedRes.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

  end;

  if Trim(EdPsqCodAtd.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.CodAtd = ' + QuotedStr(EdPsqCodAtd.Text)
    else
      sFiltro := ' Where PedRes.CodAtd = ' + QuotedStr(EdPsqCodAtd.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + '  and PedRes.DteRes >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date))
    else
      sFiltro := ' Where PedRes.DteRes >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));

  end;

  if Trim(fLimpaStr(dteent1.Text)) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + '  and (pedres.dteres + pedres.PRFRES) >= ' + QuotedStr(fDateToSQL(dteent1.Date))
    else
      sFiltro := ' Where (pedres.dteres + pedres.PRFRES) >= ' + QuotedStr(fDateToSQL(dteent1.Date));

  end;

  if Trim(fLimpaStr(DteEnt2.Text)) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + '  and (pedres.dteres + pedres.PRFRES) <= ' + QuotedStr(fDateToSQL(DteEnt2.Date))
    else
      sFiltro := ' Where (pedres.dteres + pedres.PRFRES) <= ' + QuotedStr(fDateToSQL(DteEnt2.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + '  and PedRes.DteRes <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date))
    else
      sFiltro := ' Where PedRes.DteRes <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  end;

  if EdPsqTotRes1.Value > 0 then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.TotRes >= ' + QuotedStr(fConvertValor(EdPsqTotRes1.Text))
    else
      sFiltro := ' Where PedRes.TotRes >= ' + QuotedStr(fConvertValor(EdPsqTotRes1.Text));

  end;

  if EdPsqTotRes2.Value > 0 then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.TotRes <= ' + QuotedStr(fConvertValor(EdPsqTotRes2.Text))
    else
      sFiltro := ' Where PedRes.TotRes <= ' + QuotedStr(fConvertValor(EdPsqTotRes2.Text));

  end;

  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then
  begin

    if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then
    begin

      if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro +
          ' and Exists(Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat >= ' +
          QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) + ' and PedLib.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) + ' )'
      else
        sFiltro := '  Where Exists(Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat >= '
          + QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) + ' and PedLib.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) + ' )';

    end
    else
    begin

      if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro +
          ' and Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat >= ' +
          QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) + ' )'
      else
        sFiltro := ' Where Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat >= '
          + QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) + ' )';

    end;

  end
  else
  begin

    if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then
    begin

      if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro +
          ' and Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat <= ' +
          QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) + ' )'
      else
        sFiltro := ' Where Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat <= '
          + QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) + ' )';

    end;
  end;

  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro +
        ' and Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.NroNfs = ' +
        QuotedStr(EdPsqNroNfs.Text) + ' )'
    else
      sFiltro := ' Where Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.NroNfs = '
        + QuotedStr(EdPsqNroNfs.Text) + ' )';

  end;

  if GFlgAce = 'Sim' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = ' + QuotedStr('Sim')
    else
      sFiltro := ' Where PedRes.CodTip = 1 and not PedRes.FlgDif = ' + QuotedStr('Sim')

  end;

  with PedRes, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;

    if DebugHook > 0 then
      Clipboard.AsText := Text;

    Open;

    CountRegistros;

  end;

  PedRe2.Close;
  PedRe2.Open;

  grRes.SetFocus;

end;

procedure TfmManRes.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim(EdPsqCodCli.Text) <> '' then
  begin
    if fmmangdb.BuscaSimples('PEDPAR', 'LIBERA_VEN', ' 1 = 1') <> 'S' then
    begin
      with quSql, SQL do
      begin

        Close;
        Text := ' Select NomCli,CodAtd From FinCli Where FinCli.CodCli = ''' + EdPsqCodCli.Text + '''';
        Open;

        EdPsqNomCli.Text := FieldByName('NomCli').AsString;

        if GCodAtd_Id > 0 then
        begin

          if FieldbyName('CodAtd').AsInteger <> GCodAtd_Id then
          begin

            EdPsqNomCli.Text := '';

            fmsgErro('Cliente Informado não Pertence ao Atendente.', EdPsqCodCli);

          end;
        end;
      end;
    end;
  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmManRes.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if fmmangdb.BuscaSimples('PEDPAR', 'LIBERA_VEN', ' 1 = 1') = 'S' then
        fmAuxIni.TipoPesq := 'C_LIB_VEN'
      else
        fmAuxIni.TipoPesq := 'C';

      fmAuxIni.sCodVen_Id := GCodVen_Id;

      fmAuxIni.sGUs_Id := GGUs_Id;

      fmAuxIni.sCodAtd_Id := GCodAtd_Id;

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdPsqCodCli.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      if fmmangdb.BuscaSimples('PEDPAR', 'LIBERA_VEN', ' 1 = 1') = 'S' then
        fmAuxPsq.TipoPesq := 'C_LIB_VEN'
      else
        fmAuxPsq.TipoPesq := 'C';

      fmAuxPsq.sCodVen_Id := GCodVen_Id;

      fmAuxPsq.sGUs_Id := GGUs_Id;

      fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmAuxPsq.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    EdPsqCodCli.SetFocus;

  end;
end;

procedure TfmManRes.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManRes.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'V';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodVen > 0 then
      begin

        EdPsqNomVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdPsqCodVen.SetFocus;

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

    EdPsqCodVen.SetFocus;

  end;
end;

procedure TfmManRes.bPsqCliClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if fmmangdb.BuscaSimples('PEDPAR', 'LIBERA_VEN', ' 1 = 1') = 'S' then
      fmAuxIni.TipoPesq := 'C_LIB_VEN'
    else
      fmAuxIni.TipoPesq := 'C';

    fmAuxIni.sCodVen_Id := GCodVen_Id;

    fmAuxIni.sGUs_Id := GGUs_Id;

    fmAuxIni.sCodAtd_Id := GCodAtd_Id;

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCli > 0 then
    begin

      EdPsqNomCli.Text := fmAuxIni.NomCli;
      EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  EdPsqCodCli.SetFocus;

end;

procedure TfmManRes.bPsqVenClick(Sender: TObject);
begin

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

  EdPsqCodVen.SetFocus;

end;

procedure TfmManRes.EdPsqNumResExit(Sender: TObject);
begin
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    if (GCodVen_Id = 0) or (GGus_Id = 1) then
    begin

      EdPsqCodVen.Clear;
      EdPsqNomVen.Clear;

    end;

    EdPsqNroNfs.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;

    EdPsqDteRes1.Clear;
    EdPsqDteRes2.Clear;
    EdPsqDtfRes1.Clear;
    EdPsqDtfRes2.Clear;

    EdPsqTotRes1.Value := 0;
    EdPsqTotRes2.Value := 0;

    EdPsqSitRes.Text := 'Todos';
    EdPsqFlgImp.Text := 'Todos';

  end;
end;

procedure TfmManRes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  SqlTemp: TwwQuery;
begin
  inherited;

  if (key in [ord('l'), ord('L')]) and (shift = [ssCTRL]) then
  begin
    if (not Pedres.IsEmpty) then
    begin
      fmManLogSep := TfmManLogSep.Create(self);
      try
        fmManLogSep.ShowModal(PedresCodemp.AsInteger, PedresNumres.AsInteger, PedresDteRes.AsDatetime);
      finally
        FreeAndNil(fmManLogSep);
      end;
    end;
  end;

  if (Shift = [ssCtrl]) and (Key = ord('R')) then
  begin
    try

      SqlTemp := TwwQuery.Create(Self);
      SqlTemp.DatabaseName := 'ISade';
      SqlTemp.Active := False;
      SqlTemp.SQL.Text := 'Select CodSts from Estpro Where ' +
        ' CodGru = ' + QuotedStr(fmManRes.PedRe2CODGRU.AsString) +
        ' and CodSub = ' + QuotedStr(FmmanRes.PedRe2CodSub.AsString) +
        ' and CodPro = ' + QuotedStr(FmManRes.PedRe2CODPRO.AsString);

      SqlTemp.Active := True;

      if (SqlTemp.FieldByName('CodSts').IsNull) then
      begin
        fMsg('Produto sem Regra de Substituição Tributária de Saída Cadastrada', 'I');
      end
      else
      begin
        FmManVisuRegras := TFmManVisuRegras.Create(Self);

        FmManVisuRegras.EstStr.AcTive := False;
        FmManVisuRegras.EstUfe.AcTive := False;
        FmManVisuRegras.GerUfe.AcTive := False;
        FmManVisuRegras.EstIcm.AcTive := False;
        FmManVisuRegras.EstTxf.AcTive := False;
        FmManVisuRegras.EstTme.AcTive := False;

        FmManVisuRegras.EstStr.ParamByName('CodStr').Value := SqlTemp.FieldByName('CodSts').Value;
        FmManVisuRegras.EstStr.ParamByName('TipStr').Value := 'Saida';

        FmManVisuRegras.EstStr.AcTive := True;
        FmManVisuRegras.EstUfe.AcTive := True;
        FmManVisuRegras.GerUfe.AcTive := True;
        FmManVisuRegras.EstIcm.AcTive := True;
        FmManVisuRegras.EstTxf.AcTive := True;
        FmManVisuRegras.EstTme.AcTive := True;

        FmManVisuRegras.ShowModal;
      end;

    finally
      FreeAndNil(FmManVisuRegras);
      FreeAndNil(SqlTemp);
    end;
  end;

  if key = 27 then
    close;

  if key = 114 then
    bEditar.OnClick(Sender);

  if key = 115 then
    bIncluir.OnClick(Sender);

  if key = 116 then
    bImprimir.OnClick(Sender);

  if key = 117 then
    bExcluir.OnClick(Sender);

  if key = 112 then
  begin

    if grRes.Focused then
    begin

      if (PedResSitRes.AsString = 'Faturado') or
        (PedResSitRes.AsString = 'Pronto para Faturar') or
        (PedResSitRes.AsString = 'Parcialmente Faturado') or
        (PedResSitRes.AsString = 'Faturado com Saldo nao Atendido') then
      begin

        if PedResSitRes.AsString = 'Pronto para Faturar' then
        begin

          try

            fmPsqLib := TfmPsqLib.Create(Self);

            fmPsqLib.PedLib.Close;
            fmPsqLib.PedLib.Params[0].AsInteger := PedResCodEmp.AsInteger;
            fmPsqLib.PedLib.Params[1].AsDateTime := PedResDteRes.AsDateTime;
            fmPsqLib.PedLib.Params[2].AsInteger := PedResNumRes.AsInteger;
            fmPsqLib.PedLib.Open;
            fmpsqlib.pedlb21.Close;
            fmpsqlib.pedlb21.open;
            fmpsqlib.pedlb22.Close;
            fmpsqlib.pedlb22.open;

            fmPsqLib.ShowModal;

          finally

            FreeAndNil(fmPsqLib);

          end;

        end
        else
        begin

          if PedResCodTip.Value = 1 then
          begin

            try

              fmPsqFat := TfmPsqFat.Create(Self);

              fmPsqFat.FatPed.Close;
              fmPsqFat.FatPed.Params[0].AsInteger := PedResCodEmp.Value;
              fmPsqFat.FatPed.Params[1].AsDateTime := PedResDteRes.Value;
              fmPsqFat.FatPed.Params[2].AsInteger := PedResNumRes.Value;
              fmPsqFat.FatPed.Open;

              fmPsqFat.ShowModal;

            finally

              FreeAndNil(fmPsqFat);

            end;

          end
          else
          begin

            try

              fmPsqOrc := TfmPsqOrc.Create(Self);

              fmPsqOrc.FatOrc.Close;
              fmPsqOrc.FatOrc.Params[0].AsInteger := PedResCodEmp.Value;
              fmPsqOrc.FatOrc.Params[1].AsDateTime := PedResDteRes.Value;
              fmPsqOrc.FatOrc.Params[2].AsInteger := PedResNumRes.Value;
              fmPsqOrc.FatOrc.Open;

              fmPsqOrc.ShowModal;

            finally

              FreeAndNil(fmPsqOrc);

            end;
          end;
        end;
      end;
    end;
  end;

  if key = 121 then
  begin {F10 - Observações Quanto a Rejeicao do Pedido}

    if PedResSitRes.Value = 'Cancelado' then
    begin

      try

        fmPsqCpe := TfmPsqCpe.Create(Self);

        fmPsqCpe.PedRes.Close;
        fmPsqCpe.PedRes.Params[0].AsInteger := PedResCodEmp.Value;
        fmPsqCpe.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
        fmPsqCpe.PedRes.Params[2].AsInteger := PedResNumRes.Value;
        fmPsqCpe.PedRes.Open;

        fmPsqCpe.ShowModal;

      finally

        FreeAndNil(fmPsqCpe);

      end;

    end
    else
    begin

      if PedResSitRes.Value = 'Faturado com Saldo nao Atendido' then
      begin

        try

          fmPsqMfp := TfmPsqMfp.Create(Self);

          fmPsqMfp.PedRes.Close;
          fmPsqMfp.PedRes.Params[0].AsInteger := PedResCodEmp.Value;
          fmPsqMfp.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
          fmPsqMfp.PedRes.Params[2].AsInteger := PedResNumRes.Value;
          fmPsqMfp.PedRes.Open;

          fmPsqMfp.ShowModal;

        finally

          FreeAndNil(fmPsqMfp);

        end;

      end
      else
      begin

        if (PedResUsuRej.Value > 0) or (PedResSitRes.Value = 'Rejeitado') then
        begin

          try

            fmPsqRej := TfmPsqRej.Create(Self);

            fmPsqRej.PedRes.Close;
            fmPsqRej.PedRes.Params[0].AsInteger := PedResCodEmp.Value;
            fmPsqRej.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
            fmPsqRej.PedRes.Params[2].AsInteger := PedResNumRes.Value;
            fmPsqRej.PedRes.Open;

            fmPsqRej.ShowModal;

          finally

            FreeAndNil(fmPsqRej);

          end;
        end;
      end;
    end;
  end;

  if key = 122 then
  begin {F11-Ocorrencias do Pedido}

    if PedResFlgOco.Value = '*' then
    begin

      try

        fmPsqOco := TfmPsqOco.Create(Self);

        fmPsqOco.PedOco.Close;
        fmPsqOco.PedOco.Params[0].AsInteger := PedResCodEmp.Value;
        fmPsqOco.PedOco.Params[1].AsDateTime := PedResDteRes.Value;
        fmPsqOco.PedOco.Params[2].AsInteger := PedResNumRes.Value;
        fmPsqOco.PedOco.Open;

        fmPsqOco.PedRe2.Close;
        fmPsqOco.PedRe2.Params[0].AsInteger := PedResCodEmp.Value;
        fmPsqOco.PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
        fmPsqOco.PedRe2.Params[2].AsInteger := PedResNumRes.Value;
        fmPsqOco.PedRe2.Open;

        fmPsqOco.ShowModal;

      finally

        FreeAndNil(fmPsqOco);

      end;
    end;
  end;

  if key = vk_f8 then
  begin
    // antigo relatorio de via separacao
  end;

end;

procedure TfmManRes.FormShow(Sender: TObject);
begin
  inherited;

  if UpperCase(fmmangdb.BuscaSimples('GERUSU', 'FLGGER', ' CODUSU = ' + IntToStr(GUsu_Id))) = 'SIM' then
  begin
    pnInfGer.visible := true;

    pnQtdRes.Visible := true;
    pnTotRes.Visible := true;
    pnTotFat.Visible := true;

    Panel1.Visible := true;
    Panel3.Visible := true;
    Panel5.Visible := true;

    //grRe2.Height := 103;
    //dbRe2.Height := 110;
  end
  else
  begin
    pnQtdRes.Visible := False;
    pnTotRes.Visible := False;
    pnTotFat.Visible := False;

    Panel1.Visible := False;
    Panel3.Visible := False;
    Panel5.Visible := False;

    //grRe2.Height := 132;
    //dbRe2.Height := 138;
  end;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
    Permissao := fAcesso('PED0201')
  else
    Permissao := 'SSSSS';

  if copy(Permissao, 1, 1) = 'N' then
    bIncluir.Enabled := False;
  if copy(Permissao, 2, 1) = 'N' then
    bEditar.Enabled := False;
  if copy(Permissao, 3, 1) = 'N' then
    bExcluir.Enabled := False;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
  begin

    pnTotRen.Visible := False;
    pnTotMka.Visible := False;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select * From PedPar';
    Open;

    GExiCom := FieldByName('ExiCom').AsString;

  end;

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

  if GCodAtd_Id > 0 then
  begin

    sOrdem := ' Order by PedRes.NumRes';

    sFiltro := ' Where PedRes.CodAtd = ''' + IntToStr(GCodAtd_Id) + ''' and PedRes.DteRes = ''' + fDateToSQL(Date) + '''';

    if GFlgAce = 'Sim' then
      sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = ' + QuotedStr('Sim');

    with PedRes, SQL do
    begin

      Close;
      Text := sBase + sFiltro + sOrdem;
      Open;

    end;

  end
  else
  begin

    if GCodVen_Id > 0 then
    begin

      sOrdem := ' Order by PedRes.NumRes';

      sFiltro := ' Where PedRes.CodVen = ''' + IntToStr(GCodVen_Id) + ''' and PedRes.DteRes = ''' + fDateToSQL(Date) + '''';

      if GFlgAce = 'Sim' then
        sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = ' + QuotedStr('Sim');

      with PedRes, SQL do
      begin

        Close;
        Text := sBase + sFiltro + sOrdem;
        Open;

      end;

    end
    else
    begin

      if GFlgAce = 'Nao' then
      begin

        PedRes.Close;
        PedRes.Params[0].AsDateTime := Date;
        PedRes.Open;

      end
      else
      begin

        sOrdem := ' Order by PedRes.NumRes';

        sFiltro := ' Where PedRes.DteRes = ''' + fDateToSQL(Date) + '''';

        sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = ' + QuotedStr('Sim');

        with PedRes, SQL do
        begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

        end;
      end;
    end;
  end;

  if GCodVen_Id > 0 then
  begin

    EdPsqNomVen.Text := GNomVen_Id;
    EdPsqCodVen.Text := IntToStr(GCodVen_Id);

    if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then
    begin

      bPsqVen.Enabled := False;

      EdPsqCodVen.Enabled := False;

      EdPsqCodVen.Font.Style := [fsBold];

    end;
  end;

  if GCodAtd_Id > 0 then
  begin

    EdPsqNomAtd.Text := GNomAtd_Id;
    EdPsqCodAtd.Text := IntToStr(GCodAtd_Id);

    if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then
    begin

      bPsqAtd.Enabled := False;

      EdPsqCodAtd.Enabled := False;

      EdPsqCodAtd.Font.Style := [fsBold];

    end;
  end;

  EdPsqDteRes1.Date := Date;
  EdPsqDteRes2.Date := Date;

  EdPsqNumRes.SetFocus;

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + '  and PedRes.DteRes >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date))
    else
      sFiltro := ' Where PedRes.DteRes >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + '  and PedRes.DteRes <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date))
    else
      sFiltro := ' Where PedRes.DteRes <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  end;

  countRegistros;

end;

procedure TfmManRes.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManRes.bEditarClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
  statusAtual : String;
begin
  inherited;

  statusAtual := fmManGDB.BuscaSimples('PEDRES','SITRES', ' NUMRES = ' + PedRes.FieldByName('NUMRES').AsString);

  if not(
        (Trim(statusAtual) = 'Nao Concluido') or
        (Trim(statusAtual) = 'Processo de Alteracao') or
        (Trim(statusAtual) = 'Aguardando Complemento') or
        (Trim(statusAtual) = 'Rejeitado')) then
     begin
        ShowMessage('Não é possível a edição de um pedido que esteja como: ' + statusAtual);
        abort;
     end;

  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if copy(Permissao, 2, 1) = 'S' then
    begin

      if PedResNumRes.AsInteger > 0 then
      begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do
        begin

          if Screen.Forms[i] is TfmManPed then
            Found := i;

        end;

        if Found >= 0 then
        begin

          fmsg('Existe um Pedido em Andamento.', 'E');

          fmManPed.WindowState := wsNormal;
          fmManPed.BringToFront;

        end
        else
        begin

          sFiltro := ' Where PedRes.CodEmp = ''' + IntToStr(PedResCodEmp.AsInteger) + '''' +
            '   and PedRes.DteRes = ''' + fDateToSQL(PedResDteRes.AsDateTime) + '''' +
            '   and PedRes.NumRes = ''' + IntToStr(PedResNumres.AsInteger) + '''';

          with PedRes, SQL do
          begin

            Close;
            Text := sBase + sFiltro + sOrdem;
            Open;

          end;

          if (PedResSitRes.AsString = 'Aguardando Complemento') or
            (PedResSitRes.AsString = 'Aguardando Consultas de Cadastro') or
            (PedResSitRes.AsString = 'Aguardando Liberacao do Depto Financeiro') then
          begin

            PedRes.Edit;

            PedResSitRes.AsString := 'Processo de Alteracao';

            with PedRes do
            begin

              fmManGDB.dbMain.StartTransaction; //Inicia a Transação
              ;

              try

                ApplyUpdates; //Tenta aplicar as alterações
                ;

                fmManGDB.dbMain.Commit; //confirma todas as alterações fechando a transação
                ;

              except

                fmManGDB.dbMain.Rollback; //desfaz as alterações se acontecer um erro
                ;

                if PedRes.State <> dsBrowse then
                  PedRes.CancelUpdates;

                EdPsqNumRes.SetFocus;

                raise;

              end;

              CommitUpdates; //sucesso!, limpa o cache...

            end;
          end;

          CodEmp := PedResCodEmp.Value;
          DteRes := PedResDteRes.Value;
          NumRes := PedResNumRes.Value;

          fmManPed := TfmManPed.Create(Self);
          fmManPed.Show;

        end;
      end;

    end
    else
      fMsgErro('Usuario Não Possui Acesso a Opcão.', nil);

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManRes.bIncluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  if fmManGdb.BuscaSimples('PEDPAR', 'PED_BLOC_NOVO', ' 1 = 1') = 'N' then
  begin
    MessageBox(Handle, 'Não é permitido realizar novo pedido. Use cotação.', 'Pedidos', mb_ok + MB_ICONINFORMATION);
    bIncluir.Enabled := false;
    Abort;
  end
  else
    bIncluir.Enabled := true;

  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if copy(Permissao, 1, 1) = 'S' then
    begin

      Found := -1;

      for i := 0 to Screen.FormCount - 1 do
      begin

        if Screen.Forms[i] is TfmManPed then
          Found := i;

      end;

      if Found >= 0 then
      begin

        fmsg('Existe um Pedido em Andamento.', 'E');

        fmManPed.WindowState := wsNormal;
        fmManPed.BringToFront;

      end
      else
      begin

        CodEmp := 0;
        DteRes := Date;
        NumRes := 0;

        sFiltro := ' Where PedRes.CodEmp = :CodEmp' +
          '   and PedRes.DteRes = :DteRes' +
          '   and PedRes.NumRes = :NumRes';

        with PedRes, SQL do
        begin

          Close;
          Text := sBase + sFiltro + sOrdem;

          with Params do
          begin

            Params[0].AsInteger := CodEmp;
            Params[1].AsDateTime := DteRes;
            Params[2].AsInteger := NumRes;

          end;

          Open;

        end;

        fmManPed := TfmManPed.Create(Self);
        fmManPed.Show;

      end;

    end
    else
      fMsgErro('Usuario Não Possui Acesso a Opcão.', nil);

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManRes.bExcluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if copy(Permissao, 3, 1) = 'S' then
    begin

      Found := -1;

      for i := 0 to Screen.FormCount - 1 do
      begin

        if Screen.Forms[i] is TfmManPed then
          Found := i;

      end;

      if Found >= 0 then
      begin

        fmsg('Existe um Pedido em Andamento.', 'E');

        fmManPed.WindowState := wsNormal;
        fmManPed.BringToFront;

      end
      else
      begin

        if PedResNumRes.Value > 0 then
        begin

          if ((Trim(PedResSitRes.AsString) = 'Nao Concluido') and (Trim(PedResFLGFEC.AsString) <> 'Sim')) or (Trim(PedResSitRes.Value) = 'Rejeitado') then
          begin

            if fMsg('Confirma a Exclusão do Pedido?', 'S') then
            begin

              PedRes.Delete;

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

                  grRes.SetFocus;

                  raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedRes.Close;
              PedRes.Open;

              grRes.SetFocus;

            end;

          end
          else
          begin

            if (Trim(PedResSitRes.Value) = 'Nao Concluido') or
              (Trim(PedResSitRes.Value) = 'Processo de Alteracao') or
              (Trim(PedResSitRes.Value) = 'Aguardando Complemento') or
              (Trim(PedResSitRes.Value) = 'Aguardando Consultas de Cadastro') or
              (Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento') or
              (Trim(PedResSitRes.Value) = 'Aguardando Liberacao do Depto Comercial') or
              (Trim(PedResSitRes.Value) = 'Aguardando Liberacao do Depto Financeiro') then
            begin

              if fMsg('Confirma o Cancelamento do Pedido?', 'S') then
              begin

                try

                  fmManCpe := TfmManCpe.Create(Self);

                  fmManCpe.PedRes.Close;
                  fmManCpe.PedRes.Params[0].AsInteger := PedResCodEmp.Value;
                  fmManCpe.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
                  fmManCpe.PedRes.Params[2].AsInteger := PedResNumRes.Value;
                  fmManCpe.PedRes.Open;

                  fmManCpe.ShowModal;

                finally

                  FreeAndNil(fmManCpe);

                end;

                CodEmp := PedResCodEmp.Value;
                DteRes := PedResDteRes.Value;
                NumRes := PedResNumRes.Value;

                PedRes.Close;
                PedRes.Open;

                PedRes.Locate('CodEmp;DteRes;NumRes', VarArrayOf([CodEmp, DteRes, NumRes]), [LoPartialKey]);

              end;

            end
            else
            begin

              if (PedResSitRes.Value = 'Faturado') or (PedResSitRes.Value = 'Parcialmente Faturado') then
                fMsg('Operação não Pode ser Realizada. Pedido Faturado.', 'E')

              else if PedResSitRes.Value = 'Aguardando Separacao dos Itens a Faturar' then
                fMsg('Operação não Pode ser Realizada. Pedido em Processo de Separação dos Itens para Faturamento.', 'E')

              else if PedResSitRes.Value = 'Pronto para Faturar' then
                fMsg('Operação não Pode ser Realizada. Pedido Pronto para Faturar.', 'E')

              else if PedResSitRes.Value = 'Aguardando Separacao de Estoque' then
                fMsg('Operação não Pode ser Realizada. Pedido Aguardando Separação de Estoque.', 'E')

              else if PedResSitRes.Value = 'Aguardando Liberacao para Faturamento' then
                fMsg('Operação não Pode ser Realizada. Pedido Aguardando Liberacao para Faturamento.', 'E')

              else if PedResSitRes.Value = 'Cancelado' then
                fMsg('Operação não Pode ser Realizada. Pedido Cancelado', 'E')

              else if PedResSitRes.Value = 'Faturado com Saldo nao Atendido' then
                fMsg('Operação não Pode ser Realizada. Pedido com Saldo que não Será Atendido.', 'E');

            end;
          end;
        end;
      end;

    end
    else
      fMsgErro('Usuario Não Possui Acesso a Opcão.', nil);

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManRes.bImprimirClick(Sender: TObject);
var
  sTipoDeImpressao: string;
  i: Integer;
  Found: Integer;
begin
  inherited;

  if PedResNumRes.Value > 0 then
  begin
    // Tipo de Impressão [Grafica / Matricial]
    sTipoDeImpressao := fmManGDB.BuscaSimples('PEDPAR', 'COALESCE(VIA_SEP_GRAF,''S'')', ' 1 = 1 ');

    if fmmangdb.BuscaSimples('FATPAR', 'FLGCOT', '1=1', '') = 'Sim' then
    begin
      if fMsg('Deseja Enviar o Pedido em DOLAR por Email ?', 'O') then
      begin

        try

          fmEmaPed := TfmEmaPed.Create(Self);

          fmEmaPed.PedRes.Close;
          fmEmaPed.PedRes.Params[0].AsInteger := PedResCodEmp.AsInteger;
          fmEmaPed.PedRes.Params[1].AsDateTime := PedResDteRes.AsDateTime;
          fmEmaPed.PedRes.Params[2].AsInteger := PedResNumRes.AsInteger;
          fmEmaPed.PedRes.Open;

          fmEmaPed.RLReport1.PreviewModal;

        finally

          FreeAndNil(fmEmaPed);

        end;

      end;
    end;

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManPed then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmsg('Existe um Pedido em Andamento.', 'E');

      fmManPed.WindowState := wsNormal;
      fmManPed.BringToFront;

    end
    else
    begin

      if fMsg('Confirma Impressão do Pedido ?', 'O') then
      begin

        if fmmangdb.BuscaSimples('PEDPAR', 'INTIMPPED', '1=1') = '2' then
        begin

            fmManPri.ImprimePedido(PedResCodEmp.Asinteger, PedResNumRes.Asinteger, PedResDteRes.AsDateTime,'2');

            if messagebox(handle, 'Deseja enviar pedido de venda por email?', 'Pedido de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
              EnviaEmail(PedResCodEmp.Asinteger, PedResNumRes.Asinteger, PedResDteRes.AsDateTime);

        end
        else
        if fmmangdb.BuscaSimples('PEDPAR', 'INTIMPPED', '1=1') = '3' then
        begin
            fmManPri.ImprimePedido(PedResCodEmp.Asinteger, PedResNumRes.Asinteger, PedResDteRes.AsDateTime,'3');

            if messagebox(handle, 'Deseja enviar pedido de venda por email?', 'Pedido de venda', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then
              EnviaEmail(PedResCodEmp.Asinteger, PedResNumRes.Asinteger, PedResDteRes.AsDateTime);
        end
        else
        begin
          fmManImpPedNovo := TfmManImpPedNovo.Create(Self);
          try
            begin
              fmManImpPedNovo.QuickRep1.ReportTitle := 'Impressão do Pedido';
              fmManImpPedNovo.ShowModal(PedResNUMRES.AsInteger);
            end;
          finally
            FreeAndNil(fmManImpPedNovo);
          end;
        end;

      end;

      //if PedResAtuEst.Value = 'Sim' then
      if (fmManGDB.BuscaSimples('PEDPAR', 'COALESCE(IMP_DEPOSITO_PEDIDO,''Sim'')', ' 1 = 1 ') <> 'Nao') then
        if fMsg('Imprime via Deposito ?', 'O') then
          begin
            // Verifica Tipo de Impressão [Grafica / Matricial]
            if sTipoDeImpressao = 'S' then  // Grafica
              fmManPri.ImprimeViaSeparacao(PedResCodEmp.Asinteger, PedResNumRes.Asinteger, PedResDteRes.AsDateTime)
            else
              fmDM_Imprint.ImpViaSep(PedResNUMRES.AsInteger);
          end;

    end;

  end;

end;

procedure TfmManRes.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    if (GCodVen_Id = 0) or (GGus_Id = 1) then
    begin

      EdPsqCodVen.Clear;
      EdPsqNomVen.Clear;

    end;

    EdPsqNumRes.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;

    EdPsqDteRes1.Clear;
    EdPsqDteRes2.Clear;
    EdPsqDtfRes1.Clear;
    EdPsqDtfRes2.Clear;

    EdPsqTotRes1.Value := 0;
    EdPsqTotRes2.Value := 0;

    EdPsqSitRes.Text := 'Todos';
    EdPsqFlgImp.Text := 'Todos';

  end;
end;

procedure TfmManRes.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
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
      Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('NomEmp').AsString) <> '' then
        EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
      else
      begin

        EdPsqNomEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqNomEmp.Text := '';
end;

procedure TfmManRes.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManRes.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManRes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) then
  begin

    if key = #1 then
    begin {Analise de Pedido}

      try

        fmPsqCpd := TfmPsqCpd.Create(Self);

        fmPsqCpd.PedRe2.Close;
        fmPsqCpd.PedRe2.Params[0].AsInteger := PedResCodEmp.Value;
        fmPsqCpd.PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
        fmPsqCpd.PedRe2.Params[2].AsInteger := PedResNumRes.Value;
        fmPsqCpd.PedRe2.Open;

        fmPsqCpd.ShowModal;

      finally

        FreeAndNil(fmPsqCpd);

      end;
    end;
  end;

  if key = #16 then
  begin {Historico do Pedido}

    if PedResCodEmp.Value > 0 then
    begin

      try

        fmPsqHre := TfmPsqHre.Create(Self);

        fmPsqHre.PedLog.Close;
        fmPsqHre.PedLog.Params[0].AsInteger := PedResCodEmp.Value;
        fmPsqHre.PedLog.Params[1].AsDateTime := PedResDteRes.Value;
        fmPsqHre.PedLog.Params[2].AsInteger := PedResNumRes.Value;
        fmPsqHre.PedLog.Open;

        fmPsqHre.ShowModal;

      finally

        FreeAndNil(fmPsqHre);

      end;
    end;
  end;

  if key = #5 then
  begin {Estoque}

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FLGCOD From PedPar';
      Open;

      GFLGCOD := FieldbyName('FLGCOD').AsString;

    end;

    {try

       fmPsqEst := TfmPsqEst.Create(Self);

       fmPsqEst.FlgCod := GFLGCOD;

       fmPsqEst.sEntr := 'N';

       fmPsqEst.sCodClp := '1';

       fmPsqEst.ShowModal;

    finally

       FreeAndNil(fmPsqEst);

    end;}
    //Alterado para comwatts reclamando que estava diferente do "Arquivos/Consulçta Estoque"
    try

      fmPsqEs2 := TfmPsqEs2.Create(Self);

      fmPsqEs2.sEntr := 'N';

      fmPsqEs2.sCodClp := '1';

      fmPsqEs2.ShowModal;

    finally

      FreeAndNil(fmPsqEs2);

    end;

  end;
end;

procedure TfmManRes.grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
  begin

    with (Sender as ThGrid).Canvas do
    begin

      Font.Color := clWhite;

      FillRect(Rect);

    end;

  end
  else
  begin

    if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgPac').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao')
      then
    begin

      with (Sender as ThGrid).Canvas do
      begin

        Font.Color := clRed;

        FillRect(Rect);

      end;
    end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

end;

procedure TfmManRes.PedRe2DSCPROGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Trim(PedRe2CodGru.Value) <> '' then
    Text := PedRe2CodGru.Value + '.' + PedRe2CodSub.Value + '.' + PedRe2CodPro.Value;
end;

procedure TfmManRes.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManPed then
      Found := i;

  end;

 if Found >= 0 then
    fmsgErro('Existem Pedidos em Andamento. Por Favor Feche o Formulario.', nil)
  else
    Action := CaFree;

end;

procedure TfmManRes.RDprint1NewPage(Sender: TObject; Pagina: Integer);
var
  TitCodRef, ImpRefDep, ImpRef: string;
begin
  inherited;

  Linha := 1;

  if sCabe = '1' then
  begin

    rdprint1.impf(Linha, 001, 'GERENCIA (PD)', [EXPANDIDO, NORMAL]);

    Inc(Linha);

    if PedResPedAnt.Value = 'Nao' then
      rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(PedResDtfRes.Value), [EXPANDIDO, NORMAL])
    else
      rdprint1.impf(Linha, 001, 'Entregar em ' + DateToStr(PedResDtfRes.Value) + ' - ANTECIPADO', [EXPANDIDO, NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, fReplicate('-', 80), [NORMAL]);

    Inc(Linha);

    rdprint1.impf(Linha, 001, 'Pedido       : ' + preString(IntToStr(PedResNumRes.Value), 7), [NORMAL, NEGRITO]);
    rdprint1.impf(Linha, 075, 'Data : ' + DateToStr(PedResDteRes.Value), [NORMAL]);
    rdprint1.impf(Linha, 111, 'Hora : ' + PedResHreRes.Value, [NORMAL]);

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

    if Trim(PedResCgcCli.Value) <> '' then
    begin

      if Length(Trim(PedResCgcCli.Value)) > 11 then
        rdprint1.impf(Linha, 001, 'CNPJ         : ' + fFormatCgcCpf(PedResCgcCli.Value), [NORMAL, NEGRITO])
      else
        rdprint1.impf(Linha, 001, 'CPF          : ' + fFormatCgcCpf(PedResCgcCli.Value), [NORMAL, NEGRITO]);

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
end;

procedure TfmManRes.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRes := nil;
end;

procedure TfmManRes.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqAt2 := TfmPsqAt2.Create(Self);

    fmPsqAt2.ShowModal;

    if fmPsqAt2.CodAtd > 0 then
    begin

      EdPsqNomAtd.Text := fmPsqAt2.NomAtd;
      EdPsqCodAtd.Text := IntToStr(fmPsqAt2.CodAtd);

    end;

  finally

    FreeAndNil(fmPsqAt2);

  end;

  EdPsqCodAtd.SetFocus;

end;

procedure TfmManRes.EdPsqCodAtdExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodAtd.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select ApeAtd From FinAtd Where FinAtd.CodAtd = ''' + EdPsqCodAtd.Text + '''';
      Open;

      EdPsqNomAtd.Text := FieldByName('ApeAtd').AsString;

    end;

  end
  else
    EdPsqNomAtd.Text := '';
end;

procedure TfmManRes.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Atendentes';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodAtd > 0 then
      begin

        EdPsqNomAtd.Text := fmAuxIni.NomAtd;
        EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdPsqCodAtd.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'Atendentes';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodAtd > 0 then
      begin

        EdPsqNomAtd.Text := fmAuxPsq.NomAtd;
        EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodAtd);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    EdPsqCodAtd.SetFocus;

  end;
end;

procedure TfmManRes.DsResDataChange(Sender: TObject; Field: TField);
var
  sText, sTextPos: string;
begin
  inherited;

  pnCotacao.Caption := ' Cotação: ' + PedResID_PEDCTA.AsString;
  pnCotacao.Hint := ' Cotação: ' + PedResID_PEDCTA.AsString;

  sText := '';

  if pnTotRen.Visible then
    pnTotRen.Caption := FormatFloat('###,###,##0.00', PedResTotRen.Value) + ' %';

  if (PedResSitRes.Value = 'Faturado') or
    (PedResSitRes.Value = 'Pronto para Faturar') or
    (PedResSitRes.Value = 'Parcialmente Faturado') or
    (PedResSitRes.Value = 'Faturado com Saldo nao Atendido') then
  begin

    if not lbF1.Visible then
      lbF1.Visible := True;

  end
  else
  begin

    if lbF1.Visible then
      lbF1.Visible := False;

  end;

  if PedResCodEmp.Value > 0 then
  begin

    if PedResFlgImp.Value = 'Nao' then
    begin

      pnFlgImp.Caption := 'Não Impresso';

      pnFlgImp.Color := clLime;

      pnFlgImp.Font.Color := clBlack;

    end
    else
    begin

      pnFlgImp.Caption := 'Impresso';

      pnFlgImp.Color := clRed;

      pnFlgImp.Font.Color := clWhite;

    end;

  end
  else
    pnFlgImp.Caption := '';

  if PedResCodEmp.Value > 0 then
    pnDtfRes.Caption := ' Programado para ' + DateToStr(PedResDtfRes.Value)
  else
    pnDtfRes.Caption := ' Programado para ';

  if PedResCodAtd.Value > 0 then
    grRes.Hint := ' Atendente : ' + PedResApeAtd.Value
  else
    grRes.Hint := '';

  if PedResCodCli.Value > 0 then
    pnNomCli.Caption := ' Cliente : ' + PedResNomCli.Value
  else
    pnNomCli.Caption := ' Cliente : ';

  if PedResCodVen.Value > 0 then
    pnApeVen.Caption := ' Vendedor : ' + PedResApeVen.Value
  else
    pnApeVen.Caption := ' Vendedor : ';

  if (PedResUsuRej.Value = 0) and (PedResSitRes.Value <> 'Rejeitado') then
  begin

    if PedResSitRes.Value = 'Cancelado' then
      sText := 'F10 -';

    if PedResSitRes.Value = 'Faturado com Saldo nao Atendido' then
      sText := 'F10 -';

    sTextPos := '';

    if trim(PedResSitRes.AsString) = 'Faturado' then
      sTextPos := fmManGDB.BuscaSimples('PEDLIB', 'NRONFS', ' SITLIB = ' + QuotedStr('Faturado') + ' AND NUMRES = ' + PedResNUMRES.AsString +
        ' ORDER BY NRONFS DESC');

    if trim(sTextPos) <> '' then
      sTextPos := 'NF: ' + sTextPos;

    pnSitRes.Caption := sText + ' ' + PedResSitRes.AsString + ' ' + sTextPos;

    pnSitRes.Caption := Trim(pnSitRes.Caption);

  end
  else
    pnSitRes.Caption := 'F10 - Rejeitado';

  if PedResCodEmp.Value > 0 then
  begin

    if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then
    begin

      if PedResCodTip.Value = 1 then
      begin

        pnSitRes.Color := clRed;

        pnSitRes.Font.Color := clWhite;

      end
      else
      begin

        pnSitRes.Color := clLime;

        pnSitRes.Font.Color := clBlack;

      end;
    end;

  end
  else
  begin

    pnSitRes.Color := clRed;

    pnSitRes.Font.Color := clWhite;

  end;

  if PedResCodEmp.Value > 0 then
    pnDteRes.Caption := ' Emitido Em ' + DateToStr(PedResDteRes.Value)
  else
    pnDteRes.Caption := ' Emitido Em ';

end;

procedure TfmManRes.DsRe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if pnTotMka.Visible then
    pnTotMka.Caption := 'Markup do Item ' + FormatFloat('###,###,##0.00', PedRe2TotRen.Value) + ' %';
end;

procedure TfmManRes.grResKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key in [ord('T'), ord('t')]) and (shift = [ssCTRL]) then
  begin
    ShowMessage('Valor aproximado dos tributos: R$ ' + FormatFloat('0.00', PedResTOTIBPT.asfloat) + '  ' + FormatFloat('0.00', (PedResTOTIBPT.asfloat /
      pedresTotger.AsFloat) * 100) + '%');
  end;
end;

procedure TfmManRes.CountRegistros;
begin

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select Sum(PedRes.TotGer) as TotRes,' +
      '        Sum(PedRes.FatGer) as TotFat,' +
      '        Count(*) as QtdRes' +
      ' From PedRes ' + sFiltro;
    Open;

    if FieldbyName('QtdRes').AsInteger > 0 then
    begin

      pnQtdRes.Caption := IntToStr(FieldbyName('QtdRes').AsInteger) + ' ';

      pnTotRes.Caption := FormatFloat('###,###,##0.00', FieldbyName('TotRes').AsFloat) + ' ';
      pnTotFat.Caption := FormatFloat('###,###,##0.00', FieldbyName('TotFat').AsFloat) + ' ';

    end
    else
    begin

      pnQtdRes.Caption := '0 Pedido(s)';

      pnTotRes.Caption := '0' + decimalseparator + '00 ';
      pnTotFat.Caption := '0' + decimalseparator + '00 ';

    end;
  end;
end;

function TfmManRes.EnviaEmail(CodEmp, Numres: integer; dteres: TdateTime;NroRes:string ='1'): Boolean;
var
  strPDF: string;
  strNomCli, strEmailCli, IdCli: string;
begin


  IdCli := FmManGdb.BuscaSimples('PEDRES', 'CODCLI', ' NUMRES = ' + inttostr(NUMRES));
  strNomCli := FmManGdb.BuscaSimples('Fincli', 'APECLI', ' CODCLI = ' + IdCli);
  strEmailCli := FmManGdb.BuscaSimples('Fincli', 'EM1CLI', ' CODCLI = ' + IdCli);

  strPDF := ExtractFilePath(Application.exename) + 'PedidoVenda ' + inttostr(numres) + '.pdf';

  if ExportPedido(CodEmp, NumRes, DteRes, strPDF, NroRes) then
  begin
    try

      SendMailMAPI('Pedido de venda ' + inttostr(numres), 'Segue em anexo pedido de venda ' + inttostr(numres), strPDF, GUsu_Nm, GUsu_Ema, strNomCli,
        strEmailCli);
    finally
      DeleteFile(strPDF);
    end;

  end
  else
    showmessage('Arquivo para envio não encontrado');

end;

end.

