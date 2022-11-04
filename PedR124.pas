unit PedR124;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxColorDateEdit, clipbrd;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR124 = class(TfmPadrao)
    PedRe2: TwwQuery;
    DsRe2: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdDtePrg1: TdxColorDateEdit;
    Label18: TLabel;
    EdDtePrg2: TdxColorDateEdit;
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
    ImageList1: TImageList;
    grRe2: TdxDBGrid;
    bImprime: TBitBtn;
    Label5: TLabel;
    EdCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdNomCli: TdxColorEdit;
    Label13: TLabel;
    Colunas1: TMenuItem;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EdCodCat: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    BbPsqPro: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqClp: TSpeedButton;
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
    ULTQTS: TdxDBGridMaskColumn;
    TOTLB2: TdxDBGridMaskColumn;
    NOMCLI: TdxDBGridMaskColumn;
    CODITE: TdxDBGridColumn;
    DTERES: TdxDBGridColumn;
    DTEFAT: TdxDBGridColumn;
    NUMRES: TdxDBGridColumn;
    APEVEN: TdxDBGridColumn;
    Label14: TLabel;
    Label15: TLabel;
    EdCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdNomVen: TdxColorEdit;
    VLQLB2: TdxDBGridColumn;
    Label16: TLabel;
    Label19: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    NUMPRO: TdxDBGridColumn;
    rgStatus: TRadioGroup;
    rgCancelados: TRadioGroup;
    Label20: TLabel;
    Label21: TLabel;
    EdDteFat1: TdxColorDateEdit;
    EdDteFat2: TdxColorDateEdit;
    Label22: TLabel;
    Label23: TLabel;
    grRe2Column11: TdxDBGridMaskColumn;
    grRe2Column12: TdxDBGridMaskColumn;
    grRe2IPIRE2: TdxDBGridMaskColumn;
    grRe2ICMRE2: TdxDBGridMaskColumn;
    grRe2CLSIPI: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure grRe2ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodCliKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq,sFiltro : string;
  end;

var
  fmPedR124: TfmPedR124;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqGru, PsqSub, PsqPro, PsqClp,
     PsqTip, ManGDB, AuxIni, AuxPsq, ManCol;

{$R *.DFM}

