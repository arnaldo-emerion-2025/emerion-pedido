//No grid não mudar a informação do total do item na linha de modificação.
//No grid informa total com impostos e na linha de modificação informa total puro.
//Segundo Sergio.

unit ManPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, AlignEdit, ComCtrls, hNavigator, Buttons,
  Mask, hEdits, FlEdit, Db, DBTables, Wwquery, Wwdatsrc, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, wwdbdatetimepicker, wwdblook, DBCtrls, DBFlEdit, wwriched,
  jpeg, wwdbedit, Wwdotdot, Wwdbcomb, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxfCheckBox, Menus, dxDBEdtr, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorEdit, dxDBColorCurrencyEdit, Math, clipbrd,
  DBGrids, dxDBColorLookupEdit, MsgUser;

type
  TfmManPed = class(TfmPadrao)
    DsRes: TDataSource;
    DsRe2: TDataSource;
    UpRes: TUpdateSQL;
    UpRe2: TUpdateSQL;
    quSql: TwwQuery;
    Panel1: TPanel;
    PedRe2: TwwQuery;
    pnEstoque: TPanel;
    Panel10: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label30: TLabel;
    Label36: TLabel;
    Panel5: TPanel;
    EdSldIte: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    EdQtrIte: TPanel;
    EdQtdIte: TPanel;
    EdQtaIte: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label53: TLabel;
    Panel14: TPanel;
    Panel16: TPanel;
    Label18: TLabel;
    Label58: TLabel;
    Panel17: TPanel;
    EdQtdEmb: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    EdQtdRma: TPanel;
    Label51: TLabel;
    Label61: TLabel;
    Label69: TLabel;
    UpRe2Fec: TUpdateSQL;
    PaintBox: TPaintBox;
    Panel2: TPanel;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODEIT: TIntegerField;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2CODTAM: TStringField;
    PedRe2CODCOR: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2OBSRE2: TStringField;
    PedRe2CODST1: TStringField;
    PedRe2CODST2: TStringField;
    PedRe2CODUND: TStringField;
    PedRe2REFRE2: TStringField;
    PedRe2LIQRE2: TFloatField;
    PedRe2BRTRE2: TFloatField;
    PedRe2LINRE2: TIntegerField;
    PedRe2TABPRC: TIntegerField;
    PedRe2CODPRM: TIntegerField;
    PedRe2SEQPR2: TIntegerField;
    PedRe2QTPRE2: TFloatField;
    PedRe2QTSRE2: TFloatField;
    PedRe2QTFRE2: TFloatField;
    PedRe2QTDRE2: TFloatField;
    PedRe2QTDEMB: TFloatField;
    PedRe2ULTQTS: TFloatField;
    PedRe2SLDRE2: TFloatField;
    PedRe2VLURE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2CSTRE2: TFloatField;
    PedRe2VCHRE2: TFloatField;
    PedRe2VRERE2: TFloatField;
    PedRe2VCRRE2: TFloatField;
    PedRe2VCPRE2: TFloatField;
    PedRe2VPRRE2: TFloatField;
    PedRe2CSTCST: TFloatField;
    PedRe2VCHCST: TFloatField;
    PedRe2VRECST: TFloatField;
    PedRe2VCRCST: TFloatField;
    PedRe2VCPCST: TFloatField;
    PedRe2VPRCST: TFloatField;
    PedRe2VCSRE2: TFloatField;
    PedRe2DSCRE2: TFloatField;
    PedRe2VDSRE2: TFloatField;
    PedRe2DSPRE2: TFloatField;
    PedRe2VDPRE2: TFloatField;
    PedRe2DSRRE2: TFloatField;
    PedRe2VDRRE2: TFloatField;
    PedRe2PACRE2: TFloatField;
    PedRe2VACRE2: TFloatField;
    PedRe2DSCCOM: TFloatField;
    PedRe2VDSCOM: TFloatField;
    PedRe2CODCOM: TStringField;
    PedRe2PCORE2: TFloatField;
    PedRe2IPIRE2: TFloatField;
    PedRe2CLSIPI: TStringField;
    PedRe2CLFRE2: TStringField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTVEN: TFloatField;
    PedRe2TOTCST: TFloatField;
    PedRe2BASIPI: TFloatField;
    PedRe2TOTIPI: TFloatField;
    PedRe2BASICM: TFloatField;
    PedRe2TOTICM: TFloatField;
    PedRe2BASSUB: TFloatField;
    PedRe2TOTSUB: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    PedRe2TOTLIQ: TFloatField;
    PedRe2TOTBRT: TFloatField;
    PedRe2BASCOM: TFloatField;
    PedRe2TOTCOM: TFloatField;
    PedRe2TOTDSC: TFloatField;
    PedRe2TOTDSR: TFloatField;
    PedRe2TOTDSP: TFloatField;
    PedRe2TOTACR: TFloatField;
    PedRe2TOTDCO: TFloatField;
    PedRe2CODSTR: TStringField;
    PedRe2TIPSTR: TStringField;
    PedRe2REGIPI: TStringField;
    PedRe2TIPIPI: TStringField;
    PedRe2TRBIPI: TStringField;
    PedRe2REDIPI: TFloatField;
    PedRe2BSCIPI: TFloatField;
    PedRe2REGICM: TStringField;
    PedRe2TIPICM: TStringField;
    PedRe2TRBICM: TStringField;
    PedRe2REDICM: TFloatField;
    PedRe2BSCICM: TFloatField;
    PedRe2INCREV: TFloatField;
    PedRe2INCFIN: TFloatField;
    PedRe2EMPGER: TIntegerField;
    PedRe2DTEGER: TDateTimeField;
    PedRe2NUMGER: TIntegerField;
    PedRe2SEQGR2: TIntegerField;
    PedRe2SEQGR3: TIntegerField;
    PedRe2PEDCLI: TStringField;
    PedRe2FLASEQ: TStringField;
    PedRe2FLGRES: TStringField;
    PedRe2FLGREQ: TStringField;
    PedRe2FLGDUP: TStringField;
    PedRe2CODVWA: TStringField;
    PedRe2NRORE2: TIntegerField;
    PedRe2VMERE2: TFloatField;
    PedRe2VPFRE2: TFloatField;
    PedRe2VMECST: TFloatField;
    PedRe2VPFCST: TFloatField;
    PedRe2DSCPER: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGLIB: TStringField;
    PedRe2CODTIP: TIntegerField;
    PedRe2CODCAT: TIntegerField;
    PedRe2CODMRC: TIntegerField;
    PedRe2MESRES: TStringField;
    PedRe2ANORES: TIntegerField;
    PedRe2LANCST: TStringField;
    PedRe2VPFOUT: TFloatField;
    PedRe2OUTCST: TFloatField;
    PedRe2BASISS: TFloatField;
    PedRe2TOTISS: TFloatField;
    PedRe2ISSRE2: TFloatField;
    PedRe2FLGPAC: TStringField;
    PedRe2TIPCPA: TStringField;
    PedRe2PCOATD: TFloatField;
    PedRe2BASCAT: TFloatField;
    PedRe2TOTCAT: TFloatField;
    PedRe2EMPENT: TIntegerField;
    PedRe2DTEENT: TDateTimeField;
    PedRe2NUMENT: TIntegerField;
    PedRe2SEQEN2: TIntegerField;
    PedRe2TOTPER: TFloatField;
    PedRe2DIFDSC: TFloatField;
    PedRe2MARPRE: TFloatField;
    PedRe2MARPED: TFloatField;
    PedRe2LUCROL: TFloatField;
    PedRe2LUCROP: TFloatField;
    PedRe2FLGFEC: TStringField;
    PedRe2EMPPED: TIntegerField;
    PedRe2DTEPED: TDateTimeField;
    PedRe2NUMPED: TIntegerField;
    PedRe2SEQPE2: TIntegerField;
    PedRe2CBARE2: TStringField;
    PedRe2TOTIPC: TFloatField;
    PedRe2CODTXF: TStringField;
    PedRe2CODCFO: TStringField;
    PedRe2TRBSUB: TStringField;
    PedRe2ICMSUB: TFloatField;
    PedRe2MRGSUB: TFloatField;
    PedRe2BASESB: TFloatField;
    PedRe2MEDCAT: TFloatField;
    PedRe2ID_PEDRE2: TIntegerField;
    PedRe2ID_PEDRES: TIntegerField;
    PedRe2QTIRE4: TIntegerField;
    PedRe2CSTLAN: TFloatField;
    PedRe2TIPDSC: TStringField;
    PedRe2TIPACR: TStringField;
    PedRe2COMCLI: TFloatField;
    PedRe2VALCLI: TFloatField;
    PedRe2PDPRE2: TFloatField;
    PedRe2PAPRE2: TFloatField;
    PedRe2VAPRE2: TFloatField;
    PedRe2TOTACP: TFloatField;
    PedRe2TOTCLI: TFloatField;
    PedRe2ID_PEDGER: TIntegerField;
    PedRe2ID_PEDGR3: TIntegerField;
    PedRe2FLGMAR: TStringField;
    PedRe2FLGREN: TStringField;
    PedRe2ID_PEDICL: TIntegerField;
    PedRe2ID_PEDCT2: TIntegerField;
    PedRe2NROITE: TIntegerField;
    PedRe2FLGATU: TStringField;
    PedRe2CUBRE2: TFloatField;
    PedRe2TOTCUB: TFloatField;
    PedRe2TOTPIS: TFloatField;
    PedRe2TOTCOF: TFloatField;
    PedRe2CODICL: TStringField;
    PedRe2PRODEP: TStringField;
    PedRe2ID_LOJPE2: TIntegerField;
    PedRe2QTDSEP: TFloatField;
    PedRe2SLDSEP: TFloatField;
    PedRe2FLGFAB: TStringField;
    PedRe2QTDFAB: TFloatField;
    PedRe2SLDFAB: TFloatField;
    PedRe2TOTFRT: TFloatField;
    PedRe2BASPIS: TFloatField;
    PedRe2ALIQPIS: TFloatField;
    PedRe2BASCOF: TFloatField;
    PedRe2ALIQCOF: TFloatField;
    PedRe2TOTPISZF: TFloatField;
    PedRe2TOTCOFZF: TFloatField;
    PedRe2CSTPIS: TStringField;
    PedRe2CSTCOF: TStringField;
    PedRe2CSTIPI: TStringField;
    Label23: TLabel;
    GroupBox8: TGroupBox;
    Label56: TLabel;
    bpsqEmp: TSpeedButton;
    EdCodEmp: TdxDBColorEdit;
    Label37: TLabel;
    pnNumRes: TPanel;
    Label29: TLabel;
    EdNumRes: TdxDBColorEdit;
    EdNomEmp: TdxDBColorEdit;
    EdDteREs: TdxDBColorDateEdit;
    pnFlgOco: TPanel;
    EdFlgOco: TdxDBColorEdit;
    GroupBox9: TGroupBox;
    Label38: TLabel;
    bpsqCli: TSpeedButton;
    Label54: TLabel;
    Label55: TLabel;
    EdCgcCli: TdxDBColorEdit;
    EdUfeRes: TdxDBColorEdit;
    EdNomCli: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    pnUfeRes: TPanel;
    pnCgcCli: TPanel;
    Label39: TLabel;
    Label46: TLabel;
    Label50: TLabel;
    Label03: TLabel;
    Label1: TLabel;
    bpsqVen: TSpeedButton;
    Label70: TLabel;
    EdTotRen: TdxDBColorCurrencyEdit;
    EdLimite: TdxDBColorCurrencyEdit;
    EdNomVen: TdxDBColorEdit;
    EdNomAtd: TdxDBColorEdit;
    EdCodVen: TdxDBColorEdit;
    EdCodAtd: TdxDBColorEdit;
    pnNomAtd: TPanel;
    pnNomVen: TPanel;
    pnLimite: TPanel;
    pnTotRen: TPanel;
    EdPedAnt: TdxDBColorPickEdit;
    GroupBox10: TGroupBox;
    Label40: TLabel;
    bpsqPfa: TSpeedButton;
    EdCodPfa: TdxDBColorEdit;
    pnNomEmp: TPanel;
    GroupBox7: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdDscReg: TdxDBColorCurrencyEdit;
    EdDscCom: TdxDBColorCurrencyEdit;
    GroupBox13: TGroupBox;
    Label42: TLabel;
    Label47: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    dxDBColorCurrencyEdit26: TdxDBColorCurrencyEdit;
    edFrete: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit28: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit29: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit30: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit31: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit32: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit33: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit34: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit35: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit36: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit37: TdxDBColorCurrencyEdit;
    EdNomPfa: TdxEdit;
    PedRe2TOTSEG: TFloatField;
    PedRe2TOTOUTDESP: TFloatField;
    PedRe2TOTDESCINC: TFloatField;
    Panel3: TPanel;
    grRe2: TDBGrid;
    CFOP: TwwQuery;
    CFOPCODCFO: TStringField;
    CFOPDESCFO: TMemoField;
    CFOPAPLCFO: TMemoField;
    dsCFOP: TwwDataSource;
    PedRe2REDSUB: TFloatField;
    pnIniPro: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpRe2: TdxDBColorCurrencyEdit;
    EdVluRe2: TdxDBColorCurrencyEdit;
    EdDscRe2: TdxDBColorCurrencyEdit;
    EdCodUnd: TdxDBColorEdit;
    EdVlqRe2: TdxDBColorCurrencyEdit;
    EdTotRe2: TdxDBColorCurrencyEdit;
    EdDspRe2: TdxDBColorCurrencyEdit;
    dxDBColorEdit8: TdxDBColorEdit;
    edNCM: TdxDBColorEdit;
    edCFOP: TdxDBColorLookupEdit;
    PedRe2REGSUB: TStringField;
    PedRe2NUMPEDCOMPRA: TStringField;
    PedRe2NUMITEMCOMPRA: TIntegerField;
    PedRe2TOTICMSN: TFloatField;
    PedRe2ICMRE2SN: TFloatField;
    PedRe2TOTVOL: TIntegerField;
    PedRe2VOLRE2: TFloatField;
    PedRe2ALIQPIS_ZF: TFloatField;
    PedRe2ALIQCOF_ZF: TFloatField;
    PedRe2FLG_DESC_ZF_PIS: TStringField;
    PedRe2FLG_DESC_ZF_COF: TStringField;
    PedRe2CLSIPI_1: TStringField;
    Label12: TLabel;
    Label88: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    pnNroRe2: TPanel;
    GroupBox3: TGroupBox;
    Label73: TLabel;
    Label75: TLabel;
    Label81: TLabel;
    Label6: TLabel;
    dxDBColorCurrencyEdit5: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit6: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit;
    dxDBColorEdit2: TdxDBColorEdit;
    dxDBColorEdit7: TdxDBColorEdit;
    edCodSt2: TdxDBLookupEdit;
    dxDBColorCurrencyEdit20: TdxDBColorCurrencyEdit;
    GroupBox4: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label11: TLabel;
    Label33: TLabel;
    dxDBColorCurrencyEdit12: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit14: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit15: TdxDBColorCurrencyEdit;
    edCodIPI: TdxDBLookupEdit;
    co: TGroupBox;
    Label67: TLabel;
    Label71: TLabel;
    Label14: TLabel;
    Label31: TLabel;
    Label17: TLabel;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit21: TdxDBColorCurrencyEdit;
    GroupBox2: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label15: TLabel;
    Label32: TLabel;
    dxDBColorCurrencyEdit8: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit9: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit10: TdxDBColorCurrencyEdit;
    edCodPIS: TdxDBLookupEdit;
    GroupBox5: TGroupBox;
    Label86: TLabel;
    Label87: TLabel;
    Label16: TLabel;
    Label35: TLabel;
    dxDBColorCurrencyEdit17: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit18: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit19: TdxDBColorCurrencyEdit;
    edCodCOF: TdxDBLookupEdit;
    GroupBox12: TGroupBox;
    Label34: TLabel;
    Label66: TLabel;
    EdTotDsr: TdxDBColorCurrencyEdit;
    edFrt: TdxDBColorCurrencyEdit;
    pnTotMk2: TPanel;
    edPedCompra: TdxDBColorEdit;
    edItemCompra: TdxDBColorEdit;
    Panel15: TPanel;
    EdDesRe2: TdxDBColorEdit;
    EdObsRe2: TdxDBColorEdit;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label63: TLabel;
    Label26: TLabel;
    EdTotRes: TdxDBColorCurrencyEdit;
    EdTotSub: TdxDBColorCurrencyEdit;
    EdTotIpi: TdxDBColorCurrencyEdit;
    EdTotGer: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit25: TdxDBColorCurrencyEdit;
    Label25: TLabel;
    dxDBColorEdit4: TdxDBColorEdit;
    DsTCl: TDataSource;
    FinTCl: TQuery;
    FinTClCODTCL: TIntegerField;
    FinTClNOMTCL: TStringField;
    PedRe2FLG_SINEIF20: TStringField;
    PedRe2FRTICM: TFloatField;
    PedRe2SEGICM: TFloatField;
    PedRe2DESICM: TFloatField;
    PedRe2FRTIPI: TFloatField;
    PedRe2SEGIPI: TFloatField;
    PedRe2DESIPI: TFloatField;
    PedRe2TOTITETRB: TFloatField;
    PedRe2VALLIQTRB: TFloatField;
    CbNomTCl: TdxDBColorLookupEdit;
    PedRe2TOTGERAL: TFloatField;
    TIPFRT: TwwQuery;
    TIPFRTID: TIntegerField;
    TIPFRTNOMFRT: TStringField;
    dsTipFrt: TDataSource;
    EdFrtRes: TdxDBColorLookupEdit;
    Label64: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    EdCbaRe2: TdxDBColorEdit;
    sbInfo: TStatusBar;
    Label41: TLabel;
    EdDtfRes: TdxDBColorDateEdit;
    EdPrfREs: TdxDBColorEdit;
    FINREGTRIB: TQuery;
    dsREGTRIB: TDataSource;
    FINREGTRIBNUMREGTRIB: TIntegerField;
    FINREGTRIBNOMREGTRIB: TStringField;
    Label74: TLabel;
    dsDesoneracao: TDataSource;
    desoneracao: TQuery;
    desoneracaoID: TIntegerField;
    desoneracaoMOTIVO: TStringField;
    PedRe2FLGNCALC_DIF_MVA: TStringField;
    PedRe2DSCREG: TFloatField;
    PedRe2IS_CTA: TIntegerField;
    PedRe2DSCORGPUBLIC: TFloatField;
    PedRe2VLDORGPUBLIC: TFloatField;
    PedRe2ALIQ_IBPT: TFloatField;
    PedRe2EX_IBPT: TStringField;
    PedRe2CODIGO_IBPT: TStringField;
    PedRe2TOTIBPT: TFloatField;
    PedRe2CODDESONERACAO: TIntegerField;
    edMotivo: TdxDBColorLookupEdit;
    Label65: TLabel;
    edPacRe2: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit24: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit23: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit13: TdxDBColorCurrencyEdit;
    Label90: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox11: TGroupBox;
    Label72: TLabel;
    dxDBColorCurrencyEdit11: TdxDBColorCurrencyEdit;
    Label76: TLabel;
    dxDBColorCurrencyEdit16: TdxDBColorCurrencyEdit;
    Label79: TLabel;
    Label80: TLabel;
    dxDBColorCurrencyEdit22: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit27: TdxDBColorCurrencyEdit;
    bPsqAtd: TSpeedButton;
    PedRe2FRTSUB: TFloatField;
    PedRe2SEGSUB: TFloatField;
    PedRe2DESSUB: TFloatField;
    PedRe2DSCSUB: TFloatField;
    PedRe2DSCIPI: TFloatField;
    PedRe2DSCICM: TFloatField;
    PedRe2CODTXF2: TStringField;
    PedRe2ID_ESTICM: TIntegerField;
    PedRe2CEST: TStringField;
    PedRe2ALIQ_FCPUFDEST: TFloatField;
    PedRe2ALIQ_ICMSUFDEST: TFloatField;
    PedRe2ALIQ_ICMSINTER: TFloatField;
    PedRe2ALIQ_ICMSINTERPART: TFloatField;
    PedRe2ID_REGRA_FCP: TIntegerField;
    PedRe2COD_ENQ: TStringField;
    Panel20: TPanel;
    Label68: TLabel;
    Label9: TLabel;
    qryCf: TQuery;
    dsCf: TDataSource;
    dblookCf: TdxDBColorLookupEdit;
    Label82: TLabel;
    PedRes: TQuery;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResHRERES: TStringField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResCODTIP: TIntegerField;
    PedResPRFRES: TIntegerField;
    PedResDTFRES: TDateTimeField;
    PedResCODATD: TIntegerField;
    PedResCODFIL: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResFLGTAB: TStringField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    PedResINSCLI: TStringField;
    PedResCEPCLI: TStringField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResREFCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResINECLI: TStringField;
    PedResCGECLI: TStringField;
    PedResOBSRES: TStringField;
    PedResQTIRES: TIntegerField;
    PedResSEQITE: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResSEQPAR: TIntegerField;
    PedResLINRES: TIntegerField;
    PedResQTLRES: TIntegerField;
    PedResQTFRES: TIntegerField;
    PedResBASIPI: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResBASICM: TFloatField;
    PedResTOTICM: TFloatField;
    PedResBASSUB: TFloatField;
    PedResTOTSUB: TFloatField;
    PedResTOTVEN: TFloatField;
    PedResTOTCST: TFloatField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResTOTLIQ: TFloatField;
    PedResTOTBRT: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResDSCREG: TFloatField;
    PedResDSCCOM: TFloatField;
    PedResTOTDCO: TFloatField;
    PedResMEDDCO: TFloatField;
    PedResMEDACR: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResTOTACR: TFloatField;
    PedResDESREG: TStringField;
    PedResCODUSU: TIntegerField;
    PedResFLGPSQ: TStringField;
    PedResDTLPSQ: TDateTimeField;
    PedResFLGCTB: TStringField;
    PedResFLGAVI: TStringField;
    PedResFLGOCO: TStringField;
    PedResSEQRES: TStringField;
    PedResATUEST: TStringField;
    PedResINTFIN: TStringField;
    PedResCONSUM: TStringField;
    PedResCODIPI: TStringField;
    PedResTIPIPI: TStringField;
    PedResTRBIPI: TStringField;
    PedResREDIPI: TFloatField;
    PedResBSCIPI: TFloatField;
    PedResCODICM: TStringField;
    PedResTIPICM: TStringField;
    PedResTRBICM: TStringField;
    PedResREDICM: TFloatField;
    PedResBSCICM: TFloatField;
    PedResINCREV: TFloatField;
    PedResINCFIN: TFloatField;
    PedResFLGCOM: TStringField;
    PedResDTECOM: TDateTimeField;
    PedResHRECOM: TStringField;
    PedResOBSCOM: TMemoField;
    PedResUSUCOM: TIntegerField;
    PedResPEDANT: TStringField;
    PedResFLGFIN: TStringField;
    PedResDTEFIN: TDateTimeField;
    PedResHREFIN: TStringField;
    PedResOBSFIN: TMemoField;
    PedResUSUFIN: TIntegerField;
    PedResDTEREJ: TDateTimeField;
    PedResHREREJ: TStringField;
    PedResOBSREJ: TMemoField;
    PedResUSUREJ: TIntegerField;
    PedResTXFIPI: TStringField;
    PedResTXFICM: TStringField;
    PedResFLGSLD: TStringField;
    PedResFATRES: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVRES: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDRES: TFloatField;
    PedResSLDGER: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResFLGIMP: TStringField;
    PedResFLGGER: TStringField;
    PedResLIBSLD: TStringField;
    PedResDTEDEL: TDateTimeField;
    PedResHREDEL: TStringField;
    PedResOBSDEL: TMemoField;
    PedResUSUDEL: TIntegerField;
    PedResDTEFPE: TDateTimeField;
    PedResHREFPE: TStringField;
    PedResOBSFPE: TMemoField;
    PedResUSUFPE: TIntegerField;
    PedResFLGREQ: TStringField;
    PedResLANEST: TStringField;
    PedResFLGRES: TStringField;
    PedResSITRES: TStringField;
    PedResQTDIMP: TIntegerField;
    PedResEMPCTA: TIntegerField;
    PedResDTECTA: TDateTimeField;
    PedResNUMCTA: TIntegerField;
    PedResPRCCTA: TStringField;
    PedResMODPFA: TStringField;
    PedResMESRES: TStringField;
    PedResANORES: TIntegerField;
    PedResFLGPRO: TStringField;
    PedResPEDPRO: TStringField;
    PedResDTEPRO: TDateTimeField;
    PedResHREPRO: TStringField;
    PedResOBSPRO: TMemoField;
    PedResUSUPRO: TIntegerField;
    PedResCLITAB: TStringField;
    PedResCODTCL: TIntegerField;
    PedResCODGCL: TIntegerField;
    PedResFLGCON: TStringField;
    PedResDTECON: TDateTimeField;
    PedResHRECON: TStringField;
    PedResOBSCON: TMemoField;
    PedResUSUCON: TIntegerField;
    PedResTIPCOM: TStringField;
    PedResCODCOM: TStringField;
    PedResBASISS: TFloatField;
    PedResTOTISS: TFloatField;
    PedResFLGSER: TStringField;
    PedResTIPCPA: TStringField;
    PedResMEDCAT: TFloatField;
    PedResBASCAT: TFloatField;
    PedResTOTCAT: TFloatField;
    PedResFLGFEC: TStringField;
    PedResEMPPED: TIntegerField;
    PedResDTEPED: TDateTimeField;
    PedResNUMPED: TIntegerField;
    PedResFLGDIF: TStringField;
    PedResFLGCMP: TStringField;
    PedResHRECMP: TStringField;
    PedResDTECMP: TDateTimeField;
    PedResUSUCMP: TIntegerField;
    PedResFLGIPI: TStringField;
    PedResTOTIPC: TFloatField;
    PedResNOMENT: TStringField;
    PedResCODCFO: TStringField;
    PedResLIBCLI: TStringField;
    PedResOB1FAT: TMemoField;
    PedResOB2FAT: TMemoField;
    PedResOB3FAT: TMemoField;
    PedResOB4FAT: TMemoField;
    PedResOB5FAT: TMemoField;
    PedResOB6FAT: TMemoField;
    PedResOB7FAT: TMemoField;
    PedResOB8FAT: TMemoField;
    PedResPCORES: TFloatField;
    PedResDSCRES: TFloatField;
    PedResID_FINUFE: TIntegerField;
    PedResID_FINCIE: TIntegerField;
    PedResFRTRES: TStringField;
    PedResTOTFRT: TFloatField;
    PedResPCOATD: TFloatField;
    PedResFLGOPE: TStringField;
    PedResID_PEDRES: TIntegerField;
    PedResID_PEDCND: TIntegerField;
    PedResQTIRE2: TIntegerField;
    PedResQTIRE3: TIntegerField;
    PedResSEQRE3: TIntegerField;
    PedResQTIRE4: TIntegerField;
    PedResQTILIB: TIntegerField;
    PedResRENMIN: TFloatField;
    PedResLIMCLI: TFloatField;
    PedResACRCND: TFloatField;
    PedResDSCCND: TFloatField;
    PedResTOTCLI: TFloatField;
    PedResTOTACP: TFloatField;
    PedResNROSUF: TStringField;
    PedResTRBPIS: TStringField;
    PedResTRBCOF: TStringField;
    PedResID_PEDCTA: TIntegerField;
    PedResFLGREJ: TStringField;
    PedResFLGEST: TStringField;
    PedResOB1RES: TStringField;
    PedResOB2RES: TStringField;
    PedResOB3RES: TStringField;
    PedResOB4RES: TStringField;
    PedResOB5RES: TStringField;
    PedResOB6RES: TStringField;
    PedResOB7RES: TStringField;
    PedResOB8RES: TStringField;
    PedResCODEAN: TStringField;
    PedResFLGATU: TStringField;
    PedResCODGUS: TIntegerField;
    PedResTIPFRE: TStringField;
    PedResTOTCUB: TFloatField;
    PedResOBRGVE: TStringField;
    PedResCODGVE: TIntegerField;
    PedResCOMATD: TStringField;
    PedResPERPIS: TFloatField;
    PedResTOTPIS: TFloatField;
    PedResPERCOF: TFloatField;
    PedResTOTCOF: TFloatField;
    PedResFLGCLI: TStringField;
    PedResFLGANT: TStringField;
    PedResSEQLIB: TIntegerField;
    PedResID_ESTSIP: TIntegerField;
    PedResID_PEDFE2: TIntegerField;
    PedResID_SEPPED: TIntegerField;
    PedResID_PEDRES_ORIG: TIntegerField;
    PedResECFEMI: TStringField;
    PedResOBSCMP: TMemoField;
    PedResCSTPIS: TStringField;
    PedResCSTCOF: TStringField;
    PedResCSTIPI: TStringField;
    PedResTOTSEG: TFloatField;
    PedResTOTOUTDESP: TFloatField;
    PedResTOTDESCINC: TFloatField;
    PedResIS_CTA: TSmallintField;
    PedResTOTVOL: TIntegerField;
    PedResOB1CAN: TStringField;
    PedResOB2CAN: TStringField;
    PedResOB3CAN: TStringField;
    PedResOB4CAN: TStringField;
    PedResOB5CAN: TStringField;
    PedResALIQPIS: TFloatField;
    PedResALIQCOF: TFloatField;
    PedResID_FRETE: TIntegerField;
    PedResTIPFRT: TStringField;
    PedResFRTICM: TFloatField;
    PedResSEGICM: TFloatField;
    PedResDESICM: TFloatField;
    PedResFRTIPI: TFloatField;
    PedResSEGIPI: TFloatField;
    PedResDESIPI: TFloatField;
    PedResTOTITETRB: TFloatField;
    PedResCOMICLI: TStringField;
    PedResCOMCLI: TStringField;
    PedResSUFR_ICMS: TStringField;
    PedResSUFR_IPI: TStringField;
    PedResSUFR_PIS: TStringField;
    PedResSUFR_COFINS: TStringField;
    PedResDTVSUF: TDateTimeField;
    PedResREGTRB: TIntegerField;
    PedResTOTIBPT: TFloatField;
    PedResUPDPROC: TStringField;
    PedResREGTRBEMP: TIntegerField;
    PedResINDIC_CF: TIntegerField;
    PedResINDIC_PRESENCA: TIntegerField;
    PedResCODDESONERACAO: TIntegerField;
    PedResFRTSUB: TFloatField;
    PedResSEGSUB: TFloatField;
    PedResDESSUB: TFloatField;
    PedResDSCSUB: TFloatField;
    PedResDSCIPI: TFloatField;
    PedResDSCICM: TFloatField;
    PedResAPP_VER: TIntegerField;
    PedResID_ESTICM: TIntegerField;
    PedResID_ESTIPI: TIntegerField;
    PedResOBSANT: TStringField;
    PedResUSUANT: TIntegerField;
    PedResFLGMOBILE: TStringField;
    PedResALIQ_CRED_SN: TFloatField;
    Label85: TLabel;
    procedure SaiGrupo;
    procedure SaiCliente;
    procedure SaiProduto;
    procedure SaiSubGrupo;
    procedure SaiCodBarras;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PedResNewRecord(DataSet: TDataSet);
    procedure PedRe2NewRecord(DataSet: TDataSet);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodPfaExit(Sender: TObject);
    procedure EdPrfREsExit(Sender: TObject);
    procedure EdDtfResExit(Sender: TObject);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bpsqEmpClick(Sender: TObject);
    procedure bpsqCliClick(Sender: TObject);
    procedure bpsqPfaClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpRe2Exit(Sender: TObject);
    procedure EdVluRe2Exit(Sender: TObject);
    procedure EdDscRe2Exit(Sender: TObject);
    procedure EdDesRe2Exit(Sender: TObject);
    procedure EdDspRe2Exit(Sender: TObject);
    procedure EdCodUndExit(Sender: TObject);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenExit(Sender: TObject);
    procedure bpsqVenClick(Sender: TObject);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
    procedure EdVluRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdDteREsEnter(Sender: TObject);
    procedure EdCodCliEnter(Sender: TObject);
    procedure grRe2Enter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodProEnter(Sender: TObject);
    procedure EdQtpRe2Enter(Sender: TObject);
    procedure EdVluRe2Enter(Sender: TObject);
    procedure EdCodUndEnter(Sender: TObject);
    procedure EdDscRe2Enter(Sender: TObject);
    procedure grRe2KeyPress(Sender: TObject; var Key: Char);
    procedure PedResAfterOpen(DataSet: TDataSet);
    procedure PedRe2BeforePost(DataSet: TDataSet);
    procedure dxDBColorEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure grRe2Exit(Sender: TObject);
    procedure PedResTIPFRTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure PedResTIPFRTSetText(Sender: TField; const Text: string);
    procedure Panel15Exit(Sender: TObject);
    procedure PedRe2BeforeEdit(DataSet: TDataSet);
    procedure PedRe2BeforeInsert(DataSet: TDataSet);
    procedure pnIniProExit(Sender: TObject);
    procedure DsRe2StateChange(Sender: TObject);
    procedure PedResID_FRETEChange(Sender: TField);
    procedure PedRe2CalcFields(DataSet: TDataSet);
    procedure PedRe2AfterScroll(DataSet: TDataSet);
    procedure EdCbaRe2Exit(Sender: TObject);
    procedure PedResAfterScroll(DataSet: TDataSet);
    procedure grRe2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EdQtpRe2KeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Enter(Sender: TObject);
    procedure Label74DblClick(Sender: TObject);
    procedure Label14DblClick(Sender: TObject);
    procedure Label11DblClick(Sender: TObject);
    procedure Label40DblClick(Sender: TObject);
    procedure Label39DblClick(Sender: TObject);
    procedure Label38DblClick(Sender: TObject);
    procedure edMotivoExit(Sender: TObject);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdCodAtdExit(Sender: TObject);
    procedure EdCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnFlgOcoDblClick(Sender: TObject);
    procedure PedResBeforePost(DataSet: TDataSet);
  private
    {Private declarations}
    CFOP_OLD: string;

    procedure TipoCliente;
    procedure CarregaCFOP;
    procedure CarregaCbo;
    procedure IncluiItem;
    procedure ValidaFrete;
    procedure MsgCta;
    procedure ControleDescontoAcrescimo;

  public
    {Public declarations}
    GImpMrc: string;
    GImpTra: string;
    GImpObs: string;
    GImpFin: string;
    GVerEst: string;
    GUsaDec: string;
    GLanMai: string;

    SUFRAMA: string;

    Sobser, GPerPro: string;
    DteRes: TDateTime;
    CodEmp, NumRes, SeqRe2, Qticms, NroReg: integer;
    AntVluRe2, AntDscRe2, AntDspRe2: real;
    sEnc, sEntr, Finalizar, PSaida: string;
    pCodClp, pCodGru, pCodSub, pCodPro: string;
    C_Ven_outros: boolean;
  end;

