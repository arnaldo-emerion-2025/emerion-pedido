program EComercial;

uses
  Sharemem,
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  Fpadrao in '..\..\..\..\_WGLIB\padrao\Fpadrao.pas' {fmPadrao},
  FMensag in '..\..\..\..\_WGLIB\padrao\FMensag.pas' {fmMensag},
  FShowpadrao in '..\..\..\..\_WGLIB\padrao\FShowpadrao.pas' {fmShowPadrao},
  ManPri in 'ManPri.pas' {fmManPri},
  PsqBar in '..\..\..\..\_WGLIB\PadraoPsq\PsqBar.pas' {fmPsqBar},
  ManCli in '..\..\Financeiro\Emerion\ManCli.pas' {fmManCli},
  ManAbc in '..\..\Financeiro\Emerion\ManAbc.pas' {fmManAbc},
  ManVen in '..\..\Financeiro\Emerion\ManVen.pas' {fmManVen},
  ManTra in '..\..\Financeiro\Emerion\ManTra.pas' {fmManTra},
  GCli01 in '..\..\Financeiro\Emerion\GCli01.pas' {fmGCli01},
  GCli01d in '..\..\Financeiro\Emerion\GCli01d.pas' {fmGCli01d},
  CCli02 in '..\..\Financeiro\Emerion\CCli02.pas' {fmCCli02},
  CRec08 in '..\..\Financeiro\Emerion\CRec08.pas' {fmCRec08},
  GVen02 in '..\..\Financeiro\Emerion\GVen02.pas' {fmGVen02},
  GVen02d in '..\..\Financeiro\Emerion\GVen02d.pas' {fmGVen02d},
  GVen03 in '..\..\Financeiro\Emerion\GVen03.pas' {fmGVen03},
  GVen03d in '..\..\Financeiro\Emerion\gven03d.pas' {fmGVen03d},
  GCli02 in '..\..\Financeiro\Emerion\GCli02.pas' {fmGCli02},
  GCli02d in '..\..\Financeiro\Emerion\gcli02d.pas' {fmGCli02d},
  RCli02 in '..\..\Financeiro\Emerion\RCli02.pas' {fmRCli02},
  ManCpe in 'ManCpe.pas' {fmManCpe},
  ManCon in 'ManCon.pas' {fmManCon},
  ManCpg in 'ManCpg.pas' {fmManCpg},
  ManCt2 in 'ManCt2.pas' {fmManCt2},
  ManCt3 in 'ManCt3.pas' {fmManCt3},
  ManCta in 'ManCta.pas' {fmManCta},
  ManEm1 in 'ManEm1.pas' {fmManEm1},
  ManEm2 in 'ManEm2.pas' {fmManEm2},
  ManEm3 in 'ManEm3.pas' {fmManEm3},
  ManFin in 'ManFin.pas' {fmManFin},
  ManFpe in 'ManFpe.pas' {fmManFpe},
  ManLcc in 'ManLcc.pas' {fmManLcc},
  ManLco in 'ManLco.pas' {fmManLco},
  ManLge in 'ManLge.pas' {fmManLge},
  ManLib in 'ManLib.pas' {fmManLib},
  ManLpe in 'ManLpe.pas' {fmManLpe},
  ManLpg in 'ManLpg.pas' {fmManLpg},
  ManLpr in 'ManLpr.pas' {fmManLpr},
  ManLre in 'ManLre.pas' {fmManLre},
  ManObp in 'ManObp.pas' {fmManObp},
  ManPag in 'ManPag.pas' {fmManPag},
  ManPar in 'ManPar.pas' {fmManPar},
  ManPe1 in 'ManPe1.pas' {fmManPe1},
  ManPe2 in 'ManPe2.pas' {fmManPe2},
  ManPe3 in 'ManPe3.pas' {fmManPe3},
  ManPec in 'ManPec.pas' {fmManPec},
  ManPed in 'ManPed.pas' {fmManPed},
  ManCc2 in 'ManCc2.pas' {fmManCc2},
  ManPrm in 'manprm.pas' {fmManPrm},
  ManRes in 'ManRes.pas' {fmManRes},
  ManSep in 'ManSep.pas' {fmManSep},
  ManSer in 'ManSer.pas' {fmManSer},
  ManUfe in 'manufe.pas' {fmManUfe},
  PedC22 in 'PedC22.pas' {fmPedC22},
  PedR01 in 'PedR01.pas' {fmPedR01},
  PedR02 in 'pedr02.pas' {fmPedR02},
  PedR03 in 'pedr03.pas' {fmPedR03},
  PedR04 in 'pedr04.pas' {fmPedR04},
  PedR29 in 'PedR29.pas' {fmPedR29},
  PedR06 in 'PedR06.pas' {fmPedR06},
  PedR07 in 'PedR07.pas' {fmPedR07},
  PedR08 in 'PedR08.pas' {fmPedR08},
  PedR09 in 'PedR09.pas' {fmPedR09},
  PedR10 in 'PedR10.pas' {fmPedR10},
  PedR14 in 'PedR14.pas' {fmPedR14},
  PedR15 in 'PedR15.pas' {fmPedR15},
  PedR16 in 'PedR16.pas' {fmPedR16},
  PedR17 in 'PedR17.pas' {fmPedR17},
  PedR18 in 'PedR18.pas' {fmPedR18},
  PedR19 in 'PedR19.pas' {fmPedR19},
  PedR23 in 'PedR23.pas' {fmPedR23},
  PedR21 in 'PedR21.pas' {fmPedR21},
  PedR22 in 'PedR22.pas' {fmPedR22},
  PsqCmp in 'PsqCmp.pas' {fmPsqCmp},
  PsqHreCta in 'PsqHreCta.pas' {fmPsqHreCta},
  PsqCpe in 'PsqCpe.pas' {fmPsqCpe},
  PsqCre in 'PsqCre.pas' {fmPsqCre},
  PsqCrp in 'PsqCrp.pas' {fmPsqCrp},
  PsqEnp in 'PsqEnp.pas' {fmPsqEnp},
  PsqEnt in 'PsqEnt.pas' {fmPsqEnt},
  PsqFat in 'psqfat.pas' {fmPsqFat},
  PsqIcm in 'PsqIcm.pas' {fmPsqIcm},
  PsqMfp in 'PsqMfp.pas' {fmPsqMfp},
  PsqOc3 in 'PsqOc3.pas' {fmPsqOc3},
  PsqOc4 in 'PsqOc4.pas' {fmPsqOc4},
  PsqOcc in 'psqocc.pas' {fmPsqOcc},
  PsqOco in 'psqoco.pas' {fmPsqOco},
  PsqOrc in 'psqorc.pas' {fmPsqOrc},
  PsqPco in 'PsqPco.pas' {fmPsqPco},
  PsqPed in 'PsqPed.pas' {fmPsqPed},
  PsqRej in 'PsqRej.pas' {fmPsqRej},
  PsqUve in 'PsqUve.pas' {fmPsqUve},
  PsqTab in 'PsqTab.pas' {fmPsqTab},
  PedR20 in 'PedR20.pas' {fmPedR20},
  PsqCod in '..\..\..\..\_WGLIB\PadraoPsq\PsqCod.pas' {fmPsqCod},
  PsqCde in '..\..\..\..\_WGLIB\PadraoPsq\PsqCde.pas' {fmPsqCde},
  PsqEst in '..\..\..\..\_WGLIB\PadraoPsq\PsqEst.pas' {fmPsqEst},
  ManObs in 'ManObs.pas' {fmManObs},
  ManTrf in 'ManTrf.pas' {fmManTrf},
  ManEma in 'ManEma.pas' {fmManEma},
  ManPsq in '..\..\Financeiro\Emerion\ManPsq.pas' {fmManPsq},
  PedR24_1 in 'PedR24_1.pas' {fmPedR24_1},
  CmpR14 in 'CmpR14.pas' {fmCmpR14},
  PsqCpd in 'PsqCpd.pas' {fmPsqCpd},
  PedR25 in 'PedR25.pas' {fmPedR25},
  ManMkp in 'ManMkp.pas' {fmManMkp},
  ManCco in 'ManCco.pas' {fmManCco},
  ManPre in 'ManPre.pas' {fmManPre},
  VerUsu in '..\..\..\..\_WGLIB\padrao\VerUsu.pas' {fmVerUsu},
  ManTSe in '..\..\..\..\_WGLIB\padrao\ManTse.pas' {fmManTSe},
  ManTUs in '..\..\..\..\_WGLIB\padrao\ManTUs.pas' {fmManTUs},
  ManCom in 'ManCom.pas' {fmManCom},
  ManLog in '..\..\..\..\_WGLIB\padrao\ManLog.pas' {fmManLog},
  PsqEs2 in 'PsqEs2.pas' {fmPsqEs2},
  ManApl in 'ManApl.pas' {fmManApl},
  PedR26 in 'PedR26.pas' {fmPedR26},
  PedR12 in 'PedR12.pas' {fmPedR12},
  ManCol in '..\..\Estoque\Emerion\ManCol.pas' {fmManCol},
  PsqRes in 'PsqRes.pas' {fmPsqRes},
  PedR05 in 'PedR05.pas' {fmPedR05},
  ManGr1 in '..\..\Financeiro\Emerion\ManGr1.pas' {fmManGr1},
  ManGr2 in '..\..\Financeiro\Emerion\ManGr2.pas' {fmManGr2},
  PedR28 in 'PedR28.pas' {fmPedR28},
  PedR30 in 'PedR30.pas' {fmPedR30},
  ManEm9 in 'ManEm9.pas' {fmManEm9},
  ManPs2 in '..\..\Financeiro\Emerion\ManPs2.pas' {fmManPs2},
  ManCbl in '..\..\Financeiro\Emerion\ManCbl.pas' {fmManCbl},
  ManCal in '..\..\Financeiro\Emerion\ManCal.pas' {fmManCal},
  PsqCbl in '..\..\Financeiro\Emerion\PsqCbl.pas' {fmPsqCbl},
  PsqCal in '..\..\Financeiro\Emerion\PsqCal.pas' {fmPsqCal},
  ManE16 in 'ManE16.pas' {fmManE16},
  ManEm6 in '..\Esco\ManEm6.pas' {fmManEm6},
  ManDesc1 in 'ManDesc1.pas' {fmManDesc1},
  ManPe4 in '..\dualcomp\ManPe4.pas' {fmManPe4},
  ManEm5 in '..\dualcomp\ManEm5.pas' {fmManEm5},
  ManE10 in 'ManE10.pas' {fmManE10},
  ManCtaDesc1 in 'ManCtaDesc1.pas' {fmManCtaDesc1},
  ManGDB in '..\..\..\..\_wglib\padrao\ManGDB.pas' {fmManGDB: TDataModule},
  ManViaSep in 'ManViaSep.pas' {fmManViaSep},
  ManOBSCli in '..\..\cobranca\dualcomp\ManOBSCli.pas' {fmManOBSCli},
  DM_Imprint in '..\almerco\DM_Imprint.pas' {fmDM_Imprint: TDataModule},
  ManEm10 in 'ManEm10.pas',
  PedR32 in 'PedR32.pas' {fmPedR32},
  ManVisuRegras in 'ManVisuRegras.pas' {FmManVisuRegras},
  ManPfa_GERAL in '..\..\fatura\Dualcomp - DISN\Nota Fiscal\Calma_Geral\ManPfa_GERAL.pas' {man},
  ManIcm in 'ManIcm.pas' {fmManIcm},
  manRelVendaPorVendedor in '..\..\fatura\Dualcomp - DISN\Nota Fiscal\manRelVendaPorVendedor.pas' {frmRelVendaPorVendedor},
  EmaPed in 'EMAPED.pas' {fmEmaPed},
  ManImpCtaNovoSemDesc in 'ManImpCtaNovoSemDesc.pas' {fmManImpCtaNovoSemDesc},
  ManImpPedNovoSemDesc in 'ManImpPedNovoSemDesc.pas' {fmManImpPedNovoSemDesc},
  Bbfuncao in '..\..\..\..\_wglib\lib\Bbfuncao.pas',
  ManIpi in '..\..\estoque\dualcompSN\ManIpi.pas' {fmManIpi},
  ManCt3Msg in 'ManCt3Msg.pas' {fmManCt3Msg},
  ManImpPedNovo in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\ManImpPedNovo.pas' {fmManImpPedNovo},
  ManImpCtaNovo in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\ManImpCtaNovo.pas' {fmManImpCtaNovo},
  ManImpCtaReduz in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\ManImpCtaReduz.pas' {fmManImpCtaReduz},
  PedR24 in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\PedR24.pas' {fmPedR24},
  PsqEs3 in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\PsqEs3.pas' {fmPsqEs3},
  PedR20_Cta in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\PedR20_Cta.pas' {fmPedR20_Cta},
  PedR20_CtaSint in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\PedR20_CtaSint.pas' {fmPedR20_CtaSint},
  ManImpCtaNovoSemDesc_Red in 'ManImpCtaNovoSemDesc_Red.pas' {fmManImpCtaNovoSemDesc_Red},
  ManE03_1 in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\ManE03_1.pas' {fmManE03_1},
  PsqHre in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\PsqHre.pas' {fmPsqHre},
  ManAltLimCli in '\\192.168.5.100\fontes\_wgsys\emerion\financeiro\emerion\ManAltLimCli.pas' {fmAltLimCli},
  manHistCliDev in '\\192.168.5.100\fontes\_wgsys\emerion\financeiro\emerion\manHistCliDev.pas' {fmManHistCliDev},
  uLogEststr in '\\192.168.5.100\fontes\_wgsys\emerion\estoque\dualcompSN\uLogEststr.pas' {fmLogST},
  uOcorrenciasPed in 'uOcorrenciasPed.pas' {fmOcorrencias},
  uValidacao in '..\..\..\..\_wglib\lib\uValidacao.pas',
  ManStr2 in '\\192.168.5.100\fontes\_wgsys\emerion\estoque\dualcompSN\ManStr2.pas' {fmManStr2},
  ObsCli in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\ObsCli.pas' {fmObsCli},
  ManCt5 in 'ManCt5.pas' {fmManCt5},
  PsqQtdUnificado in 'PsqQtdUnificado.pas' {frmPsqQtdUnificado},
  manLogSep in 'manLogSep.pas' {fmManLogSep},
  uImpressao in '..\..\..\..\_wglib\lib\uImpressao.pas',
  uRelStr in 'uRelStr.pas' {frmRelStr},
  uMsg in '\\192.168.5.100\fontes\_wglib\lib\uMsg.pas',
  MsgUser in '\\192.168.5.100\fontes\_wglib\lib\MsgUser.pas';


{$R *.RES}
var
  sAlias: string;
  HprevHist: HWND;

begin

  Application.Initialize;

  if not FileExists('C:\Windows\Emerion.prg') then
    HprevHist := FindWindow(nil, 'Emerion Comercial')
  else
    HprevHist := 0;

  if HprevHist = 0 then
  begin

    Application.Title := 'Emerion Comercial';
    {
    try

      fmManApl := TFmManApl.Create(Application);
      fmManApl.Show;
      fmManApl.Refresh;
      sAlias := fmManApl.sAlias;

    finally

      FreeAndNil(fmManApl);

    end;
    }
    sAlias:= 'S';
    if sAlias = 'S' then
    begin
      Application.CreateForm(TfmManGDB, fmManGDB);
      Application.CreateForm(TfmManPri, fmManPri);

      fmManPri.Top := 0;
      Application.CreateForm(TfmDM_Imprint, fmDM_Imprint);
    end;

    Application.Run;

  end
  else
    MessageDlg('Existe uma Cópia do Aplicativo em Execução no Momento.', mtInformation, [mbOK], 0);

end.