procedure TfmPedR124.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR124.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmPedR124.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;
{
  sFiltro := ' and FATPED.AtuEst = '''+ 'Sim' +'''';

  if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and FATPED.ModPfa = '''+ EdPsqModPfa.Text +'''';

  if Trim(fLimpaStr( EdDtePrg1.Text )) <> '' then sFiltro := sFiltro + ' and FATPED.DtfRes >= '''+ fDateToSQL( EdDtePrg1.Date ) +'''';
  if Trim(fLimpaStr( EdDtePrg2.Text )) <> '' then sFiltro := sFiltro + ' and FATPED.DtfRes <= '''+ fDateToSQL( EdDtePrg2.Date ) +'''';

  if Trim( EdCodCli.Text ) <> '' then sFiltro := sFiltro + ' and FATPED.CodCli = '''+ EdCodCli.Text +'''';
  if Trim( EdCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FATPED.CodVen = '''+ EdCodVen.Text +'''';
  if Trim( EdCodCat.Text ) <> '' then sFiltro := sFiltro + ' and FATPE2.CodCat = '''+ EdCodCat.Text +'''';
  if Trim( EdCodTip.Text ) <> '' then sFiltro := sFiltro + ' and FATPE2.CodTip = '''+ EdCodTip.Text +'''';
  if Trim( EdCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and FATPE2.CodMrc = '''+ EdCodMrc.Text +'''';
  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and FATPE2.CodClp = '''+ EdCodClp.Text +'''';
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and FATPE2.CodGru = '''+ EdCodGru.Text +'''';
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and FATPE2.CodSub = '''+ EdCodSub.Text +'''';
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and FATPE2.CodPro = '''+ EdCodPro.Text +'''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then begin

     if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
        sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.CodEmp  = FATPED.CodEmp'+
                             '                                   and PedLib.DteRes  = FATPED.DteRes'+
                             '                                   and PedLib.NumRes  = FATPED.NumRes'+
                             '                                   and PedLib.DteFat >= '''+fDateToSQL(EdDteFat1.Date)+''''+
                             '                                   and PedLib.DteFat <= '''+fDateToSQL(EdDteFat2.Date)+''' )'
     else
        sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.CodEmp  = FATPED.CodEmp'+
                             '                                   and PedLib.DteRes  = FATPED.DteRes'+
                             '                                   and PedLib.NumRes  = FATPED.NumRes'+
                             '                                   and PedLib.DteFat >= '''+fDateToSQL(EdDteFat1.Date)+''' )';
     end
  else
     begin

     if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
        sFiltro := sFiltro + ' and Exists (Select * From PedLib Where PedLib.CodEmp  = FATPED.CodEmp'+
                             '                                    and PedLib.DteRes  = FATPED.DteRes'+
                             '                                    and PedLib.NumRes  = FATPED.NumRes'+
                             '                                    and PedLib.DteFat <= '''+fDateToSQL(EdDteFat2.Date)+''' )';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := sFiltro + ' and (FATPED.SitFAT  = '''+ 'Faturado' +'''  or FATPED.SitFAT  = '''+ 'Finalizado Manualmente' +''')';
       1: sFiltro := sFiltro + ' and  FATPED.SitFAT <> '''+ 'Faturado' +''' and FATPED.SitFAT <> '''+ 'Finalizado Manualmente' +'''';
  end;

  case rgCancelados.Itemindex of
       0: sFiltro := sFiltro + ' and ( FATPED.SitFAT  = '''+ 'Cancelado' +'''  or FATPED.SitFAT  = '''+ 'Rejeitado' +''' )';
       1: sFiltro := sFiltro + ' and   FATPED.SitFAT <> '''+ 'Cancelado' +''' and FATPED.SitFAT <> '''+ 'Rejeitado' +'''';
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR20 Where PedR20.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;
 }
  sFiltro := ' and PedRes.AtuEst = '''+ 'Sim' +'''';

  if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.ModPfa = '''+ EdPsqModPfa.Text +'''';

  if Trim(fLimpaStr( EdDtePrg1.Text )) <> '' then sFiltro := sFiltro + ' and PedRes.DtfRes >= '''+ fDateToSQL( EdDtePrg1.Date ) +'''';
  if Trim(fLimpaStr( EdDtePrg2.Text )) <> '' then sFiltro := sFiltro + ' and PedRes.DtfRes <= '''+ fDateToSQL( EdDtePrg2.Date ) +'''';

  if Trim( EdCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodCli = '''+ EdCodCli.Text +'''';
  if Trim( EdCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '''+ EdCodVen.Text +'''';
  if Trim( EdCodCat.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodCat = '''+ EdCodCat.Text +'''';
  if Trim( EdCodTip.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodTip = '''+ EdCodTip.Text +'''';
  if Trim( EdCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodMrc = '''+ EdCodMrc.Text +'''';
  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodClp = '''+ EdCodClp.Text +'''';
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodGru = '''+ EdCodGru.Text +'''';
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodSub = '''+ EdCodSub.Text +'''';
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodPro = '''+ EdCodPro.Text +'''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then begin

     if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
        sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.CodEmp  = PedRes.CodEmp'+
                             '                                   and PedLib.DteRes  = PedRes.DteRes'+
                             '                                   and PedLib.NumRes  = PedRes.NumRes'+
                             '                                   and PedLib.DteFat >= '''+fDateToSQL(EdDteFat1.Date)+''''+
                             '                                   and PedLib.DteFat <= '''+fDateToSQL(EdDteFat2.Date)+''' )'
     else
        sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.CodEmp  = PedRes.CodEmp'+
                             '                                   and PedLib.DteRes  = PedRes.DteRes'+
                             '                                   and PedLib.NumRes  = PedRes.NumRes'+
                             '                                   and PedLib.DteFat >= '''+fDateToSQL(EdDteFat1.Date)+''' )';
     end
  else
     begin   

     if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
        sFiltro := sFiltro + ' and Exists (Select * From PedLib Where PedLib.CodEmp  = PedRes.CodEmp'+
                             '                                    and PedLib.DteRes  = PedRes.DteRes'+
                             '                                    and PedLib.NumRes  = PedRes.NumRes'+
                             '                                    and PedLib.DteFat <= '''+fDateToSQL(EdDteFat2.Date)+''' )';
  end;   
  
  case rgStatus.Itemindex of
       0: sFiltro := sFiltro + ' and (PedRes.SitRes  = '''+ 'Faturado' +'''  or PedRes.SitRes  = '''+ 'Finalizado Manualmente' +''')';
       1: sFiltro := sFiltro + ' and  PedRes.SitRes <> '''+ 'Faturado' +''' and PedRes.SitRes <> '''+ 'Finalizado Manualmente' +'''';
  end;

  case rgCancelados.Itemindex of
       0: sFiltro := sFiltro + ' and ( PedRes.SitRes  = '''+ 'Cancelado' +'''  or PedRes.SitRes  = '''+ 'Rejeitado' +''' )';
       1: sFiltro := sFiltro + ' and   PedRes.SitRes <> '''+ 'Cancelado' +''' and PedRes.SitRes <> '''+ 'Rejeitado' +'''';
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR20 Where PedR20.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

      if DebugHook > 0 then
      clipboard.astext := '';
{  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR20'+
               ' Select '''+ SeqArq +''','+
               '  CodCli, '+
               '  CodVen, '+
               '  NumRes, '+
               ' (Select a.FlgTab from pedres a where a.codemp = fatped.codemp and a.dteres = fatped.dteres and a.numres = fatped.numres)as FLGTAB, '+
               '  DteRes, '+
               '  NumRes, '+
               ' (Select a.DTFRES from pedres a where a.codemp = fatped.codemp and a.dteres = fatped.dteres and a.numres = fatped.numres)as DTFRES, '+
               '  DteRes, '+
               '  DteRes, '+
               '  CodClp, '+
               '  CodGru, '+
               '  CodSub, '+
               '  CodPro, '+
               '  QtpPe2, '+
               ' (Select a.TotCst from pedres a where a.codemp = fatped.codemp and a.dteres = fatped.dteres and a.numres = fatped.numres)as TotCst, '+
               ' (Select a.TotRen from pedres a where a.codemp = fatped.codemp and a.dteres = fatped.dteres and a.numres = fatped.numres)as TotRen, '+
               ' (Select a.VcsRe2 from pedre2 a where codgru = FATPE2.codgru and codsub = FATPE2.codsub and codpro = FATPE2.codpro and codclp = FATPE2.codclp and a.codemp = fatped.codemp and a.dteres = fatped.dteres and a.numres = fatped.numres)as VCSRE2, '+
               '  TotGe2 as TotRe2, '+
               '  Round((VlqPe2 - VdrPe2)*((FATPE2.IPIPE2/100)+1),4) as VlqRe2, '+
               ' (select idepro from estpro where  codgru = FATPE2.codgru and codsub = FATPE2.codsub and codpro = FATPE2.codpro)as IDEPRO, '+
               ' (select refpro from estpro where codgru = FATPE2.codgru and codsub = FATPE2.codsub and codpro = FATPE2.codpro)as REFPRO '+
               ' From Fatpe2, fatped '+
               ' Where '+
               ' Fatpe2.CodEmp = fatped.CodEmp and '+
               ' Fatpe2.DteRes = fatped.DteRes   and '+
               ' Fatpe2.NumRes = fatped.NumRes '+ sFiltro;
       clipboard.astext:=text;
       ExecSQL;

  end;
 }

   with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR20 (SEQARQ, CODCLI, CODVEN, NUMRES, FLGTAB, DTERES, NRONFS, DTEFAT, DTESDA, DTEENT, CODCLP, CODGRU, CODSUB, CODPRO, ULTQTS, TOTCST, TOTREN, VCSLB2, TOTLB2, VLQLB2, IPIRE2, ICMRE2, CLSIPI, IDEPRO, REFPRO)'+
               ' Select '''+ SeqArq +''','+
               '        PedRes.CodCli,'+
               '        PedRes.CodVen,'+
               '        PedRes.NumRes,'+
               '        PedRes.FlgTab,'+
               '        PedRes.DteRes,'+
               '        PedRes.NumRes,'+
               '        PedRes.DtfRes,'+
               '        PedRes.DteRes,'+
               '        PedRes.DteRes,'+
               '        PedRe2.CodClp,'+
               '        PedRe2.CodGru,'+
               '        PedRe2.CodSub,'+
               '        PedRe2.CodPro,'+
               '        PedRe2.QtpRe2,'+
               '        PedRe2.TotCst,'+
               '        PedRe2.TotRen,'+
               '        PedRe2.VcsRe2,'+
               '        Round(PedRe2.VlqRe2 * PedRe2.QTPRe2,4) as TotRe2,'+
               '        Round(PedRe2.VlqRe2 - PedRe2.VdrRe2,4) as VlqRe2, '+
               '        pedre2.ipire2,'+
               '        pedre2.icmre2,'+
               '        cast(pedre2.clsipi as char(30))AS CLSIPI,'+
               ' Cast((select idepro from estpro where codgru = PEDRE2.codgru and codsub = PEDRE2.codsub and codpro = PEDRE2.codpro and codclp = pedre2.codclp)as char(30))as IDEPRO, '+
               ' (select refpro from estpro where codgru = PEDRE2.codgru and codsub = PEDRE2.codsub and codpro = PEDRE2.codpro and codclp = pedre2.codclp)as REFPRO '+
               ' From PedRe2,PedRes'+
               ' Where PedRe2.CodEmp = PedRes.CodEmp'+
               '   and PedRe2.DteRes = PedRes.DteRes'+
               '   and PedRe2.NumRes = PedRes.NumRes'+ sFiltro;
//       clipboard.astext:=text;
    if DebugHook > 0 then
      clipboard.astext := 'Select 0001'+#10#13+quSQL.SQL.Text;
       ExecSQL;

  end;

  with PedRe2,SQL do begin

       Close;
       Text := ' Select PedR20.*,'+
               '        EstPro.NumPro,'+
               '        CAST((IntStrZeros(PedR20.CodVen,7)||'''+ '-' +'''||FinVen.ApeVen||'''+ '' +'''||'''+ '' +'''||'''+ '' +'''||'''+ '' +''')as varchar(100)) as ApeVen,'+
               '        CAST((IntStrZeros(PedR20.CodCli,7)||'''+ '-' +'''||FinCli.NomCli||'''+ '' +'''||'''+ '' +'''||'''+ '' +'''||'''+ '' +''')as varchar(100)) as NomCli,'+
               '        CAST((PedR20.CodGru||'''+ '.' +'''||PedR20.CodSub||'''+ '.' +'''||PedR20.CodPro||'''+ '-' +'''||EstPro.DscPro)as varchar(100)) as CodIte'+
               ' From PedR20 LEFT JOIN EstPro ON (PedR20.CodClp = EstPro.CodClp)'+
               '                             AND (PedR20.CodGru = EstPro.CodGru)'+
               '                             AND (PedR20.CodSub = EstPro.CodSub)'+
               '                             AND (PedR20.CodPro = EstPro.CodPro)'+
               '             LEFT JOIN FinVen ON (PedR20.CodVen = FinVen.CodVen)'+
               '             LEFT JOIN FinCli ON (PedR20.CodCli = FinCli.CodCli) Where PedR20.SeqArq = '''+ SeqArq +'''';

    if DebugHook > 0 then
      clipboard.astext := 'Select 0002'+#10#13+quSQL.SQL.Text;

       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR20 Where PedR20.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  grRe2.FullExpand;

  grRe2.SetFocus;

end;

procedure TfmPedR124.FormShow(Sender: TObject);
begin
  inherited;

  EdCodClp.Text := '1';

  EdNomClp.Text := 'ACABADO';

  EdCodCli.SetFocus;

  if GCodVen_Id > 0 then
  begin

    EdNomVen.Text := GNomVen_Id;
    EdCodVen.Text := IntToStr(GCodVen_Id);

    if GGus_Id <> 1 then
    begin

      bPsqVen.Enabled := False;

      EdCodVen.Enabled := False;

      EdCodVen.Font.Style := [fsBold];

      grRe2.ColumnByFieldName('TOTLB2').Visible := False;

    end;
  end;

end;

procedure TfmPedR124.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR124.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;
                                                                                                                             
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : '+ EdCodCli.Text + ' - ' + EdNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Programados para o Periodo de : '+ EdDteFat1.Text + ' a ' + EdDteFat2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR124.grRe2ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR124.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Perfil de Consumo - Pedidos.htm', grRe2.SaveToHTML);
end;

procedure TfmPedR124.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Perfil de Consumo - Pedidos.xls', grRe2.SaveToXLS);
end;

procedure TfmPedR124.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Perfil de Consumo - Pedidos.xml', grRe2.SaveToXML);
end;

procedure TfmPedR124.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdNomCli.Text := fmAuxIni.NomCli;
        EdCodCli.Text := IntToStr( fmAuxIni.CodCli );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodCli.Text ) <> '' then EdCodVen.SetFocus;

end;

procedure TfmPedR124.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCli From FinCli '+
                  ' Where CodCli = '''+EdCodCli.Text+'''';
          Open;

          EdNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdNomCli.Text := '';
end;

procedure TfmPedR124.EdCodCliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR124.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdCodClp.Text := fmAuxIni.CodClp;
        EdNomClp.Text := fmAuxIni.NomClp;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmPedR124.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+EdCodClp.Text+'''';
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmPedR124.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

end;

procedure TfmPedR124.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+EdCodGru.Text+'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmPedR124.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

end;

procedure TfmPedR124.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+EdCodGru.Text+''''+
                  '   and CodSub = '''+EdCodSub.Text+'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdCodSub);

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmPedR124.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodSub.Text ) <> '' then fmAuxIni.CodGru := EdCodSub.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

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
  
  if Trim( EdCodPro.Text ) <> '' then bPesquisa.SetFocus;