var
  fmManPed: TfmManPed;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManGDB, ManRes, PsqEmp, AuxPsq,
  PsqTpe, PsqPfa, PsqGru, PsqSub, PsqPro, PsqRef, PsqEst, PsqRej, PsqOco,
  PsqTab, ManPe1, PsqRes, PsqObs, PsqIcm, AuxIni, PsqCmp, PsqUnd, PsqUve,
  ManDesc1, ManOBSCli, ManCt3Msg, PsqEs2_PPortal, PsqEs2, ManMsgSuframa,
  ManPri, ManVen, ManCli, ManPfa_GERAL, ManIcm, ManIpi, uProduto,
  uIndicadores, uOcorrenciasPed, uValidacao, ManStr2, uMsg;

{$R *.DFM}

procedure TfmManPed.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';
  sObser := 'N';

  pSaida := 'Sim';

  Finalizar := 'N';

  CFOP.Active := True;

  quSql.active := false;
  qusql.sql.text := 'Select fretevendedor from pedpar';
  qusql.open;

  FinTCl.Active := False;
  TIPFRT.Active := False;
  FINREGTRIB.Active := False;

  FinTCl.Active := True;
  TIPFRT.Active := True;
  FINREGTRIB.Active := True;

  EdCodAtd.Enabled := (fmmangdb.BuscaSimples('pedpar', 'coalesce(flgatd,''Nao'')', ' 1 = 1 ') = 'Sim');

  CarregaCbo;
end;

procedure TfmManPed.FormShow(Sender: TObject);
var
  LimCli: real;
  usaDecimal: integer;
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
  begin

    Label03.Visible := False;
    pnTotRen.Visible := False;
    Label33.Visible := False;
    pnTotMk2.Visible := False;
    edtotren.Visible := false;
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select * From PedPar';
    Open;

    GImpMrc := FieldByName('ImpMrc').AsString;
    GImpTra := FieldByName('ImpTra').AsString;
    GImpObs := FieldByName('ImpObs').AsString;
    GImpFin := FieldByName('ImpFin').AsString;
    GVerEst := FieldByName('VerEst').AsString;
    GPerPro := FieldByName('PerPro').AsString;
    GUsaDec := FieldByName('USADEC').AsString;
    GLanMai := FieldByName('LANMAI').AsString;

  end;

  usaDecimal := StrtoInt(fmManGDB.BuscaSimples('PEDPAR', 'PERMITIR_QTD_FRACIONADA', ' 1 = 1',
    'select coalesce(PERMITIR_QTD_FRACIONADA,1) as PERMITIR_QTD_FRACIONADA from pedpar'));

  if (usaDecimal = 0) then
  begin
    EdQtpRe2.DecimalPlaces := 0;
    GUsaDec := 'Nao';
  end
  else
  begin
    GUsaDec := 'Sim';
  end;

  if fmManRes.CodEmp > 0 then
  begin

    sEntr := 'S';

    PedRes.Close;
    PedRes.Params[0].AsInteger := fmManRes.CodEmp;
    PedRes.Params[1].AsDateTime := fmManRes.DteRes;
    PedRes.Params[2].AsInteger := fmManRes.NumRes;
    PedRes.Open;

    PedRe2.Close;
    PedRe2.Params[0].AsInteger := PedResCodEmp.Value;
    PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
    PedRe2.Params[2].AsInteger := PedResNumRes.Value;
    PedRe2.Open;

    if pedresIS_CTA.AsInteger = 1 then
    begin
      MsgCta;
    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and GerEmp.CodFil > ' + QuotedStr('0');

      with Params do
      begin

        Params[0].AsInteger := PedResCodEmp.Value;

      end;

      Open;

      pnNomEmp.Caption := FieldbyName('NomEmp').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

      with Params do
      begin

        Params[0].AsInteger := PedResCodVen.Value;

      end;

      Open;

      pnNomVen.Caption := FieldbyName('ApeVen').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinAtd.NomAtd From FinAtd Where FinAtd.CodAtd = :CodAtd';

      with Params do
      begin

        Params[0].AsInteger := PedResCodAtd.Value;

      end;

      Open;

      pnNomAtd.Caption := FieldbyName('NomAtd').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select EstPfa.DscPfa From EstPfa Where EstPfa.TipPfa = :TipPfa and EstPfa.CodPfa = :CodPfa';

      with Params do
      begin

        Params[0].AsString := 'Saida';
        Params[1].AsString := PedResCodPfa.Value;

      end;

      Open;

      EdNomPfa.Text := FieldbyName('DscPfa').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCli.NomCli,FormatCgcCpf(FinCli.CgcCli) as CgcCpf,FinCli.UffCli,FinCli.LimCli From FinCli Where FinCli.CodCli = :CodCli';

      with Params do
      begin

        Params[0].AsInteger := PedResCodCli.Value;

      end;

      Open;

    end;

    pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
    pnUfeRes.Caption := quSQL.FieldbyName('UffCli').AsString;
    pnCgcCli.Caption := quSQL.FieldbyName('CgcCpf').AsString;

    LimCli := quSQL.FieldbyName('LimCli').AsFloat;

    pnLimite.Caption := FormatFloat('###,###,##0.00', LimCli);

    qticms := 1;

    if GUfeEmp <> PedResUfeRes.AsString then
    begin

      with quSql, SQL do
      begin

        Close;
        Text := ' Select Count(1) as Reg from GerIcm Where GerIcm.SigUfe = ' + QuotedStr(PedResUfeRes.AsString);
        Open;

      end;

      qticms := quSql.FieldbyName('Reg').AsInteger;

    end;

    if (PedResSitRes.AsString <> 'Nao Concluido') //
    and (PedResSitRes.AsString <> 'Processo de Alteracao') //
    and (PedResSitRes.AsString <> 'Aguardando Complemento')
      and (PedResSitRes.AsString <> 'Rejeitado') then
      sEnc := 'S'
    else
    begin

      bPsqEmp.Enabled := False;
      bPsqCli.Enabled := False;
      bPsqPfa.Enabled := False;
      bPsqVen.Enabled := False;

      PedRes.Edit;

      EdPedAnt.Enabled := True;

      EdPedAnt.Font.Style := [];

      if (GGus_Id = 1) or
        (GUsu_Id = 1) or
        (GUsu_Id = 999) or
        (GPerPro = 'Sim') or
        (GFlgGer = 'Sim') then
      begin

        EdPrfRes.Enabled := True;

        EdPrfRes.Font.Style := [];

        EdDtfRes.Date := PedResDtfRes.Value;

        if PedResPrfRes.Value > 0 then
          EdPrfRes.Text := IntToStr(PedResPrfRes.Value)
        else
          EdPrfRes.Text := '0';

      end;

      EdPedAnt.Text := PedResPedAnt.Value;

      //EdPedAnt.SetFocus;

      if dxDBColorEdit1.canFocus then
        dxDBColorEdit1.SetFocus

    end;

  end
  else
  begin

    sEntr := 'N';

    sbInfo.Panels[0].Text := '';

    PedRes.Insert;

    EdCodEmp.SetFocus;

  end;

  //**Arnaldo**\\

  if GUsaDec = 'Nao' then
    EdQtpRe2.DisplayFormat := '#,##0'
  else
    EdQtpRe2.DisplayFormat := '#,##0.000';

  //Arnaldo C.
  //habilitar o Duplo Click nos Labels
  Panel2.Enabled := True;
  edCodSt2.Enabled := False;
  edCodIPI.Enabled := False;
  edCodPIS.Enabled := False;
  edCodCOF.Enabled := False;
  dxdbcoloredit2.Enabled := False;

end;

procedure TfmManPed.PedResNewRecord(DataSet: TDataSet);
var
  LimCli: real;
begin
  inherited;

  PedRes.DisableControls;
  try
    PedResCodTip.AsInteger := 1;
    PedResNumRes.AsInteger := 0;
    PedResQtiRes.AsFloat := 0;
    PedResSeqIte.AsInteger := 0;
    PedResTotRes.AsFloat := 0;
    PedResBasIcm.AsFloat := 0;
    PedResTotIcm.AsFloat := 0;
    PedResBasIpi.AsFloat := 0;
    PedResTotIpi.AsFloat := 0;
    PedResTotCst.AsFloat := 0;
    PedResTotRen.AsFloat := 0;
    PedResTotVen.AsFloat := 0;
    PedResQtpRes.AsFloat := 0;
    PedResTotRes.AsFloat := 0;
    PedResTotBrt.AsFloat := 0;
    PedResTotDsc.AsFloat := 0;
    PedResTotDsr.AsFloat := 0;
    PedResTotAcr.AsFloat := 0;
    PedResDscReg.AsFloat := 0;
    PedResDscCom.AsFloat := 0;
    PedResBasCom.AsFloat := 0;
    PedResTotCom.AsFloat := 0;
    PedResPrfRes.AsFloat := 0;
    PedResFlgFin.AsString := ' ';
    PedResFlgAvi.AsString := ' ';
    PedResObsRes.AsString := ' ';
    PedResDteRes.asDatetime := Date;
    PedResDtfRes.asDatetime := Date;
    PedResFlgGer.AsString := 'Nao';
    PedResLibSld.AsString := 'Nao';
    PedResFlgImp.AsString := 'Nao';
    PedResPedAnt.AsString := 'Nao';
    PedResFlgReq.AsString := 'Nao';
    PedResTipPfa.AsString := 'Saida';
    PedResCodEmp.AsInteger := GEmp_Id;
    PedResID_FRETE.AsInteger := -1;
    PedResSitRes.AsString := 'Nao Concluido';
    PedResHreRes.Value := TimeToStr(Time);
    PedResTOTFRT.AsFloat := 0;

    PedResAPP_VER.AsInteger := APP_VER;

    if (fmmangdb.BuscaSimples('pedpar', 'coalesce(flgatd,''Nao'')', ' 1 = 1 ') = 'Nao') then
      if GCodAtd_Id > 0 then
      begin
        PedResCodAtd.AsInteger := GCodAtd_Id;
        EdCodAtd.Text := IntToStr(GCodAtd_Id);
      end;
    //*/*****************Parei aqui

//PedRes.EnableControls;

    EdDteRes.Date := Date;
    EdDtfRes.Date := Date;

    EdPrfRes.Text := '0';

    EdPedAnt.Text := 'Nao';

    if GEmp_Id > 0 then
      EdCodEmp.Text := IntToStr(GEmp_Id);

    if GCodAtd_Id > 0 then
    begin

      pnNomAtd.Caption := GNomAtd_Id;

      PedResCodAtd.Value := GCodAtd_Id;

    end;

    if GCodVen_Id > 0 then
    begin

      pnNomVen.Caption := GNomVen_Id;

      EdCodVen.Text := IntToStr(GCodVen_Id);

      PedResCodVen.Value := GCodVen_Id;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and GerEmp.CodFil > ' + QuotedStr('0');

      with Params do
      begin

        Params[0].AsInteger := PedResCodEmp.Value;

      end;

      Open;

      pnNomEmp.Caption := quSQL.FieldbyName('NomEmp').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCli.NomCli,FinCli.CgcCli,FinCli.UffCli,FinCli.LimCli From FinCli Where FinCli.CodCli = :CodCli';

      with Params do
      begin

        Params[0].AsInteger := PedResCodCli.Value;

      end;

      Open;

    end;

    pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
    pnUfeRes.Caption := quSQL.FieldbyName('UffCli').AsString;

    if Trim(quSQL.FieldbyName('CgcCli').AsString) <> '' then
    begin

      if Length(Trim(quSQL.FieldbyName('CgcCli').AsString)) <= 11 then
        pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 03) + '.' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 04, 03) + '.' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 07, 03) + '-' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 10, 02)
      else
        pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 02) + '.' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 03, 03) + '.' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 06, 03) + '/' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 09, 04) + '-' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 13, 02);

    end
    else
      pnCgcCli.Caption := '';

    LimCli := quSQL.FieldbyName('LimCli').AsFloat;

    pnLimite.Caption := FormatFloat('###,###,##0.00', LimCli);

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinAtd.NomAtd From FinAtd Where FinAtd.CodAtd = :CodAtd';

      with Params do
      begin

        Params[0].AsInteger := PedResCodAtd.Value;

      end;

      Open;

      pnNomAtd.Caption := quSQL.FieldbyName('NomAtd').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select EstPfa.DscPfa From EstPfa Where EstPfa.TipPfa = :TipPfa and EstPfa.CodPfa = :CodPfa';

      with Params do
      begin

        Params[0].AsString := 'Saida';
        Params[1].AsString := PedResCodPfa.Value;

      end;

      Open;

      EdNomPfa.Text := quSQL.FieldbyName('DscPfa').AsString;

    end;

    PedRe2.Close;
    PedRe2.Params[0].AsInteger := PedResCodEmp.Value;
    PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
    PedRe2.Params[2].AsInteger := PedResNumRes.Value;
    PedRe2.Open;

    bPsqEmp.Enabled := True;
    bPsqCli.Enabled := True;
    bPsqPfa.Enabled := True;
    bPsqVen.Enabled := True;

    EdCodEmp.Enabled := True;
    EdDteRes.Enabled := True;
    EdCodCli.Enabled := True;
    EdCodVen.Enabled := True;
    dxDBColorEdit4.Enabled := True;
    CbNomTCl.Enabled := True;
    EdPedAnt.Enabled := True;
    EdCodPfa.Enabled := True;

    EdCodEmp.Font.Style := [];
    EdDteRes.Font.Style := [];
    EdCodCli.Font.Style := [];
    EdCodVen.Font.Style := [];
    CbNomTCl.Font.Style := [];
    EdPedAnt.Font.Style := [];
    EdCodPfa.Font.Style := [];

    if (GGus_Id = 1) or
      (GUsu_Id = 1) or
      (GUsu_Id = 999) or
      (GPerPro = 'Sim') or
      (GFlgGer = 'Sim') then
    begin

      EdPrfRes.Enabled := True;

      EdPrfRes.Font.Style := [];

    end;

    if GGUs_Id <> 1 then
    begin

      if (GCodVen_Id > 0) or (GCodAtd_Id > 0) then
      begin

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        bPsqVen.Enabled := False;

      end;
    end;

    if PedResCodEmp.Value > 0 then
      EdDteRes.SetFocus
    else
      EdCodEmp.SetFocus;
  finally
    PedRes.EnableControls;
  end
end;