end;

procedure TfmPedR124.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodPro.Text ) <> '' then begin

     EdCodPro.Text := FNumStrZero(EdCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdCodClp.Text;
               Params[1].AsString := EdCodGru.Text;
               Params[2].AsString := EdCodSub.Text;
               Params[3].AsString := EdCodPro.Text;

          end;

          Open;

     end;

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then
        EdNomPro.Text := quSql.FieldByName('DscPro').AsString
     else
        fmsgErro('Item Informado não Encontrado.',EdCodPro);

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmPedR124.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );

     fmAuxIni.TipoPesq := 'Tipo';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodTip > 0 then begin

        EdNomTip.Text := fmAuxIni.NomTip;
        EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodTip.Text ) <> '' then EdCodMrc.SetFocus;

end;

procedure TfmPedR124.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip Where CodTip = '''+ EdCodTip.Text +'''';
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmPedR124.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Categoria';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCat > 0 then begin

        EdNomCat.Text := fmAuxIni.NomCat;
        EdCodCat.Text := IntToStr( fmAuxIni.CodCat );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodCat.Text ) <> '' then EdCodTip.SetFocus;

end;

procedure TfmPedR124.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat Where CodCat = '''+ EdCodCat.Text +'''';
          Open;

          EdNomCat.Text := FieldByName('NomCat').AsString;

     end;

     end
  else
     EdNomCat.Text := '';