procedure TfmManPed.PedRe2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedRe2.DisableControls;
  try
    PedRe2LiqRe2.Value := 0;
    PedRe2BrtRe2.Value := 0;
    PedRe2QtpRe2.Value := 0;
    PedRe2QtsRe2.Value := 0;
    PedRe2SldRe2.Value := 0;
    PedRe2VluRe2.Value := 0;
    PedRe2VlqRe2.Value := 0;
    PedRe2DscRe2.Value := 0;
    PedRe2VdsRe2.Value := 0;
    PedRe2DspRe2.Value := 0;
    PedRe2VdpRe2.Value := 0;
    PedRe2PacRe2.Value := 0;
    PedRe2VacRe2.Value := 0;
    PedRe2PcoRe2.Value := 0;
    PedRe2TotVen.Value := 0;
    PedRe2TotCst.Value := 0;
    PedRe2TotRen.Value := 0;
    PedRe2BasIpi.Value := 0;
    PedRe2TotIpi.Value := 0;
    PedRe2BasIcm.Value := 0;
    PedRe2TotIcm.Value := 0;
    PedRe2TotRe2.Value := 0;
    PedRe2TotGe2.Value := 0;
    PedRe2TotBrt.Value := 0;
    PedRe2BasCom.Value := 0;
    PedRe2TotCom.Value := 0;
    PedRe2TotLiq.Value := 0;
    PedRe2DscCom.Value := 0;
    PedRe2VdsCom.Value := 0;
    PedRe2TotDco.Value := 0;
    PedRe2FlaSeq.Value := '';
    PedRe2CodClp.Value := '1';
    PedRe2CodTam.Value := 'UN';
    PedRe2CodCor.Value := 'UN';
    PedRe2FlgRes.Value := 'Nao';
    PedRe2FlgReq.Value := 'Nao';
    PedRe2FlgDup.Value := 'Nao';
    PedRe2CodEmp.Value := PedResCodEmp.Value;
    PedRe2DteRes.Value := PedResDteRes.Value;
    PedRe2CodEit.Value := PedResCodEmp.Value;
    PedRe2NumRes.Value := PedResNumRes.Value;
    PedRe2NroRe2.Value := PedResQtiRes.Value + 1;
    PedRe2SeqRe2.Value := PedResSeqIte.Value + 1;

    PedRe2.EnableControls;

    if PedResDscCom.Value > 0 then
      PedRe2DscCom.Value := PedResDscCom.Value;

    AntVluRe2 := PedRe2VluRe2.Value;
    AntDscRe2 := PedRe2DscRe2.Value;
    AntDspRe2 := PedRe2DspRe2.Value;

    EdCodGru.Enabled := True;
    EdCodSub.Enabled := True;
    EdCodPro.Enabled := True;
    EdQtpRe2.Enabled := True;

    edPedCompra.Enabled := True;
    edItemCompra.Enabled := True;

    EdCFOP.Enabled := True; //insert

    EdVluRe2.Enabled := True;
    EdDscRe2.Enabled := True;

    EdCodUnd.Enabled := False;
    //EdDesRe2.Enabled := False;
    EdObsRe2.Enabled := False;

    {pnDesRe2.Visible := True;
    pnObsRe2.Visible := True;}

    //EdDesRe2.ReadOnly := True;
    EdObsRe2.ReadOnly := True;

    //ActiveControl := nil;

    EdCodGru.SetFocus;
  finally
    PedRes.EnableControls;
  end;
end;

procedure TfmManPed.EdCodEmpExit(Sender: TObject);
var Teste : String;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if PedRes.State <> dsBrowse then
    begin

      if PedResCodEmp.Value > 0 then
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
          Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp ';     //and GerEmp.CodFil >  + QuotedStr('0');

          if GFlgAce = 'Sim' then
          begin

            if GEmpLog > 0 then
              Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
            else
              Text := Text + ' and GerEmp.CodFil > 0';

          end;

          with Params do
          begin

            Params[0].AsInteger := PedResCodEmp.Value;

          end;

          Open;

        end;

          Teste := quSql.sql.Text;


        if Trim(quSql.FieldbyName('NomEmp').AsString) <> '' then
          pnNomEmp.Caption := quSql.FieldbyName('NomEmp').AsString
        else
        begin

          pnNomEmp.Caption := '';

          fmsgErro('Empresa Informada não Encontrada', EdCodEmp);

        end;

      end
      else
      begin

        pnNomEmp.Caption := '';

        fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdCodEmp);

      end;
    end;

  end
  else
  begin

    if Tecla = 'UP' then
      EdCodEmp.SetFocus

  end;
end;

procedure TfmManPed.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        PedResCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(PedResCodEmp.Value);

        pnNomEmp.Caption := fmPsqEmp.NomEmp;

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    if PedResCodEmp.Value > 0 then
      EdDteRes.SetFocus;

  end;
end;

procedure TfmManPed.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManPed.EdCodCliExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdDteRes.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
      SaiCliente;

  end;
end;

procedure TfmManPed.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    bpsqCli.Click;
    { try

       fmAuxIni := TfmAuxIni.Create(Self);

       if fmmangdb.BuscaSimples('PEDPAR', 'LIBERA_VEN', ' 1 = 1') = 'S' then
         fmAuxIni.TipoPesq := 'C_LIB_VEN'
       else
         fmAuxIni.TipoPesq := 'C';

       if fmmangdb.BuscaSimples('PEDPAR', 'LIB_VEN_OUTROS', ' 1 = 1') = '1' then
       begin
         fmAuxIni.TipoPesq := 'C_VENDAS_OUTROS';
         c_ven_outros := true;
       end
       else
         c_ven_outros := false;

       fmAuxIni.sCodVen_Id := GCodVen_Id;

       fmAuxIni.sGUs_Id := GGUs_Id;

       fmAuxIni.sCodAtd_Id := GCodAtd_Id;

       fmAuxIni.ShowModal;

       if fmAuxIni.CodCli > 0 then begin

         PedResCodCli.Value := fmAuxIni.CodCli;
         PedResCodVen.Value := fmAuxIni.CodVen;
         PedResUfeRes.Value := Trim(fmAuxIni.UffCli);

         EdCodCli.Text := IntToStr(PedResCodCli.Value);

         pnNomCli.Caption := fmAuxIni.NomCli;
         pnUfeRes.Caption := fmAuxIni.UffCli;

         if PedResCodVen.Value > 0 then
           EdCodVen.Text := IntToStr(PedResCodVen.Value)
         else
           EdCodVen.Text := '';

       end;

     finally

       FreeAndNil(fmAuxIni);

     end;

     if PedResCodCli.Value > 0 then
       SaiCliente
     else
       EdCodCli.SetFocus;
 }
  end;

  if key = 113 then
  begin {F2 - Inteligente}

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

        PedResCodCli.Value := fmAuxPsq.CodCli;
        PedResCodVen.Value := fmAuxPsq.CodVen;
        PedResUfeRes.Value := Trim(fmAuxPsq.UffCli);

        EdCodCli.Text := IntToStr(PedResCodCli.Value);

        pnNomCli.Caption := fmAuxPsq.NomCli;
        pnUfeRes.Caption := fmAuxPsq.UffCli;

        if PedResCodVen.Value > 0 then
          EdCodVen.Text := IntToStr(PedResCodVen.Value)
        else
          EdCodVen.Text := '';

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if PedResCodCli.Value > 0 then
      SaiCliente
    else
      EdCodCli.SetFocus;

  end;

end;

procedure TfmManPed.EdCodPfaExit(Sender: TObject);
var
  saida: boolean;
  LocPfa: string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodVen.Focused) and (not EdDscCom.Focused) and
      (not EdCodCli.Focused) and (not EdDteRes.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedRes.State <> dsBrowse then
      begin

        if Trim(PedResCodPfa.Value) <> '' then
        begin

          if PedResUfeRes.Value = 'EX' then
            LocPfa := 'Importacao ou Exportacao'
          else
          begin

            if PedResUfeRes.Value <> GUfeEmp then
              LocPfa := 'Outros Estados'
            else
              LocPfa := 'Mesmo Estado'

          end;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select EstPfa.DscPfa, MODPFA From EstPfa ' +
              ' Where coalesce(EstPfa.FlgAtivo,1) = 1 ' +
              '   and EstPfa.TipPfa = :TipPfa' +
              '   and EstPfa.CodPfa = :CodPfa' +
              '   and EstPfa.LocPfa = :LocPfa';

            with Params do
            begin

              Params[0].AsString := PedResTipPfa.Value;
              Params[1].AsString := PedResCodPfa.Value;
              Params[2].AsString := LocPfa;

            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('DscPfa').AsString) <> '' then
          begin
            EdNomPfa.Text := quSql.FieldbyName('DscPfa').AsString;

          end
          else
          begin

            EdNomPfa.Text := '';

            fmsgErro('Padrão de Faturamento Informado não Encontrado ou Inativo', EdCodPfa);

          end;

        end
        else
        begin

          EdNomPfa.Text := '';

          fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodPfa);

        end;
      end;
    end;
  end;

  if trim(CFOP_OLD) <> '' then
    if CFOP_OLD <> EdCodPfa.Text then
      if fMsg('Alteração da CFOP implicará na modificação dos calculos da NF. Deseja realmente fazer esta alteração?', 'O') = False then
      begin
        EdCodPfa.Text := CFOP_OLD;
        PedResCODPFA.AsString := CFOP_OLD;
      end;

  Application.ProcessMessages;
end;

procedure TfmManPed.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa: string;
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if PedResUfeRes.Value = 'EX' then
      LocPfa := 'Importacao ou Exportacao'
    else
    begin

      if PedResUfeRes.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
      else
        LocPfa := 'Mesmo Estado'

    end;

    try

      fmPsqPfa := TfmPsqPfa.Create(Self);

      with fmPsqPfa.EstPfa, SQL do
      begin

        Close;
        Text := ' Select EstPfa.CodPfa,' +
          '        EstPfa.TipPfa,' +
          '        EstPfa.DscPfa,' +
          '        EstPfa.DsrPfa,' +
          '        EstPfa.CodCf1,' +
          '        EstPfa.CodCf2,' +
          '        EstPfa.IntFin,' +
          '        EstPfa.AtuEst,' +
          '        EstPfa.ConSum,' +
          '        EstPfa.ModPfa' +
          ' From EstPfa' +
          ' Where EstPfa.TipPfa = :TipPfa' +
          '   and EstPfa.LocPfa = :LocPfa' +
          ' Order by EstPfa.DscPfa';

        with Params do
        begin

          Params[0].AsString := 'Saida';
          Params[1].AsString := LocPfa;

        end;

        Open;

      end;

      fmPsqPfa.ShowModal;

      if Trim(fmPsqPfa.CodPfa) <> '' then
      begin

        PedResCodPfa.Value := Trim(fmPsqPfa.CodPfa);

        EdNomPfa.Text := fmPsqPfa.NomPfa;

        EdCodPfa.Text := PedResCodPfa.Value;

      end;

    finally

      FreeAndNil(fmPsqPfa);

    end;

    if Trim(PedResCodPfa.Value) <> '' then
    begin

      if EdPrfRes.Enabled then
        EdPrfRes.SetFocus
      else
        EdCodPfa.SetFocus;

    end;
  end;

  if key = 113 then
  begin //F2 - Inteligente

    if PedResUfeRes.Value = 'EX' then
      LocPfa := 'Importacao ou Exportacao'
    else
    begin

      if PedResUfeRes.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
      else
        LocPfa := 'Mesmo Estado'

    end;

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'P';

      fmAuxPsq.LocPfa := LocPfa;
      fmAuxPsq.TipPfa := 'Saida';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodPfa) <> '' then
      begin

        PedResCodPfa.Value := Trim(fmAuxPsq.CodPfa);

        EdNomPfa.Text := fmAuxPsq.NomPfa;

        EdCodPfa.Text := PedResCodPfa.Value;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(PedResCodPfa.Value) <> '' then
    begin

      if EdPrfRes.Enabled then
        EdPrfRes.SetFocus
      else
        EdCodPfa.SetFocus;

    end;
  end;
end;

procedure TfmManPed.EdPrfREsExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodPfa.Focused) and (not EdCodVen.Focused) and (not EdDscCom.Focused) and
      (not EdCodCli.Focused) and (not EdDteRes.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedRes.State <> dsBrowse then
      begin

        if PedResPrfRes.Value = 0 then
        begin

          PedResDtfRes.Value := PedResDteRes.Value;

          EdDtfRes.Enabled := True;

          EdDtfRes.Font.Style := [];

          //EdDtfRes.SetFocus;

        end
        else
          PedResDtfRes.Value := PedResDteRes.Value + PedResPrfRes.Value;
      end;
    end;
  end;
end;

procedure TfmManPed.EdDtfResExit(Sender: TObject);
begin
  inherited;
  if PedRes.State <> dsBrowse then
  begin

    if PedResDtfRes.Value >= PedResDteRes.Value then
    begin

      if PedResDtfRes.Value > PedResDteRes.Value then
        PedResPrfRes.Value := StrToInt(FloatToStr(PedResDtfRes.Value - PedResDteRes.Value))
      else
        PedResPrfRes.Value := 0;

      if PedResPrfRes.Value > 0 then
        EdPrfRes.Text := IntToStr(PedResPrfRes.Value)
      else
        EdPrfRes.Text := '0';

    end
    else
      fmsgErro('Data Prevista para o Faturamento Inferior a Data de Emissao do Pedido.', EdDtfRes);
  end;
end;

procedure TfmManPed.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      PedResCodEmp.Value := fmPsqEmp.CodEmp;

      EdCodEmp.Text := IntToStr(PedResCodEmp.Value);

      pnNomEmp.Caption := fmPsqEmp.NomEmp;

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManPed.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if fmmangdb.BuscaSimples('PEDPAR', 'LIBERA_VEN', ' 1 = 1') = 'S' then
      fmAuxIni.TipoPesq := 'C_LIB_VEN'
    else
      fmAuxIni.TipoPesq := 'C';

    if fmmangdb.BuscaSimples('PEDPAR', 'LIB_VEN_OUTROS', ' 1 = 1') = '1' then
    begin
      fmAuxIni.TipoPesq := 'C_VENDAS_OUTROS';
      c_ven_outros := true;
    end
    else
      c_ven_outros := false;

    fmAuxIni.sCodVen_Id := GCodVen_Id;

    fmAuxIni.sGUs_Id := GGUs_Id;

    fmAuxIni.sCodAtd_Id := GCodAtd_Id;

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCli > 0 then
    begin

      PedResCodCli.Value := fmAuxIni.CodCli;
      PedResCodVen.Value := fmAuxIni.CodVen;
      PedResUfeRes.Value := Trim(fmAuxIni.UffCli);

      EdCodCli.Text := IntToStr(PedResCodCli.Value);

      EdUfeRes.Text := PedResUfeRes.Value;

      if PedResCodVen.Value > 0 then
        EdCodVen.Text := IntToStr(PedResCodVen.Value)
      else
        EdCodVen.Text := '';

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if PedResCodCli.Value > 0 then
    SaiCliente
  else
    EdCodCli.SetFocus;

end;

procedure TfmManPed.bpsqPfaClick(Sender: TObject);
var
  LocPfa: string;
begin
  inherited;

  if PedResUfeRes.Value = 'EX' then
    LocPfa := 'Importacao ou Exportacao'
  else
  begin

    if PedResUfeRes.Value <> GUfeEmp then
      LocPfa := 'Outros Estados'
    else
      LocPfa := 'Mesmo Estado'

  end;

  try

    fmPsqPfa := TfmPsqPfa.Create(Self);

    with fmPsqPfa.EstPfa, SQL do
    begin

      Close;
      Text := ' Select EstPfa.CodPfa,' +
        ' EstPfa.TipPfa,' +
        ' EstPfa.DscPfa,' +
        ' EstPfa.DsrPfa,' +
        ' EstPfa.CodCf1,' +
        ' EstPfa.CodCf2,' +
        ' EstPfa.IntFin,' +
        ' EstPfa.AtuEst,' +
        ' EstPfa.ConSum,' +
        ' EstPfa.ModPfa' +
        ' From EstPfa' +
        ' Where coalesce(EstPfa.FlgAtivo,1) = 1 ' +
        '   and EstPfa.TipPfa = :TipPfa' +
        '   and EstPfa.LocPfa = :LocPfa' +
        ' Order by EstPfa.DscPfa';

      with Params do
      begin

        Params[0].AsString := 'Saida';
        Params[1].AsString := LocPfa;

      end;

      Open;

    end;

    fmPsqPfa.ShowModal;

    if Trim(fmPsqPfa.CodPfa) <> '' then
    begin

      PedResCodPfa.Value := Trim(fmPsqPfa.CodPfa);

      EdNomPfa.Text := fmPsqPfa.NomPfa;

      EdCodPfa.Text := PedResCodPfa.Value;

    end;

  finally

    FreeAndNil(fmPsqPfa);

  end;

  EdCodPfa.SetFocus;

end;

procedure TfmManPed.EdCodGruExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdDtfRes.Focused) and (not EdPrfRes.Focused) and (not EdDteRes.Focused) then
      saida := True
    else
      saida := False;

    if saida then
      SaiGrupo;

  end
  else
  begin

    if (Tecla = 'UP') then
    begin

      if PedResQtiRes.Value > 0 then
      begin

        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdVluRe2.Enabled := False;
        EdQtpRe2.Enabled := False;

        edPedCompra.Enabled := False;
        edItemCompra.Enabled := False;

        EdCFOP.Enabled := False; //update
        EdDscRe2.Enabled := False;
        EdDspRe2.Enabled := False;

        if PedRe2.State <> dsBrowse then
          PedRe2.CancelUpdates
        else
        begin

          if not PedRe2.Bof then
            PedRe2.Prior;

        end;

        grRe2.SetFocus;

      end
      else
        EdCodGru.SetFocus;
    end;
  end;
end;

procedure TfmManPed.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := '1';

      fmAuxIni.TipoPesq := 'G';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if PedRe2.State = dsBrowse then
        begin

          if Trim(PedRe2CodClp.Value) <> '' then
            PedRe2.Edit
          else
            PedRe2.Append;

        end;

        PedRe2CodGru.Value := fmAuxIni.CodGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(PedRe2CodGru.Value) <> '' then
      SaiGrupo
    else
      EdCodGru.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := '1';

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if PedRe2.State = dsBrowse then
        begin

          if Trim(PedRe2CodClp.Value) <> '' then
            PedRe2.Edit
          else
            PedRe2.Append;

        end;

        PedRe2CodGru.Value := fmAuxPsq.CodGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(PedRe2CodGru.Value) <> '' then
      SaiGrupo
    else
      EdCodGru.SetFocus;

  end;

  if key = 116 then
  begin // F5 - Referência //

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := PedRe2CodClp.AsString;
      fmAuxIni.CodGru := PedRe2CodGru.AsString;
      fmAuxIni.CodSub := PedRe2CodSub.AsString;

      fmAuxIni.CliTab := PedResCliTab.AsString;

      fmAuxIni.TipoPesq := 'R';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        PedRe2CodClp.AsString := fmAuxIni.CodClp;
        PedRe2CodGru.AsString := fmAuxIni.CodGru;
        PedRe2CodSub.AsString := fmAuxIni.CodSub;
        PedRe2CodPro.AsString := fmAuxIni.CodPro;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(PedRe2CodPro.AsString) <> '' then
      SaiProduto
    else
    begin

      if EdCodGru.Focused then
        EdCodGru.SetFocus;
      if EdCodSub.Focused then
        EdCodSub.SetFocus;
      if EdCodPro.Focused then
        EdCodPro.SetFocus;

    end;
  end;
end;

procedure TfmManPed.EdCodSubExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if not EdCodGru.Focused then
      saida := True
    else
      saida := False;

    if saida then
      SaiSubGrupo;

  end;
end;

procedure TfmManPed.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(PedRe2CodGru.Value) <> '' then
        fmAuxIni.CodGru := PedRe2CodGru.Value;

      fmAuxIni.CodClp := '1';

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if PedRe2.State = dsBrowse then
        begin

          if Trim(PedRe2CodClp.Value) <> '' then
            PedRe2.Edit
          else
            PedRe2.Append;

        end;

        PedRe2CodGru.Value := fmAuxIni.CodGru;
        PedRe2CodSub.Value := fmAuxIni.CodSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(PedRe2CodSub.Value) <> '' then
      SaiSubGrupo
    else
      EdCodSub.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      if Trim(PedRe2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := PedRe2CodGru.Value;

      fmAuxPsq.CodClp := '1';

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if PedRe2.State = dsBrowse then
        begin

          if Trim(PedRe2CodClp.Value) <> '' then
            PedRe2.Edit
          else
            PedRe2.Append;

        end;

        PedRe2CodGru.Value := fmAuxPsq.CodGru;
        PedRe2CodSub.Value := fmAuxPsq.CodSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(PedRe2CodSub.Value) <> '' then
      SaiSubGrupo
    else
      EdCodSub.SetFocus;

  end;
end;

procedure TfmManPed.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  erro: string;
begin
  inherited;

  if (shift = [ssCtrl]) and (key = vk_F12) then
  begin
    ShowMessage(ActiveControl.Name);
  end;

                          if (EdQtpRe2.Focused) or (EdVluRe2.Focused) or (EdDscRe2.Focused) or (grRe2.Focused) then
  begin

    if (Trim(PedRe2CodClp.AsString) <> '') and
      (Trim(PedRe2CodGru.AsString) <> '') and
      (Trim(PedRe2CodSub.AsString) <> '') and
      (Trim(PedRe2CodPro.AsString) <> '') then
    begin

      if key = 116 then
      begin // F5-Reservas //

        try

          fmPsqRes := TfmPsqRes.Create(Self);

          fmPsqRes.Panel3.Caption := ' ' + PedRe2CodGru.AsString + '.' + PedRe2CodSub.AsString + '.' + PedRe2CodPro.AsString + ' - ' + PedRe2DesRe2.AsString;

          fmPsqRes.PedRes.Close;
          fmPsqRes.PedRes.Params[0].AsString := PedRe2CodClp.AsString;
          fmPsqRes.PedRes.Params[1].AsString := PedRe2CodGru.AsString;
          fmPsqRes.PedRes.Params[2].AsString := PedRe2CodSub.AsString;
          fmPsqRes.PedRes.Params[3].AsString := PedRe2CodPro.AsString;
          fmPsqRes.PedRes.Open;

          fmPsqRes.ShowModal;

        finally

          FreeAndNil(fmPsqRes);

        end;
      end;

      if key = 118 then
      begin // Comprado //

        try

          fmPsqCmp := TfmPsqCmp.Create(Self);

          fmPsqCmp.Label1.Caption := ' ' + PedRe2CodGru.Value + '.' + PedRe2CodSub.Value + '.' + PedRe2CodPro.Value + ' - ' + PedRe2DesRe2.Value;

          fmPsqCmp.CmpPed.Close;
          fmPsqCmp.CmpPed.Params[0].AsString := PedRe2CodClp.Value;
          fmPsqCmp.CmpPed.Params[1].AsString := PedRe2CodGru.Value;
          fmPsqCmp.CmpPed.Params[2].AsString := PedRe2CodSub.Value;
          fmPsqCmp.CmpPed.Params[3].AsString := PedRe2CodPro.Value;
          fmPsqCmp.CmpPed.Open;

          fmPsqCmp.ShowModal;

        finally

          FreeAndNil(fmPsqCmp);

        end;
      end;
    end;
  end;

  if (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then
  begin

    if key = 114 then
    begin // F3 - Descrição //

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := PedRe2CodClp.Value;
        fmAuxIni.CodGru := PedRe2CodGru.Value;
        fmAuxIni.CodSub := PedRe2CodSub.Value;

        fmAuxIni.CliTab := PedResCliTab.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          PedRe2CodClp.Value := fmAuxIni.CodClp;
          PedRe2CodGru.Value := fmAuxIni.CodGru;
          PedRe2CodSub.Value := fmAuxIni.CodSub;
          PedRe2CodPro.Value := fmAuxIni.CodPro;

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(PedRe2CodPro.Value) <> '' then
        SaiProduto
      else
      begin

        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;

      end;
    end;

    if key = 117 then
    begin // F6 - Inteligente/Descrição //

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);
        //fmAuxPsq.Caption := 'Busca inteligente por referência';

        fmAuxPsq.CodClp := PedRe2CodClp.Value;
        fmAuxPsq.CodGru := PedRe2CodGru.Value;
        fmAuxPsq.CodSub := PedRe2CodSub.Value;

        fmAuxPsq.CliTab := PedResCliTab.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            PedRe2CodClp.Value := fmAuxPsq.CodClp;
            PedRe2CodGru.Value := fmAuxPsq.CodGru;
            PedRe2CodSub.Value := fmAuxPsq.CodSub;
            PedRe2CodPro.Value := fmAuxPsq.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(PedRe2CodPro.Value) <> '' then
        SaiProduto
      else
      begin

        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;

      end;
    end;

    if key = 118 then
    begin {F7 - Inteligente/Referência}

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);
        fmAuxPsq.Caption := 'Busca Inteligente por Referência';
        fmAuxPsq.CodClp := PedRe2CodClp.AsString;
        fmAuxPsq.CodGru := PedRe2CodGru.AsString;
        fmAuxPsq.CodSub := PedRe2CodSub.AsString;

        fmAuxPsq.TipoPesq := 'R';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          PedRe2CodClp.AsString := fmAuxPsq.CodClp;
          PedRe2CodGru.AsString := fmAuxPsq.CodGru;
          PedRe2CodSub.AsString := fmAuxPsq.CodSub;
          PedRe2CodPro.AsString := fmAuxPsq.CodPro;

        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(PedRe2CodPro.AsString) <> '' then
        SaiProduto
      else
      begin

        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;

      end;
    end;
  end;

  if key = 115 then
  begin // F4 - Estoque //
    //if {(GGus_Id <> 1) and}(GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
    if true then //Forçar execução deste bloco para que no final possa ser utilizado o enter para trazer os dados do produto no pedido.
    begin
      if not Assigned(fmPsqEs2) then
      begin

        try

          fmPsqEs2 := TfmPsqEs2.Create(Self);

          fmPsqEs2.sEntr := sEntr;

          if Trim(PedResCliTab.AsString) <> '' then
            fmPsqEs2.CliTab := PedResCliTab.AsString;

          fmPsqEs2.sCodClp := '1';

          if (Trim(PedRe2CodGru.AsString) <> '') or
            (Trim(PedRe2CodSub.AsString) <> '') or
            (Trim(PedRe2CodPro.AsString) <> '') then
          begin

            with fmPsqEs2.EstPro, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodClp, EstPro.CodGru, EstPro.CodSub, EstPro.CodPro, EstPro.DscPro, EstPro.RefPro,EstPro.EntIpi,' + _BR +
                ' EstPro.LocPro, EstPro.CodUne, EstPro.CodUns, EstPro.QtePro, EstPro.QtsPro, EstPro.SaiIpi, EstPro.ClfSai,' + _BR +
                ' EstPro.SaiIcm, EstPro.SimPro, EstPro.CodSt1, EstPro.CodSt2, EstPro.QtdEmb, EstPro.ImgPro, EstPro.FlgPro,' + _BR +
                ' EstPro.CbaPro, EstPro.WebPro, EstPro.CodCat, EstPro.CodTip, EstPro.CodMrc, EstPro.NumPro, EstPro.CodAnt,' + _BR +
                ' EstPro.QtdVol,EstPro.ClfEnt,EstPro.EntIcm,EstPro.IdePro,Estpro.CODNCM ' + _BR +
                ' From EstPro' + _BR +
                ' Where EstPro.CodClp = ' + QuotedStr('1') + _BR;
              //'   and EstPro.FlbPro = ' + QuotedStr(' ');

              if Trim(PedRe2CodGru.AsString) <> '' then
                Text := Text + ' and EstPro.CodGru = ' + QuotedStr(PedRe2CodGru.AsString) + _BR;
              if Trim(PedRe2CodSub.AsString) <> '' then
                Text := Text + ' and EstPro.CodSub = ' + QuotedStr(PedRe2CodSub.AsString) + _BR;
              if Trim(PedRe2CodPro.AsString) <> '' then
                Text := Text + ' and EstPro.CodPro = ' + QuotedStr(PedRe2CodPro.AsString) + _BR;

              Text := Text + ' Order by EstPro.DscPro';

              Open;

            end;
          end;

          fmPsqEs2.ShowModal;

          {if sEntr = 'S' then
          begin}

          if Trim(fmPsqEs2.CodGru) <> '' then
          begin

            if EdCodGru.Enabled then
            begin

              PedRe2CodClp.AsString := fmPsqEs2.CodClp;
              PedRe2CodGru.AsString := fmPsqEs2.CodGru;
              PedRe2CodSub.AsString := fmPsqEs2.CodSub;
              PedRe2CodPro.AsString := fmPsqEs2.CodPro;

            end;
          end;
          //end;

        finally

          FreeAndNil(fmPsqEs2);

        end;

        if Trim(PedRe2CodPro.AsString) <> '' then
        begin

          if EdCodGru.Enabled then
            SaiProduto;

        end
        else
        begin

          if EdCodGru.Focused then
            EdCodGru.SetFocus;
          if EdCodSub.Focused then
            EdCodSub.SetFocus;
          if EdCodPro.Focused then
            EdCodPro.SetFocus;

        end;
      end;
    end
    else
    begin
      try

        fmPsqEs2_PPortal := TfmPsqEs2_PPortal.Create(Self);

        fmPsqEs2_PPortal.sEntr := 'N';

        fmPsqEs2_PPortal.sCodClp := '1';

        fmPsqEs2_PPortal.EstPro.Active := False;
        fmPsqEs2_PPortal.EstPro.Params.ParamValues['CODCLP'] := PedRe2CODCLP.AsString;
        fmPsqEs2_PPortal.EstPro.Params.ParamValues['CODGRU'] := PedRe2CODGRU.AsString;
        fmPsqEs2_PPortal.EstPro.Params.ParamValues['CODSUB'] := PedRe2CODSUB.AsString;
        fmPsqEs2_PPortal.EstPro.Params.ParamValues['CODPRO'] := PedRe2CODPRO.AsString;
        fmPsqEs2_PPortal.EstPro.Active := True;

        fmPsqEs2_PPortal.ShowModal;

      finally

        FreeAndNil(fmPsqEs2_PPortal);

      end;
    end;
  end;

  if key = 27 then
  begin

    if PedRes.State <> dsBrowse then
      Close
    else
    begin

      if PedRe2.State <> dsBrowse then
      begin
        PedRe2.CancelUpdates;
        EdCodGru.Enabled := True;
      end;

      if (EdCodGru.Enabled) or (EdCodSub.Enabled) or (EdCodPro.Enabled) or
        (EdQtpRe2.Enabled) or (EdVluRe2.Enabled) or (EdDscRe2.Enabled) or (EdCodGru.Focused) then
      begin

        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpRe2.Enabled := False;
        edPedCompra.Enabled := False;
        edItemCompra.Enabled := false;
        EdCFOP.Enabled := False;
        EdVluRe2.Enabled := False;
        EdDscRe2.Enabled := False;
        EdPacRe2.Enabled := False;

        EdDspRe2.Enabled := False;
        //EdDesRe2.Enabled := False;
        EdObsRe2.Enabled := False;
        EdCodUnd.Enabled := False;

        grRe2.SetFocus;

      end
      else
      begin

        if EdDesRe2.Enabled then
        begin

          {EdDesRe2.Enabled := False;
          EdObsRe2.Enabled := False;

          pnDesRe2.Visible := True;
          pnObsRe2.Visible := True;}

          //EdDesRe2.ReadOnly := True;
          EdObsRe2.ReadOnly := True;

          grRe2.SetFocus;
          Close;
        end
        else
          Close;
      end;
    end;
  end;

  if key = 121 then
  begin // F10-Ocorrencias do Rejeicao do Pedido //

    if PedResUsuRej.Value > 0 then
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

  if key = 122 then
  begin // F11-Ocorrencias do Pedido //

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

  if key = 123 then
  begin // F12-Finalizar Pedido //

    PedRe2.First;
    erro := '';

    {while not pedre2.Eof do
    begin

      //if ((PedResCODTCL.AsString = '3') or (Trim(SUFRAMA) <> '') or (Trim(PedResREGTRB.AsString) <> '3')) then
      //begin
      if (PedRe2CODST2.AsInteger in [20, 30, 40, 41, 50, 70, 90]) then
        if PedRe2CODDESONERACAO.AsInteger = 0 then
        begin
          erro := erro + '     -' +
            PedRe2CODGRU.AsString + '.' +
            PedRe2CODSUB.AsString + '.' +
            PedRe2CODPRO.AsString + #13;
        end;
      //end;

      PedRe2.Next;
    end;

    if Trim(erro) <> '' then
    begin
      ShowMessage('O motivo da Desoneração deve ser informada para o(s) Item(ns): ' +
        #13 + #13 + erro);
      edMotivo.SetFocus;
      Abort;
    end;}

    if PedResTotRes.Value > 0 then
    begin

      if grRe2.Focused then
      begin

        try

          if not (pedres.state in [dsedit, dsinsert]) then
            pedres.edit;
          PedResOBSFIN.Value := PedResOBSFIN.Value + ' ';

          fmManPe1 := TfmManPe1.Create(Self);
          fmManPe1.ShowModal;

        finally

          FreeAndNil(fmManPe1);

        end;

        if Finalizar = 'S' then
        begin

          if fmManGdb.BuscaSimples('PEDPAR', 'PED_BLOC_NOVO', ' 1 = 1') = 'N' then
          begin
            MessageBox(Handle, 'Não é permitido realizar novo pedido. Use cotação.', 'Pedidos', mb_ok + MB_ICONINFORMATION);
            Self.Close;
          end
          else
          begin
            Finalizar := 'N';

            EdCodEmp.Clear;
            EdDteRes.Clear;
            EdCodCli.Clear;
            EdCodVen.Clear;
            EdCodPfa.Clear;
            EdPrfRes.Clear;
            EdDtfRes.Clear;

            pnLimite.Caption := '0' + DecimalSeparator + '00';

            pnNumRes.Caption := '0';

            pnNomEmp.Caption := '';
            pnNomCli.Caption := '';
            pnCgcCli.Caption := '';
            pnNomVen.Caption := '';
            pnUfeRes.Caption := '';
            pnNomAtd.Caption := '';
            EdNomPfa.Text := '';

            PedRes.Close;
            PedRes.Params[0].AsInteger := GEmp_Id;
            PedRes.Params[1].AsDateTime := Date;
            PedRes.Params[2].AsInteger := 0;
            PedRes.Open;

            PedRe2.Close;
            PedRe2.Params[0].AsInteger := PedResCodEmp.Value;
            PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
            PedRe2.Params[2].AsInteger := PedResNumRes.Value;
            PedRe2.Open;

            PedRes.Insert;

            if PedResCodEmp.Value > 0 then
              EdDteRes.SetFocus
            else
              EdCodEmp.SetFocus;
          end;

        end;
      end;
    end;
  end;
end;

procedure TfmManPed.grRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroRe2: integer;
begin
  inherited;
  if (key = 68) and (Shift = []) then
  begin // D - Mudar Descrição/Observações Sobre o Item //

    if PedRe2CodEmp.Asinteger > 0 then
    begin

      EdObsRe2.Enabled := True;

      Panel2.Enabled := True;
      //EdDesRe2.ReadOnly := False;

      EdObsRe2.ReadOnly := False;

      PedRe2.Edit;

      EdObsRe2.SetFocus;

    end;
  end;

  if key = 13 then
  begin // Tecla - ENTER //

    if PedRe2CodEmp.Asinteger > 0 then
    begin

      PedRe2.Edit;

      Panel2.Enabled := True;

      //Sidnei Alterado para Portal. Permitir alterar vlu unbitário do pedido.
      if PedResFlgFec.AsString = 'Sim' then
      begin
        EdVluRe2.Enabled := True;

        if EdVluRe2.CanFocus then
          EdVluRe2.setFocus
        else if edCFOP.CanFocus then
          edCFOP.SetFocus;

      end
      else
      begin
        EdQtpRe2.Enabled := True;
        edPedCompra.Enabled := True;
        edItemCompra.Enabled := True;

        EdCFOP.Enabled := True; //update3
        EdVluRe2.Enabled := True;
        EdDscRe2.Enabled := True;

        EdQtpRe2.SetFocus;
        ControleDescontoAcrescimo;
      end;

    end;

  end;

  if key = 40 then
  begin // Tecla - Seta para Baixo //

    if (PedRe2NroRe2.AsInteger = PedResQtiRes.AsInteger) or (PedRe2.Eof) then
    begin
      Panel2.Enabled := True;
      PedRe2.Append;
    end;

  end;

  if key = 46 then
  begin // Tecla - DEL //

    if Trim(PedRe2CodClp.Asstring) <> '' then
    begin

      NroRe2 := PedRe2SeqRe2.Asinteger;

      PedRe2.Delete;

      with PedRe2 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

        try

          ApplyUpdates; {Tenta aplicar as alterações}

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

          if PedRe2.State <> dsBrowse then
            PedRe2.CancelUpdates;

          grRe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedRe2.Close;
      PedRe2.Open;

      PedRes.Close;
      PedRes.Open;

      if NroRe2 < PedResQtiRes.AsInteger then
      begin
        PedRe2.Locate('CodEmp;DteRes;NumRes;SeqRe2', VarArrayOf([PedRe2CodEmp.AsInteger, PedRe2DteRes.AsdateTime, PedRe2NumRes.AsInteger, NroRe2]),
          [LoPartialKey]);
      end
      else
      begin

        if (PedResQtiRes.AsFloat = 0) or (PedRe2.Eof) then
          PedRe2.Append
        else
          PedRe2.Last;

      end;
    end;
  end;

end;

procedure TfmManPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if Finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar o Pedido?', 'O') then
    begin

      if PedRes.State <> dsBrowse then
        PedRes.CancelUpdates;

      if PedRe2.State <> dsBrowse then
        PedRe2.CancelUpdates;

      if PedResNumRes.Value > 0 then
      begin

        with fmManRes.PedRes, SQL do
        begin

          Close;
          Text := fmManRes.sBase +
            ' Where PedRes.CodEmp = :CodEmp' +
            '   and PedRes.DteRes = :DteRes' +
            '   and PedRes.NumRes = :NumRes';

          with Params do
          begin

            Params[0].AsInteger := PedResCodEmp.Value;
            Params[1].AsDateTime := PedResDteRes.Value;
            Params[2].AsInteger := PedResNumRes.Value;

          end;

          Open;

        end;

        fmManRes.PedRe2.Close;
        fmManRes.PedRe2.Open;

      end
      else
      begin

        fmManRes.PedRes.Close;
        fmManRes.PedRes.Open;

        fmManRes.PedRe2.Close;
        fmManRes.PedRe2.Open;

        if fmManRes.CodEmp > 0 then
          fmManRes.PedRes.Locate('CodEmp;DteRes;NumRes', VarArrayOf([fmManRes.CodEmp, fmManRes.DteRes, fmManRes.NumRes]), [loPartialKey]);

      end;

      Action := CaFree;

    end
    else
    begin

      Abort;

      if PedResNumRes.Value = Null then
        PedRes.Insert;

    end;

  end
  else
  begin

    fmManRes.PedRes.Close;
    fmManRes.PedRes.Open;

    fmManRes.PedRe2.Close;
    fmManRes.PedRe2.Open;

    if fmManRes.CodEmp > 0 then
      fmManRes.PedRes.Locate('CodEmp;DteRes;NumRes', VarArrayOf([fmManRes.CodEmp, fmManRes.DteRes, fmManRes.NumRes]), [loPartialKey]);

    Action := CaFree;

  end;
end;

procedure TfmManPed.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if GFlgAce = 'Nao' then
    begin

      if PedResSitRes.AsString = 'Faturado' then
        fMsg('Operação não Pode ser Realizada. Pedido Faturado.', 'E')

      else if PedResSitRes.AsString = 'Parcialmente Faturado' then
        fMsg('Operação não Pode ser Realizada. Pedido Parcialmente Faturado.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Liberacao do Depto Comercial' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Liberação do Depto Comercial.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Separacao dos Itens a Faturar' then
        fMsg('Operação não Pode ser Realizada. Pedido em Processo de Separação dos Itens para Faturamento.', 'E')

      else if PedResSitRes.AsString = 'Pronto para Faturar' then
        fMsg('Operação não Pode ser Realizada. Pedido Pronto para Faturar.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Separacao de Estoque' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Separação de Estoque.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Liberacao para Faturamento' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Liberacao para Faturamento.', 'E')

      else if PedResSitRes.AsString = 'Cancelado' then
        fMsg('Operação não Pode ser Realizada. Pedido Cancelado', 'E')

      else if PedResSitRes.AsString = 'Faturado com Saldo nao Atendido' then
        fMsg('Operação não Pode ser Realizada. Pedido Faturado com Saldo que não Será Atendido.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Confirmacao do Pagamento' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Confirmação do Pagamento.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Periodo de Programacao' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Periodo de Programação.', 'E')
      else
        fMsg('Operação não Pode ser Realizada. Pedido ' + PedResSitRes.AsString + '.', 'E')
    end
    else
    begin

      if PedResSitRes.AsString = 'Cancelado' then
        fMsg('Operação não Pode ser Realizada. Pedido Cancelado.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Separacao dos Itens a Faturar' then
        fMsg('Operação não Pode ser Realizada. Pedido em Processo de Separação dos Itens para Faturamento.', 'E')

      else if PedResSitRes.AsString = 'Pronto para Faturar' then
        fMsg('Operação não Pode ser Realizada. Pedido Pronto para Faturar.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Separacao de Estoque' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Separação de Estoque.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Liberacao para Faturamento' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Liberacao para Faturamento.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Confirmacao do Pagamento' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Confirmação do Pagamento.', 'E')

      else if PedResSitRes.AsString = 'Faturado' then
        fMsg('Operação não Pode ser Realizada. Pedido Concluido.', 'E')

      else if PedResSitRes.AsString = 'Parcialmente Faturado' then
        fMsg('Operação não Pode ser Realizada. Pedido Concluido.', 'E')

      else if PedResSitRes.AsString = 'Faturado com Saldo nao Atendido' then
        fMsg('Operação não Pode ser Realizada. Pedido Concluido.', 'E')

      else if PedResSitRes.AsString = 'Aguardando Periodo de Programacao' then
        fMsg('Operação não Pode ser Realizada. Pedido Aguardando Periodo de Programação.', 'E');

    end;

    Finalizar := 'S';

    Close;

  end;
end;

procedure TfmManPed.Panel1Exit(Sender: TObject);
var
  SeqRes, NumRes, Status: string;
  tipoCliente, opPadrao: string;

  validacao: TValidacao;
begin
  inherited;

  validacao := TValidacao.Create;

  if (validacao.USA_VALIDADOR) then
  begin
    validacao.UF_ORIG := fmManGDB.BuscaSimples('GEREMP', 'SIGUFE', ' 1 = 1');
    validacao.UF_DEST := PedResUFERES.AsString;
    validacao.SIT_INSC := fmManGDB.BuscaSimplesInt('FINCLI', 'INDIC_IE', ' CODCLI = ' + PedResCODCLI.AsString);
    validacao.validarCabecalho;
  end;

  validacao.Free;

  tipoCliente := '';
  opPadrao := '';

  tipoCLiente := pedresCODTCL.AsString;

  try
    opPadrao := fmManGDB.BuscaSimples('PEDPAR', 'OP_PADRAO', ' 1 = 1');
  except

  end;

  if pedres.state in [dsEdit, dsinsert] then
  begin
    tipoCliente := Trim(tipoCliente);
    opPadrao := Trim(opPadrao);

    if opPadrao = '0' then
      opPadrao := '';

    if opPadrao = '99' then
      opPadrao := '';

    {if tipoCliente <> '' then
      if ((tipoCliente = '1') or (tipoCliente = '4')) then
        pedres.fieldByName('INDIC_CF').asString := '1'
      else
        pedres.fieldByName('INDIC_CF').asString := '0';
    }

    if opPadrao <> '' then
      pedres.fieldByName('INDIC_PRESENCA').asString := opPadrao;

  end;

  if not ((Trim(pedResINDIC_CF.asString) <> '') and (Trim(pedResINDIC_PRESENCA.AsString) <> '')) then
  begin
    if ((pedres.state in [dsEdit, dsInsert]) and ((tipoCliente = '') or (opPadrao = ''))) then
    //if ((pedres.state in [dsEdit, dsInsert])) then
    begin
      try
        begin
          frmIndicadores := TfrmIndicadores.Create(Self);

          frmIndicadores.edIndicCF.DataField := 'INDIC_CF';
          frmIndicadores.edIndicPresenca.DataField := 'INDIC_PRESENCA';
          frmIndicadores.edIndicCF.DataSource := fmManPed.DsRes;
          frmIndicadores.edIndicPresenca.DataSource := fmManPed.DsRes;

          frmIndicadores.INDIC_CON.Active := True;
          frmIndicadores.INDIC_PRES.Active := True;

          frmIndicadores.ShowModal;

          if frmIndicadores.ModalResult = mrOK then
            pSaida := 'Sim'
          else
            pSaida := 'Nao';
        end;
      finally
        FreeAndNil(frmIndicadores);
      end;
    end;
  end;

  if pSaida = 'Sim' then
  begin

    if PedRes.State <> dsBrowse then
    begin

      if PedResID_FRETE.AsInteger < 0 then
      begin
        MessageBox(handle, 'Obrigatório informar tipo de frete. Verifique e tente novamente.', 'Validação', mb_ok + MB_ICONEXCLAMATION);
        if EdFrtRes.CanFocus then
          EdFrtRes.SetFocus;
        Abort;
      end;

      PedResDtfRes.Value := PedResDteRes.Value + PedResPrfRes.Value;

      EdDtfRes.Date := PedResDtfRes.Value;

      if PedResDteRes.AsDateTime = 0 then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdDteRes);

      if not (PedResID_FRETE.AsInteger in [9, 1, 2, 0]) then
      begin
        if PedResTotFrt.AsFloat <= 0 then
        begin
          MessageBox(handle, 'Obrigatório informar valor do frete. Caso não tenha frete informe outro tipo de frete (SEM FRETE).',
            'Pedido de Venda', MB_OK + MB_ICONINFORMATION);
          abort;
        end;
      end;

      Status := 'dsEdit';

      if PedRes.State = dsInsert then
      begin

        Status := 'dsInsert';

        if PedResCodCli.AsInteger = 0 then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodCli);

        if PedResCodVen.AsInteger = 0 then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodVen);

        if Trim(PedResCodPfa.Value) = '' then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodPfa);

        if Trim(PedResUfeRes.Value) = '' then
          fmsgErro('Endereço de Faturamento do Cliente Esta Incompleto.', EdCodCli);

        if PedResIS_CTA.AsInteger = 0 then
        begin
          if Length(trim(PedResNROSUF.AsString)) > 0 then
          begin
            fmMsgSuframa := TfmMsgSuframa.Create(Self);
            try

              fmMsgSuframa.ckICMS.Checked := PedResSUFR_ICMS.AsString = 'S';
              fmMsgSuframa.ckIPI.Checked := PedResSUFR_IPI.AsString = 'S';
              fmMsgSuframa.ckPIS.Checked := PedResSUFR_PIS.AsString = 'S';
              fmMsgSuframa.ckCOFINS.Checked := PedResSUFR_COFINS.AsString = 'S';

              fmMsgSuframa.lbNroSuframa.caption := 'Nro. Suframa: ' + trim(PedResNROSUF.AsString);
              fmMsgSuframa.lbValido.caption := 'Val.: ' + FormatDateTime('dd/mm/yyyy', PedResDtvSuf.AsDateTime);

              if (PedResDtvSuf.AsDateTime < date) or (trim(PedResNROSUF.AsString) = '') then
              begin
                fmMsgSuframa.ckICMS.Enabled := False;
                fmMsgSuframa.ckIPI.Enabled := False;
                fmMsgSuframa.ckPIS.Enabled := False;
                fmMsgSuframa.ckCOFINS.Enabled := False;
              end;

              fmMsgSuframa.ShowModal;

              PedResSUFR_ICMS.AsString := ifThen(fmMsgSuframa.ckICMS.Checked, 'S', 'N');
              PedResSUFR_IPI.AsString := ifThen(fmMsgSuframa.ckIPI.Checked, 'S', 'N');
              PedResSUFR_PIS.AsString := ifThen(fmMsgSuframa.ckPIS.Checked, 'S', 'N');
              PedResSUFR_COFINS.AsString := ifThen(fmMsgSuframa.ckCOFINS.Checked, 'S', 'N');

            finally
              FreeAndnil(fmMsgSuframa);
            end;
          end;
        end;

        if PEDRESREGTRB.AsInteger in [1, 2] then
        begin
          if (PedResUFERES.asString = 'GO') or (PedResUFERES.asString = 'SC') then
          begin
            InformacaoObrigatoria('ATENÇÃO !!! O regime tributário deste Cliente é “Simples Nacional”. Para alguns estados e para certos NCMs com subtituição tributária, o MVA muda. Favor verificar o MVA durante a emissão do Pedido/Cotação.',
              'Lembrete de possível situação especial');
          end;
        end;

        Randomize;
        SeqRes := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
          copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
          copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
          copy(TimeToStr(Time), 1, 2) +
          copy(TimeToStr(Time), 4, 2) +
          copy(TimeToStr(Time), 7, 2) +
          FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
          FNumZeros(Trim(IntToStr(Random(50000))), 5);

        PedResSeqRes.Value := SeqRes;

      end
      else
      begin
        SeqRes := PedResSeqRes.AsString;
        NumRes := PedResNumRes.AsString;
      end;

      if Trim(SeqRes) = '' then
      begin

        Randomize;
        SeqRes := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
          copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
          copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
          copy(TimeToStr(Time), 1, 2) +
          copy(TimeToStr(Time), 4, 2) +
          copy(TimeToStr(Time), 7, 2) +
          FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
          FNumZeros(Trim(IntToStr(Random(50000))), 5);

        PedResSeqRes.Value := SeqRes;

      end;

      CodEmp := PedResCodEmp.Value;
      DteRes := PedResDteRes.Value;

      with PedRes do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

        try

          ApplyUpdates; {Tenta aplicar as alterações}

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

          if PedRes.State = dsBrowse then
            PedRes.Edit;

          {if EdCodEmp.Enabled then
             EdCodEmp.SetFocus
          else
             EdDteRes.SetFocus;}

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      {with quSQL, SQL do begin

            Close;
            Text := ' Select PedRes.CodEmp,PedRes.DteRes,PedRes.NumRes From PedRes' +
               ' Where PedRes.CodEmp = :CodEmp' +
               '   and PedRes.DteRes = :DteRes' +
               '   and PedRes.SeqRes = :SeqRes'
               '   and PedRes.NumRes = :NumRes;

            with Params do begin

                  Params[0].AsInteger := CodEmp;
                  Params[1].AsDateTime := DteRes;
                  Params[2].AsString := SeqRes;
                  Params[3].AsString := NumRes;

               end;

            Open;

         end;}

      if Status = 'dsInsert' then
      begin
        quSQL.Active := False;
        quSQL.SQL.Text := 'select numres from pedres where SeqRes = ' + quotedstr(SeqRes);
        quSQL.Active := True;

        NumRes := quSQL.FieldByName('NUMRES').AsString;

        quSQL.Active := False;
      end;

      PedRes.Active := False;
      PedRe2.Active := False;

      PedRes.Params[0].AsInteger := CodEmp;
      PedRes.Params[1].AsDateTime := DteRes;
      PedRes.Params[2].AsString := NumRes;
      PedRes.Active := True;

      PedRe2.Params[0].AsInteger := CodEmp;
      PedRe2.Params[1].AsDateTime := DteRes;
      PedRe2.Params[2].AsString := NumRes;
      PedRe2.Active := True;

      Application.ProcessMessages;

      CarregaCFOP;

      if Status = 'dsInsert' then
      begin

        with fmManRes.PedRes, SQL do
        begin

          Close;
          Text := fmManRes.sBase +
            ' Where PedRes.CodEmp = :CodEmp' +
            '   and PedRes.DteRes = :DteRes' +
            '   and PedRes.NumRes = :NumRes';

          with Params do
          begin

            Params[0].AsInteger := PedResCodEmp.Value;
            Params[1].AsDateTime := PedResDteRes.Value;
            Params[2].AsInteger := PedResNumRes.Value;

          end;

          Open;

        end;
      end;

      qticms := 1;

      if GUfeEmp <> PedResUfeRes.Value then
      begin

        with quSql, SQL do
        begin

          Close;
          Text := ' Select Count(*) as QtdReg from GerIcm Where GerIcm.SigUfe = ' + QuotedStr(PedResUfeRes.Value);
          Open;

          qticms := FieldbyName('QtdReg').AsInteger;

        end;
      end;

      EdCodEmp.Enabled := False;
      EdDteRes.Enabled := False;
      EdCodCli.Enabled := False;
      EdCodVen.Enabled := False;
      EdCodVen.Enabled := False;
      dxDBColorEdit4.Enabled := False;
      //EdPedAnt.Enabled := False;
      EdCodPfa.Enabled := False;
      EdPrfRes.Enabled := False;
      EdDtfRes.Enabled := False;
      EdDscCom.Enabled := False;

      EdCodEmp.Font.Style := [fsBold];
      EdDteRes.Font.Style := [fsBold];
      EdCodCli.Font.Style := [fsBold];
      EdCodVen.Font.Style := [fsBold];
      CbNomTCl.Font.Style := [fsBold];
      EdPedAnt.Font.Style := [fsBold];
      EdCodPfa.Font.Style := [fsBold];
      EdPrfRes.Font.Style := [fsBold];
      EdDtfRes.Font.Style := [fsBold];
      EdDscCom.Font.Style := [fsBold];

      bPsqEmp.Enabled := False;
      bPsqCli.Enabled := False;
      bPsqVen.Enabled := False;
      bPsqPfa.Enabled := False;

      if PedResQtiRes.Value = 0 then
        PedRe2.Append
      else
        grRe2.SetFocus;

    end;

  end
  else
    panel1.SetFocus;