end;

procedure TfmPedR124.bPsqMrcClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );

     fmAuxIni.TipoPesq := 'Marca';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodMrc > 0 then begin

        EdNomMrc.Text := fmAuxIni.NomMrc;
        EdCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodMrc.Text ) <> '' then EdCodClp.SetFocus;

end;

procedure TfmPedR124.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc Where CodMrc = '''+ EdCodMrc.Text +'''';
          Open;

          EdNomMrc.Text := FieldByName('NomMrc').AsString;

     end;

     end
  else
     EdNomMrc.Text := '';
end;

procedure TfmPedR124.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdNomVen.Text := fmAuxIni.NomVen;
        EdCodVen.Text := IntToStr( fmAuxIni.CodVen );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodVen.Text ) <> '' then EdCodCat.SetFocus;

end;

procedure TfmPedR124.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Categoria';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCat > 0 then begin

           EdNomCat.Text := fmAuxIni.NomCat;
           EdCodCat.Text := IntToStr( fmAuxIni.CodCat );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodCat.Text ) <> '' then EdCodTip.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );

        fmAuxIni.TipoPesq := 'Tipo';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTip > 0 then begin

           EdNomTip.Text := fmAuxIni.NomTip;
           EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if Trim( EdCodTip.Text ) <> '' then EdCodMrc.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );

        fmAuxIni.TipoPesq := 'Marca';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodMrc > 0 then begin

           EdNomMrc.Text := fmAuxIni.NomMrc;
           EdCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodMrc.Text ) <> '' then EdCodClp.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           EdCodClp.Text := fmPsqClp.CodClp;
           EdNomClp.Text := fmPsqClp.NomClp;

        end;

     finally

        FreeAndNil(fmPsqClp);

     end;
     
     if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxIni.CodGru;
           EdNomGru.Text := fmAuxIni.NomGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
        
     if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

            EdCodGru.Text := fmAuxPsq.CodGru;
            EdNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxIni.CodGru;
           EdNomGru.Text := fmAuxIni.NomGru;
           EdCodSub.Text := fmAuxIni.CodSub;
           EdNomSub.Text := fmAuxIni.NomSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
     
     if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;
        fmAuxIni.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

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
     
     if Trim( EdCodPro.Text ) <> '' then EdDteFat1.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;
        fmAuxPsq.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

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
     
     if Trim( EdCodPro.Text ) <> '' then EdDteFat1.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdNomCli.Text := fmAuxIni.NomCli;
           EdCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdNomCli.Text := fmAuxPsq.NomCli;
           EdCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
     
     EdCodCli.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdNomVen.Text := fmAuxIni.NomVen;
           EdCodVen.Text := IntToStr( fmAuxIni.CodVen );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if Trim( EdCodVen.Text ) <> '' then EdCodCat.SetFocus;

  end;
end;

procedure TfmPedR124.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select ApeVen From FinVen Where CodVen = '''+ EdCodVen.Text +'''';
          Open;

          EdNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdNomVen.Text := '';
end;

procedure TfmPedR124.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR124.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR124 := nil;
end;

procedure TfmPedR124.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR124.grRe2);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.