end;

procedure TfmManPed.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPed := Nil;
end;

procedure TfmManPed.Panel2Exit(Sender: TObject);
var
  NroRe2: integer;
begin
  inherited;

  //Panel2.Enabled := False;

  Panel2.Enabled := True;
  edCodSt2.Enabled := False;
  edCodIPI.Enabled := False;
  edCodPIS.Enabled := False;
  edCodCOF.Enabled := False;
  dxdbcoloredit2.Enabled := False;

  //EdDesRe2.Enabled := False;
  EdObsRe2.Enabled := False;

  if PedRe2.State <> dsBrowse then
  begin

    if EdDesRe2.Enabled then
    begin

      if Trim(PedRe2DesRe2.Value) = '' then
        fmsgErro('Campo de Preenchimento Obrigatorio.', EdDesRe2);

    end;

    if PedRe2QtpRe2.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpRe2);

    if PedRe2VluRe2.Value = 0 then
    begin

      if EdVluRe2.Enabled then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdVluRe2)
      else
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpRe2);

    end;

    if PedRe2.State = dsInsert then
    begin

      with PedRe2 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

        try

          ApplyUpdates; {Tenta aplicar as alterações}

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

          if PedRe2.State = dsBrowse then
            PedRe2.Edit;

          EdCodGru.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedRes.Close;
      PedRes.Open;

      PedRe2.Close;
      PedRe2.Open;

      Panel2.Enabled := True;
      PedRe2.Append;

      EdCodGru.SetFocus;

    end
    else
    begin

      NroRe2 := PedRe2NroRe2.Value;

      with PedRe2 do
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

          if PedRe2.State = dsBrowse then
            PedRe2.Edit;

          EdQtpRe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedRes.Close;
      PedRes.Open;

      PedRe2.Close;
      PedRe2.Open;

      PedRe2.Locate('CodEmp;DteRes;NumRes;NroRe2', VarArrayOf([PedRe2CodEmp.Value, PedRe2DteRes.Value, PedRe2NumRes.Value, NroRe2]), [LoPartialKey]);

      if (PedRe2NroRe2.Value = PedResQtiRes.Value) or (PedRe2.Eof) then
      begin
        Panel2.Enabled := True;
        PedRe2.Append;
      end
      else
      begin

        PedRe2.Next;

        (*EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpRe2.Enabled := False;
        EdCFOP.Enabled := False;
        EdVluRe2.Enabled := False;
        EdDscRe2.Enabled := False;
        EdDspRe2.Enabled := False;
        {//EdDesRe2.Enabled := False;
        EdObsRe2.Enabled := False;}
        EdCodUnd.Enabled := False;

        {pnDesRe2.Visible := True;
        pnObsRe2.Visible := True;}

        EdDesRe2.ReadOnly := True;
        EdObsRe2.ReadOnly := True;*)

        Panel2.Enabled := False;

        grRe2.SetFocus;

      end;
    end;

  end
  else
  begin

    EdCodGru.Enabled := False;
    EdCodSub.Enabled := False;
    EdCodPro.Enabled := False;
    EdQtpRe2.Enabled := False;
    edPedCompra.Enabled := False;
    edItemCompra.Enabled := False;
    EdCFOP.Enabled := False; //update2
    EdVluRe2.Enabled := False;
    EdDscRe2.Enabled := False;
    EdPacRe2.Enabled := False;
    EdDspRe2.Enabled := False;

    grRe2.SetFocus;

  end;

end;

procedure TfmManPed.EdCodProExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodGru.Focused) and (not EdCodSub.Focused) then
      saida := True
    else
      saida := False;

    if saida then
      SaiProduto;

    if(EdQtpRe2.canFocus) then
       EdQtpRe2.SetFocus;
  end;
end;

procedure TfmManPed.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {f1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := PedRe2CodClp.Value;
      fmAuxIni.CodGru := PedRe2CodGru.Value;
      fmAuxIni.CodSub := PedRe2CodSub.Value;

      fmAuxIni.CliTab := PedResCliTab.Value;

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if EdCodGru.Enabled then
        begin

          PedRe2CodClp.Value := fmAuxIni.CodClp;
          PedRe2CodGru.Value := fmAuxIni.CodGru;
          PedRe2CodSub.Value := fmAuxIni.CodSub;
          PedRe2CodPro.Value := fmAuxIni.CodPro;

        end;
      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(PedRe2CodPro.Value) <> '' then
      SaiProduto
    else
      EdCodPro.SetFocus;

  end;

  if key = 113 then
  begin {F5 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := '1';

      if Trim(PedRe2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := PedRe2CodGru.Value;
      if Trim(PedRe2CodSub.Value) <> '' then
        fmAuxPsq.CodSub := PedRe2CodSub.Value;

      fmAuxPsq.CliTab := PedResCliTab.Value;

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if PedRe2.State = dsBrowse then
        begin

          if Trim(PedRe2CodClp.Value) <> '' then
            PedRe2.Edit
          else
            PedRe2.Append;

        end;

        PedRe2CodClp.Value := fmAuxPsq.CodClp;
        PedRe2CodGru.Value := fmAuxPsq.CodGru;
        PedRe2CodSub.Value := fmAuxPsq.CodSub;
        PedRe2CodPro.Value := fmAuxPsq.CodPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(PedRe2CodPro.Value) <> '' then
      SaiProduto
    else
      EdCodPro.SetFocus;

  end;
end;

procedure TfmManPed.EdQtpRe2Exit(Sender: TObject);
var
  Saida: boolean;
  FlgAce: string;
  PrecoLiquido, SldAtu: real;
  SeqIni, SeqLin, CodEmp: integer;
  restMod: double;

begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      pnEstoque.Visible := False;

      if PedRe2.State <> dsBrowse then
      begin

        if PedRe2QtpRe2.AsFloat > 0 then
        begin

          if ((PedRe2QTPRE2.AsFloat > 0) and (PedRe2QTDEMB.AsFloat > 0)) then
          begin
            restMod := Frac(PedRe2QTPRE2.AsFloat / PedRe2QTDEMB.AsFloat);
            if (restMod > 0) then
            begin
              MessageBox(handle, pchar('Quantidade informada não compatível com quantidade por embalagem (' + FormatFloat('0.000',
                FRound(PedRe2QTDEMB.AsFloat, 3)) + '). Verifique e tente novamente.'), 'Item do pedido de venda.', mb_ok + MB_ICONINFORMATION);
              TdxDBColorCurrencyEdit(Sender).SetFocus;
              abort;

            end;
          end;

          FlgAce := 'Nao';

          if PedResLanEst.Value = 'Sim' then
          begin

            if PedResCodFil.AsInteger > 0 then
              CodEmp := PedResCodFil.AsInteger
            else
              CodEmp := PedResCodEmp.AsInteger;

          end
          else
            CodEmp := PedResCodEmp.AsInteger;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select ite.CodEmp,' +
              ' qte.QtdQte QtdIte,' +
              ' (SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) QtrIte,' +
              ' qte.QtdRma QtdRma,' +
              ' qte.QtaQte QtaIte, ' +
              ' ite.Vb1Ite,' +
              ' ite.Ds1Ite,' +
              ' ite.Vb2Ite,' +
              ' ite.Ds2Ite,' +
              ' ite.Vb3Ite,' +
              ' ite.Ds3Ite,' +
              ' ite.Vb4Ite,' +
              ' ite.Ds4Ite,' +
              ' ite.Vb5Ite,' +
              ' ite.Ds5Ite,' +
              ' ite.VpfIte, ' +
              ' (Select SAIIPI from estpro where CodClp = ite.CodClp and codgru = ite.codgru and codsub = ite.codsub and codpro = ite.codpro)as IPI' +
              ' From EstIte ite ' +
              ' join estqte qte on qte.codemp = ite.codemp ' +
              ' and qte.codclp = ite.codclp ' +
              ' and qte.codgru = ite.codgru ' +
              ' and qte.codsub = ite.codsub ' +
              ' and qte.codpro = ite.codpro ' +
              ' Where ite.CodEmp = ' + QuotedStr((EdCodEmp.Text)) +
              ' and ite.CodClp = ' + QuotedStr(PedRe2CodClp.Value) +
              ' and ite.CodGru = ' + QuotedStr(PedRe2CodGru.Value) +
              ' and ite.CodSub = ' + QuotedStr(PedRe2CodSub.Value) +
              ' and ite.CodPro = ' + QuotedStr(PedRe2CodPro.Value);
            //                   clipboard.astext:=text;
            //                   showmessage('Pronto');
            Open;

          end;

          if Trim(GVerEst) = 'Sim' then
          begin

            if quSql.FieldbyName('CodEmp').AsInteger > 0 then
            begin

              SldAtu := fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat), 4);

              if PedRe2QtpRe2.Value > SldAtu then
              begin

                if fMsg('Quantidade Informada para o Item Acima do Estoque Disponivel. Confirma Lançamento ?', 'O') then
                  FlgAce := 'Sim';

              end
              else
                FlgAce := 'Sim';

            end
            else
              fmsgErro('Item Informado não Encontrado na Empresa.', EdCodPro);

          end
          else
            FlgAce := 'Sim';

          if FlgAce = 'Sim' then
          begin

            if (Trim(PedResModPfa.AsString) <> 'Transferencias') and (Trim(PedResModPfa.AsString) <> 'Remessas') and (Trim(PedResModPfa.AsString) <> 'Consumo')
              then
            begin

              try

                fmPsqTab := TfmPsqTab.Create(Self);

                if (PedResCliTab.AsString = '98 Qualquer das Tabelas') //
                or (trim(PedResCliTab.AsString) = '99 Tabela Livre') //
                or (Trim(PedResCliTab.AsString) = '') then
                begin

                  SeqLin := 0;
                  SeqIni := 1;

                  while SeqIni <= 5 do
                  begin

                    if quSql.FieldbyName('Vb' + IntToStr(SeqIni) + 'Ite').AsFloat > 0 then
                    begin

                      PrecoLiquido := quSql.FieldbyName('Vb' + IntToStr(SeqIni) + 'Ite').AsFloat * ((qusql.fieldbyname('IPI').asfloat / 100) + 1);

                      if quSql.FieldbyName('Ds' + IntToStr(SeqIni) + 'Ite').AsFloat > 0 then
                        PrecoLiquido := PrecoLiquido - ((quSql.FieldbyName('Ds' + IntToStr(SeqIni) + 'Ite').AsFloat * PrecoLiquido) / 100);

                      fmPsqTab.StrTab.Cells[0, SeqLin] := 'TABELA ' + fNumZeros(IntToStr(SeqIni), 2);
                      fmPsqTab.StrTab.Cells[1, SeqLin] := PreString(FormatFloat('###,###,##0.0000', quSql.FieldbyName('Vb' + IntToStr(SeqIni) +
                        'Ite').AsFloat), 26);
                      fmPsqTab.StrTab.Cells[2, SeqLin] := PreString(FormatFloat('###,###,##0.00', quSql.FieldbyName('IPI').AsFloat), 26);
                      fmPsqTab.StrTab.Cells[3, SeqLin] := PreString(FormatFloat('###,###,##0.00', quSql.FieldbyName('Ds' + IntToStr(SeqIni) + 'Ite').AsFloat),
                        26) + ' %';
                      fmPsqTab.StrTab.Cells[4, SeqLin] := PreString(FormatFloat('###,###,##0.0000', PrecoLiquido), 26);

                      Inc(SeqLin);

                    end;

                    Inc(SeqIni);

                  end;

                end
                else
                begin

                  SeqLin := 0;
                  SeqIni := StrToInt(copy(PedResCliTab.AsString, 1, 2));

                  while SeqIni <= StrToInt(copy(PedResCliTab.AsString, 1, 2)) do
                  begin

                    if quSql.FieldbyName('Vb' + IntToStr(SeqIni) + 'Ite').AsFloat > 0 then
                    begin

                      PrecoLiquido := quSql.FieldbyName('Vb' + IntToStr(SeqIni) + 'Ite').AsFloat * ((qusql.fieldbyname('IPI').asfloat / 100) + 1);

                      if quSql.FieldbyName('Ds' + IntToStr(SeqIni) + 'Ite').AsFloat > 0 then
                        PrecoLiquido := PrecoLiquido - ((quSql.FieldbyName('Ds' + IntToStr(SeqIni) + 'Ite').AsFloat * PrecoLiquido) / 100);

                      fmPsqTab.StrTab.Cells[0, SeqLin] := 'TABELA ' + fNumZeros(IntToStr(SeqIni), 2);
                      fmPsqTab.StrTab.Cells[1, SeqLin] := PreString(FormatFloat('#,##0.0000', quSql.FieldbyName('Vb' + IntToStr(SeqIni) +
                        'Ite').AsFloat), 26);
                      fmPsqTab.StrTab.Cells[2, SeqLin] := PreString(FormatFloat('#,##0.00', quSql.FieldbyName('IPI').AsFloat), 26) + ' %';
                      fmPsqTab.StrTab.Cells[3, SeqLin] := PreString(FormatFloat('#,##0.00', quSql.FieldbyName('Ds' + IntToStr(SeqIni) + 'Ite').AsFloat),
                        26) + ' %';
                      fmPsqTab.StrTab.Cells[4, SeqLin] := PreString(FormatFloat('#,##0.0000', PrecoLiquido), 26);

                      Inc(SeqLin);

                    end;

                    Inc(SeqIni);

                  end;
                end;

                fmPsqTab.StrTab.RowCount := SeqLin;

                fmPsqTab.ShowModal;

                PedRe2TabPrc.Value := fmPsqTab.TabPrc;

              finally

                FreeAndNil(fmPsqTab);

              end;

            end
            else
              PedRe2TabPrc.Value := 3;

            if PedRe2TabPrc.Value > 0 then
            begin

              if (Trim(PedResModPfa.AsString) <> 'Transferencias') and (Trim(PedResModPfa.AsString) <> 'Remessas') and (Trim(PedResModPfa.AsString) <>
                'Consumo') then
                PedRe2VluRe2.AsFloat := quSQL.FieldbyName('Vb' + Trim(IntToStr(PedRe2TabPrc.Value)) + 'Ite').AsFloat
              else
                PedRe2VluRe2.AsFloat := quSQL.FieldbyName('VpfIte').AsFloat;

              if PedRe2VluRe2.AsFloat <> AntVluRe2 then
              begin

                AntVluRe2 := PedRe2VluRe2.AsFloat;

                PedRe2VlqRe2.AsFloat := PedRe2VluRe2.AsFloat;

                if PedRe2DscRe2.AsFloat > 0 then
                begin

                  PedRe2VdsRe2.AsFloat := fRound((PedRe2DscRe2.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);

                  PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat - PedRe2VdsRe2.AsFloat, 4);

                end;

                if PedRe2DscCom.AsFloat > 0 then
                begin

                  PedRe2VdsCom.AsFloat := fRound((PedRe2DscCom.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);

                  PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat - PedRe2VdsCom.AsFloat, 4);

                end;

                if PedRe2DspRe2.AsFloat > 0 then
                begin

                  PedRe2VdpRe2.AsFloat := fRound((PedRe2DspRe2.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);

                  PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat - PedRe2VdpRe2.AsFloat, 4);

                end;

                if PedRe2PacRe2.AsFloat > 0 then
                begin

                  PedRe2VacRe2.AsFloat := fRound((PedRe2PacRe2.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);

                  PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat + PedRe2VacRe2.AsFloat, 4);

                end;
              end;

              PedRe2TotRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat * PedRe2QtpRe2.AsFloat, 2);

              if EdVluRe2.Enabled then
                EdVluRe2.SetFocus
              else
              begin

                if PedRe2VluRe2.Value = 0 then
                  fmsgErro('Item sem Preço Únitario Informado.', EdQtpRe2);

              end;

            end
            else
              fmsgErro('Tabela de Preço não Informada para o Item.', EdQtpRe2);

          end
          else
            EdQtpRe2.SetFocus;

        end
        else
          fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtpRe2);
      end;
    end;
  end;
end;

procedure TfmManPed.EdVluRe2Exit(Sender: TObject);
var
  ret, FlgAce: string;
  saida: boolean;
  validacao: TValidacao;
begin
  inherited;

  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin
    if (not EdQtpRe2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin
      if (not EdQtpRe2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then

        if PedRe2.State <> dsBrowse then
        begin

          if PedRe2VluRe2.AsFloat > 0 then
          begin

            if PedRe2VluRe2.AsFloat <> AntVluRe2 then
              //if True then
            begin

              FlgAce := 'Nao';

              if PedRe2VluRe2.AsFloat > AntVluRe2 then
              begin
                if fMsg('Valor Informado para o Item Acima do Valor Praticado de Tabela. Confirma Valor Unitário ?', 'O') then
                  FlgAce := 'Sim';
              end
              else
                FlgAce := 'Sim';

              if FlgAce = 'Sim' then
              begin

                PedRe2DscRe2.AsFloat := 0;
                PedRe2VdsRe2.AsFloat := 0;
                PedRe2PacRe2.AsFloat := 0;
                PedRe2VacRe2.AsFloat := 0;

                if AntVluRe2 > 0 then
                begin

                  if PedRe2VluRe2.AsFloat >= AntVluRe2 then
                  begin

                    PedRe2VacRe2.AsFloat := fRound(PedRe2VluRe2.AsFloat - AntVluRe2, 4);

                    if AntVluRe2 > 0 then
                      PedRe2PacRe2.AsFloat := fRound((100 * PedRe2VacRe2.AsFloat) / AntVluRe2, 6)
                    else
                      PedRe2PacRe2.AsFloat := 100;

                  end
                  else
                  begin

                    if PedRe2VluRe2.AsFloat <= AntVluRe2 then
                    begin
                      PedRe2VdsRe2.AsFloat := fRound(AntVluRe2 - PedRe2VluRe2.AsFloat, 4);
                      PedRe2DscRe2.AsFloat := fRound((100 * PedRe2VdsRe2.AsFloat) / AntVluRe2, 6);
                    end;
                  end;
                end;

                AntDscRe2          := PedRe2DscRe2.AsFloat;
                PedRe2VlqRe2.Value := PedRe2VluRe2.AsFloat;

                //*****
                if PedRe2DscCom.AsFloat > 0 then
                begin
                  PedRe2VdsCom.AsFloat := fRound((PedRe2DscCom.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);
                  PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat - PedRe2VdsCom.AsFloat, 4);
                end;

                //*****
                if PedRe2DspRe2.AsFloat > 0 then
                begin
                  PedRe2VdpRe2.AsFloat := fRound((PedRe2DspRe2.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);
                  PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat - PedRe2VdpRe2.AsFloat, 4);
                end;

                //***** ARNALDO C. *****\\
                //*
                if AntVluRe2 > 0 then
                  if PedResFLGFEC.AsString = 'Sim' then
                  begin
                    if PedRe2VluRe2.AsFloat > AntVluRe2 then
                      if GLanMai = 'Nao' then
                        PedRe2VluRe2.AsFloat := AntVluRe2;

                  end
                  else
                    PedRe2VluRe2.AsFloat := AntVluRe2;
                //*
                //***** ARNALDO C. *****\\

                PedRe2TotRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat * PedRe2QtpRe2.AsFloat, 2);
                PedRe2TotVen.AsFloat := fRound(PedRe2VlqRe2.AsFloat * PedRe2QtpRe2.AsFloat, 2);
                PedRe2TotCst.AsFloat := 0;
                PedRe2TotRen.AsFloat := 0;

                //*****
                if PedRe2VcsRe2.AsFloat > 0 then
                begin
                  PedRe2TotCst.AsFloat := fRound(PedRe2VcsRe2.AsFloat * PedRe2QtpRe2.AsFloat, 2);

                  if PedRe2TotCst.AsFloat > 0 then
                    PedRe2TotRen.AsFloat := fRound(((PedRe2TotRe2.AsFloat - PedRe2TotCst.AsFloat) * 100) / PedRe2TotCst.AsFloat, 2);
                end;

                ControleDescontoAcrescimo;

                if (qticms > 1) and (GUfeEmp <> PedResUfeRes.AsString) then
                begin

                  if not (PedResCodTcl.AsInteger in [1, 3, 5]) then
                  begin
                    ret := 'N';
                    try
                      fmPsqIcm := TfmPsqIcm.Create(Self);
                      with fmPsqIcm.GerIcm, SQL do
                      begin
                        Close;
                        Text := ' Select * From GerIcm Where GerIcm.SigUfe = ' + QuotedStr(PedResUfeRes.Value);
                        Open;
                      end;

                      fmPsqIcm.ShowModal;

                      ret := fmPsqIcm.ret;

                      PedRe2IcmRe2.asFloat := fmPsqIcm.Icms;

                    finally

                      FreeAndNil(fmPsqIcm);

                    end;

                    if ret = 'N' then
                      EdVluRe2.SetFocus;

                  end;
                end;

              end
              else
                EdVluRe2.SetFocus;

            end;

          end
          else
            fmsgErro('Campo de Preenchimento Obrigatorio', EdVluRe2);
        end;
    end;
  end;
  IncluiItem;

  validacao := TValidacao.Create;

  if (validacao.USA_VALIDADOR) then
  begin
    validacao.UF_ORIG := fmManGDB.BuscaSimples('GEREMP', 'SIGUFE', ' 1 = 1');
    validacao.UF_DEST := PedResUFERES.AsString;
    validacao.SIT_INSC := fmManGDB.BuscaSimplesInt('FINCLI', 'INDIC_IE', ' CODCLI = ' + PedResCODCLI.AsString);

    //Dados dos Itens
    if (Length(Trim(PedRe2CODST2.AsString)) = 2) then
      validacao.CST := PedRe2CODST2.AsString
    else
      validacao.CSOSN := PedRe2CODST2.AsString;

    validacao.P_ORIG     := PedRe2CODST1.AsInteger;
    validacao.VAL_ICMS   := PedRe2TOTICM.AsFloat;
    validacao.TRIB_ST    := PedRe2TOTSUB.AsFloat > 0;
    validacao.TIPCLI     := PedResCODTCL.AsInteger;
    validacao.ICMS_INTER := PedRe2ICMSUB.AsFloat;
    validacao.TPNF       := 1;
    validacao.CFOP       := PedRe2CODCFO.AsString;

    validacao.validarCabecalho;
    validacao.validarItem;
  end;
end;

procedure TfmManPed.EdDscRe2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdVluRe2.Focused) and (not EdQtpRe2.Focused) and
      (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedRe2.State <> dsBrowse then
      begin

        if PedRe2DscRe2.AsFloat <> AntDscRe2 then
        begin

          if PedRe2DscRe2.AsFloat = 0 then
            PedRe2VdsRe2.AsFloat := 0;

          PedRe2VlqRe2.AsFloat := PedRe2VluRe2.AsFloat;

          if PedRe2DscRe2.AsFloat > 0 then
          begin

            PedRe2VdsRe2.AsFloat := fRound((PedRe2DscRe2.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);

            PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat - PedRe2VdsRe2.AsFloat, 4);

          end
          else
            PedRe2VdsRe2.AsFloat := 0;

          if PedRe2DscCom.AsFloat > 0 then
          begin

            PedRe2VdsCom.AsFloat := fRound((PedRe2DscCom.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);

            PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat - PedRe2VdsCom.AsFloat, 4);

          end
          else
            PedRe2VdsCom.AsFloat := 0;

          if PedRe2DspRe2.AsFloat > 0 then
          begin

            PedRe2VdpRe2.AsFloat := fRound((PedRe2DspRe2.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);

            PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat - PedRe2VdpRe2.AsFloat, 4);

          end
          else
            PedRe2VdpRe2.AsFloat := 0;

          if PedRe2PacRe2.AsFloat > 0 then
          begin

            PedRe2VacRe2.AsFloat := fRound((PedRe2PacRe2.AsFloat * PedRe2VlqRe2.AsFloat) / 100, 4);

            PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat + PedRe2VacRe2.AsFloat, 4);

          end
          else
            PedRe2VacRe2.AsFloat := 0;

          AntDscRe2 := PedRe2DscRe2.Value;

          PedRe2TotRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat * PedRe2QtpRe2.AsFloat, 2);
          PedRe2TotVen.AsFloat := fRound(PedRe2VlqRe2.AsFloat * PedRe2QtpRe2.AsFloat, 2);

          PedRe2TotCst.AsFloat := 0;
          PedRe2TotRen.AsFloat := 0;

          if PedRe2VcsRe2.AsFloat > 0 then
          begin

            PedRe2TotCst.Value := fRound(PedRe2VcsRe2.AsFloat * PedRe2QtpRe2.AsFloat, 2);

            if PedRe2TotCst.AsFloat > 0 then
              PedRe2TotRen.AsFloat := fRound(((PedRe2TotRe2.AsFloat - PedRe2TotCst.AsFloat) * 100) / PedRe2TotCst.AsFloat, 2);

          end;
        end
        else
        begin
          if PedRe2PacRe2.AsFloat > 0 then
          begin

            PedRe2VacRe2.AsFloat := fRound((PedRe2PacRe2.AsFloat * PedRe2VLURE2.AsFloat) / 100, 4);

            PedRe2VlqRe2.AsFloat := fRound(PedRe2VlqRe2.AsFloat + PedRe2VacRe2.AsFloat, 4);

          end
          else
            PedRe2VacRe2.Value := 0;
        end;
      end;
    end;
  end;
end;

procedure TfmManPed.EdDesRe2Exit(Sender: TObject);
begin
  inherited;
  //if Tecla = 'UP' then fmManPed.Panel3.OnExit(Sender);
end;

procedure TfmManPed.EdDspRe2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdDscRe2.Focused) and (not EdVluRe2.Focused) and (not EdQtpRe2.Focused) and
      (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedRe2.State <> dsBrowse then
      begin

        if PedRe2DspRe2.Value <> AntDspRe2 then
        begin

          if PedRe2DspRe2.Value = 0 then
            PedRe2VdpRe2.Value := 0;

          PedRe2VlqRe2.Value := PedRe2VluRe2.Value;

          if PedRe2DscRe2.Value > 0 then
          begin

            PedRe2VdsRe2.Value := fRound((PedRe2DscRe2.Value * PedRe2VlqRe2.Value) / 100, 4);

            PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsRe2.Value, 4);

          end
          else
            PedRe2VdsRe2.Value := 0;

          if PedRe2DscCom.Value > 0 then
          begin

            PedRe2VdsCom.Value := fRound((PedRe2DscCom.Value * PedRe2VlqRe2.Value) / 100, 4);

            PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsCom.Value, 4);

          end
          else
            PedRe2VdsCom.Value := 0;

          if PedRe2DspRe2.Value > 0 then
          begin

            PedRe2VdpRe2.Value := fRound((PedRe2DspRe2.Value * PedRe2VlqRe2.Value) / 100, 4);

            PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value, 4);

          end
          else
            PedRe2VdpRe2.Value := 0;

          if PedRe2PacRe2.Value > 0 then
          begin

            PedRe2VacRe2.Value := fRound((PedRe2PacRe2.Value * PedRe2VlqRe2.Value) / 100, 4);

            PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VacRe2.Value, 4);

          end
          else
            PedRe2VacRe2.Value := 0;

          AntDspRe2 := PedRe2DspRe2.Value;

          PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value, 2);
          PedRe2TotVen.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value, 2);

          PedRe2TotCst.Value := 0;
          PedRe2TotRen.Value := 0;

          if PedRe2VcsRe2.Value > 0 then
          begin

            PedRe2TotCst.Value := fRound(PedRe2VcsRe2.Value * PedRe2QtpRe2.Value, 2);

            if PedRe2TotCst.Value > 0 then
              PedRe2TotRen.Value := fRound(((PedRe2TotRe2.Value - PedRe2TotCst.Value) * 100) / PedRe2TotCst.Value, 2);

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManPed.SaiGrupo;
begin
  if Trim(PedRe2CodGru.Value) <> '' then
  begin

    if PedRe2.State <> dsBrowse then
    begin

      PedRe2CodGru.Value := FNumZeros(PedRe2CodGru.Value, 3);

      with quSql, SQL do
      begin

        Close;
        Text := ' Select Count(*) as QtdReg From EstGru Where EstGru.CodGru = ' + QuotedStr(PedRe2CodGru.Value);
        Open;

      end;

      if quSql.FieldbyName('QtdReg').AsInteger = 0 then
        fmsgErro('Grupo Informado não Encontrado', EdCodGru)
      else
      begin

        if EdQtpRe2.Focused then
        begin

          if Trim(PedRe2CodSub.Value) = '' then
            EdCodSub.SetFocus;
          if Trim(PedRe2CodPro.Value) = '' then
            EdCodPro.SetFocus;

        end
        else
          EdCodSub.SetFocus;

      end;

    end
    else
    begin

      if EdCodGru.Enabled then
      begin

        if Trim(PedRe2CodGru.Value) = '' then
          fmsgErro('Grupo Informado não Encontrado', EdCodGru);

      end;
    end;

  end
  else
    fmsgErro('Grupo Informado não Encontrado', EdCodGru);

end;

procedure TfmManPed.SaiSubGrupo;
begin
  if Trim(PedRe2CodSub.Value) <> '' then
  begin

    if PedRe2.State <> dsBrowse then
    begin

      PedRe2CodSub.Value := FNumZeros(PedRe2CodSub.Value, 4);

      with quSql, SQL do
      begin

        Close;
        Text := ' Select Count(*) as QtdReg From EstSub' +
          ' Where EstSub.CodGru = ' + QuotedStr(PedRe2CodGru.Value) +
          '   and EstSub.CodSub = ' + QuotedStr(PedRe2CodSub.Value);
        Open;

      end;

      if quSQL.FieldbyName('QtdReg').AsInteger = 0 then
        fmsgErro('Grupo e Sub-Grupo Informado não Encontrado.', EdCodGru)
      else
      begin

        if EdQtpRe2.Focused then
        begin

          if Trim(PedRe2CodPro.Value) = '' then
            EdCodPro.SetFocus;

        end
        else
          EdCodPro.SetFocus;

      end;

    end
    else
    begin

      if EdCodSub.Enabled then
      begin

        if Trim(PedRe2CodSub.Value) = '' then
          fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);

      end;
    end;

  end
  else
    fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);

end;

procedure TfmManPed.SaiProduto;
var
  strCodSts, strIcmSai: string;
  vlrPerIcm: Double;
  SQLTEMP: TQuery;
  Pro: TProduto;
  validacao: TValidacao;
  strAliq: string;
  vlrAliq: real;

begin
  inherited;

  if Trim(PedRe2CodPro.AsString) <> '' then
  begin

    if PedRe2.State <> dsBrowse then
    begin

      PedRe2CodPro.Value := FNumStrZero(PedRe2CodPro.Value);

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select Count(1) as Reg From PedRe2 ' +
                ' Where PedRe2.CodEmp = ' + QuotedStr(IntToStr(PedRe2CodEmp.AsInteger)) +
                ' and PedRe2.DteRes = ' + QuotedStr(fDateToSQL(PedRe2DteRes.AsDateTime)) +
                ' and PedRe2.NumRes = ' + QuotedStr(IntToStr(PedRe2NumRes.AsInteger)) +
                ' and PedRe2.CodClp = ' + QuotedStr(PedRe2CodClp.Value) +
                ' and PedRe2.CodGru = ' + QuotedStr(PedRe2CodGru.Value) +
                ' and PedRe2.CodSub = ' + QuotedStr(PedRe2CodSub.Value) +
                ' and PedRe2.CodPro = ' + QuotedStr(PedRe2CodPro.Value) +
                ' and PedRe2.CodTam = ' + QuotedStr(PedRe2CodTam.Value) +
                ' and PedRe2.CodCor = ' + QuotedStr(PedRe2CodCor.Value);
        Open;

      end;

      if( (quSql.FieldbyName('Reg').AsInteger > 0) and (fmManGDB.BuscaSimples('PEDPAR', 'DUP_ITEM_PEDIDO', ' 1 = 1 ') = 'Nao')) then
         begin
            fMsgErro('Item Duplicado !', EdCodPro);
         end
      else
        if((quSql.FieldbyName('Reg').AsInteger > 0) and
           (fmManGDB.BuscaSimples('PEDPAR', 'DUP_ITEM_PEDIDO', ' 1 = 1 ') = 'Sim')) then
           begin
                showMessage('Item já cadastrado!');
               {case MessageBox(Self.Handle,'Item já inserido, deseja continuar?', 'ATENÇÃO',
                    MB_YESNO) of

               IDNO:
                  begin
                    if PedRe2.State <> dsBrowse then
                      begin
                        PedRe2.CancelUpdates;
                        EdCodGru.Enabled := True;
                        exit;
                      end;
                  end;
               IDYES:
                  begin
                     //Gambiarra para contornar o problema, por vias normais nao consegui.
                     Perform(Wm_NextDlgCtl, 0, 0);
                     Application.ProcessMessages;
                     Perform(Wm_NextDlgCtl, 1, 0);
                  end;
            end;}
           end;

      //if quSql.FieldbyName('Reg').AsInteger = 0 then
      if(true) then
      begin

        Pro := TProduto.Create();
        try
          Pro.CodClp := Pedre2CodClp.AsString;
          Pro.CodGru := Pedre2CodGru.AsString;
          Pro.CodSub := Pedre2CodSub.AsString;
          Pro.CodPro := Pedre2CodPro.AsString;
          Pro.UFECli := PedResUFERES.AsString;

          Pro.UFEEmp := fmManGdb.BuscaSimples('GEREMP', 'SIGUFE', ' CodEmp = ' + PedResCodEmp.AsString);
          Pro.TipEmp := fmManGdb.BuscaSimples('GEREMP', 'TIPEMP', ' CodEmp = ' + PedResCodEmp.AsString);

          strAliq := fmManGdb.BuscaSimples('FATPAR', 'coalesce(ALIQ_CRED_SN, 0) as ALIQ_CRED_SN', ' 1 = 1');
          vlrAliq := StrToFloat(strAliq);

          Pro.AliqCred := vlrAliq;

          Pro.CodRegTrib := PedResRegTrbemp.AsInteger;
          Pro.CodRegTribDest := fmManGdb.BuscaSimples('FINCLI', 'REGTRB', ' CODCLI = ' + PedResCODCLI.AsString);
          Pro.CodRegTribCli := fmManGdb.BuscaSimples('FINCLI', 'REGTRB', ' CODCLI = ' + PedResCODCLI.AsString);

          Pro.CodPfa := PedResCodPfa.AsString;
          Pro.TipPfa := PedResTipPfa.AsString;
          Pro.tipo := PedResTipPfa.AsString;
          Pro.FLGCTB := PedResFLGCTB.Asstring;
          Pro.CodTcl := PedResCODTCL.AsInteger;

          //CNAE
          //Alteração Arnaldo
          Pro.CNAE := fmManGdb.BuscaSimples('FINCLI', 'CNAE', ' CODCLI = ' + PedResCODCLI.AsString);

          Pro.Carregadados;

          //CmpRe2CbaRe2.AsString := Pro.PROCbaPro;
          //CmpRe2CLSIPI.asString := Pro.PRONCM;
          PedRe2CodUnd.AsString := Pro.PROCodUnd;
          PedRe2CodSt1.AsString := Pro.PROOrigem;
          PedRe2DesRe2.AsString := Pro.PRODescPro;
          PedRe2ClsIpi.AsString := Pro.PRONCM;
          pedre2Cest.asString := Pro.PROCEST;

          pedre2ALIQ_FCPUFDEST.AsFloat := pro.FCPALIQ_FCPUFDEST;
          pedre2ALIQ_ICMSUFDEST.AsFloat := pro.DIFALALIQ_ICMSUFDEST;
          pedre2ALIQ_ICMSINTER.AsFloat := pro.DIFALALIQ_ICMSINTER;
          pedre2ID_REGRA_FCP.AsInteger := pro.ID_REGRA_FCP;
          //PedRe2QtdEmb.AsFloat := Pro.ProQtdEmb;

          PedRe2REGICM.AsString := Pro.ICMSRegra;
          PedRe2TIPICM.AsString := Pro.ICMSTipo;
          //
          PedRe2CodSt2.AsString := Pro.CSTICMS;
          PedRe2IcmRe2.AsFloat := Pro.ICMSAliq;
          PedRe2BSCICM.AsFloat := Pro.ICMSBase;
          PedRe2REDICM.AsFloat := Pro.ICMSRed;
          PedRe2INCREV.AsFloat := Pro.ICMSIncRev;
          PedRe2INCFIN.AsFloat := Pro.ICMSIncFin;
          PedRe2CodCFO.AsString := Pro.CFOP;

          PedRe2CODSTR.AsString := Pro.STRRegra;
          PedRe2TIPSTR.AsString := Pro.STRTipo;
          PedRe2ICMSUB.AsFloat := Pro.STRAliq;
          PedRe2MRGSUB.AsFloat := Pro.STRMVA;
          //PedRe2BSCSUB.AsFloat := Pro.STRBase;
          PedRe2BaseSB.AsFloat := Pro.STRBase;
          PedRe2REDSUB.AsFloat := Pro.STRRed;
          PedRe2CODTXF.AsString := pro.STRCodTXF;
          PedRe2REGSUB.AsString := Pro.STRRegra;

          PedRe2REGIPI.AsString := Pro.IPIRegra;
          PedRe2TIPIPI.AsString := Pro.IPITipo;
          PedRe2CSTIPI.AsString := Pro.IPICST;
          PedRe2IpiRe2.AsFloat := Pro.IPIAliq;
          PedRe2Cod_Enq.AsString := Pro.IPICOD_ENQ;
          PedRe2BSCIPI.AsFloat := Pro.IPIBase;
          PedRe2CodTxf2.AsString := Pro.IPICodTXF;
          //PedRe2IMPRe2.AsFloat := Pro.IPIPerImp;

          //PedRe2TRBPIS.AsString := Pro.PFAPISTRB;
          PedRe2ALIQPIS.AsFloat := Pro.PISAliq;
          pedre2ALIQPIS_ZF.AsFloat := Pro.PISAliq;
          PedRe2CSTPIS.AsString := Pro.PISCST;
          PedRe2FLG_DESC_ZF_PIS.AsString := Pro.PISFlgDescZf;

          //PedRe2TRBCOF.AsString := Pro.PFACOFTRB;
          PedRe2ALIQCOF.AsFloat := Pro.COFAliq;
          PedRe2ALIQCOF_ZF.AsFloat := Pro.COFAliq;
          PedRe2CSTCOF.AsString := Pro.COFCST;
          PedRe2FLG_DESC_ZF_COF.AsString := Pro.COFFlgDescZf;

          PedRe2FrtICM.AsFloat := Pro.PFAFrtICMS;
          PedRe2SegICM.AsFloat := Pro.PFASegICMS;
          PedRe2DesICM.AsFloat := Pro.PFAOutICMS;

          PedRe2FrtIPI.AsFloat := Pro.PFAFrtIPI;
          PedRe2SegIPI.AsFloat := Pro.PFASegIPI;
          PedRe2DesIPI.AsFloat := Pro.PFAOutIPI;
          //PedRe2IMPRe2.AsFloat := Pro.IPIPerImp;

          PedRe2ID_ESTICM.AsInteger := pro.ID_ESTICM;

        finally
          FreeAndNil(Pro);
        end;

        if (PedRe2CODST2.AsInteger in [20, 30, 40, 41, 50, 70, 90]) then
          edMotivo.Enabled := True
        else
        begin
          PedRe2CODDESONERACAO.AsString := '0';
          edMotivo.Enabled := False;
        end;

        (*with quSQL, SQL do
        begin

          Close;
          Text := ' Select EstPro.CodPro,' + _BR +
            ' EstPro.IcmSai,' + _BR +
            ' EstPro.IcmTsd,' + _BR +
            ' EstPro.SaiIcm,' + _BR +
            ' EstPro.IpiSai,' + _BR +
            ' EstPro.IpiTsd,' + _BR +
            ' EstPro.SaiIpi,' + _BR +
            ' EstPro.CodUns,' + _BR +
            ' EstPro.CodSt1,' + _BR +
            ' EstPro.CodSt2,' + _BR +
            ' EstPro.CODNCM CLFSAI,' + _BR +
            ' EstPro.numpro,' + _BR +
            ' EstPro.DscPro,' + _BR +
            ' EstPro.CODSTS,' + _BR +
            ' EstPro.QTDEMB,' + _BR +
            ' EstPro.CODNCM ClsIpi,' + _BR +
            ' EstIpi.peripi,' + _BR +
            ' EstUFE.REGICM,' + _BR +
            ' EstUFE.CODCFO,' + _BR +
            ' EstICM.CodSt1,' + _BR +
            ' EstICM.CodSt2,' + _BR +
            ' EstICM.PerIcm,' + _BR +
            //' Sub.CodSt1 CodSt1Sub,' + _BR+
          ' EstUFE.CodSt2 CodSt2Sub ' + _BR +
            ' From EstPro ' + _BR +
            ' Left Join EstIpi on EstIpi.CodIpi = EstPro.IpiSai and Estipi.TipIPI = ''Saida'' ' + _BR +
            ' Left Join EstIcm on esticm.CODICM = EstPro.IcmSai and EstIcm.TIPICM = ''Saida'' ' + _BR +
            ' Left Join EstUFE on EstUFE.codstr = EstPro.CodSts and EstUFE.tipstr = ''Saida'' ' + _BR +
            ' and SIGUFE = ' + QuotedStr(PedResUFERES.AsString) + _BR +
            //' and estufe.ufemitente = ' + QuotedStr(fmManGdb.BuscaSimples('GEREMP', 'SIGUFE', ' CODEMP = ' + PedresCodEmp.AsString)) + _BR +
          //' and estufe.regtrib = ' + PedresREGTRBEMP.AsString + _BR +
          //' Left Join EstIcm Sub on Sub.CODICM = EstUFE.REGICM and Sub.TIPICM = ''Saida'' ' + _BR+
//' Left join EstPfa on estpfa.codpfa = ' +QuotedStr(PedResCODPFA.AsString)+ _BR+
          ' Where EstPro.CodClp = ' + QuotedStr(PedRe2CodClp.AsString) + _BR +
            ' and EstPro.CodGru = ' + QuotedStr(PedRe2CodGru.AsString) + _BR +
            ' and EstPro.CodSub = ' + QuotedStr(PedRe2CodSub.AsString) + _BR +
            ' and EstPro.CodPro = ' + QuotedStr(PedRe2CodPro.AsString) + _BR +
            ' and EstPro.FlbPro = ' + quotedStr(' ');

          {with Params do
          begin

            Params[0].AsString := PedRe2CodClp.AsString;
            Params[1].AsString := PedRe2CodGru.AsString;
            Params[2].AsString := PedRe2CodSub.AsString;
            Params[3].AsString := PedRe2CodPro.AsString;
            Params[4].AsString := ' ';

          end; }

          if debughook > 0 then
            Clipboard.AsText := Text;

          Open;

          if length(qusql.fieldbyname('ClsIpi').AsString) < 2 then
          begin
            fMsgErro('Produto sem NCM cadastrado.', edcodgru);
            sysutils.abort;
          end;
        end;

        if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then
        begin

          PedRe2IcmRe2.AsFloat := quSql.FieldbyName('SaiIcm').AsFloat;
          PedRe2IpiRe2.AsFloat := quSql.FieldbyName('PerIpi').AsFloat;
          PedRe2RegIpi.AsString := quSQL.FieldbyName('IpiSai').AsString;
          PedRe2TipIpi.AsString := quSQL.FieldbyName('IpiTsd').AsString;
          PedRe2RegIcm.AsString := quSQL.FieldbyName('IcmSai').AsString;
          PedRe2TipIcm.AsString := quSQL.FieldbyName('IcmTsd').AsString;
          PedRe2CodUnd.AsString := Trim(quSQL.FieldbyName('CodUns').AsString);
          PedRe2CodSt1.AsString := Trim(quSql.FieldbyName('CodSt1').AsString);
          PedRe2CodSt2.AsString := Trim(quSql.FieldbyName('CodSt2').AsString);
          PedRe2DesRe2.AsString := Trim(quSQL.FieldbyName('DscPro').AsString);

          if FmManGdb.BuscaSimples('PEDPAR', 'IMPPARTNUMBER', '1=1') = 'Sim' then
            PedRe2OBSRE2.AsString := Trim(quSQL.FieldbyName('numPro').AsString);

          PedRe2CODCFO.AsString := PedResCODCFO.AsString;
          PedRe2ICMRE2.AsFloat := quSQL.FieldByName('PerIcm').AsFloat;
          PedRe2CODST1.AsString := Trim(quSQL.FieldByName('CODST1').AsString);
          PedRe2CODST2.AsString := Trim(quSQL.FieldByName('CODST2').AsString);
          PedRe2CLSIPI.AsString := Trim(quSQL.FieldByName('CLSIPI').AsString);
          PedRe2QTDEMB.AsFloat := quSQL.FieldByName('QTDEMB').AsFloat;

          {PedRe2CSTPIS.AsString := PedResCSTPIS.AsString;
          PedRe2CSTCOF.AsString := PedResCSTCOF.AsString;
          PedRe2CSTIPI.AsString := PedResCSTIPI.AsString;}

          //Query temporária apenas para retornar Pis e Cofins
          SQLTEMP := TQuery.Create(Self);
          try
            SQLTEMP.DatabaseName := 'Isade';
            SQLTEMP.SQL.Text := 'SELECT PERPIS,PERCOF FROM FATPAR';
            SQLTEMP.Active := True;

            PedRe2ALIQPIS.AsFloat := SQLTEMP.FieldByName('PERPIS').AsFloat;
            PedRe2ALIQCOF.AsFloat := SQLTEMP.FieldByName('PERCOF').AsFloat;

            SQLTEMP.Active := False;

          finally
            FreeAndNil(SQLTEMP);
          end;

          if Trim(quSQL.FieldByName('REGICM').AsString) <> '' then
          begin
            PedRe2CODCFO.AsString := Trim(quSQL.FieldByName('CODCFO').AsString);
            //PedRe2CODST1.AsString := Trim(quSQL.FieldByName('CODST1Sub').AsString);
            PedRe2CODST2.AsString := Trim(quSQL.FieldByName('CODST2Sub').AsString);
          end;

          if Trim(PedResCodIpi.Value) <> '' then
          begin

            PedRe2RegIpi.Value := PedResCodIpi.Value;
            PedRe2TipIpi.Value := PedResTipIpi.Value;
            PedRe2TrbIpi.Value := PedResTrbIpi.Value;
            PedRe2RedIpi.Value := PedResRedIpi.Value;
            PedRe2BscIpi.Value := PedResBscIpi.Value;

          end;

          if Trim(PedResCodIcm.Value) <> '' then
          begin

            PedRe2RegIcm.Value := PedResCodIcm.Value;
            PedRe2TipIcm.Value := PedResTipIcm.Value;
            PedRe2TrbIcm.Value := PedResTrbIcm.Value;
            PedRe2RedIcm.Value := PedResRedIcm.Value;
            PedRe2BscIcm.Value := PedResBscIcm.Value;
            PedRe2IncRev.Value := PedResIncRev.Value;
            PedRe2IncFin.Value := PedResIncFin.Value;

          end;

          if Trim(PedResCodIpi.Value) = '' then
          begin

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select TrbIpi From EstIpi' +
                ' Where EstIpi.CodIpi = ' + QuotedStr(PedRe2RegIpi.Value) +
                '   and EstIpi.TipIpi = ' + QuotedStr(PedRe2TipIpi.Value);
              Open;

              PedRe2TrbIpi.Value := FieldbyName('TrbIpi').AsString;

            end;
          end;

          if (qticms = 1) and (GUfeEmp <> PedResUfeRes.Value) then
          begin

            if (PedResCodTcl.Value <> 1) and (PedResCodTcl.Value <> 3) and (PedResCodTcl.Value <> 5) then
            begin

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select PerIcm From GerIcm Where GerIcm.SigUfe = ' + QuotedStr(PedResUFERES.AsString);
                Open;

                PedRe2IcmRe2.Value := FieldbyName('PerIcm').AsFloat;

              end;
            end;
          end;

          EdQtpRe2.SetFocus;

        end
        else
          fmsgErro('Item Informado não Encontrado.', EdCodPro);*)

      end
      else
        fMsgErro('Item Duplicado !', EdCodPro);

    end
    else
    begin

      if EdCodPro.Enabled then
      begin

        if Trim(PedRe2CodPro.Value) = '' then
          fmsgErro('Item Informado não Encontrado.', EdCodPro);

      end;
    end;

  end
  else
    fmsgErro('Item Informado não Encontrado.', EdCodPro);
end;

procedure TfmManPed.SaiCliente;
var
  LimCli: real;
  NroSuf: string;
  LocPfa: string;
  CodGCl: integer;
  LIB_VEN: string;
begin

  if PedResCodCli.AsInteger > 0 then
    if fmmangdb.BuscaSimples('FinCli', 'FLBCLI', ' codcli = ' + PedResCodCli.AsString) = '*' then
    begin
      messagebox(Handle, PChar('Cliente ' + PedResCodCli.AsString + ' bloqueado. ' + #13 +
        'Desbloqueie o cliente ou informe novo cliente antes de continuar.'), ' Buscando dados do Cliente', mb_ok + MB_ICONEXCLAMATION);
      if EdCodCli.CanFocus then
        EdCodCli.SetFocus;

      Abort;
    end;

  if PedResCodCli.Value > 0 then
  begin

    if fmMangdb.BuscaSimples('pedpar', 'OBRIGA_VER_OBS_CLI', ' 1 = 1 ') = 'S' then
    begin
      fmmanobscli := Tfmmanobscli.Create(Self);
      try
        fmmanobscli.AbreObsCliente(PedResCODCLI.AsInteger);
      finally
        freeandnil(fmmanobscli);
      end;
    end;

    if PedRes.State <> dsBrowse then
    begin
      if ((GCodVen_Id = 0) or (fmmangdb.BuscaSimples('PEDPAR', 'LIB_VEN_OUTROS', ' 1 = 1') = '1')) then
      begin
        with quSql, SQL do
        begin
          Close;
          Text := ' Select FinCli.CodCli,' +
            ' FinCli.NomCli,' +
            ' FinCli.CgcCli,' +
            ' FinCli.NroSuf,' +
            ' FinCli.DTVSUF,' +
            ' FincLi.REGTRB,' +
            ' FinCli.UffCli,' +
            ' FinCli.CodVen,' +
            ' FinCli.LimCli,' +
            ' FinCli.CodPfa,' +
            ' FinCli.TipPfa,' +
            ' FinCli.CodAtd,' +
            ' FinCli.CodTcl,' +
            ' FinCli.INSCLI,' +
            ' FinCli.NROSUF,' +
            ' FinCli.INDIC_IE,' +
            ' FinCli.CodGCl From FinCli Where FinCli.CodCli = :CodCli';
          with Params do
          begin
            Params[0].AsInteger := PedResCodCli.Value;
          end;
          Open;

          if pedrescodven.Value <> GCodVen_Id then
          begin
            PedResCODATD.Value := GCodVen_Id;
            pnNomAtd.Caption := GNomVen_Id;
          end;

        end;

      end
      else
      begin
        LIB_VEN := fmmangdb.BuscaSimples('PEDPAR', 'LIBERA_VEN', ' 1 = 1');
        with quSql, SQL do
        begin

          Close;
          Text := ' Select FinCli.CodCli,' +
            ' FinCli.NomCli,' +
            ' FinCli.CgcCli,' +
            ' FinCli.NroSuf,' +
            ' FinCli.DTVSUF,' +
            ' FincLi.REGTRB,' +
            ' FinCli.UffCli,' +
            ' FinCli.CodVen,' +
            ' FinCli.LimCli,' +
            ' FinCli.CodPfa,' +
            ' FinCli.TipPfa,' +
            ' FinCli.CodAtd,' +
            ' FinCli.CodTcl,' +
            ' FinCli.INSCLI,' +
            ' FinCli.NROSUF,' +
            ' FinCli.INDIC_IE,' +
            ' FinCli.CodGCl From FinCli' +
            ' Where FinCli.CodCli = :CodCli';
          if LIB_VEN <> '1' then
            text := text + '   and FinCli.CodVen = :CodVen';

          with Params do
          begin

            Params[0].AsInteger := PedResCodCli.Value;

            if LIB_VEN <> '1' then
              Params[1].AsInteger := GCodVen_Id;

          end;

          Open;

        end;
      end;

      if c_ven_outros then
      begin
        with quSql, SQL do
        begin
          Close;
          Text := ' Select FinCli.CodCli,' +
            ' FinCli.NomCli,' +
            ' FinCli.CgcCli,' +
            ' FinCli.NroSuf,' +
            ' FinCli.DTVSUF,' +
            ' FincLi.REGTRB,' +
            ' FinCli.UffCli,' +
            ' FinCli.CodVen,' +
            ' FinCli.LimCli,' +
            ' FinCli.CodPfa,' +
            ' FinCli.TipPfa,' +
            ' FinCli.CodAtd,' +
            ' FinCli.CodTcl,' +
            ' FinCli.INSCLI,' +
            ' FinCli.NROSUF,' +
            ' FinCli.INDIC_IE,' +
            ' FinCli.CodGCl From FinCli' +
            ' Where FinCli.CodCli = :CodCli';
          with Params do
          begin
            Params[0].AsInteger := PedResCodCli.Value;
          end;
          Open;
        end;

        //    EdCodVen.Text := IntToStr(GCodVen_Id);
        if pedrescodatd.Value <= 0 then
        begin
          PedResCODATD.Value := GCodVen_Id;
          pnNomAtd.Caption := GNomVen_Id;

        end;

      end;

      if quSql.FieldbyName('CodCli').AsInteger = PedResCodCli.AsInteger then
      begin

        if trim(quSQL.FieldbyName('INDIC_IE').AsString) = '' then
        begin
          EdCodCli.Setfocus;
          messagebox(handle, 'Indicação da IE não informada. Favor Corrigir no Cadastro de Clientes', 'Pedido de Venda', mb_ok + MB_ICONINFORMATION);
          Abort;
        end;

        NroSuf := quSql.FieldbyName('NroSuf').AsString;
        PedResNroSuf.AsString := quSql.FieldbyName('NroSuf').AsString;
        PedResDTVSUF.AsDateTime := quSql.FieldbyName('DTVSUF').AsDateTime;
        PedResRegTrb.AsInteger := quSql.FieldByName('RegTrb').AsInteger;

        CodGCl := quSql.FieldbyName('CodGCl').AsInteger;
        PedResCODTCL.asInteger := quSql.FieldByName('CodTcl').AsInteger;

        PedResCodVen.AsInteger := quSQL.FieldbyName('CodVen').AsInteger;
        PedResUfeRes.AsString := Trim(quSQL.FieldbyName('UffCli').AsString);

        pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
        pnUfeRes.Caption := quSQL.FieldbyName('UffCli').AsString;

        SUFRAMA := quSQL.FieldbyName('NROSUF').AsString;

        PedResINSCLI.AsString := quSQL.FieldbyName('INSCLI').AsString;

        if (fmmangdb.BuscaSimples('GEREMP', 'sigufe', ' codemp = ' + PedresCodEmp.AsString) <> PedResUFERES.AsString)
          and (quSQL.FieldbyName('INDIC_IE').AsString = '9') then
        begin
          InformacaoObrigatoria('Operação interestadual com cliente não contribuinte com possibilidade de DIFAL caso seja venda consumidor final.',
            'Alerta de impostos interestaduais');
        end;

        if PedResCodVen.AsInteger > 0 then
          EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

        if Trim(quSQL.FieldbyName('CgcCli').AsString) <> '' then
        begin

          if Length(Trim(quSQL.FieldbyName('CgcCli').AsString)) <= 11 then
            pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 03) + '.' +
              copy(quSQL.FieldbyName('CgcCli').AsString, 04, 03) + '.' +
              copy(quSQL.FieldbyName('CgcCli').AsString, 07, 03) + '-' +
              copy(quSQL.FieldbyName('CgcCli').AsString, 10, 02)
          else
            pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 02) + '.' +
              copy(quSQL.FieldbyName('CgcCli').AsString, 03, 03) + '.' +
              copy(quSQL.FieldbyName('CgcCli').AsString, 06, 03) + '/' +
              copy(quSQL.FieldbyName('CgcCli').AsString, 09, 04) + '-' +
              copy(quSQL.FieldbyName('CgcCli').AsString, 13, 02);

        end
        else
          pnCgcCli.Caption := '';

        LimCli := quSQL.FieldbyName('LimCli').AsFloat;

        if GCodAtd_Id > 0 then
        begin

          if quSQL.FieldbyName('CodAtd').AsInteger <> GCodAtd_Id then
          begin

            pnNomCli.Caption := '';
            pnCgcCli.Caption := '';
            pnUfeRes.Caption := '';
            pnNomVen.Caption := '';
            pnLimite.Caption := '0' + decimalSeparator + '00';

            fmsgErro('Cliente Informado não Pertence ao Atendente.', EdCodCli);

          end;
        end;

        if Trim(quSQL.FieldbyName('CodPfa').AsString) <> '' then
        begin

          PedResCodPfa.AsString := Trim(quSQL.FieldbyName('CodPfa').AsString);
          PedResTipPfa.AsString := Trim(quSQL.FieldbyName('TipPfa').AsString);

          if Trim(PedResCodPfa.Value) <> '' then
            EdCodPfa.Text := PedResCodPfa.Value;

          if PedResUfeRes.Value = 'EX' then
            LocPfa := 'Importacao ou Exportacao'
          else
          begin

            if PedResUfeRes.Value <> GUfeEmp then
              LocPfa := 'Outros Estados'
            else
              LocPfa := 'Mesmo Estado'

          end;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select EstPfa.DscPfa From EstPfa ' +
              ' Where coalesce(EstPfa.FlgAtivo,1) = 1 ' +
              ' and EstPfa.TipPfa = :TipPfa' +
              ' and EstPfa.CodPfa = :CodPfa' +
              ' and EstPfa.LocPfa = :LocPfa';

            with Params do
            begin

              Params[0].AsString := PedResTipPfa.Value;
              Params[1].AsString := PedResCodPfa.Value;
              Params[2].AsString := LocPfa;

            end;

            Open;

            EdNomPfa.Text := FieldbyName('DscPfa').AsString;

          end;
        end;

        if (GCodVen_Id > 0) or (GCodAtd_Id > 0) then
        begin

          if Trim(PedResCodPfa.Value) <> '' then
          begin

            pSaida := 'Nao';

            bPsqPfa.Enabled := False;

            //EdCodPfa.Enabled := False;

            EdCodPfa.Font.Style := [fsBold];

            pSaida := 'Sim';

          end
          else
          begin

            pSaida := 'Nao';

            bPsqPfa.Enabled := True;

            //EdCodPfa.Enabled := True;

            EdCodPfa.Font.Style := [];

            pSaida := 'Sim';

          end;
        end;

        with quSql, SQL do
        begin

          Close;
          Text := ' Select FinGCl.CliTab From FinGCl Where FinGCl.CodGCl = :CodGCl';

          with Params do
          begin

            Params[0].AsInteger := CodGCl;

          end;

          Open;

          PedResCliTab.Value := Trim(FieldbyName('CliTab').AsString);

        end;

        if PedResCodVen.Value > 0 then
        begin

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select FinVen.CodVen,FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(IntToStr(PedResCodVen.asinteger));
            Open;

          end;

          if quSQL.FieldbyName('CodVen').AsInteger > 0 then
            pnNomVen.Caption := quSQL.FieldbyName('ApeVen').AsString
          else
          begin

            pnNomVen.Caption := ' ';

            fmsgErro('Vendedor Informado para o Cliente não Encontrado.', EdCodCli);

          end;
        end;

        pnLimite.Caption := FormatFloat('###,###,##0.00', LimCli);

        if Trim(PedResUfeRes.Value) <> '' then
        begin

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select * From GerUfe Where GerUfe.SigUfe = ' + QuotedStr(PedResUfeRes.Value);
            Open;

          end;

          if Trim(quSQL.FieldbyName('SigUfe').AsString) <> '' then
          begin

            if Trim(NroSuf) <> '' then
              PedResDscReg.Value := quSQL.FieldbyName('DscUfe').AsFloat
            else
              PedResDscReg.Value := 0;

          end
          else
            PedResDscReg.Value := 0;

          if quSQL.FieldbyName('DscCom').AsFloat > 0 then
          begin

            if not EdDscCom.Enabled then
            begin

              pSaida := 'Nao';

              EdDscCom.Enabled := True;

              EdDscCom.Font.Style := [];

              pSaida := 'Sim';

              PedResDscCom.Value := quSQL.FieldbyName('DscCom').AsFloat;

              EdDscCom.Text := FormatFloat('##0.00', PedResDscCom.Value);

            end;

          end
          else
          begin

            if EdDscCom.Enabled then
            begin

              pSaida := 'Nao';

              EdDscCom.Enabled := False;

              EdDscCom.Font.Style := [fsBold];

              pSaida := 'Sim';

              PedResDscCom.Value := 0;

              EdDscCom.Text := '0';

            end;
          end;

          if EdCodVen.Enabled then
            EdCodVen.SetFocus
          else
          begin

            if EdDscCom.Enabled then
              EdDscCom.SetFocus
            else
            begin

              if EdCodPfa.Enabled then
                EdCodPfa.SetFocus
              else
                EdPedAnt.SetFocus;

            end;
          end;

        end
        else
          fmsgErro('Endereço de Faturamento do Cliente Incompleto. Falta UF', EdCodCli);

      end
      else
      begin

        pnNomCli.Caption := '';
        pnCgcCli.Caption := '';
        pnUfeRes.Caption := '';
        pnNomVen.Caption := '';
        pnLimite.Caption := '0' + decimalSeparator + '00';

        fmsgErro('Cliente Informado não Encontrado', EdCodCli);

      end;
    end;

  end
  else
  begin

    pnNomCli.Caption := '';
    pnUfeRes.Caption := '';
    pnCgcCli.Caption := '';
    pnNomVen.Caption := '';
    pnLimite.Caption := '0' + decimalSeparator + '00';

    fmsgErro('Campo de Preenchimento Obrigátorio não Informado.', EdCodCli);

  end;

  Application.ProcessMessages;
end;

procedure TfmManPed.EdCodUndExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodGru.Focused) and (not EdCodSub.Focused) and
      (not EdCodPro.Focused) and (not EdQtpRe2.Focused) and (not EdVluRe2.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if Trim(PedRe2CodUnd.Value) <> '' then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select EstUnd.NomUnd From EstUnd Where EstUnd.CodUnd = ' + QuotedStr(PedRe2CodUnd.Value);
          Open;

        end;

        if Trim(quSQL.FieldbyName('NomUnd').AsString) = '' then
          fmsgErro('Unidade Informada não Encontrada.', EdCodUnd);

      end
      else
        fmsgErro('Unidade Informada não Encontrada.', EdCodUnd);

    end;
  end;
end;

procedure TfmManPed.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqUnd := TfmPsqUnd.Create(Self);

      fmPsqUnd.ShowModal;

      if Trim(fmPsqUnd.CodUnd) <> '' then
      begin

        PedRe2CodUnd.Value := Trim(fmPsqUnd.CodUnd);

        EdCodUnd.Text := PedRe2CodUnd.Value;

      end;

    finally

      FreeAndNil(fmPsqUnd);

    end;

    if Trim(PedRe2CodUnd.Value) <> '' then
      EdDscRe2.SetFocus
    else
      EdCodUnd.SetFocus;

  end;
end;

procedure TfmManPed.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  CodVen: integer;
begin
  inherited;

  CodVen := 0;

  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'V';
      fmAuxIni.ShowModal;

      if fmAuxIni.CodVen > 0 then
      begin

        CodVen := fmAuxIni.CodVen;

        PedResCodVen.Value := fmAuxIni.CodVen;

        pnNomVen.Caption := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(PedResCodVen.Value);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if CodVen > 0 then
    begin

      if EdDscCom.Enabled then
        EdDscCom.SetFocus
      else
      begin

        if EdCodPfa.Enabled then
          EdCodPfa.SetFocus
        else
          EdPedAnt.SetFocus;

      end;
    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'V';
      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodVen > 0 then
      begin

        CodVen := fmAuxPsq.CodVen;

        PedResCodVen.Value := fmAuxPsq.CodVen;

        pnNomVen.Caption := fmAuxPsq.NomVen;

        EdCodVen.Text := IntToStr(PedResCodVen.Value);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if CodVen > 0 then
    begin

      if EdDscCom.Enabled then
        EdDscCom.SetFocus
      else
      begin

        if EdCodPfa.Enabled then
          EdCodPfa.SetFocus
        else
          EdPedAnt.SetFocus;

      end;
    end;
  end;
end;

procedure TfmManPed.EdCodVenExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodCli.Focused) and (not EdDteRes.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedRes.State <> dsBrowse then
      begin

        if PedResCodVen.Value > 0 then
        begin

          with quSql, SQL do
          begin

            Close;
            Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

            with Params do
            begin

              Params[0].AsInteger := PedResCodVen.Value;

            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('ApeVen').AsString) <> '' then
            pnNomVen.Caption := quSql.FieldbyName('ApeVen').AsString
          else
          begin

            pnNomVen.Caption := '';

            fmsgErro('Vendedor Informado não Encontrado', EdCodVen);

          end;

        end
        else
        begin

          pnNomVen.Caption := '';

          fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodVen);

        end;

      end
      else
      begin

        pnNomVen.Caption := '';

        fmsgErro('Vendedor Informado não Encontrado', EdCodVen);

      end;
    end;
  end;
end;

procedure TfmManPed.bpsqVenClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'V';
    fmAuxIni.ShowModal;

    if fmAuxIni.CodVen > 0 then
    begin

      PedResCodVen.Value := fmAuxIni.CodVen;

      pnNomVen.Caption := fmAuxIni.NomVen;

      EdCodVen.Text := IntToStr(PedResCodVen.Value);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManPed.grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  {inherited;
  if gdSelected in State then
  begin

    with (Sender as TDBGrid).Canvas do
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

      with (Sender as TDBGrid).Canvas do
      begin

        Font.Color := clRed;

        FillRect(Rect);

      end;
    end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);}

end;

procedure TfmManPed.DsRe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedRe2.State = dsBrowse then
  begin

    AntVluRe2 := PedRe2VluRe2.Value;
    AntDscRe2 := PedRe2DscRe2.Value;
    AntDspRe2 := PedRe2DspRe2.Value;

  end;

  {pnDesRe2.Caption := PedRe2DesRe2.Value;
  pnObsRe2.Caption := PedRe2ObsRe2.Value;}

  pnNumRes.Caption := IntToStr(PedResNumRes.Value);

  //pnTotRes.Caption := FormatFloat('###,###,##0.00', PedResTotRes.Value);
  //pnTotIpi.Caption := FormatFloat('###,###,##0.00', PedResTotIpi.Value);
  //pnTotDsr.Caption := FormatFloat('###,###,##0.00', PedResTotDsr.Value);
  //pnTotSub.Caption := FormatFloat('###,###,##0.00', PedResTotSub.Value);
  //pnTotGer.Caption := FormatFloat('###,###,##0.00', PedResTotGer11.Value);
  pnTotRen.Caption := FormatFloat('###,###,##0.00', PedResTotRen.Value);
  pnTotMk2.Caption := FormatFloat('###,###,##0.00', PedRe2TotRen.Value);
  //pnTotSu2.Caption := FormatFloat('###,###,##0.00', PedRe2TotSub.Value);

  if PedResFlgOco.Value = '*' then
    pnFlgOco.Color := clRed
  else
    pnFlgOco.Color := clLime;

  if PedRe2.State = dsInsert then
    pnNroRe2.Caption := FNumZeros(IntToStr(PedRe2NroRe2.Value), 4) + '/' + FNumZeros(IntToStr(PedResQtiRes.Value + 1), 4)
  else
    pnNroRe2.Caption := FNumZeros(IntToStr(PedRe2NroRe2.Value), 4) + '/' + FNumZeros(IntToStr(PedResQtiRes.Value), 4);

end;

procedure TfmManPed.EdVluRe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Últimas Vendas para o Item}

    try

      fmPsqUve := TfmPsqUve.Create(Self);

      fmPsqUve.Panel3.Caption := ' ' + PedRe2CodGru.Value + '.' + PedRe2CodSub.Value + '.' + PedRe2CodPro.Value + ' - ' + PedRe2DesRe2.Value;

      fmPsqUve.PedRes.Close;
      fmPsqUve.PedRes.Params[0].AsInteger := PedResCodCli.Value;
      fmPsqUve.PedRes.Params[1].AsString := PedRe2CodClp.Value;
      fmPsqUve.PedRes.Params[2].AsString := PedRe2CodGru.Value;
      fmPsqUve.PedRes.Params[3].AsString := PedRe2CodSub.Value;
      fmPsqUve.PedRes.Params[4].AsString := PedRe2CodPro.Value;
      fmPsqUve.PedRes.Open;

      fmPsqUve.ShowModal;

    finally

      FreeAndNil(fmPsqUve);

    end;
  end;
end;

procedure TfmManPed.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque';

  end
  else
    sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdDteREsEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'F4-Estoque F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'F4-Estoque';

  end
  else
    sbInfo.Panels[0].Text := 'F4-Estoque F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdCodCliEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'F1-Iniciais F2-Inteligente F4-Estoque F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'F1-Iniciais F2-Inteligente F4-Estoque';

  end
  else
    sbInfo.Panels[0].Text := 'F1-Iniciais F2-Inteligente F4-Estoque F10-Rejeições F11-Ocorrências';

  CFOP_OLD := EdCodPfa.text;

end;

procedure TfmManPed.grRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado';

  end
  else
    sbInfo.Panels[0].Text := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';
  grRe2.Color := clInfoBk;
end;

procedure TfmManPed.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Oco'
    else
      sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

  end
  else
    sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F10-Rej F11-Oco';

end;

procedure TfmManPed.EdCodProEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

  end
  else
    sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdQtpRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.Visible then
  begin
    pnEstoque.BringToFront;
    pnEstoque.Visible := True;
  end;

  if PedResUsuRej.AsInteger = 0 then
  begin

    if PedResFlgOco.AsString = '*' then
      sbInfo.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado';

  end
  else
    sbInfo.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

  if PedResLanEst.AsString = 'Sim' then
  begin

    if PedResCodFil.AsInteger > 0 then
      CodEmp := PedResCodFil.AsInteger
    else
      CodEmp := PedResCodEmp.AsInteger;

  end
  else
    CodEmp := PedResCodEmp.AsInteger;

  with quSql, SQL do
  begin

    Close;
    Text := ' Select EstPro.QtdEmb' +
      ' From EstPro' +
      ' Where EstPro.CodClp = ' + QuotedStr(PedRe2CodClp.AsString) +
      ' and EstPro.CodGru = ' + QuotedStr(PedRe2CodGru.AsString) +
      ' and EstPro.CodSub = ' + QuotedStr(PedRe2CodSub.AsString) +
      ' and EstPro.CodPro = ' + QuotedStr(PedRe2CodPro.AsString);
    Open;

    EdQtdEmb.Caption := FormatFloat('###,###,##0.0000', FieldbyName('QtdEmb').AsFloat) + ' ';

  end;

  with quSql, SQL do
  begin

    Close;
    Text := ' Select Pro.QtdEmb,' +
      ' (select count(1) from estpro p2 where p2.SIMPRO = pro.SIMPRO and RTRIM(LTRIM(coalesce(p2.SIMPRO,''''))) <> '''') QTDSIM ' +
      ' From EstPro Pro ' +
      ' Where Pro.CodClp = ' + QuotedStr(PedRe2CodClp.AsString) +
      '   and Pro.CodGru = ' + QuotedStr(PedRe2CodGru.AsString) +
      '   and Pro.CodSub = ' + QuotedStr(PedRe2CodSub.AsString) +
      '   and Pro.CodPro = ' + QuotedStr(PedRe2CodPro.AsString);
    Open;

    EdQtdEmb.Caption := FormatFloat('#,##0.0000', FieldbyName('QtdEmb').AsFloat) + ' ';

    if quSql.FieldByName('QTDSIM').AsInteger > 0 then
    begin
      //pnEstoque.Top := 78;
      //pnEstoque.Height := 195;
      pnEstoque.Width := 375;
    end
    else
    begin
      //pnEstoque.Top := 104;
      //pnEstoque.Height := 175;
      pnEstoque.Width := 321;
    end;

  end;

  with quSql, SQL do
  begin

    Close;
    Text := ' Select Estqte.CodEmp,' +
      ' Estqte.Qtdqte,' +
      ' Estqte.Qtrqte,' +
      ' Estqte.QtdRma,' +
      ' Estqte.Qtaqte From Estqte' +
      ' Where Estqte.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
      ' and Estqte.CodClp = ' + QuotedStr(PedRe2CodClp.AsString) +
      ' and Estqte.CodGru = ' + QuotedStr(PedRe2CodGru.AsString) +
      ' and Estqte.CodSub = ' + QuotedStr(PedRe2CodSub.AsString) +
      ' and Estqte.CodPro = ' + QuotedStr(PedRe2CodPro.AsString);
    Open;

  end;

  EdQtdIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('Qtdqte').AsFloat) + ' ';
  EdQtrIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('Qtrqte').AsFloat) + ' ';
  EdQtdRma.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('QtdRma').AsFloat) + ' ';
  EdQtaIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('Qtaqte').AsFloat) + ' ';

  if fRound(quSQL.FieldbyName('Qtdqte').AsFloat - quSQL.FieldbyName('Qtrqte').AsFloat, 4) < 0 then
    EdSldIte.Font.Color := clRed
  else
    EdSldIte.Font.Color := clGray;

  EdSldIte.Caption := FormatFloat('###,###,##0.0000', fRound(quSQL.FieldbyName('Qtdqte').AsFloat - (quSQL.FieldbyName('Qtrqte').AsFloat +
    quSQL.FieldbyName('QtdRma').AsFloat), 4)) + ' ';

end;

procedure TfmManPed.EdVluRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado';

  end
  else
    sbInfo.Panels[0].Text := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdCodUndEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado';

  end
  else
    sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdDscRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then
  begin

    if PedResFlgOco.Value = '*' then
      sbInfo.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
    else
      sbInfo.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado';

  end
  else
    sbInfo.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.grRe2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #4 then
  begin {Ctrl+D - Descontos}

    if PedRe2CodEmp.Value > 0 then
    begin

      try

        fmManDesc1 := TfmManDesc1.Create(Self);

        fmManDesc1.ShowModal;

      finally

        FreeAndNil(fmManDesc1);

      end;
    end;
  end;

end;

procedure TfmManPed.PedResAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if PedResFLGFEC.AsString = 'Sim' then
  begin
    PedRe2.UpdateObject := UpRe2Fec;
  end
  else
  begin
    PedRe2.UpdateObject := UpRe2;
  end;

  ValidaFrete;
end;

procedure TfmManPed.PedRe2BeforePost(DataSet: TDataSet);
begin
  inherited;
  //GAMBIARRA PARA NÃO DEIXAR O CAMPO NULO
  if PedRe2ICMRE2.IsNull then
    PedRe2ICMRE2.Value := 0.0;

end;

procedure TfmManPed.TipoCliente;
begin
end;

procedure TfmManPed.CarregaCFOP;
var
  LocPfa: string;
begin

  LocPfa := FmManGdb.BuscaSimples('ESTPFA', 'LOCPFA', ' CODPFA = ' + QuotedStr(Trim(PedResCodPfa.Asstring)));

  CFOP.Active := False;
  //Carrega Lookup para CFOP
  if LocPfa = 'Mesmo Estado' then
    CFOP.SQL.TEXT := 'Select * from CFOP where Substring(CODCFO from 1 for 1) = ''5'' '
  else if LocPfa = 'Outros Estados' then
    CFOP.SQL.TEXT := 'Select * from CFOP where Substring(CODCFO from 1 for 1) = ''6'' '
  else //if LocPfa = 'Outro Estado' then
    CFOP.SQL.TEXT := 'Select * from CFOP where Substring(CODCFO from 1 for 1) = ''7'' ';

  CFOP.Active := True;
end;

procedure TfmManPed.CarregaCbo;
begin

  //ST ICMS
  fmManGdb.CarregaCboICMS(Trim(FmManGdb.BuscaSimples('GEREMP', 'TIPEMP', ' CODEMP = ' + IntToStr(GEmp_Id))) = 'Simples Nacional');

  //st PIS
  fmManGdb.CarregaCboPIS;

  //st COF
  fmManGdb.CarregaCboCOF;

  //st IPI
  fmManGdb.CarregaCboIPI('Saida');

end;

procedure TfmManPed.dxDBColorEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //Permite apenas inserir 0,1 e 2
  if not (Key in ['0'..'2', #9, #8]) then
    Key := #0;
end;

procedure TfmManPed.grRe2Exit(Sender: TObject);
begin
  inherited;
  grRe2.Color := $00FCF4ED;
end;

procedure TfmManPed.PedResTIPFRTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if trim(Sender.AsString) = '0' then
    Text := '0 - Por conta do emitente'
  else if trim(Sender.AsString) = '1' then
    Text := '1 - Por conta do destinatário/remetente'
  else if trim(Sender.AsString) = '2' then
    Text := '2 - Por conta de terceiros'
  else
    Text := '9 - Sem Frete';
end;

procedure TfmManPed.PedResTIPFRTSetText(Sender: TField;
  const Text: string);
begin
  inherited;

  if Text = '0 - Por conta do emitente' then
    Sender.AsString := '0'
  else if Text = '1 - Por conta do destinatário/remetente' then
    Sender.AsString := '1'
  else if Text = '2 - Por conta de terceiros' then
    Sender.AsString := '2'
  else
    Sender.AsString := '9';
end;

procedure TfmManPed.Panel15Exit(Sender: TObject);
begin
  inherited;
  grRe2.SetFocus;
end;

procedure TfmManPed.PedRe2BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  Panel2.Enabled := True;

  if (PedRe2CODST2.AsInteger in [20, 30, 40, 41, 50, 70, 90]) then
    edMotivo.Enabled := True
  else
    edMotivo.Enabled := False;
end;

procedure TfmManPed.PedRe2BeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Panel2.Enabled := True;
end;

procedure TfmManPed.pnIniProExit(Sender: TObject);
var
  NroRe2: integer;
begin
  inherited;

  if PedRe2.State <> dsBrowse then
  begin

    if EdDesRe2.Enabled then
    begin

      if Trim(PedRe2DesRe2.Value) = '' then
        fmsgErro('Campo de Preenchimento Obrigatorio.', EdDesRe2);

    end;

    if PedRe2QtpRe2.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpRe2);

    if PedRe2VluRe2.Value = 0 then
    begin

      if EdVluRe2.Enabled then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdVluRe2)
      else
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpRe2);

    end;

    NroRe2 := PedRe2SeqRe2.AsInteger;

    if (PedRe2.State in [dsInsert, dsEdit]) then
    begin
      //Panel20.Enabled := False;
      with PedRe2 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

        try

          ApplyUpdates; {Tenta aplicar as alterações}

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

          if PedRe2.State = dsBrowse then
          begin
            PedRe2.Edit;
          end;

          Panel2.Enabled := True;

          if EdQtpRe2.CanFocus then
            EdQtpRe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedRes.Close;
      PedRes.Open;

      PedRe2.Close;
      PedRe2.Open;

      PedRe2.Locate('CodEmp;DteRes;NumRes;SeqRe2', VarArrayOf([PedRe2CODEMP.AsInteger, PedRe2DTERES.AsDateTime, PedRe2NUMRES.AsInteger, NroRe2]),
        [LoPartialKey]);

      PedRe2.Next;

      if (PedRe2.IsEmpty) or (Pedre2.Eof) then
      begin
        Panel2.Enabled := True;
        PedRe2.Append;
        EdCodGru.SetFocus;
      end;

    end
    else
    begin

    end;

  end
  else
  begin

    EdCodGru.Enabled := False;
    EdCodSub.Enabled := False;
    EdCodPro.Enabled := False;
    EdQtpRe2.Enabled := False;

    edPedCompra.Enabled := False;
    edItemCompra.Enabled := False;

    EdCFOP.Enabled := False; //update2
    EdVluRe2.Enabled := False;
    EdDscRe2.Enabled := False;
    EdPacRe2.Enabled := False;
    EdDscRe2.Enabled := False;
    EdDspRe2.Enabled := False;

    //grRe2.SetFocus;

  end;

  application.ProcessMessages;
  Self.Repaint;
end;

procedure TfmManPed.IncluiItem;

begin

  if PedRe2.State = dsInsert then
  begin
    //Panel20.Enabled := False;
    with PedRe2 do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

      try
        ApplyUpdates; {Tenta aplicar as alterações}
        fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
      except
        fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
        if PedRe2.State = dsBrowse then
          PedRe2.Edit;
        Panel2.Enabled := True;
        if EdQtpRe2.CanFocus then
          EdQtpRe2.SetFocus;
        raise;
      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    PedRes.Close;
    PedRes.Open;

    PedRe2.Close;
    PedRe2.Open;

    PedRe2.Last;
    PedRe2.Edit;

    Panel2.Enabled := True;

    //Sidnei Alterado para Portal. Permitir alterar vlu unbitário do pedido.
    if PedResFlgFec.AsString = 'Sim' then
    begin
      EdVluRe2.Enabled := True;

      //if edNCM.CanFocus then
        //edNCM.SetFocus;
    end
    else
    begin
      EdQtpRe2.Enabled := True;
      edPedCompra.Enabled := True;
      edItemCompra.Enabled := True;
      EdCFOP.Enabled := True; //update3
      EdVluRe2.Enabled := True;
      EdDscRe2.Enabled := True;
      EdPacRe2.Enabled := True;

      //if edNCM.CanFocus then
        //edNCM.SetFocus;
    end;

  end;
end;

procedure TfmManPed.DsRe2StateChange(Sender: TObject);
begin
  inherited;

  if DsRe2.State = dsInsert then
  begin
    EdCodGru.Enabled := True;
    EdCodSub.Enabled := True;
    EdCodPro.Enabled := True;
  end
  else
  begin
    EdCodGru.Enabled := False;
    EdCodSub.Enabled := False;
    EdCodPro.Enabled := False;
  end;
end;

procedure TfmManPed.PedResID_FRETEChange(Sender: TField);
begin
  inherited;
  ValidaFrete;
end;

procedure TfmManPed.ValidaFrete;
begin
  if not Pedres.IsEmpty then
    if PedResID_FRETE.AsInteger = 9 then
    begin
      edFrete.Enabled := False;
      if Pedres.State in [dsEdit, dsInsert] then
        PedResTOTFRT.AsFloat := 0;
    end
    else
    begin
      if Pedres.State in [dsEdit, dsInsert] then
        edFrete.Enabled := True;
    end;
end;

procedure TfmManPed.PedRe2CalcFields(DataSet: TDataSet);
begin
  inherited;
  if PedRe2QTPRE2.AsFloat > 0 then
    PedRe2VALLIQTRB.AsFloat := fRound(PedRe2TOTITETRB.AsFloat / PedRe2QTPRE2.AsFloat, 2);
end;

procedure TfmManPed.PedRe2AfterScroll(DataSet: TDataSet);
begin
  inherited;
  edFrt.Hint := 'Frete: ' + FormatFloat('#,##0.00', PedRe2TotFrt.AsFloat) + _BR +
    'Seguro: ' + FormatFloat('#,##0.00', PedRe2TotSeg.AsFloat) + _BR +
    'Outras Despesas: ' + FormatFloat('#,##0.00', PedRe2TotOutDesp.AsFloat) + _BR +
    'Desconto: ' + FormatFloat('#,##0.00', PedRe2TotDescInc.AsFloat);

  if Trim(PedRe2CODST2.AsString) <> '' then
    if (PedRe2CODST2.AsInteger in [20, 30, 40, 41, 50, 70, 90]) then
      edMotivo.Enabled := True
    else
      edMotivo.Enabled := False;
end;

procedure TfmManPed.EdCbaRe2Exit(Sender: TObject);
begin
  inherited;
  {if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if not grRe2.Focused then
      saida := True
    else
      saida := False;

    if saida then
      SaiCodBarras;

  end
  else
  begin

    if (Tecla = 'UP') then
    begin

      if PedCtaQtiCta.Value > 0 then
      begin

        EdCbaRe2.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdVluRe2.Enabled := False;
        EdQtpRe2.Enabled := False;
        EdCodUnd.Enabled := False;
        EdDscRe2.Enabled := False;
        EdDesRe2.ReadOnly := True;
        EdObsRe2.ReadOnly := True;

        if PedRe2.State <> dsBrowse then
          PedRe2.CancelUpdates
        else
        begin

          if not PedRe2.Bof then
            PedRe2.Prior;

        end;

        grRe2.SetFocus;

      end
      else
        EdCbaRe2.SetFocus;

    end;
  end;}
end;

procedure TfmManPed.SaiCodBarras;
begin
  //
end;

procedure TfmManPed.PedResAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if length(trim(PedResCGCCLI.AsString)) > 11 then
    PedResCGCCLI.EditMask := '99.999.999\\9999-99;1; '
  else
    PedResCGCCLI.EditMask := '999.999.999-99;1; ';
end;

procedure TfmManPed.grRe2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgPac').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao')
    then
  begin

    if gdSelected in State then
    begin
      grRe2.Canvas.Font.Color := clWhite;
      grRe2.Canvas.Font.Style := [fsBold];
      grRe2.Canvas.Brush.Color := clRed;
      grRe2.Canvas.FillRect(Rect);
      grRe2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else
    begin
      grRe2.Canvas.Font.Color := clRed;
      grRe2.Canvas.Font.Style := [fsBold];
      grRe2.Canvas.Brush.Color := clInfoBk; // $00FCF4ED;
      grRe2.Canvas.FillRect(Rect);
      grRe2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end
  else
  begin
    if gdSelected in State then
    begin
      grRe2.Canvas.Font.Color := clWhite;
      grRe2.Canvas.Font.Style := [];
      grRe2.Canvas.Brush.Color := clHighlight; //clInfoBk;
      grRe2.Canvas.FillRect(Rect);
      grRe2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else
    begin
      grRe2.Canvas.Font.Color := clBlack;
      grRe2.Canvas.Font.Style := [];
      grRe2.Canvas.Brush.Color := clInfoBk; //$00FCF4ED;
      grRe2.Canvas.FillRect(Rect);
      grRe2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;

  //grRe2.Canvas.FillRect(Rect);

  //if column.Field.
  //grRe2.Canvas.TextOut(Rect.Left + 2, Rect.Top, Column.Field.AsString);
end;

procedure TfmManPed.MsgCta;
begin
  fmManCt3Msg := TfmManCt3Msg.Create(Self);

  try
    fmManCt3Msg.ShowModal(PedResCodEmp.AsInteger, PedResNumCta.AsInteger, now);
  finally
    FreeAndnil(fmManCt3Msg);
  end;

end;

procedure TfmManPed.ControleDescontoAcrescimo;
begin
  if (pedre2dscRe2.Asfloat >= PedRe2PACRE2.Asfloat) then
  begin
    EdDscRe2.Enabled := True;
    EdDscRe2.SetFocus;
    edPacRe2.Enabled := False;
  end
  else
  begin
    edPacRe2.Enabled := True;
    edPacRe2.SetFocus;
    EdDscRe2.Enabled := False;
  end;
end;

procedure TfmManPed.EdQtpRe2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if GUsaDec = 'Nao' then
  begin
    if not (key in ['0'..'9', #8, #27]) then
      key := #0;
  end;
end;

procedure TfmManPed.Panel2Enter(Sender: TObject);
begin
  inherited;
  edCodSt2.Enabled := True;
  edCodIPI.Enabled := True;
  edCodPIS.Enabled := True;
  edCodCOF.Enabled := True;
  dxdbcoloredit2.Enabled := True;
end;

procedure TfmManPed.Label74DblClick(Sender: TObject);
begin
  inherited;
  if Trim(PedRe2REGICM.AsString) <> '' then
  begin
    fmManPri.CriarForm(TfmManIcm, fmManIcm);
    fmManIcm.EdPsqCodIcm.Text := PedRe2REGICM.AsString;
    fmManIcm.BbPesquisa.Click;
    fmManIcm.pcIcm.ActivePageIndex := 1;
    fmManIcm.nvIcm.Enabled := False;
    fmManIcm.pcIcm.Enabled := False;
  end
  else
    ShowMessage('Não há regra atrelada ao Item');
end;

procedure TfmManPed.Label14DblClick(Sender: TObject);
begin
  inherited;
  if Trim(PedRe2REGSUB.AsString) <> '' then
  begin
    fmManPri.CriarForm(TfmManStr2, fmManStr2); //PedResREGTRB.AsString

    fmManStr2.localiza(PedRe2REGSUB.AsString, 'SAI', PedResUFERES.AsString, ifthen(pos('SIMPLES', uppercase(fmManGdb.BuscaSimples('GEREMP', 'TIPEMP',
      ' CodEmp = ' + PedResCodEmp.AsString))) > 0, '1', '3'));

    fmManStr2.pcStr.ActivePageIndex := 1;
    fmManStr2.nvStr.Enabled := False;
    fmManStr2.pcStr.Enabled := False;
  end
  else
    ShowMessage('Não há regra atrelada ao Item');
end;

procedure TfmManPed.Label11DblClick(Sender: TObject);
begin
  inherited;
  if Trim(PedRe2REGIPI.AsString) <> '' then
  begin
    fmManPri.CriarForm(TfmManIpi, fmManIpi);
    fmManIpi.EdPsqCodIpi.Text := PedRe2REGIPI.AsString;
    fmManIpi.BbPesquisa.Click;
    fmManIpi.pcIpi.ActivePageIndex := 1;
    fmManIpi.nvIpi.Enabled := False;
    fmManIpi.pcIpi.Enabled := False;
  end
  else
    ShowMessage('Não há regra atrelada ao Item');
end;

procedure TfmManPed.Label40DblClick(Sender: TObject);
begin
  inherited;
  if EdCodPfa.Text <> '' then
  begin
    fmManPri.CriarForm(TfmManPfa_GERAL, fmManPfa_GERAL);
    fmManPfa_GERAL.EdPsqCodPfa.Text := EdCodPfa.Text;
    fmManPfa_GERAL.Bbpesquisa.Click;
    fmManPfa_GERAL.pcPfa.ActivePageIndex := 1;
    fmManPfa_GERAL.nvPfa.Enabled := False;
    fmManPfa_GERAL.pcPfa.Enabled := False;
  end
  else
    ShowMessage('Não há Padrão de Faturamento atrelada ao Pedido');
end;

procedure TfmManPed.Label39DblClick(Sender: TObject);
begin
  inherited;
  if EdCodCli.Text <> '' then
  begin
    fmManPri.CriarForm(TfmManVen, fmManVen);
    fmManVen.EdPsqCodVen.Text := EdCodVen.Text;
    fmManVen.bbselecionar.Click;
    fmManVen.pcVen.ActivePageIndex := 1;
    fmManVen.nvVen.Enabled := False;
    fmManVen.pcVen.Enabled := False;
  end
  else
    ShowMessage('Não há Vendedor Atrelado ao Pedido');
end;

procedure TfmManPed.Label38DblClick(Sender: TObject);
begin
  inherited;
  if EdCodCli.Text <> '' then
  begin
    fmManPri.CriarForm(TfmManCli, fmManCli);
    fmManCli.EdPsqCodCli.Text := EdCodCli.Text;
    fmManCli.Bbpesquisa.Click;
    fmManCli.pcCli.ActivePageIndex := 1;

    fmManCli.bloqueiaEdicao;
    {fmManCli.EdCodVen.Enabled := False;
    //fmManCli.nvCli.Enabled := False;

    fmManCli.pcCli.Pages[0].Enabled := False;
    fmManCli.pcCli.Pages[1].Enabled := True;
    fmManCli.pcCli.Pages[2].Enabled := False;
    fmManCli.pcCli.Pages[3].Enabled := True;
    fmManCli.pcCli.Pages[4].Enabled := False;}
  end
  else
    ShowMessage('Não há Cliente Atrelado ao Pedido');
end;

procedure TfmManPed.edMotivoExit(Sender: TObject);
begin
  inherited;
  if edMotivo.Enabled then
    if edMotivo.Text = '' then
      ShowMessage('Motivo Da desoneração não informado, essa Informação será necessaria na validação dos Itens');
end;

procedure TfmManPed.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'ATENDENTES';
    fmAuxIni.ShowModal;

    if fmAuxIni.CodVen > 0 then
    begin

      PedResCODATD.AsInteger := fmAuxIni.CodAtd;

      pnNomAtd.Caption := fmAuxIni.NomAtd;

      EdCodAtd.Text := PedResCODATD.AsString;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  EdCodAtd.SetFocus;

end;

procedure TfmManPed.EdCodAtdExit(Sender: TObject);
var
  nomAtd: string;
begin
  inherited;
  if (trim(edCodAtd.Text) <> '') then
  begin
    nomAtd := fmManGDB.BuscaSimples('FINATD', 'NOMATD', ' CODATD = ' + trim(edCodAtd.Text));

    if trim(nomAtd) = '' then
    begin
      MessageBox(handle, 'Código do atendante inválido. Verifique e tente novaemnte', 'Validação', mb_ok + MB_ICONINFORMATION);
      abort;
    end
    else
      pnNomAtd.Caption := nomAtd;
  end;
end;

procedure TfmManPed.EdCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F1 then
  begin
    bPsqAtd.Click();
  end;
end;

procedure TfmManPed.pnFlgOcoDblClick(Sender: TObject);
begin
  inherited;
  if (pnFlgOco.Color = clRed) then
  begin
    try
      fmOcorrencias := TfmOcorrencias.Create(Self);
      fmOcorrencias.mostrarOcorrencia(PedRes.FieldByName('NUMRES').AsInteger, 'PEDOCO');
      fmOcorrencias.ShowModal;
    finally
      FreeAndNil(fmOcorrencias);
    end;
  end;
end;

procedure TfmManPed.PedResBeforePost(DataSet: TDataSet);
begin
  inherited;
  PedResAPP_VER.AsInteger := APP_VER;

  if PedResPRFRES.IsNull then
  begin
    MessageBox(handle, 'Data de entrega não informado', 'Falha na gravação', mb_ok + MB_ICONEXCLAMATION);

    if EdPrfREs.CanFocus then
      EdPrfREs.SetFocus;
  end;
end;

end.
