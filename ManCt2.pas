unit ManCt2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, AlignEdit, ComCtrls, hNavigator, Buttons,
  Mask, hEdits, FlEdit, Db, DBTables, Wwquery, Wwdatsrc, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, wwdbdatetimepicker, wwdblook, DBCtrls, DBFlEdit, wwriched,
  jpeg, wwdbedit, Wwdotdot, Wwdbcomb, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxfCheckBox, Menus, dxDBEdtr, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit, clipbrd, DBGrids, ManGDB, dxDBColorLookupEdit, MsgUser,
  dxDBColorPickEdit, uIndicadores;

type
  TfmManCt2 = class(TfmPadrao)
    DsCta: TwwDataSource;
    DsCt2: TwwDataSource;
    UpCta: TUpdateSQL;
    UpCt2: TUpdateSQL;
    quSql: TwwQuery;
    Label9: TLabel;
    Panel1: TPanel;
    PedCt2: TwwQuery;
    pnItem: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpCt2: TdxDBColorCurrencyEdit;
    EdVluCt2: TdxDBColorCurrencyEdit;
    EdDscCt2: TdxDBColorCurrencyEdit;
    EdVlqCt2: TdxDBColorCurrencyEdit;
    EdTotCt2: TdxDBColorCurrencyEdit;
    Label53: TLabel;
    PedCt2CODEMP: TIntegerField;
    PedCt2DTECTA: TDateTimeField;
    PedCt2NUMCTA: TIntegerField;
    PedCt2SEQCT2: TIntegerField;
    PedCt2CODEIT: TIntegerField;
    PedCt2CODCLP: TStringField;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    PedCt2CODTAM: TStringField;
    PedCt2CODCOR: TStringField;
    PedCt2DESCT2: TStringField;
    PedCt2OBSCT2: TStringField;
    PedCt2CODST1: TStringField;
    PedCt2CODST2: TStringField;
    PedCt2CODUND: TStringField;
    PedCt2TABPRC: TIntegerField;
    PedCt2QTPCT2: TFloatField;
    PedCt2VLUCT2: TFloatField;
    PedCt2VLQCT2: TFloatField;
    PedCt2CSTCT2: TFloatField;
    PedCt2VCHCT2: TFloatField;
    PedCt2VRECT2: TFloatField;
    PedCt2VCRCT2: TFloatField;
    PedCt2VCPCT2: TFloatField;
    PedCt2VPRCT2: TFloatField;
    PedCt2VCSCT2: TFloatField;
    PedCt2DSCCT2: TFloatField;
    PedCt2DSPCT2: TFloatField;
    PedCt2VDPCT2: TFloatField;
    PedCt2DSRCT2: TFloatField;
    PedCt2VDRCT2: TFloatField;
    PedCt2VACCT2: TFloatField;
    PedCt2DSCCOM: TFloatField;
    PedCt2VDSCOM: TFloatField;
    PedCt2IPICT2: TFloatField;
    PedCt2CLSIPI: TStringField;
    PedCt2ICMCT2: TFloatField;
    PedCt2TOTVEN: TFloatField;
    PedCt2TOTCST: TFloatField;
    PedCt2BASIPI: TFloatField;
    PedCt2TOTIPI: TFloatField;
    PedCt2BASICM: TFloatField;
    PedCt2TOTICM: TFloatField;
    PedCt2BASSUB: TFloatField;
    PedCt2TOTSUB: TFloatField;
    PedCt2TOTCT2: TFloatField;
    PedCt2TOTGE2: TFloatField;
    PedCt2TOTREN: TFloatField;
    PedCt2TOTDSC: TFloatField;
    PedCt2TOTDSR: TFloatField;
    PedCt2TOTDSP: TFloatField;
    PedCt2TOTACR: TFloatField;
    PedCt2TOTDCO: TFloatField;
    PedCt2CODSTR: TStringField;
    PedCt2TIPSTR: TStringField;
    PedCt2REGIPI: TStringField;
    PedCt2TIPIPI: TStringField;
    PedCt2TRBIPI: TStringField;
    PedCt2REDIPI: TFloatField;
    PedCt2BSCIPI: TFloatField;
    PedCt2REGICM: TStringField;
    PedCt2TIPICM: TStringField;
    PedCt2TRBICM: TStringField;
    PedCt2REDICM: TFloatField;
    PedCt2BSCICM: TFloatField;
    PedCt2INCREV: TFloatField;
    PedCt2INCFIN: TFloatField;
    PedCt2NROCT2: TIntegerField;
    PedCt2FLASEQ: TStringField;
    PedCt2FLGDUP: TStringField;
    EdObsCt2: TdxDBColorEdit;
    EdDesCt2: TdxDBColorEdit;
    Label57: TLabel;
    Label12: TLabel;
    pnNroCt2: TPanel;
    PedPar: TwwQuery;
    PedParEXIMKA: TStringField;
    PedCt2QTDEMB: TFloatField;
    PedCt2VMECT2: TFloatField;
    PedCt2VPFCT2: TFloatField;
    PedCt2CSTCST: TFloatField;
    PedCt2VCHCST: TFloatField;
    PedCt2VRECST: TFloatField;
    PedCt2VCRCST: TFloatField;
    PedCt2VCPCST: TFloatField;
    PedCt2VPRCST: TFloatField;
    PedCt2VMECST: TFloatField;
    PedCt2VPFCST: TFloatField;
    PedCt2REFCT2: TStringField;
    PedCt2CODITE: TStringField;
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
    Label18: TLabel;
    Label58: TLabel;
    Label51: TLabel;
    Label61: TLabel;
    Panel13: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    Panel9: TPanel;
    Panel8: TPanel;
    EdQtaIte: TPanel;
    Panel7: TPanel;
    EdQtdIte: TPanel;
    Panel6: TPanel;
    EdQtrIte: TPanel;
    Panel5: TPanel;
    EdSldIte: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    EdQtdEmb: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    EdQtdRma: TPanel;
    Panel14: TPanel;
    PedCt2CBACT2: TStringField;
    EdCbaCt2: TdxDBColorEdit;
    PedCta: TwwQuery;
    PedCtaCODEMP: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaNUMCTA: TIntegerField;
    PedCtaHRECTA: TStringField;
    PedCtaCODCLI: TIntegerField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODPFA: TStringField;
    PedCtaTIPPFA: TStringField;
    PedCtaUFECTA: TStringField;
    PedCtaQTICTA: TIntegerField;
    PedCtaSEQITE: TIntegerField;
    PedCtaBASIPI: TFloatField;
    PedCtaTOTIPI: TFloatField;
    PedCtaBASICM: TFloatField;
    PedCtaTOTICM: TFloatField;
    PedCtaBASSUB: TFloatField;
    PedCtaTOTSUB: TFloatField;
    PedCtaTOTITE: TFloatField;
    PedCtaTOTREN: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCtaDSCREG: TFloatField;
    PedCtaDSCCOM: TFloatField;
    PedCtaMEDDCO: TFloatField;
    PedCtaMEDPRM: TFloatField;
    PedCtaMEDDSC: TFloatField;
    PedCtaMEDACR: TFloatField;
    PedCtaTOTDSC: TFloatField;
    PedCtaTOTDSR: TFloatField;
    PedCtaTOTDSP: TFloatField;
    PedCtaTOTACR: TFloatField;
    PedCtaTOTDCO: TFloatField;
    PedCtaTOTVEN: TFloatField;
    PedCtaTOTCST: TFloatField;
    PedCtaCODATD: TIntegerField;
    PedCtaCODUSU: TIntegerField;
    PedCtaFLGTAB: TStringField;
    PedCtaFLGCTB: TStringField;
    PedCtaSEQCTA: TStringField;
    PedCtaCONSUM: TStringField;
    PedCtaCODIPI: TStringField;
    PedCtaTIPIPI: TStringField;
    PedCtaTRBIPI: TStringField;
    PedCtaREDIPI: TFloatField;
    PedCtaBSCIPI: TFloatField;
    PedCtaCODICM: TStringField;
    PedCtaTIPICM: TStringField;
    PedCtaTRBICM: TStringField;
    PedCtaREDICM: TFloatField;
    PedCtaBSCICM: TFloatField;
    PedCtaINCREV: TFloatField;
    PedCtaINCFIN: TFloatField;
    PedCtaTXFIPI: TStringField;
    PedCtaTXFICM: TStringField;
    PedCtaEMPRES: TIntegerField;
    PedCtaDTERES: TDateTimeField;
    PedCtaNUMRES: TIntegerField;
    PedCtaOBSCND: TStringField;
    PedCtaOBSENT: TStringField;
    PedCtaOBSVAL: TStringField;
    PedCtaOBSCLI: TStringField;
    PedCtaSITCTA: TStringField;
    PedCtaLANEST: TStringField;
    PedCtaINTFIN: TStringField;
    PedCtaCODFIL: TIntegerField;
    PedCtaATUEST: TStringField;
    PedCtaOBSCTA: TMemoField;
    PedCtaFLGPSQ: TStringField;
    PedCtaFLGSLD: TStringField;
    PedCtaFLGOCO: TStringField;
    PedCtaCODTCL: TIntegerField;
    PedCtaNOMCLI: TStringField;
    PedCtaCGCCLI: TStringField;
    PedCtaINSCLI: TStringField;
    PedCtaCLITAB: TStringField;
    PedCtaCODGCL: TIntegerField;
    PedCtaDSCCTA: TFloatField;
    PedCt2VDSCT2: TFloatField;
    PedCt2PACCT2: TFloatField;
    PedCt2TOTIPC: TFloatField;
    PedCt2CODCFO: TStringField;
    PedCt2TRBSUB: TStringField;
    PedCt2ICMSUB: TFloatField;
    PedCt2MRGSUB: TFloatField;
    PedCt2BASESB: TFloatField;
    SBText: TStatusBar;
    GroupBox6: TGroupBox;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label63: TLabel;
    Label17: TLabel;
    EdTotRes: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit25: TdxDBColorCurrencyEdit;
    GroupBox5: TGroupBox;
    Label86: TLabel;
    Label87: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    dxDBColorCurrencyEdit17: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit18: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit19: TdxDBColorCurrencyEdit;
    edCodCOF: TdxDBLookupEdit;
    GroupBox2: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label6: TLabel;
    Label32: TLabel;
    dxDBColorCurrencyEdit8: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit9: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit10: TdxDBColorCurrencyEdit;
    edCodPIS: TdxDBLookupEdit;
    GroupBox4: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    dxDBColorCurrencyEdit12: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit14: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit15: TdxDBColorCurrencyEdit;
    edCodIPI: TdxDBLookupEdit;
    GroupBox3: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label81: TLabel;
    Label23: TLabel;
    dxDBColorCurrencyEdit5: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit6: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit;
    dxDBColorEdit2: TdxDBColorEdit;
    dxDBColorEdit7: TdxDBColorEdit;
    edCodSt2: TdxDBLookupEdit;
    dxDBColorCurrencyEdit20: TdxDBColorCurrencyEdit;
    GroupBox1: TGroupBox;
    Label67: TLabel;
    Label71: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit11: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit16: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit21: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit22: TdxDBColorCurrencyEdit;
    GroupBox12: TGroupBox;
    Label34: TLabel;
    Label66: TLabel;
    dxDBColorCurrencyEdit26: TdxDBColorCurrencyEdit;
    edFrt: TdxDBColorCurrencyEdit;
    grCt2: TDBGrid;
    edVlrLiq: TdxDBColorCurrencyEdit;
    EdAscCt2: TdxDBColorCurrencyEdit;
    edClsIpi: TdxDBColorEdit;
    dxDBColorEdit4: TdxDBColorEdit;
    PedCtaFLGIPI: TStringField;
    PedCtaTOTIPC: TFloatField;
    PedCtaMODPFA: TStringField;
    PedCtaCODCFO: TStringField;
    PedCtaFLGATU: TStringField;
    PedCt2TOTOUTDESP: TFloatField;
    PedCt2TOTDESCINC: TFloatField;
    PedCt2CSTPIS: TStringField;
    PedCt2CSTCOF: TStringField;
    PedCt2CSTIPI: TStringField;
    PedCt2ALIQPIS: TFloatField;
    PedCt2ALIQCOF: TFloatField;
    PedCt2REDSUB: TFloatField;
    PedCt2TRBPIS: TStringField;
    PedCt2TRBCOF: TStringField;
    GroupBox7: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    bpsqCli: TSpeedButton;
    Label54: TLabel;
    bPsqVen: TSpeedButton;
    Label46: TLabel;
    Label35: TLabel;
    Label4: TLabel;
    EdTotRen: TdxDBColorCurrencyEdit;
    EdUfeCta: TdxDBColorEdit;
    EdNomCli: TdxDBColorEdit;
    EdNomVen: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    EdCodVen: TdxDBColorEdit;
    pnNomVen: TPanel;
    EdCodAtd: TdxDBColorEdit;
    EdNomAtd: TdxDBColorEdit;
    pnNomAtd: TPanel;
    EdCgcCli: TdxDBColorEdit;
    GroupBox8: TGroupBox;
    Label29: TLabel;
    Label37: TLabel;
    bpsqEmp: TSpeedButton;
    Label56: TLabel;
    EdNomEmp: TdxDBColorEdit;
    EdNumCta: TdxDBColorEdit;
    pnNumCta: TPanel;
    EdCodEmp: TdxDBColorEdit;
    pnNomEmp: TPanel;
    EdDteCta: TdxDBColorDateEdit;
    EdFlgOco: TdxDBColorEdit;
    pnFlgOco: TPanel;
    GroupBox9: TGroupBox;
    Label40: TLabel;
    bpsqPfa: TSpeedButton;
    Label3: TLabel;
    EdNomPfa: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdFrtRes: TdxDBColorLookupEdit;
    PedCtaBASPIS: TFloatField;
    PedCtaTOTPIS: TFloatField;
    PedCtaBASCOF: TFloatField;
    PedCtaTOTCOF: TFloatField;
    PedCtaTOTDESCINC: TFloatField;
    PedCtaTOTOUTDESP: TFloatField;
    PedCtaTOTSEG: TFloatField;
    PedCtaTOTFRT: TFloatField;
    PedCt2TOTSEG: TFloatField;
    PedCt2TOTFRT: TFloatField;
    PedCt2BASPIS: TFloatField;
    PedCt2TOTPIS: TFloatField;
    PedCt2BASCOF: TFloatField;
    PedCt2TOTCOF: TFloatField;
    GroupBox13: TGroupBox;
    Label42: TLabel;
    Label28: TLabel;
    Label41: TLabel;
    Label50: TLabel;
    Label55: TLabel;
    Label59: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    dxDBColorCurrencyEdit27: TdxDBColorCurrencyEdit;
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
    PedCt2CODCAT: TIntegerField;
    PedCt2LIQCT2: TFloatField;
    PedCt2CODTIP: TIntegerField;
    PedCt2BRTCT2: TFloatField;
    PedCt2VOLCT2: TFloatField;
    PedCt2CODMRC: TIntegerField;
    PedCt2ISSCT2: TFloatField;
    PedCt2VALLIQTRB: TFloatField;
    PedCt2DSCPER: TFloatField;
    PedCt2FLG_SINEIF20: TStringField;
    PedCt2FLG_DESC_ZF_PIS: TStringField;
    PedCt2FLG_DESC_ZF_COF: TStringField;
    PedCt2ALIQPIS_ZF: TFloatField;
    PedCt2ALIQCOF_ZF: TFloatField;
    PedCt2REGSUB: TStringField;
    PedCt2FRTICM: TFloatField;
    PedCt2SEGICM: TFloatField;
    PedCt2DESICM: TFloatField;
    PedCt2FRTIPI: TFloatField;
    PedCt2SEGIPI: TFloatField;
    PedCt2DESIPI: TFloatField;
    PedCt2TOTITETRB: TFloatField;
    PedCt2TOTGERAL: TFloatField;
    PedCt2FLGNCALC_DIF_MVA: TStringField;
    PedCt2TOTPISZF: TFloatField;
    PedCt2TOTCOFZF: TFloatField;
    TIPFRT: TwwQuery;
    TIPFRTID: TIntegerField;
    TIPFRTNOMFRT: TStringField;
    dsTipFrt: TDataSource;
    PedCtaFRTICM: TFloatField;
    PedCtaSEGICM: TFloatField;
    PedCtaDESICM: TFloatField;
    PedCtaFRTIPI: TFloatField;
    PedCtaSEGIPI: TFloatField;
    PedCtaDESIPI: TFloatField;
    PedCtaID_FRETE: TIntegerField;
    CbNomTCl: TdxDBColorLookupEdit;
    edCodTcl: TdxDBColorEdit;
    Label25: TLabel;
    DsTCl: TDataSource;
    FinTCl: TQuery;
    FinTClCODTCL: TIntegerField;
    FinTClNOMTCL: TStringField;
    PedCt2CODTXF: TStringField;
    Label31: TLabel;
    EdIECli: TdxDBColorEdit;
    edItemCompra: TdxDBColorEdit;
    Label33: TLabel;
    edPedCompra: TdxDBColorEdit;
    Label43: TLabel;
    edCodCfo: TdxDBColorLookupEdit;
    dsCFOP: TwwDataSource;
    CFOP: TwwQuery;
    CFOPCODCFO: TStringField;
    CFOPDESCFO: TMemoField;
    CFOPAPLCFO: TMemoField;
    PedCt2DSCREG: TFloatField;
    PedCt2NUMPEDCOMPRA: TStringField;
    PedCt2NUMITEMCOMPRA: TIntegerField;
    EdTotMk2: TDBText;
    PedCtaTOTITETRB: TFloatField;
    PedCtaTRBPIS: TStringField;
    PedCtaTRBCOF: TStringField;
    PedCtaALIQPIS: TIntegerField;
    PedCtaALIQCOF: TFloatField;
    PedCtaCSTPIS: TStringField;
    PedCtaCSTCOF: TStringField;
    PedCtaSUFR_ICMS: TStringField;
    PedCtaSUFR_IPI: TStringField;
    PedCtaSUFR_PIS: TStringField;
    PedCtaSUFR_COFINS: TStringField;
    PedCtaNROSUF: TStringField;
    PedCtaDTVSUF: TDateTimeField;
    PedCtaREGTRB: TIntegerField;
    PedCt2DSCORGPUBLIC: TFloatField;
    PedCt2VLDORGPUBLIC: TFloatField;
    EdCodUnd: TdxDBColorPickEdit;
    FINREGTRIB: TQuery;
    FINREGTRIBNUMREGTRIB: TIntegerField;
    FINREGTRIBNOMREGTRIB: TStringField;
    dsREGTRIB: TDataSource;
    PedCt2CONTA: TIntegerField;
    PedCtaREGTRBEMP: TIntegerField;
    PedCtaINDIC_CF: TIntegerField;
    PedCtaINDIC_PRESENCA: TIntegerField;
    Label90: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    dxDBColorCurrencyEdit13: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit23: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit24: TdxDBColorCurrencyEdit;
    GroupBox11: TGroupBox;
    Label45: TLabel;
    Label76: TLabel;
    dxDBColorCurrencyEdit38: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit39: TdxDBColorCurrencyEdit;
    PedCt2FRTSUB: TFloatField;
    PedCt2SEGSUB: TFloatField;
    PedCt2DESSUB: TFloatField;
    PedCt2DSCSUB: TFloatField;
    PedCt2DSCIPI: TFloatField;
    PedCt2DSCICM: TFloatField;
    PedCt2QTNCT2: TFloatField;
    PedCt2ID_PEDCT2: TIntegerField;
    PedCt2TOTLIQ: TFloatField;
    PedCt2TOTBRT: TFloatField;
    Label47: TLabel;
    Label48: TLabel;
    dxDBColorCurrencyEdit40: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit41: TdxDBColorCurrencyEdit;
    PedCtaFRTSUB: TFloatField;
    PedCtaSEGSUB: TFloatField;
    PedCtaDESSUB: TFloatField;
    PedCtaDSCSUB: TFloatField;
    PedCtaDSCIPI: TFloatField;
    PedCtaDSCICM: TFloatField;
    PedCtaTOTLIQ: TFloatField;
    PedCtaTOTBRT: TFloatField;
    bPsqAtd: TSpeedButton;
    PedCt2CODTXF2: TStringField;
    PedCt2ID_ESTICM: TIntegerField;
    //aqui
    PedCt2CEST: TStringField;
    //PedCt2CEST: TStringField;
    PedCt2ALIQ_FCPUFDEST: TFloatField;
    PedCt2ALIQ_ICMSUFDEST: TFloatField;
    PedCt2ALIQ_ICMSINTER: TFloatField;
    PedCt2ALIQ_ICMSINTERPART: TFloatField;
    PedCt2ID_REGRA_FCP: TIntegerField;
    PedCt2COD_ENQ: TStringField;
    Panel20: TPanel;
    Label68: TLabel;
    Label44: TLabel;
    PedCtaQTICT3: TIntegerField;
    Label49: TLabel;
    cbCodRegTrib: TdxDBColorLookupEdit;
    PedCtaID_ESTICM: TIntegerField;
    PedCtaID_ESTIPI: TIntegerField;
    PedCtaSEQCT3: TIntegerField;
    PedCtaFLGAVI: TStringField;
    PedCtaCODREGTRIB: TIntegerField;
    procedure SaiGrupo;
    procedure SaiCliente;
    procedure SaiProduto;
    procedure SaiSubGrupo;
    procedure SaiCodBarras;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PedCtaNewRecord(DataSet: TDataSet);
    procedure PedCt2NewRecord(DataSet: TDataSet);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodPfaExit(Sender: TObject);
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
    procedure grCt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnItemExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpCt2Exit(Sender: TObject);
    procedure EdVluCt2Exit(Sender: TObject);
    procedure EdDscCt2Exit(Sender: TObject);
    procedure EdDspCt2Exit(Sender: TObject);
    procedure EdDteCtaExit(Sender: TObject);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUndExit(Sender: TObject);
    procedure EdUfeCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCbaCt2Exit(Sender: TObject);
    procedure DsCt2DataChange(Sender: TObject; Field: TField);
    procedure EdVluCt2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdDteCtaEnter(Sender: TObject);
    procedure EdCodCliEnter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodProEnter(Sender: TObject);
    procedure EdQtpCt2Enter(Sender: TObject);
    procedure EdVluCt2Enter(Sender: TObject);
    procedure EdCodUndEnter(Sender: TObject);
    procedure EdIpiCt2Enter(Sender: TObject);
    procedure EdDscCt2Enter(Sender: TObject);
    procedure grCt2Enter(Sender: TObject);
    procedure grCt2KeyPress(Sender: TObject; var Key: Char);
    procedure EdVluCt2Change(Sender: TObject);
    procedure PedCt2CalcFields(DataSet: TDataSet);
    procedure PedCt2BeforeEdit(DataSet: TDataSet);
    procedure PedCt2BeforeInsert(DataSet: TDataSet);
    procedure PedCtaID_FRETEChange(Sender: TField);
    procedure PedCtaAfterOpen(DataSet: TDataSet);
    procedure PedCt2AfterScroll(DataSet: TDataSet);
    procedure PedCtaAfterScroll(DataSet: TDataSet);
    procedure EdDesCt2Exit(Sender: TObject);
    procedure EdObsCt2Exit(Sender: TObject);
    procedure EdUfeCtaExit(Sender: TObject);
    procedure Label38DblClick(Sender: TObject);
    procedure Label39DblClick(Sender: TObject);
    procedure Label40DblClick(Sender: TObject);
    procedure Label74DblClick(Sender: TObject);
    procedure Label24DblClick(Sender: TObject);
    procedure Label7DblClick(Sender: TObject);
    procedure EdCgcCliExit(Sender: TObject);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdCodAtdExit(Sender: TObject);
    procedure EdCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnFlgOcoDblClick(Sender: TObject);
    procedure cbCodRegTribKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomCliExit(Sender: TObject);
  private
    {Private declarations}
    procedure CarregaCbo;
    procedure ValidaFrete;
    procedure CarregaCFOP;
  public
    {Public declarations}
    DteCta: TDateTime;
    AntVluCt2, AntDscCt2, AntDspCt2: real;
    pCodClp, pCodGru, pCodSub, pCodPro: string;
    CodEmp, NumCta, SeqCt2, Qticms, NroReg: integer;
    sEnc, sEntr, Finalizar, LanCba, sTipPed, sVerEst, PSaida: string;
    permitDuplicatedItem: Boolean;
  end;

var
  fmManCt2: TfmManCt2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManCta, PsqEmp, AuxPsq,
  PsqTpe, PsqPfa, PsqEst, PsqTab, PsqRes, PsqObs, PsqIcm, AuxIni, ManCt3,
  PsqCmp, PsqUnd, PsqUfe, PsqOcc, PsqEs2, PsqUve, ManCtaDesc1, PsqEs2_PPortal, ManMsgSuframa, uProduto,
  ManCli, ManPri, ManVen, ManPfa_GERAL, ManIcm, ManIpi, ManPed,
  uOcorrenciasPed, ManStr2;

{$R *.DFM}

procedure TfmManCt2.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  pSaida := 'Sim';

  Finalizar := 'N';

  CarregaCbo;

  TIPFRT.Active := False;
  TIPFRT.Active := True;

  FinTCl.Active := False;
  FinTCl.Active := True;

  permitDuplicatedItem := false;

end;

procedure TfmManCt2.FormShow(Sender: TObject);
begin
  inherited;

  if(fmManGDB.BuscaSimples('PEDPAR','PERMITIR_QTD_FRACIONADA',' 1 = 1',
                                'select coalesce(PERMITIR_QTD_FRACIONADA,1) as PERMITIR_QTD_FRACIONADA from pedpar') = '0') then
     begin
        EdQtpCt2.DecimalPlaces := 0;
     end;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
  begin

    Label57.Visible := False;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select LANCBA From EstPar';
    Open;

    LanCba := FieldbyName('LANCBA').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select TIPPED,VEREST From PedPar';
    Open;

    sTipPed := FieldbyName('TIPPED').AsString;
    sVerEst := FieldbyName('VEREST').AsString;

  end;

  if sTipPed = 'Codigo de Barras' then
  begin

    EdCodGru.Enabled := False;
    EdCodSub.Enabled := False;
    EdCodPro.Enabled := False;

    EdCodGru.Visible := False;
    EdCodSub.Visible := False;
    EdCodPro.Visible := False;

    EdCbaCt2.Enabled := False;

    EdCbaCt2.Visible := True;

  end
  else
  begin

    EdCbaCt2.Enabled := False;

    EdCbaCt2.Visible := False;

    EdCodGru.Enabled := False;
    EdCodSub.Enabled := False;
    EdCodPro.Enabled := False;

    EdCodGru.Visible := True;
    EdCodSub.Visible := True;
    EdCodPro.Visible := True;

  end;

  if (GGus_Id > 1) and (GFlgGer <> 'Sim') then
  begin

    if PedParExiMka.AsString = 'Nao' then
    begin

      Label57.Visible := False;

      EdTotRen.Visible := False;

      EdTotMk2.Visible := False;

    end;
  end;

  if fmManCta.CodEmp > 0 then
  begin

    sEntr := 'S';

    PedCta.Close;
    PedCta.Params[0].AsInteger := fmManCta.CodEmp;
    PedCta.Params[1].AsDateTime := fmManCta.DteCta;
    PedCta.Params[2].AsInteger := fmManCta.NumCta;
    PedCta.Open;

    PedCt2.Close;
    PedCt2.Params[0].AsInteger := PedCtaCodEmp.Value;
    PedCt2.Params[1].AsDateTime := PedCtaDteCta.Value;
    PedCt2.Params[2].AsInteger := PedCtaNumCta.Value;
    PedCt2.Open;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and GerEmp.CodFil > ''' + '0' + '''';

      with Params do
      begin

        Params[0].AsInteger := PedCtaCodEmp.Value;

      end;

      Open;

      pnNomEmp.Caption := quSQL.FieldbyName('NomEmp').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

      with Params do
      begin

        Params[0].AsInteger := PedCtaCodVen.Value;

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

        Params[0].AsInteger := PedCtaCodAtd.Value;

      end;

      Open;

      pnNomAtd.Caption := FieldbyName('NomAtd').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select EstPfa.DscPfa From EstPfa' +
        ' Where 1 = 1 '+
        '   and EstPfa.TipPfa = :TipPfa' +
        '   and EstPfa.CodPfa = :CodPfa';

      with Params do
      begin

        Params[0].AsString := 'Saida';
        Params[1].AsString := PedCtaCodPfa.Value;

      end;

      Open;

      pnNomPfa.Caption := quSQL.FieldbyName('DscPfa').AsString;

    end;

    //pnNomCli.Caption := PedCtaNomCli.Value;

    qticms := 1;

    if GUfeEmp <> PedCtaUfeCta.Value then
    begin

      with quSql, SQL do
      begin

        Close;
        Text := ' Select Count(*) as Reg from GerIcm Where GerIcm.SigUfe = ''' + PedCtaUfeCta.AsString + '''';
        Open;

      end;

      qticms := quSql.FieldbyName('Reg').AsInteger;

    end;

    if (PedCtaSitCta.Value <> 'Nao Concluida') and (PedCtaSitCta.Value <> 'Processo de Alteracao') then
      sEnc := 'S'
    else
    begin

      PedCta.Edit;

      bPsqCli.Enabled := True;

      EdCodCli.Enabled := True;
      EdDteCta.Enabled := True;

      EdCodCli.Font.Style := [];
      EdDteCta.Font.Style := [];

      EdDteCta.Date := PedCtaDteCta.Value;

      if PedCtaCodCli.Value > 0 then
        EdCodCli.Text := IntToStr(PedCtaCodCli.Value);

      EdDteCta.SetFocus;

    end;

  end
  else
  begin

    sEntr := 'N';

    PedCta.Close;
    PedCta.Params[0].AsInteger := fmManCta.CodEmp;
    PedCta.Params[1].AsDateTime := fmManCta.DteCta;
    PedCta.Params[2].AsInteger := fmManCta.NumCta;
    PedCta.Open;

    SBText.Panels[0].Text := '';

    PedCta.Insert;

    if EdCodEmp.CanFocus then
      EdCodEmp.SetFocus;

  end;

  pnItem.Enabled := True;
  {edCodSt2.Enabled := False;
  edCodIPI.Enabled := False;
  edCodPIS.Enabled := False;
  edCodCOF.Enabled := False;}
  //dxdbcoloredit2.Enabled := False;

end;

procedure TfmManCt2.PedCtaNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedCta.DisableControls;

  try

    PedCtaNumCta.AsInteger := 0;
    PedCtaQtiCta.AsFloat := 0;
    PedCtaSeqIte.AsInteger := 0;
    PedCtaBasIcm.AsFloat := 0;
    PedCtaTotIcm.AsFloat := 0;
    PedCtaBasIpi.AsFloat := 0;
    PedCtaTotIpi.AsFloat := 0;
    PedCtaTotCst.AsFloat := 0;
    PedCtaTotRen.AsFloat := 0;
    PedCtaTotVen.AsFloat := 0;
    PedCtaTotGer.AsFloat := 0;
    PedCtaTotDsc.AsFloat := 0;
    PedCtaTotDsr.AsFloat := 0;
    PedCtaTotAcr.AsFloat := 0;
    PedCtaDscReg.AsFloat := 0;
    PedCtaDscCom.AsFloat := 0;
    PedCtaID_FRETE.AsInteger := -1;
    PedCtaDteCta.AsDateTime := Date;
    PedCtaTipPfa.AsString := 'Saida';
    PedCtaCodEmp.AsInteger := GEmp_Id;
    PedCtaObsVal.AsString := '3 DIAS';
    PedCtaSitCta.AsString := 'Nao Concluida';
    PedCtaHreCta.AsString := TimeToStr(Time);
    // PedCtaObsCta.Value := 'APOS A VALIDADE DESTA COTACAO ESTES PRODUTOS PODERAO SOFRER REAJUSTES SEM PREVIO AVISO';

    PedCtaID_FRETE.AsInteger := strtoint(fmmangdb.BuscaSimples('PEDPAR', 'COALESCE(ID_FRETE_PADRAO, -1)', ' 1 = 1 '));

    if GCodAtd_Id > 0 then
      PedCtaCodAtd.Value := GCodAtd_Id;

    PedCta.EnableControls;

    EdDteCta.Date := Date;

    if GEmp_Id > 0 then
      EdCodEmp.Text := IntToStr(GEmp_Id);

    if GCodVen_Id > 0 then
    begin

      pnNomVen.Caption := GNomVen_Id;

      EdCodVen.Text := IntToStr(GCodVen_Id);

      PedCtaCodVen.Value := GCodVen_Id;

    end;

    if GCodAtd_Id > 0 then
    begin

      pnNomAtd.Caption := GNomAtd_Id;

      EdCodAtd.Text := IntToStr(GCodAtd_Id);

      PedCtaCodAtd.Value := GCodAtd_Id;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and GerEmp.CodFil > ''' + '0' + '''';

      with Params do
      begin

        Params[0].AsInteger := PedCtaCodEmp.Value;

      end;

      Open;

      pnNomEmp.Caption := quSQL.FieldbyName('NomEmp').AsString;

    end;

    //pnNomCli.Caption := PedCtaNomCli.Value;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

      with Params do
      begin

        Params[0].AsInteger := PedCtaCodVen.Value;

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

        Params[0].AsInteger := PedCtaCodAtd.Value;

      end;

      Open;

      pnNomAtd.Caption := quSQL.FieldbyName('NomAtd').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select EstPfa.DscPfa From EstPfa' +
        ' Where coalesce(EstPfa.FlgAtivo,1) = 1 '+
        '   and EstPfa.TipPfa = :TipPfa' +
        '   and EstPfa.CodPfa = :CodPfa';

      with Params do
      begin

        Params[0].AsString := 'Saida';
        Params[1].AsString := PedCtaCodPfa.Value;

      end;

      Open;

      pnNomPfa.Caption := quSQL.FieldbyName('DscPfa').AsString;

    end;

    PedCt2.Close;
    PedCt2.Params[0].AsInteger := PedCtaCodEmp.Value;
    PedCt2.Params[1].AsDateTime := PedCtaDteCta.Value;
    PedCt2.Params[2].AsInteger := PedCtaNumCta.Value;
    PedCt2.Open;

    bPsqEmp.Enabled := True;
    bPsqCli.Enabled := True;
    bPsqPfa.Enabled := True;
    bPsqVen.Enabled := True;

    EdCodEmp.Enabled := True;
    EdDteCta.Enabled := True;
    EdCodCli.Enabled := True;
    EdCodVen.Enabled := True;
    EdCodPfa.Enabled := True;
    edCodTcl.Enabled := True;
    CbNomTCl.Enabled := True;

    EdCodEmp.Font.Style := [];
    EdDteCta.Font.Style := [];
    EdCodCli.Font.Style := [];
    EdCodVen.Font.Style := [];
    EdCodPfa.Font.Style := [];
    edCodTcl.Font.Style := [];

    if GGUs_Id <> 1 then
    begin

      if GCodVen_Id > 0 then
      begin

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        bPsqVen.Enabled := False;

      end;
    end;

    if PedCtaCodEmp.Value > 0 then
      EdDteCta.SetFocus
    else
      EdCodEmp.SetFocus;
  finally
    PedCta.EnableControls;
  end;

end;

procedure TfmManCt2.PedCt2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedCt2.DisableControls;
  try

    PedCt2QtpCt2.AsFloat := 0;
    PedCt2VluCt2.AsFloat := 0;
    PedCt2VlqCt2.AsFloat := 0;
    PedCt2DscCt2.AsFloat := 0;
    PedCt2VdsCt2.AsFloat := 0;
    PedCt2DspCt2.AsFloat := 0;
    PedCt2VdpCt2.AsFloat := 0;
    PedCt2PacCt2.AsFloat := 0;
    PedCt2VacCt2.AsFloat := 0;
    PedCt2TotVen.AsFloat := 0;
    PedCt2TotCst.AsFloat := 0;
    PedCt2TotRen.AsFloat := 0;
    PedCt2BasIpi.AsFloat := 0;
    PedCt2TotIpi.AsFloat := 0;
    PedCt2BasIcm.AsFloat := 0;
    PedCt2TotIcm.AsFloat := 0;
    PedCt2TotCt2.AsFloat := 0;
    PedCt2TotCt2.AsFloat := 0;
    PedCt2DscCom.AsFloat := 0;
    PedCt2VdsCom.AsFloat := 0;
    PedCt2TotDco.AsFloat := 0;
    PedCt2FlaSeq.Value := '';
    PedCt2CodClp.AsString := '1';
    PedCt2CodTam.Value := 'UN';
    PedCt2CodCor.Value := 'UN';
    PedCt2CodEmp.AsInteger := PedCtaCodEmp.AsInteger;
    PedCt2DteCta.AsDateTime := PedCtaDteCta.AsDateTime;
    PedCt2CodEit.AsInteger := PedCtaCodEmp.AsInteger;
    PedCt2NumCta.AsInteger := PedCtaNumCta.AsInteger;
    PedCt2NroCt2.AsInteger := PedCtaQtiCta.AsInteger + 1;
    PedCt2SeqCt2.AsInteger := PedCtaSeqIte.AsInteger + 1;

    PedCt2.EnableControls;

    if PedCtaDscCom.Value > 0 then
      PedCt2DscCom.Value := PedCtaDscCom.Value;

    AntVluCt2 := PedCt2VluCt2.Value;
    AntDscCt2 := PedCt2DscCt2.Value;
    AntDspCt2 := PedCt2DspCt2.Value;

    if sTipPed = 'Codigo de Barras' then
    begin

      EdCodGru.Enabled := False;
      EdCodSub.Enabled := False;
      EdCodPro.Enabled := False;

      EdCodGru.Visible := False;
      EdCodSub.Visible := False;
      EdCodPro.Visible := False;

      EdCbaCt2.Enabled := True;

      EdCbaCt2.Visible := True;

    end
    else
    begin

      EdCbaCt2.Enabled := False;

      EdCbaCt2.Visible := False;

      EdCodGru.Enabled := True;
      EdCodSub.Enabled := True;
      EdCodPro.Enabled := True;

      EdCodGru.Visible := True;
      EdCodSub.Visible := True;
      EdCodPro.Visible := True;

    end;

    EdQtpCt2.Enabled := True;
    EdVluCt2.Enabled := True;
    EdDscCt2.Enabled := True;
    edCodCfo.Enabled := True;
    edPedCompra.Enabled := True;
    edItemCompra.EnaBled := True;

    if EdCodGru.Enabled then
      EdCodGru.SetFocus
    else
      EdCbaCt2.SetFocus;

  finally
    PedCt2.EnableControls;
  end;

end;

procedure TfmManCt2.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if PedCta.State <> dsBrowse then
    begin

      if PedCtaCodEmp.Value > 0 then
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
          Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp and GerEmp.CodFil > ''0'' ';

          if GFlgAce = 'Sim' then
          begin

            if GEmpLog > 0 then
              Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
            else
              Text := Text + ' and GerEmp.CodFil > 0';

          end;

          if GFlgAce = 'Sim' then
            Text := Text + ' and GerEmp.CodFil > ''0'' ';

          with Params do
          begin

            Params[0].AsInteger := PedCtaCodEmp.Value;

          end;

          Open;

        end;

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

procedure TfmManCt2.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        PedCtaCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(PedCtaCodEmp.Value);

        pnNomEmp.Caption := fmPsqEmp.NomEmp;

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    if PedCtaCodEmp.Value > 0 then
      EdDteCta.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManCt2.EdCodCliExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdDteCta.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
      SaiCliente;

  end;
end;

procedure TfmManCt2.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

        PedCtaCodCli.Value := fmAuxIni.CodCli;
        PedCtaUfeCta.Value := Trim(fmAuxIni.UffCli);

        if Trim(fmAuxIni.CodPfa) <> '' then
          PedCtaCodPfa.Value := Trim(fmAuxIni.CodPfa);

        if fmAuxIni.CodVen > 0 then
          PedCtaCodVen.Value := fmAuxIni.CodVen;

        EdCodCli.Text := IntToStr(PedCtaCodCli.Value);

        //pnNomCli.Caption := fmAuxIni.NomCli;

        if PedCtaCodVen.Value > 0 then
          EdCodVen.Text := IntToStr(PedCtaCodVen.Value)
        else
          EdCodVen.Text := '';

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if PedCtaCodCli.Value > 0 then
      SaiCliente
    else
      EdCodCli.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'C';

      fmAuxPsq.sCodVen_Id := GCodVen_Id;

      fmAuxPsq.sGUs_Id := GGUs_Id;

      fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        PedCtaCodCli.Value := fmAuxPsq.CodCli;
        PedCtaUfeCta.Value := Trim(fmAuxPsq.UffCli);

        if Trim(fmAuxPsq.CodPfa) <> '' then
          PedCtaCodPfa.Value := Trim(fmAuxPsq.CodPfa);

        if fmAuxPsq.CodVen > 0 then
          PedCtaCodVen.Value := fmAuxPsq.CodVen;

        EdCodCli.Text := IntToStr(PedCtaCodCli.Value);

        //pnNomCli.Caption := fmAuxPsq.NomCli;

        if PedCtaCodVen.Value > 0 then
          EdCodVen.Text := IntToStr(PedCtaCodVen.Value)
        else
          EdCodVen.Text := '';

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if PedCtaCodCli.Value > 0 then
      SaiCliente
    else
      EdCodCli.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodPfaExit(Sender: TObject);
var
  saida: boolean;
  LocPfa: string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if {(not EdDscCom.Focused) and}(not EdCodCli.Focused) and
    (not EdDteCta.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedCta.State <> dsBrowse then
      begin

        if Trim(PedCtaCodPfa.Value) <> '' then
        begin

          if PedCtaUfeCta.Value = 'EX' then
            LocPfa := 'Importacao ou Exportacao'
          else
          begin

            if PedCtaUfeCta.Value <> GUfeEmp then
              LocPfa := 'Outros Estados'
            else
              LocPfa := 'Mesmo Estado'

          end;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select EstPfa.DscPfa From EstPfa ' +
              ' Where coalesce(EstPfa.FlgAtivo,1) = 1 ' +
              '   and EstPfa.TipPfa = :TipPfa' +
              '   and EstPfa.CodPfa = :CodPfa' +
              '   and EstPfa.LocPfa = :LocPfa';

            with Params do
            begin

              Params[0].AsString := PedCtaTipPfa.Value;
              Params[1].AsString := PedCtaCodPfa.Value;
              Params[2].AsString := LocPfa;

            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('DscPfa').AsString) <> '' then
            pnNomPfa.Caption := quSql.FieldbyName('DscPfa').AsString
          else
          begin

            pnNomPfa.Caption := '';

            fmsgErro('Padrão de Faturamento Informado não Encontrado ou Inativo', EdCodPfa);

          end;

        end
        else
        begin

          pnNomPfa.Caption := '';

          fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodPfa);

        end;
      end;
    end;
  end;
end;

procedure TfmManCt2.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa: string;
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if PedCtaUfeCta.Value = 'EX' then
      LocPfa := 'Importacao ou Exportacao'
    else
    begin

      if PedCtaUfeCta.Value <> GUfeEmp then
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
          ' From EstPfa ' +
          ' Where coalesce(EstPfa.FlgAtivo,1) = 1 '+
          '   and EstPfa.TipPfa = :TipPfa' +
          '   and EstPfa.LocPfa = :LocPfa' +
          '   and EstPfa.ModPfa = :ModPfa' +
          '   and EstPfa.IntFin = :IntFin' +
          '   and EstPfa.AtuEst = :AtuEst' +
          ' Order by EstPfa.DscPfa';

        with Params do
        begin

          Params[0].AsString := 'Saida';
          Params[1].AsString := LocPfa;
          Params[2].AsString := 'Vendas';
          Params[3].AsString := 'Sim';
          Params[4].AsString := 'Sim';

        end;

        Open;

      end;

      fmPsqPfa.ShowModal;

      if Trim(fmPsqPfa.CodPfa) <> '' then
      begin

        PedCtaCodPfa.Value := Trim(fmPsqPfa.CodPfa);

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

        EdCodPfa.Text := PedCtaCodPfa.Value;

      end;

    finally

      FreeAndNil(fmPsqPfa);

    end;

    EdCodPfa.SetFocus;

  end;

  if key = 113 then
  begin //F2 - Inteligente

    if PedCtaUfeCta.Value = 'EX' then
      LocPfa := 'Importacao ou Exportacao'
    else
    begin

      if PedCtaUfeCta.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
      else
        LocPfa := 'Mesmo Estado'

    end;

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'P';

      fmAuxPsq.IntFin := 'Sim';
      fmAuxPsq.AtuEst := 'Sim';
      fmAuxPsq.LocPfa := LocPfa;
      fmAuxPsq.TipPfa := 'Saida';
      fmAuxPsq.ModPfa := 'Vendas';
      //fmAuxPsq.VenPfa := PedCtaCodVen.Value;

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodPfa) <> '' then
      begin

        PedCtaCodPfa.Value := Trim(fmAuxPsq.CodPfa);

        pnNomPfa.Caption := fmAuxPsq.NomPfa;

        EdCodPfa.Text := PedCtaCodPfa.Value;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    EdCodPfa.SetFocus;

  end;
end;

procedure TfmManCt2.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      PedCtaCodEmp.Value := fmPsqEmp.CodEmp;

      EdCodEmp.Text := IntToStr(PedCtaCodEmp.Value);

      pnNomEmp.Caption := fmPsqEmp.NomEmp;

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManCt2.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'C';

    fmAuxIni.sCodVen_Id := GCodVen_Id;

    fmAuxIni.sGUs_Id := GGUs_Id;

    fmAuxIni.sCodAtd_Id := GCodAtd_Id;

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCli > 0 then
    begin

      PedCtaCodCli.Value := fmAuxIni.CodCli;
      PedCtaUfeCta.Value := Trim(fmAuxIni.UffCli);

      if Trim(fmAuxIni.CodPfa) <> '' then
        PedCtaCodPfa.Value := Trim(fmAuxIni.CodPfa);

      if fmAuxIni.CodVen > 0 then
        PedCtaCodVen.Value := fmAuxIni.CodVen;

      EdCodCli.Text := IntToStr(PedCtaCodCli.Value);

      EdUfeCta.Text := PedCtaUfeCta.Value;

      if PedCtaCodVen.Value > 0 then
        EdCodVen.Text := IntToStr(PedCtaCodVen.Value)
      else
        EdCodVen.Text := '';

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if PedCtaCodCli.Value > 0 then
    SaiCliente
  else
    EdCodCli.SetFocus;

end;

procedure TfmManCt2.bpsqPfaClick(Sender: TObject);
var
  LocPfa: string;
begin
  inherited;

  if PedCtaUfeCta.Value = 'EX' then
    LocPfa := 'Importacao ou Exportacao'
  else
  begin

    if PedCtaUfeCta.Value <> GUfeEmp then
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
        ' Where coalesce(EstPfa.FlgAtivo,1) = 1 '+
        '   and EstPfa.TipPfa = :TipPfa' +
        '   and EstPfa.LocPfa = :LocPfa' +
        '   and EstPfa.ModPfa = :ModPfa' +
        '   and EstPfa.IntFin = :IntFin' +
        '   and EstPfa.AtuEst = :AtuEst' +
        ' Order by EstPfa.DscPfa';

      with Params do
      begin

        Params[0].AsString := 'Saida';
        Params[1].AsString := LocPfa;
        Params[2].AsString := 'Vendas';
        Params[3].AsString := 'Sim';
        Params[4].AsString := 'Sim';

      end;

      Open;

    end;

    fmPsqPfa.ShowModal;

    if Trim(fmPsqPfa.CodPfa) <> '' then
    begin

      PedCtaCodPfa.Value := Trim(fmPsqPfa.CodPfa);

      pnNomPfa.Caption := fmPsqPfa.NomPfa;

      EdCodPfa.Text := PedCtaCodPfa.Value;

    end;

  finally

    FreeAndNil(fmPsqPfa);

  end;

  EdCodPfa.SetFocus;

end;

procedure TfmManCt2.EdCodGruExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if not grCt2.Focused then
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

      if PedCtaQtiCta.Value > 0 then
      begin

        EdCbaCt2.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdVluCt2.Enabled := False;
        EdQtpCt2.Enabled := False;
        edCodCfo.Enabled := False;
        EdCodUnd.Enabled := False;
        EdDscCt2.Enabled := False;
        EdDesCt2.ReadOnly := True;
        EdObsCt2.ReadOnly := True;
        edPedCompra.Enabled := False;
        edItemCompra.EnaBled := False;

        if PedCt2.State <> dsBrowse then
          PedCt2.CancelUpdates
        else
        begin

          if not PedCt2.Bof then
            PedCt2.Prior;

        end;

        grCt2.SetFocus;

      end
      else
        EdCodGru.SetFocus;
    end;
  end;
end;

procedure TfmManCt2.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

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

        if PedCt2.State = dsBrowse then
        begin

          if Trim(PedCt2CodClp.AsString) <> '' then
            PedCt2.Edit
          else
            PedCt2.Append;

        end;

        PedCt2CodGru.AsString := fmAuxIni.CodGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(PedCt2CodGru.AsString) <> '' then
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

        if PedCt2.State = dsBrowse then
        begin

          if Trim(PedCt2CodClp.AsString) <> '' then
            PedCt2.Edit
          else
            PedCt2.Append;

        end;

        PedCt2CodGru.AsString := fmAuxPsq.CodGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(PedCt2CodGru.AsString) <> '' then
      SaiGrupo
    else
      EdCodGru.SetFocus;

  end;

end;

procedure TfmManCt2.EdCodSubExit(Sender: TObject);
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

procedure TfmManCt2.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(PedCt2CodGru.AsString) <> '' then
        fmAuxIni.CodGru := PedCt2CodGru.AsString;

      fmAuxIni.CodClp := '1';

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if PedCt2.State = dsBrowse then
        begin

          if Trim(PedCt2CodClp.AsString) <> '' then
            PedCt2.Edit
          else
            PedCt2.Append;

        end;

        PedCt2CodGru.AsString := fmAuxIni.CodGru;
        PedCt2CodSub.AsString := fmAuxIni.CodSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(PedCt2CodSub.AsString) <> '' then
      SaiSubGrupo
    else
      EdCodSub.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      if Trim(PedCt2CodGru.AsString) <> '' then
        fmAuxPsq.CodGru := PedCt2CodGru.AsString;

      fmAuxPsq.CodClp := '1';

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if PedCt2.State = dsBrowse then
        begin

          if Trim(PedCt2CodClp.AsString) <> '' then
            PedCt2.Edit
          else
            PedCt2.Append;

        end;

        PedCt2CodGru.AsString := fmAuxPsq.CodGru;
        PedCt2CodSub.AsString := fmAuxPsq.CodSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(PedCt2CodSub.AsString) <> '' then
      SaiSubGrupo
    else
      EdCodSub.SetFocus;

  end;
end;

procedure TfmManCt2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if (shift = [ssCtrl]) and (key = vk_F12) then
  begin
    ShowMessage(ActiveControl.Name);
  end;

  if (EdQtpCt2.Focused) or (EdVluCt2.Focused) or (EdDscCt2.Focused) or (grCt2.Focused) then
  begin

    if (Trim(PedCt2CodClp.AsString) <> '') and
      (Trim(PedCt2CodGru.AsString) <> '') and
      (Trim(PedCt2CodSub.AsString) <> '') and
      (Trim(PedCt2CodPro.AsString) <> '') then
    begin

      if key = 116 then
      begin // F5-Reservas //

        try

          fmPsqRes := TfmPsqRes.Create(Self);

          fmPsqRes.Panel3.Caption := ' ' + PedCt2CodGru.AsString + '.' + PedCt2CodSub.AsString + '.' + PedCt2CodPro.AsString + ' - ' + PedCt2DesCt2.Value;

          fmPsqRes.PedRes.Close;
          fmPsqRes.PedRes.Params[0].AsString := PedCt2CodClp.AsString;
          fmPsqRes.PedRes.Params[1].AsString := PedCt2CodGru.AsString;
          fmPsqRes.PedRes.Params[2].AsString := PedCt2CodSub.AsString;
          fmPsqRes.PedRes.Params[3].AsString := PedCt2CodPro.AsString;
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

          fmPsqCmp.Label1.Caption := ' ' + PedCt2CodGru.AsString + '.' + PedCt2CodSub.AsString + '.' + PedCt2CodPro.AsString + ' - ' + PedCt2DesCt2.Value;

          fmPsqCmp.CmpPed.Close;
          fmPsqCmp.CmpPed.Params[0].AsString := PedCt2CodClp.AsString;
          fmPsqCmp.CmpPed.Params[1].AsString := PedCt2CodGru.AsString;
          fmPsqCmp.CmpPed.Params[2].AsString := PedCt2CodSub.AsString;
          fmPsqCmp.CmpPed.Params[3].AsString := PedCt2CodPro.AsString;
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

        fmAuxIni.CodClp := PedCt2CodClp.AsString;
        fmAuxIni.CodGru := PedCt2CodGru.AsString;
        fmAuxIni.CodSub := PedCt2CodSub.AsString;

        fmAuxIni.CodEmp := PedCtaCodEmp.Asinteger;

        if PedCtaLanEst.AsString = 'Sim' then
        begin

          if PedCtaCodFil.Value > 0 then
            fmAuxIni.CodEmp := PedCtaCodFil.Asinteger;

        end;

        fmAuxIni.CliTab := PedCtaCliTab.AsString;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.LanCba := LanCba;

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          PedCt2CodClp.AsString := fmAuxIni.CodClp;
          PedCt2CodGru.AsString := fmAuxIni.CodGru;
          PedCt2CodSub.AsString := fmAuxIni.CodSub;
          PedCt2CodPro.AsString := fmAuxIni.CodPro;

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(PedCt2CodPro.AsString) <> '' then
      begin

        if EdCodGru.Enabled then
          SaiProduto
        else
          SaiCodBarras;

      end
      else
      begin

        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;
        if EdCbaCt2.Focused then
          EdCbaCt2.SetFocus;

      end;
    end;

    if key = 116 then
    begin // F5 - Referência //

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := PedCt2CodClp.AsString;
        fmAuxIni.CodGru := PedCt2CodGru.AsString;
        fmAuxIni.CodSub := PedCt2CodSub.AsString;

        fmAuxIni.TipoPesq := 'R';

        fmAuxIni.LanCba := LanCba;

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          PedCt2CodClp.AsString := fmAuxIni.CodClp;
          PedCt2CodGru.AsString := fmAuxIni.CodGru;
          PedCt2CodSub.AsString := fmAuxIni.CodSub;
          PedCt2CodPro.AsString := fmAuxIni.CodPro;

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(PedCt2CodPro.AsString) <> '' then
      begin

        if EdCodGru.Enabled then
          SaiProduto
        else
          SaiCodBarras;

      end
      else
      begin

        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;
        if EdCbaCt2.Focused then
          EdCbaCt2.SetFocus;

      end;
    end;

    if key = 117 then
    begin // F6 - Inteligente/Descrição //

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := PedCt2CodClp.AsString;
        fmAuxPsq.CodGru := PedCt2CodGru.AsString;
        fmAuxPsq.CodSub := PedCt2CodSub.AsString;

        fmAuxPsq.CodEmp := PedCtaCodEmp.Value;

        if PedCtaLanEst.Value = 'Sim' then
        begin

          if PedCtaCodFil.Asinteger > 0 then
            fmAuxPsq.CodEmp := PedCtaCodFil.Asinteger;

        end;

        fmAuxPsq.CliTab := PedCtaCliTab.AsString;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.LanCba := LanCba;

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if (EdCodGru.Enabled) or (EdCbaCt2.Enabled) then
          begin

            PedCt2CodClp.AsString := fmAuxPsq.CodClp;
            PedCt2CodGru.AsString := fmAuxPsq.CodGru;
            PedCt2CodSub.AsString := fmAuxPsq.CodSub;
            PedCt2CodPro.AsString := fmAuxPsq.CodPro;
            PedCt2CbaCt2.Value := Trim(fmAuxPsq.CbaPro);

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(PedCt2CodPro.AsString) <> '' then
      begin

        if EdCodGru.Enabled then
          SaiProduto
        else
          SaiCodBarras;

      end
      else
      begin

        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;
        if EdCbaCt2.Focused then
          EdCbaCt2.SetFocus;

      end;
    end;

    if key = 118 then
    begin {F7 - Inteligente/Referência}

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := PedCt2CodClp.AsString;
        fmAuxPsq.CodGru := PedCt2CodGru.AsString;
        fmAuxPsq.CodSub := PedCt2CodSub.AsString;

        fmAuxPsq.TipoPesq := 'R';

        fmAuxPsq.LanCba := LanCba;

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          PedCt2CodClp.AsString := fmAuxPsq.CodClp;
          PedCt2CodGru.AsString := fmAuxPsq.CodGru;
          PedCt2CodSub.AsString := fmAuxPsq.CodSub;
          PedCt2CodPro.AsString := fmAuxPsq.CodPro;

        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(PedCt2CodPro.AsString) <> '' then
      begin

        if EdCodGru.Enabled then
          SaiProduto
        else
          SaiCodBarras;

      end
      else
      begin

        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;
        if EdCbaCt2.Focused then
          EdCbaCt2.SetFocus;

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

          if Trim(PedCtaCliTab.AsString) <> '' then
            fmPsqEs2.CliTab := PedCtaCliTab.AsString;

          fmPsqEs2.sCodClp := '1';

          if (Trim(PedCt2CodGru.AsString) <> '') or
            (Trim(PedCt2CodSub.AsString) <> '') or
            (Trim(PedCt2CodPro.AsString) <> '') then
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
              //+ _BR + '   and EstPro.FlbPro = ' + QuotedStr(' ');

              if Trim(PedCt2CodGru.AsString) <> '' then
                Text := Text + ' and EstPro.CodGru = ' + QuotedStr(PedCt2CodGru.AsString) + _BR;
              if Trim(PedCt2CodSub.AsString) <> '' then
                Text := Text + ' and EstPro.CodSub = ' + QuotedStr(PedCt2CodSub.AsString) + _BR;
              if Trim(PedCt2CodPro.AsString) <> '' then
                Text := Text + ' and EstPro.CodPro = ' + QuotedStr(PedCt2CodPro.AsString) + _BR;

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

              PedCt2CodClp.AsString := fmPsqEs2.CodClp;
              PedCt2CodGru.AsString := fmPsqEs2.CodGru;
              PedCt2CodSub.AsString := fmPsqEs2.CodSub;
              PedCt2CodPro.AsString := fmPsqEs2.CodPro;

            end;
          end;
          //end;

        finally

          FreeAndNil(fmPsqEs2);

        end;

        if Trim(PedCt2CodPro.AsString) <> '' then
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
        fmPsqEs2_PPortal.EstPro.Params.ParamValues['CODCLP'] := PedCt2CODCLP.AsString;
        fmPsqEs2_PPortal.EstPro.Params.ParamValues['CODGRU'] := PedCt2CODGRU.AsString;
        fmPsqEs2_PPortal.EstPro.Params.ParamValues['CODSUB'] := PedCt2CODSUB.AsString;
        fmPsqEs2_PPortal.EstPro.Params.ParamValues['CODPRO'] := PedCt2CODPRO.AsString;
        fmPsqEs2_PPortal.EstPro.Active := True;

        fmPsqEs2_PPortal.ShowModal;

      finally

        FreeAndNil(fmPsqEs2_PPortal);

      end;
    end;
  end;

  if key = 122 then
  begin // F11-Ocorrencias do Pedido //

    if PedCtaFlgOco.Value = '*' then
    begin

      try

        fmPsqOcc := TfmPsqOcc.Create(Self);

        fmPsqOcc.PedOcc.Close;
        fmPsqOcc.PedOcc.Params[0].AsInteger := PedCtaCodEmp.Value;
        fmPsqOcc.PedOcc.Params[1].AsDateTime := PedCtaDteCta.Value;
        fmPsqOcc.PedOcc.Params[2].AsInteger := PedCtaNumCta.Value;
        fmPsqOcc.PedOcc.Open;

        fmPsqOcc.ShowModal;

      finally

        FreeAndNil(fmPsqOcc);

      end;
    end;
  end;

  if key = 27 then
  begin

    if PedCta.State <> dsBrowse then
      Close
    else
    begin

      if PedCt2.State <> dsBrowse then
        PedCt2.CancelUpdates;

      if (EdCbaCt2.Enabled) or (EdCodGru.Enabled) or (EdCodSub.Enabled) or (EdCodPro.Enabled) or
        (EdQtpCt2.Enabled) or (EdVluCt2.Enabled) {or (EdIcmCt2.Enabled)} or (EdDscCt2.Enabled) then
      begin

        EdCbaCt2.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpCt2.Enabled := False;
        edCodCfo.Enabled := False;
        EdVluCt2.Enabled := False;
        EdCodUnd.Enabled := False;
        EdDscCt2.Enabled := False;
        EdDesCt2.ReadOnly := True;
        EdObsCt2.ReadOnly := True;
        edPedCompra.Enabled := False;
        edItemCompra.EnaBled := False;

        grCt2.SetFocus;
        Close;

      end
      else
      begin

        if EdDesCt2.Enabled then
        begin

          EdDesCt2.ReadOnly := True;
          EdObsCt2.ReadOnly := True;

          {pnDesCt2.Visible := True;
          pnObsCt2.Visible := True;}

          grCt2.SetFocus;
          Close;

        end
        else
          Close;

      end;
    end;
  end;

  if key = 123 then
  begin // F12-Finalizar Cotacao //

    if PedCtaTotIte.AsFloat > 0 then
    begin

      if grCt2.Focused then
      begin

        try

          fmManCt3 := TfmManCt3.Create(Self);
          fmManCt3.ShowModal;

        finally

          FreeAndNil(fmManCt3);

        end;

        if Finalizar = 'S' then
        begin

          Finalizar := 'N';

          EdCodEmp.Clear;
          EdDteCta.Clear;
          EdCodCli.Clear;
          EdCodVen.Clear;
          EdCodPfa.Clear;
          edCodTcl.Clear;

          pnNumCta.Caption := '0';

          pnNomEmp.Caption := '';
          //pnNomCli.Caption := '';
          pnNomVen.Caption := '';
          pnNomPfa.Caption := '';

          PedCta.Close;
          PedCta.Params[0].AsInteger := 0;
          PedCta.Params[1].AsDateTime := Date;
          PedCta.Params[2].AsInteger := 0;
          PedCta.Open;

          PedCta.Insert;

          EdDteCta.SetFocus;

        end;
      end;
    end;
  end;
end;

procedure TfmManCt2.grCt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroCt2: integer;
begin
  inherited;
  if (key = 68) and (Shift = []) then
  begin // D - Mudar Descrição/Observações Sobre o Item //

    if PedCt2CodEmp.Asinteger > 0 then
    begin
      //EdDesCt2.ReadOnly := False;
      EdObsCt2.ReadOnly := False;

      pnItem.Enabled := True;

      EdObsCt2.SetFocus;
    end;
  end;

  if key = 13 then // Tecla - ENTER //
  begin

    if PedCt2CodEmp.AsInteger > 0 then
    begin

      PedCt2.Edit;

      pnItem.Enabled := True;

      if PedCt2CodGru.AsString <> '999' then
      begin

        EdQtpCt2.Enabled := True;
        edCodCfo.Enabled := True;
        EdVluCt2.Enabled := True;
        EdDscCt2.Enabled := True;
        edPedCompra.Enabled := True;
        edItemCompra.EnaBled := True;

        EdQtpCt2.SetFocus;

      end
      else
      begin

        EdQtpCt2.Enabled := True;
        edCodCfo.Enabled := True;
        EdVluCt2.Enabled := True;
        EdCodUnd.Enabled := True;
        //EdDesCt2.ReadOnly := False;
        EdObsCt2.ReadOnly := False;
        edPedCompra.Enabled := True;
        edItemCompra.EnaBled := True;

        EdQtpCt2.SetFocus;

      end;
    end;
  end;

  if key = 40 then
  begin // Tecla - Seta para Baixo //

    if PedCt2NROCT2.AsInteger = PedCt2CONTA.AsInteger then // Erro de ordem
      //if true then
    begin
      pnItem.Enabled := True;
      PedCt2.Append;
    end;

  end;

  if key = 46 then
  begin // Tecla - DEL //

    if Trim(PedCt2CodClp.AsString) <> '' then
    begin

      NroCt2 := PedCt2NROCT2.AsInteger;

      PedCt2.Delete;

      with PedCt2 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

        try

          ApplyUpdates; {Tenta aplicar as alterações}

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

          if PedCt2.State <> dsBrowse then
            PedCt2.CancelUpdates;

          grCt2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedCt2.Close;
      PedCt2.Open;

      PedCta.Close;
      PedCta.Open;

      if not PedCt2.Locate('CodEmp;DteCta;NumCta;NROCT2', VarArrayOf([PedCt2CodEmp.AsInteger, PedCt2DteCta.AsDateTime, PedCt2NumCta.AsInteger, NroCt2]),
        []) then
      begin

        if PedCt2.IsEmpty then
          PedCt2.Append
        else
          PedCt2.Last;
      end;

      {if NroCt2 < PedCtaQtiCta.AsInteger then
      begin
        PedCt2.Locate('CodEmp;DteCta;NumCta;SEQCt2', VarArrayOf([PedCt2CodEmp.AsInteger, PedCt2DteCta.AsDateTime, PedCt2NumCta.AsInteger, NroCt2]),
          [LoPartialKey]);
      end
      else
      begin

        if PedCtaQtiCta.AsInteger = 0 then
          PedCt2.Append
        else
          PedCt2.Last;

      end;}
    end;
  end;
end;

procedure TfmManCt2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar a Cotacao ?', 'O') then
    begin

      if PedCta.State <> dsBrowse then
        PedCta.CancelUpdates;

      if PedCt2.State <> dsBrowse then
        PedCt2.CancelUpdates;

      if PedCtaNumCta.Value > 0 then
      begin

        with fmManCta.PedCta, SQL do
        begin

          Close;
          Text := ' Select PedCta.CodEmp,' +
            ' PedCta.DteCta,' +
            ' PedCta.NumCta,' +
            ' PedCta.HreCta,' +
            ' PedCta.CodCli,' +
            ' PedCta.NomCli,' +
            ' PedCta.CodVen,' +
            ' PedCta.CodAtd,' +
            ' PedCta.CodPfa,' +
            ' PedCta.TotIte,' +
            ' PedCta.TotCst,' +
            ' PedCta.TotGer,' +
            ' PedCta.TotRen,' +
            ' PedCta.NumRes,' +
            ' PedCta.SitCta,' +
            ' FinVen.ApeVen,' +
            ' PedCta.FLGBLOQATENDIDA,' +
            ' FinAtd.ApeAtd' +
            ' From PedCta LEFT JOIN FinVen ON (PedCta.CodVen = FinVen.CodVen)' +
            '             LEFT JOIN FinAtd ON (PedCta.CodAtd = FinAtd.CodAtd)' +
            ' Where PedCta.CodEmp = :CodEmp' +
            '   and PedCta.DteCta = :DteCta' +
            '   and PedCta.NumCta = :NumCta';

          with Params do
          begin

            Params[0].AsInteger := PedCtaCodEmp.Value;
            Params[1].AsDateTime := PedCtaDteCta.Value;
            Params[2].AsInteger := PedCtaNumCta.Value;

          end;

          Open;

        end;

        fmManCta.PedCt2.Close;
        fmManCta.PedCt2.Open;

      end
      else
      begin

        fmManCta.PedCta.Close;
        fmManCta.PedCta.Open;

        fmManCta.PedCt2.Close;
        fmManCta.PedCt2.Open;

        if fmManCta.CodEmp > 0 then
          fmManCta.PedCta.Locate('CodEmp;DteCta;NumCta', VarArrayOf([fmManCta.CodEmp, fmManCta.DteCta, fmManCta.NumCta]), [loPartialKey]);

      end;

      Action := CaFree;

    end
    else
    begin

      Abort;

      if PedCtaNumCta.Value = Null then
        PedCta.Insert;

    end;

  end
  else
  begin

    fmManCta.PedCta.Close;
    fmManCta.PedCta.Open;

    fmManCta.PedCt2.Close;
    fmManCta.PedCt2.Open;

    if fmManCta.CodEmp > 0 then
      fmManCta.PedCta.Locate('CodEmp;DteCta;NumCta', VarArrayOf([fmManCta.CodEmp, fmManCta.DteCta, fmManCta.NumCta]), [loPartialKey]);

    Action := CaFree;

  end;
end;

procedure TfmManCt2.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if PedCtaSitCta.Value = 'Atendida' then
      fmsg('Operação não Pode ser Realizada. Cotação já Atendida pelo Pedido No. ' + fNumZeros(IntToStr(PedCtaNumRes.Value), 7) + '.', 'E');

    Finalizar := 'S';

    Close;

  end;
end;

procedure TfmManCt2.Panel1Exit(Sender: TObject);
var
  SeqCta, Status: string;
  infoAdicional : boolean;
begin
  inherited;

  //pSaida := 'Sim';
  infoAdicional := True;

          if (PedCta.State = dsInsert) then
  begin

    If((Trim(pedCtaINDIC_CF.asString) <> '') and (Trim(pedCtaINDIC_PRESENCA.AsString) <> '')) then
       infoAdicional := False;

    if PedCtaID_FRETE.AsInteger < 0 then infoAdicional := False;

    if PedCtaCODREGTRIB.IsNull then infoAdicional := False;

    if(infoAdicional) then
    begin
      try
        begin
          frmIndicadores := TfrmIndicadores.Create(Self);

          frmIndicadores.edIndicCF.DataField := 'INDIC_CF';
          frmIndicadores.edIndicPresenca.DataField := 'INDIC_PRESENCA';
          frmIndicadores.edIndicCF.DataSource := fmManCt2.DsCta;
          frmIndicadores.edIndicPresenca.DataSource := fmManCt2.DsCta;

          frmIndicadores.INDIC_CON.Active := True;
          frmIndicadores.INDIC_PRES.Active := True;

          frmIndicadores.ShowModal;

          if frmIndicadores.ModalResult = mrOK then
            pSaida := 'Sim'
          else
            begin
              pSaida := 'Nao';
              if(cbCodRegTrib.CanFocus) then
                 cbCodRegTrib.SetFocus;
            end;
        end;
      finally
        FreeAndNil(frmIndicadores);
      end;
    end;
  end;

  if pSaida = 'Sim' then
  begin

    if PedCta.State <> dsBrowse then
    begin

      if PedCtaID_FRETE.AsInteger < 0 then
      begin
        MessageBox(handle, 'Obrigatório informar tipo de frete. Verifique e tente novamente.', 'Validação', mb_ok + MB_ICONEXCLAMATION);
        if EdFrtRes.CanFocus then
          EdFrtRes.SetFocus;

        Abort;
      end;

      if PedCtaDteCta.Value = 0 then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdDteCta);

      if not (PedCtaID_FRETE.AsInteger in [9, 1, 2, 0]) then
      begin
        if PedCtaTotFrt.AsFloat <= 0 then
        begin
          MessageBox(handle, 'Obrigatório informar valor do frete. Caso não tenha frete informe outro tipo de frete (SEM FRETE).',
            'Pedido de Venda', MB_OK + MB_ICONINFORMATION);
          abort;
        end;
      end;

      if (trim(EdCodCli.Text) = '') then
      begin
        if (trim(edCodTcl.Text) = '') then
        begin
          MessageBox(handle, 'Obrigatório informar tipo de cliente. Verifique e tente novamente.', 'Validação', mb_ok + MB_ICONEXCLAMATION);
          if edCodTcl.CanFocus then
            edCodTcl.SetFocus;
          Abort;
        end;
      end;

      if PedCtaCODREGTRIB.IsNull then
      begin
        MessageBox(handle, 'Obrigatório informar regime tributário. Verifique e tente novamente.', 'Validação', mb_ok + MB_ICONEXCLAMATION);
        if cbCodRegTrib.CanFocus then
          cbCodRegTrib.SetFocus;

        Abort;
      end;

      Status := 'dsEdit';

      if PedCta.State = dsInsert then
      begin

        Status := 'dsInsert';

        if PedCtaCodVen.Value = 0 then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodVen);

        if Trim(PedCtaCodPfa.Value) = '' then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodPfa);

        if Trim(PedCtaUfeCta.Value) = '' then
          fmsgErro('Endereço de Faturamento do Cliente Esta Incompleto.', EdCodCli);

        if Length(trim(PEDCTANROSUF.AsString)) > 0 then
        begin
          fmMsgSuframa := TfmMsgSuframa.Create(Self);
          try

            fmMsgSuframa.ckICMS.Checked   := PEDCTASUFR_ICMS.AsString = 'S';
            fmMsgSuframa.ckIPI.Checked    := PEDCTASUFR_IPI.AsString = 'S';
            fmMsgSuframa.ckPIS.Checked    := PEDCTASUFR_PIS.AsString = 'S';
            fmMsgSuframa.ckCOFINS.Checked := PEDCTASUFR_COFINS.AsString = 'S';

            fmMsgSuframa.lbNroSuframa.caption := 'Nro. Suframa: ' + trim(PEDCTANROSUF.AsString);
            fmMsgSuframa.lbValido.caption     := 'Val.: ' + FormatDateTime('dd/mm/yyyy', PEDCTADtvSuf.AsDateTime);

            if (PEDCTADtvSuf.AsDateTime < date) or (trim(PEDCTANROSUF.AsString) = '') then
            begin
              fmMsgSuframa.ckICMS.Enabled   := False;
              fmMsgSuframa.ckIPI.Enabled    := False;
              fmMsgSuframa.ckPIS.Enabled    := False;
              fmMsgSuframa.ckCOFINS.Enabled := False;
            end;

            fmMsgSuframa.ShowModal;

            PEDCTASUFR_ICMS.AsString   := ifThen(fmMsgSuframa.ckICMS.Checked, 'S', 'N');
            PEDCTASUFR_IPI.AsString    := ifThen(fmMsgSuframa.ckIPI.Checked, 'S', 'N');
            PEDCTASUFR_PIS.AsString    := ifThen(fmMsgSuframa.ckPIS.Checked, 'S', 'N');
            PEDCTASUFR_COFINS.AsString := ifThen(fmMsgSuframa.ckCOFINS.Checked, 'S', 'N');

          finally
            FreeAndnil(fmMsgSuframa);
          end;
        end;

        if PEDCTAREGTRB.AsInteger in [1, 2] then
        begin
          if (PEDCTAUFECTA.asString = 'GO') or (PEDCTAUFECTA.asString = 'SC') then
          begin
            InformacaoObrigatoria('ATENÇÃO !!! O regime tributário deste Cliente é “Simples Nacional”. Para alguns estados e para certos NCMs com subtituição tributária, o MVA muda. Favor verificar o MVA durante a emissão do Pedido/Cotação.',
              'Lembrete de possível situação especial');
          end;
        end;

        Randomize;
        SeqCta := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
                  copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
                  copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
                  copy(TimeToStr(Time), 1, 2) +
                  copy(TimeToStr(Time), 4, 2) +
                  copy(TimeToStr(Time), 7, 2) +
                  FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
                  FNumZeros(Trim(IntToStr(Random(50000))), 5);

        PedCtaSeqCta.Value := SeqCta;

      end
      else
        SeqCta := PedCtaSeqCta.Value;

      CodEmp := PedCtaCodEmp.Value;
      DteCta := PedCtaDteCta.Value;
      with PedCta do
      begin
        fmManGDB.dbMain.StartTransaction;

        try
          ApplyUpdates;
          fmManGDB.dbMain.Commit;
        except on e : exception do begin
                                     fmManGDB.dbMain.Rollback;
                                     PedCta.Edit;
                                     EdDteCta.SetFocus;
                                     raise;
                                   end;
        end;

        CommitUpdates; {sucesso!, limpa o cache...}
      end;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select PedCta.CodEmp,' +
          '        PedCta.DteCta,' +
          '        PedCta.NumCta From PedCta' +
          ' Where PedCta.CodEmp = :CodEmp' +
          '   and PedCta.DteCta = :DteCta' +
          '   and PedCta.SeqCta = :SeqCta';

        with Params do
        begin

          Params[0].AsInteger := CodEmp;
          Params[1].AsDateTime := DteCta;
          Params[2].AsString := SeqCta;

        end;

        Open;

      end;

      PedCta.Close;
      PedCta.Params[0].AsInteger := quSQL.FieldbyName('CodEmp').AsInteger;
      PedCta.Params[1].AsDateTime := quSQL.FieldbyName('DteCta').AsDateTime;
      PedCta.Params[2].AsInteger := quSQL.FieldbyName('NumCta').AsInteger;
      PedCta.Open;

      PedCt2.Close;
      PedCt2.Params[0].AsInteger := PedCtaCodEmp.Value;
      PedCt2.Params[1].AsDateTime := PedCtaDteCta.Value;
      PedCt2.Params[2].AsInteger := PedCtaNumCta.Value;
      PedCt2.Open;

      CarregaCFOP;

      if Status = 'dsInsert' then
      begin

        with fmManCta.PedCta, SQL do
        begin

          Close;
          Text := ' Select PedCta.CodEmp,' +
            ' PedCta.DteCta,' +
            ' PedCta.NumCta,' +
            ' PedCta.HreCta,' +
            ' PedCta.CodCli,' +
            ' PedCta.NomCli,' +
            ' PedCta.CodVen,' +
            ' PedCta.CodAtd,' +
            ' PedCta.CodPfa,' +
            ' PedCta.TotIte,' +
            ' PedCta.TotCst,' +
            ' PedCta.TotGer,' +
            ' PedCta.TotRen,' +
            ' PedCta.NumRes,' +
            ' PedCta.SitCta,' +
            ' PedCta.FLGBLOQATENDIDA,' +
            '        FinVen.ApeVen,' +
            '        FinAtd.ApeAtd' +
            ' From PedCta LEFT JOIN FinVen ON (PedCta.CodVen = FinVen.CodVen)' +
            '             LEFT JOIN FinAtd ON (PedCta.CodAtd = FinAtd.CodAtd)' +
            ' Where PedCta.CodEmp = :CodEmp' +
            '   and PedCta.DteCta = :DteCta' +
            '   and PedCta.NumCta = :NumCta';

          with Params do
          begin

            Params[0].AsInteger := PedCtaCodEmp.Value;
            Params[1].AsDateTime := PedCtaDteCta.Value;
            Params[2].AsInteger := PedCtaNumCta.Value;

          end;

          Open;

        end;
      end;

      qticms := 1;

      if GUfeEmp <> PedCtaUfeCta.Value then
      begin

        with quSql, SQL do
        begin

          Close;
          Text := ' Select Count(*) as Reg from GerIcm Where GerIcm.SigUfe = ''' + PedCtaUfeCta.Value + '''';
          Open;

          qticms := FieldbyName('Reg').AsInteger;

        end;
      end;

      //pnNomCli.Visible := True;
      EdNomCli.ReadOnly := True;
      EdCgcCli.ReadOnly := True;
      EdIECli.ReadOnly := True;

      EdCodEmp.Enabled := False;
      EdDteCta.Enabled := False;
      EdCodCli.Enabled := False;
      EdCodVen.Enabled := False;
      EdCodPfa.Enabled := False;
      EdNomCli.Enabled := False;
      EdCgcCli.Enabled := False;
      EdIECli.Enabled := False;
      EdUfeCta.Enabled := False;
      edCodTcl.Enabled := False;
      CbNomTCl.Enabled := False;

      EdNomCli.Font.Style := [fsBold];
      EdCodVen.Font.Style := [fsBold];
      EdUfeCta.Font.Style := [fsBold];
      EdCodEmp.Font.Style := [fsBold];
      EdDteCta.Font.Style := [fsBold];
      EdCodCli.Font.Style := [fsBold];
      EdCodPfa.Font.Style := [fsBold];
      edCodTcl.Font.Style := [fsBold];

      bPsqVen.Enabled := False;
      bPsqEmp.Enabled := False;
      bPsqCli.Enabled := False;
      bPsqPfa.Enabled := False;

      if PedCtaQtiCta.Value = 0 then
        PedCt2.Append
      else
        grCt2.SetFocus;

    end;
  end
  else
    panel1.setFocus;
end;

procedure TfmManCt2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCt2 := nil;
end;

procedure TfmManCt2.pnItemExit(Sender: TObject);
var
  NroCt2: integer;
begin
  inherited;

  pnItem.Enabled := False;

  if PedCt2.State <> dsBrowse then
  begin

    if Trim(PedCt2DesCt2.Value) = '' then
    begin

      if EdDesCt2.Enabled then
        fmsgErro('Campo obrigatório descrição do produto.', EdDesCt2)
      else
      begin

        if EdCodGru.Enabled then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodGru)
        else
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCbaCt2);

      end;
    end;

    if PedCt2QtpCt2.AsFloat = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpCt2);

    if PedCt2VluCt2.AsFloat = 0 then
    begin

      if EdVluCt2.Enabled then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdVluCt2)
      else
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpCt2);

    end;

    if PedCt2.State = dsInsert then
    begin

      with PedCt2 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

        try

          ApplyUpdates; {Tenta aplicar as alterações}

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

          PedCt2.Edit;

          if EdCodGru.Enabled then
            EdCodGru.SetFocus
          else
          begin

            if EdCbaCt2.Enabled then
              EdCbaCt2.SetFocus
            else
            begin

              if EdDesCt2.Enabled then
                EdDesCt2.SetFocus;

            end;
          end;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedCt2.Close;
      PedCta.Close;

      PedCta.Open;
      PedCt2.Open;

      pnItem.Enabled := True;
      PedCt2.Append;

      if EdCodGru.Enabled then
        EdCodGru.SetFocus
      else
      begin

        if EdCbaCt2.Enabled then
          EdCbaCt2.SetFocus
        else
        begin

          if EdDesCt2.Enabled then
            EdDesCt2.SetFocus;

        end;
      end;

    end
    else
    begin

      NroCt2 := PedCt2NroCt2.AsInteger;

      with PedCt2 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

        try

          ApplyUpdates; {Tenta aplicar as alterações}

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

          PedCt2.Edit;

          EdQtpCt2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      PedCt2.Close;
      PedCta.Close;

      PedCta.Open;
      PedCt2.Open;

      PedCt2.Locate('CodEmp;DteCta;NumCta;NroCt2', VarArrayOf([PedCt2CodEmp.AsInteger, PedCt2DteCta.AsDateTime, PedCt2NumCta.AsInteger, NroCt2]),
        [LoPartialKey]);

      if PedCt2NroCt2.AsInteger = PedCtaQtiCta.AsInteger then
      begin
        pnItem.Enabled := True;
        PedCt2.Append;
      end
      else
      begin

        PedCt2.Next;

        EdCbaCt2.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpCt2.Enabled := False;
        edCodCfo.Enabled := False;
        EdVluCt2.Enabled := False;
        EdCodUnd.Enabled := False;
        EdDscCt2.Enabled := False;
        EdDesCt2.ReadOnly := True;
        EdObsCt2.ReadOnly := True;
        edPedCompra.Enabled := False;
        edItemCompra.EnaBled := False;

        pnItem.Enabled := False;
        grCt2.SetFocus;

      end;
    end;

  end
  else
  begin

    EdCbaCt2.Enabled := False;
    EdCodGru.Enabled := False;
    EdCodSub.Enabled := False;
    EdCodPro.Enabled := False;
    EdQtpCt2.Enabled := False;
    edCodCfo.Enabled := False;
    EdVluCt2.Enabled := False;
    EdCodUnd.Enabled := False;
    EdDscCt2.Enabled := False;
    EdDesCt2.ReadOnly := True;
    EdObsCt2.ReadOnly := True;
    edPedCompra.Enabled := False;
    edItemCompra.EnaBled := False;

    grCt2.SetFocus;

  end;

  pnItem.Enabled := True;
  {edCodSt2.Enabled := False;
  edCodIPI.Enabled := False;
  edCodPIS.Enabled := False;
  edCodCOF.Enabled := False;}
  //dxdbcoloredit2.Enabled := False;

end;

procedure TfmManCt2.EdCodProExit(Sender: TObject);
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

  end;
end;

procedure TfmManCt2.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {f1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := PedCt2CodClp.AsString;
      fmAuxIni.CodGru := PedCt2CodGru.AsString;
      fmAuxIni.CodSub := PedCt2CodSub.AsString;

      fmAuxIni.CodEmp := PedCtaCodEmp.Value;

      if PedCtaLanEst.Value = 'Sim' then
      begin

        if PedCtaCodFil.Value > 0 then
          fmAuxIni.CodEmp := PedCtaCodFil.Value;

      end;

      fmAuxIni.CliTab := PedCtaCliTab.AsString;

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.LanCba := LanCba;

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if (EdCodGru.Enabled) or (EdCbaCt2.Enabled) then
        begin

          PedCt2CodClp.AsString := fmAuxIni.CodClp;
          PedCt2CodGru.AsString := fmAuxIni.CodGru;
          PedCt2CodSub.AsString := fmAuxIni.CodSub;
          PedCt2CodPro.AsString := fmAuxIni.CodPro;
          PedCt2CbaCt2.Value := Trim(fmAuxIni.CbaPro);

        end;
      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(PedCt2CodPro.AsString) <> '' then
    begin

      if EdCodGru.Enabled then
        SaiProduto
      else
        SaiCodBarras;

    end
    else
    begin

      if EdCodPro.Enabled then
        EdCodPro.SetFocus
      else
      begin

        if EdCbaCt2.Enabled then
          EdCbaCt2.SetFocus;

      end;
    end;
  end;

  if key = 113 then
  begin {F5 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := '1';

      if Trim(PedCt2CodGru.AsString) <> '' then
        fmAuxPsq.CodGru := PedCt2CodGru.AsString;
      if Trim(PedCt2CodSub.AsString) <> '' then
        fmAuxPsq.CodSub := PedCt2CodSub.AsString;

      fmAuxPsq.CodEmp := PedCtaCodEmp.Value;

      if PedCtaLanEst.Value = 'Sim' then
      begin

        if PedCtaCodFil.Value > 0 then
          fmAuxPsq.CodEmp := PedCtaCodFil.Value;

      end;

      fmAuxPsq.CliTab := PedCtaCliTab.Value;

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.LanCba := LanCba;

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if PedCt2.State = dsBrowse then
        begin

          if Trim(PedCt2CodClp.AsString) <> '' then
            PedCt2.Edit
          else
            PedCt2.Append;

        end;

        PedCt2CodClp.AsString := fmAuxPsq.CodClp;
        PedCt2CodGru.AsString := fmAuxPsq.CodGru;
        PedCt2CodSub.AsString := fmAuxPsq.CodSub;
        PedCt2CodPro.AsString := fmAuxPsq.CodPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(PedCt2CodPro.AsString) <> '' then
    begin

      if EdCodPro.Enabled then
        SaiProduto
      else
        SaiCodBarras;

    end
    else
    begin

      if EdCodPro.Enabled then
        EdCodPro.SetFocus
      else
        EdCbaCt2.SetFocus;

    end;
  end;
end;

procedure TfmManCt2.EdQtpCt2Exit(Sender: TObject);
var
  saida: boolean;
  FlgAce: string;
  SeqLin, SeqIni: integer;
  SldAtu, PrecoLiquido: real;
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

      if PedCt2.State <> dsBrowse then
      begin

        if PedCt2QtpCt2.Value > 0 then
        begin

          PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value, 2);

          FlgAce := 'Nao';

          if PedCtaLanEst.Value = 'Sim' then
          begin

            if PedCtaCodFil.Value > 0 then
              CodEmp := PedCtaCodFil.Value
            else
              CodEmp := PedCtaCodEmp.Value;

          end
          else
            CodEmp := PedCtaCodEmp.Value;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select ite.CodEmp,' +
              ' qte.Qtdqte QtdIte,' +
              ' (SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) QtrIte,' +
              ' qte.QtdRma QtdRma,' +
              ' qte.QtaQte QtaIte,' +
              ' ite.Vb1Ite,' +
              ' ite.Ds1Ite,' +
              ' ite.Vb2Ite,' +
              ' ite.Ds2Ite,' +
              ' ite.Vb3Ite,' +
              ' ite.Ds3Ite,' +
              ' ite.Vb4Ite,' +
              ' ite.Ds4Ite,' +
              ' ite.Vb5Ite,' +
              ' ite.Ds5Ite, ' +
              ' ite.VpfIte, ' +
              ' (Select SAIIPI from estpro where  CodClp = ite.CodClp and codgru = ite.codgru and codsub = ite.codsub and codpro = ite.codpro)as IPI' +
              ' From EstIte ite' +
              ' join EstQte qte on qte.codemp = ite.codemp ' +
              ' and qte.codclp = ite.codclp ' +
              ' and qte.codgru = ite.codgru ' +
              ' and qte.codsub = ite.codsub ' +
              ' and qte.codpro = ite.codpro ' +
              ' Where ite.CodEmp = ' + QuotedStr(PedCtaCODEMP.AsString) +
              '   and ite.CodClp = ' + QuotedStr(PedCt2CodClp.AsString) +
              '   and ite.CodGru = ' + QuotedStr(PedCt2CodGru.AsString) +
              '   and ite.CodSub = ' + QuotedStr(PedCt2CodSub.AsString) +
              '   and ite.CodPro = ' + QuotedStr(PedCt2CodPro.AsString);
            Open;

          end;

          if PedCt2CodGru.AsString <> '999' then
          begin

            if Trim(sVerEst) = 'Sim' then
            begin

              if quSql.FieldbyName('CodEmp').AsInteger > 0 then
              begin

                SldAtu := fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat), 4);

                if PedCt2QtpCt2.Value > SldAtu then
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

              try

                fmPsqTab := TfmPsqTab.Create(Self);

                if (trim(PedCtaCliTab.AsString) = '98 Qualquer das Tabelas') or (trim(PedCtaCliTab.AsString) = '99 Tabela Livre') or
                  (Trim(PedCtaCliTab.AsString) = '') then
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
                  SeqIni := 1;

                  SeqIni := StrToInt(copy(PedCtaCliTab.AsString, 1, 2));

                  while (SeqIni <= StrToInt(copy(PedCtaCliTab.AsString, 1, 2))) and (SeqIni <= 5) do
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
                end;

                fmPsqTab.StrTab.RowCount := SeqLin;

                fmPsqTab.ShowModal;

                PedCt2TabPrc.Value := fmPsqTab.TabPrc;

              finally

                FreeAndNil(fmPsqTab);

              end;

              if PedCt2TabPrc.AsInteger > 0 then
              begin

                PedCt2VluCt2.Value := quSQL.FieldbyName('Vb' + Trim(IntToStr(PedCt2TabPrc.Value)) + 'Ite').AsFloat;

                AntVluCt2 := PedCt2VluCt2.Value;

              end
              else
                fmsgErro('Tabela de Preço não Informada para o Item.', EdQtpCt2);

            end;

          end
          else
            FlgAce := 'Sim';

          if FlgAce = 'Sim' then
          begin

            if PedCt2VluCt2.Value <> antVluCt2 then
            begin

              AntVluCt2 := PedCt2VluCt2.AsFloat;

              PedCt2VlqCt2.Value := PedCt2VluCt2.AsFloat;

              if PedCt2DscCt2.Value > 0 then
              begin

                PedCt2VdsCt2.AsFloat := fRound((PedCt2DscCt2.AsFloat * PedCt2VlqCt2.AsFloat) / 100, 4);

                PedCt2VlqCt2.AsFloat := fRound(PedCt2VlqCt2.AsFloat - PedCt2VdsCt2.AsFloat, 4);

              end;

              if PedCt2DscCom.AsFloat > 0 then
              begin

                PedCt2VdsCom.AsFloat := fRound((PedCt2DscCom.AsFloat * PedCt2VlqCt2.AsFloat) / 100, 4);

                PedCt2VlqCt2.AsFloat := fRound(PedCt2VlqCt2.AsFloat - PedCt2VdsCom.AsFloat, 4);

              end;

              if PedCt2DspCt2.AsFloat > 0 then
              begin

                PedCt2VdpCt2.AsFloat := fRound((PedCt2DspCt2.AsFloat * PedCt2VlqCt2.AsFloat) / 100, 4);

                PedCt2VlqCt2.AsFloat := fRound(PedCt2VlqCt2.AsFloat - PedCt2VdpCt2.AsFloat, 4);

              end;

              if PedCt2PacCt2.AsFloat > 0 then
              begin

                PedCt2VacCt2.AsFloat := fRound((PedCt2PacCt2.AsFloat * PedCt2VlqCt2.AsFloat) / 100, 4);

                PedCt2VlqCt2.AsFloat := fRound(PedCt2VlqCt2.AsFloat + PedCt2VacCt2.AsFloat, 4);

              end;
            end;

            PedCt2TotCt2.AsFloat := fRound(PedCt2VlqCt2.AsFloat * PedCt2QtpCt2.AsFloat, 2);

            if EdVluCt2.Enabled then
              EdVluCt2.SetFocus
            else
            begin

              if PedCt2VluCt2.AsFloat = 0 then
                fmsgErro('Item sem Preço Únitario Informado.', EdQtpCt2);

            end;

          end
          else
            EdQtpCt2.SetFocus;

        end
        else
          fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtpCt2);
      end;
    end;
  end;
end;

procedure TfmManCt2.EdVluCt2Exit(Sender: TObject);
var
  ret: string;
  FlgAce: string;
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin
    if (not EdQtpCt2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin
      if PedCt2.State <> dsBrowse then
      begin
        if PedCt2VluCt2.AsFloat > 0 then
        begin
          if PedCt2VluCt2.AsFloat <> AntVluCt2 then
          begin
            if PedCt2CodGru.AsString <> '999' then
            begin
              FlgAce := 'Nao';
              if PedCt2VluCt2.AsFloat > AntVluCt2 then
              begin
                if fMsg('Valor Informado para o Item Acima do Valor Praticado de Tabela. Confirma Valor Unitário ?', 'O') then
                  FlgAce := 'Sim';
              end
              else
                FlgAce := 'Sim';
            end
            else
              FlgAce := 'Sim';

            if FlgAce = 'Sim' then
            begin
              PedCt2DscCt2.AsFloat := 0;
              PedCt2VdsCt2.AsFloat := 0;
              PedCt2PacCt2.AsFloat := 0;
              PedCt2VacCt2.AsFloat := 0;

              if PedCt2CodGru.AsString <> '999' then
              begin
                if AntVluCt2 > 0 then
                begin
                  if PedCt2VluCt2.AsFloat > AntVluCt2 then
                  begin
                    PedCt2VacCt2.AsFloat := fRound(PedCt2VluCt2.AsFloat - AntVluCt2, 4);
                    if AntVluCt2 > 0 then
                      PedCt2PacCt2.AsFloat := fRound((100 * PedCt2VacCt2.AsFloat) / AntVluCt2, 6)
                    else
                      PedCt2PacCt2.AsFloat := 100;
                  end
                  else
                  begin
                    if PedCt2VluCt2.AsFloat < AntVluCt2 then
                    begin
                      PedCt2VdsCt2.AsFloat := fRound(AntVluCt2 - PedCt2VluCt2.AsFloat, 4);
                      PedCt2DscCt2.AsFloat := fRound((100 * PedCt2VdsCt2.AsFloat) / AntVluCt2, 6);
                    end;
                  end;
                end;
              end;

              AntDscCt2 := PedCt2DscCt2.AsFloat;
              PedCt2VlqCt2.AsFloat := PedCt2VluCt2.AsFloat;
              if PedCt2CodGru.AsString <> '999' then
              begin
                if PedCt2DscCom.AsFloat > 0 then
                begin
                  PedCt2VdsCom.AsFloat := fRound((PedCt2DscCom.AsFloat * PedCt2VlqCt2.AsFloat) / 100, 4);
                  PedCt2VlqCt2.AsFloat := fRound(PedCt2VlqCt2.AsFloat - PedCt2VdsCom.Value, 4);
                end;
                if PedCt2DspCt2.AsFloat > 0 then
                begin
                  PedCt2VdpCt2.AsFloat := fRound((PedCt2DspCt2.AsFloat * PedCt2VlqCt2.AsFloat) / 100, 4);
                  PedCt2VlqCt2.AsFloat := fRound(PedCt2VlqCt2.AsFloat - PedCt2VdpCt2.AsFloat, 4);
                end;
                if AntVluCt2 > 0 then
                  PedCt2VluCt2.AsFloat := AntVluCt2;
              end;
              PedCt2TotCt2.AsFloat := fRound(PedCt2VlqCt2.AsFloat * PedCt2QtpCt2.AsFloat, 2);
              if (qticms > 1) and (GUfeEmp <> PedCtaUfeCta.Value) then
              begin
                if (PedCtaCodTcl.AsInteger <> 1) and (PedCtaCodTcl.AsInteger <> 3) and (PedCtaCodTcl.AsInteger <> 5) then
                begin
                  ret := 'N';
                  try

                    fmPsqIcm := TfmPsqIcm.Create(Self);

                    with fmPsqIcm.GerIcm, SQL do
                    begin
                      Close;
                      if fmManGDB.BuscaSimples('ESTIPI', 'flg_sineif20', ' CODIPI = ' + QuotedStr(PedCt2REGIPI.AsString) + ' and  TIPIPI = ' +
                        QuotedStr(PedCt2TIPIPI.AsString)) <> 'S' then
                      begin
                        Text := ' Select SIGUFE, SEQICM, PERICM, NROICM, FLGTRG ' +
                          ' From GerIcm Where GerIcm.SigUfe = ' + QuotedStr(PedCtaUfeCta.AsString);
                      end
                      else
                      begin
                        Text := ' Select SIGUFE, SEQICM, REDINT as PERICM, NROICM, FLGTRG ' +
                          ' From GerIcm Where GerIcm.SigUfe = ' + QuotedStr(PedCtaUfeCta.AsString);
                      end;
                      Open;
                    end;

                    fmPsqIcm.ShowModal;
                    ret := fmPsqIcm.ret;
                    PedCt2IcmCt2.AsFloat := fmPsqIcm.Icms;
                  finally
                    FreeAndNil(fmPsqIcm);
                  end;
                  if ret = 'N' then
                    EdVluCt2.SetFocus;
                end;
              end;
            end
            else
              EdVluCt2.SetFocus;
          end;
        end
        else
          fmsgErro('Campo de Preenchimento Obrigatorio', EdVluCt2);
      end;
    end;
  end;
end;

procedure TfmManCt2.EdDscCt2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdVluCt2.Focused) and (not EdQtpCt2.Focused) and
      (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedCt2.State <> dsBrowse then
      begin

        if PedCt2DscCt2.Value <> AntDscCt2 then
        begin

          if PedCt2DscCt2.Value = 0 then
            PedCt2VdsCt2.Value := 0;

          PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

          if PedCt2DscCt2.Value > 0 then
          begin

            PedCt2VdsCt2.Value := fRound((PedCt2DscCt2.Value * PedCt2VlqCt2.Value) / 100, 4);

            PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCt2.Value, 4);

          end
          else
            PedCt2VdsCt2.Value := 0;

          if PedCt2DscCom.Value > 0 then
          begin

            PedCt2VdsCom.Value := fRound((PedCt2DscCom.Value * PedCt2VlqCt2.Value) / 100, 4);

            PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCom.Value, 4);

          end
          else
            PedCt2VdsCom.Value := 0;

          if PedCt2DspCt2.Value > 0 then
          begin

            PedCt2VdpCt2.Value := fRound((PedCt2DspCt2.Value * PedCt2VlqCt2.Value) / 100, 4);

            PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value, 4);

          end
          else
            PedCt2VdpCt2.Value := 0;

          if PedCt2PacCt2.Value > 0 then
          begin

            PedCt2VacCt2.Value := fRound((PedCt2PacCt2.Value * PedCt2VlqCt2.Value) / 100, 4);

            PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VacCt2.Value, 4);

          end
          else
            PedCt2VacCt2.Value := 0;

          AntDscCt2 := PedCt2DscCt2.Value;

          PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value, 2);

        end;
      end;
    end;
  end;
end;

procedure TfmManCt2.EdDspCt2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdDscCt2.Focused) and (not EdVluCt2.Focused) and (not EdQtpCt2.Focused) and
      (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedCt2.State <> dsBrowse then
      begin

        if PedCt2DspCt2.Value <> AntDspCt2 then
        begin

          if PedCt2DspCt2.Value = 0 then
            PedCt2VdpCt2.Value := 0;

          PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

          if PedCt2DscCt2.Value > 0 then
          begin

            PedCt2VdsCt2.Value := fRound((PedCt2DscCt2.Value * PedCt2VlqCt2.Value) / 100, 4);

            PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCt2.Value, 4);

          end;

          if PedCt2DscCom.Value > 0 then
          begin

            PedCt2VdsCom.Value := fRound((PedCt2DscCom.Value * PedCt2VlqCt2.Value) / 100, 4);

            PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCom.Value, 4);

          end;

          if PedCt2DspCt2.Value > 0 then
          begin

            PedCt2VdpCt2.Value := fRound((PedCt2DspCt2.Value * PedCt2VlqCt2.Value) / 100, 4);

            PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value, 4);

          end;

          if PedCt2PacCt2.Value > 0 then
          begin

            PedCt2VacCt2.Value := fRound((PedCt2PacCt2.Value * PedCt2VlqCt2.Value) / 100, 4);

            PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VacCt2.Value, 4);

          end;

          AntDspCt2 := PedCt2DspCt2.Value;

          PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value, 2);

        end;
      end;
    end;
  end;
end;

procedure TfmManCt2.EdDteCtaExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then
    EdDteCta.SetFocus
end;

procedure TfmManCt2.SaiGrupo;
begin
  if Trim(PedCt2CodGru.AsString) <> '' then
  begin

    EdDesCt2.TabStop := False;
    EdObsCt2.TabStop := False;
    edCodCfo.TabStop := False;
    edClsIpi.TabStop := False;

    if PedCt2.State <> dsBrowse then
    begin

      PedCt2CodGru.AsString := FNumZeros(PedCt2CodGru.AsString, 3);

      if PedCt2CodGru.AsString <> '999' then
      begin

        with quSql, SQL do
        begin

          Close;
          Text := ' Select Count(*) as Reg From EstGru Where EstGru.CodGru = ''' + PedCt2CodGru.AsString + '''';
          Open;

        end;

        if quSql.FieldbyName('Reg').AsInteger = 0 then
          fmsgErro('Grupo Informado não Encontrado', EdCodGru)
        else
        begin

          if EdQtpCt2.Focused then
          begin

            if Trim(PedCt2CodSub.AsString) = '' then
              EdCodSub.SetFocus;
            if Trim(PedCt2CodPro.AsString) = '' then
              EdCodPro.SetFocus;

          end
          else
            EdCodSub.SetFocus;

        end;

      end
      else
      begin

        {messagebox(handle, 'Não é possível lançar itens sem cadastro. Por ser necessário conter todas as regras para o correto calculo.', 'Produto', mb_ok +
          MB_ICONINFORMATION);
        edCodGru.SetFocus;
        abort;}

        EdDesCt2.TabStop := True;
        EdObsCt2.TabStop := True;
        edCodCfo.TabStop := True;
        edClsIpi.TabStop := True;

        EdDscCt2.Enabled := False;

        PedCt2IcmCt2.Value := 0;
        PedCt2IpiCt2.Value := 0;
        PedCt2CodSub.AsString := '9999';
        PedCt2CodPro.AsString := '99999';

        EdQtpCt2.SetFocus;

      end;

    end
    else
    begin

      if EdCodGru.Enabled then
      begin

        if Trim(PedCt2CodGru.AsString) = '' then
          fmsgErro('Grupo Informado não Encontrado', EdCodGru);

      end;
    end;

  end
  else
    fmsgErro('Grupo Informado não Encontrado', EdCodGru);
end;

procedure TfmManCt2.SaiSubGrupo;
begin
  if Trim(PedCt2CodSub.AsString) <> '' then
  begin

    if PedCt2.State <> dsBrowse then
    begin

      PedCt2CodSub.AsString := FNumZeros(PedCt2CodSub.AsString, 4);

      with quSql, SQL do
      begin

        Close;
        Text := ' Select Count(*) as Reg From EstSub' +
          ' Where EstSub.CodGru = ''' + PedCt2CodGru.AsString + '''' +
          '   and EstSub.CodSub = ''' + PedCt2CodSub.AsString + '''';
        Open;

      end;

      if quSQL.FieldbyName('Reg').AsInteger = 0 then
        fmsgErro('Grupo e Sub-Grupo Informado não Encontrado.', EdCodGru)
      else
      begin

        if EdQtpCt2.Focused then
        begin

          if Trim(PedCt2CodPro.AsString) = '' then
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

        if Trim(PedCt2CodSub.AsString) = '' then
          fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);

      end;
    end;

  end
  else
    fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);
end;

procedure TfmManCt2.SaiProduto;
var
  strCodSts, strIcmSai: string;
  vlrPerIcm: Double;
  SQLTEMP: TQuery;
  Pro: TProduto;
  strAliq : string;
  vlrAliq : real;
begin
  if Trim(PedCt2CodPro.AsString) <> '' then
  begin

    if PedCt2.State <> dsBrowse then
    begin

      PedCt2CodPro.Value := FNumStrZero(PedCt2CodPro.Value);

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select Count(1) as Reg From PedCt2 ' +
          ' Where PedCt2.CodEmp = ' + QuotedStr(IntToStr(PedCt2CodEmp.AsInteger)) +
          ' and PedCt2.DteCta = ' + QuotedStr(fDateToSQL(PedCt2DteCta.AsDateTime)) +
          ' and PedCt2.NumCta = ' + QuotedStr(IntToStr(PedCt2NumCta.AsInteger)) +
          ' and PedCt2.CodClp = ' + QuotedStr(PedCt2CodClp.Value) +
          ' and PedCt2.CodGru = ' + QuotedStr(PedCt2CodGru.Value) +
          ' and PedCt2.CodSub = ' + QuotedStr(PedCt2CodSub.Value) +
          ' and PedCt2.CodPro = ' + QuotedStr(PedCt2CodPro.Value) +
          ' and PedCt2.CodTam = ' + QuotedStr(PedCt2CodTam.Value) +
          ' and PedCt2.CodCor = ' + QuotedStr(PedCt2CodCor.Value);
        Open;

      end;

      if(quSql.FieldbyName('Reg').AsInteger > 0) then
      begin
         showMessage('Item duplicado!');
      end;

      if(quSql.FieldbyName('Reg').AsInteger > 100) then
      begin
          case MessageBox(Self.Handle, 'Item duplicado, deseja continuar', 'ATENCAO', MB_YESNO) of
             IDNO:
                begin
                   fMsgErro('Item Duplicado !', EdCodPro);
                   permitDuplicatedItem := False;
                end;
             IDYES:
                begin
                   fMsgErro('Item Duplicado !', EdQtpCt2);
                   permitDuplicatedItem := True;
                   EdVluCt2.setFocus;
                   EdQtpCt2.setFocus;
                end;
          end;
      end;

      //if quSql.FieldbyName('Reg').AsInteger = 0 then
      begin

        Pro := TProduto.Create();
        try
          Pro.CodClp := PedCt2CodClp.AsString;
          Pro.CodGru := PedCt2CodGru.AsString;
          Pro.CodSub := PedCt2CodSub.AsString;
          Pro.CodPro := PedCt2CodPro.AsString;
          Pro.UFECli := ifthen(trim(PedCtaUFECta.AsString) <> '', PedCtaUFECta.AsString, fmManGdb.BuscaSimples('GEREMP', 'SIGUFE', ' CodEmp = ' +
            PedCtaCodEmp.AsString));

          Pro.UFEEmp := fmManGdb.BuscaSimples('GEREMP', 'SIGUFE', ' CodEmp = ' + PedCtaCodEmp.AsString);
          Pro.TipEmp := fmManGdb.BuscaSimples('GEREMP', 'TIPEMP', ' CodEmp = ' + PedCtaCodEmp.AsString);

          strAliq := fmManGdb.BuscaSimples('FATPAR', 'coalesce(ALIQ_CRED_SN, 0) as ALIQ_CRED_SN', ' 1 = 1');
          vlrAliq := StrToFloat(strAliq);

          Pro.AliqCred :=  vlrAliq;

          Pro.CodTcl := PedCtaCODTCL.AsInteger;
          Pro.CodRegTrib := PedCtaRegTrbemp.AsInteger;

          Pro.CodRegTribDest := FINREGTRIBNUMREGTRIB.AsString;
          Pro.CodRegTribCli := FINREGTRIBNUMREGTRIB.AsString;

          Pro.CodPfa := PedCtaCodPfa.AsString;
          Pro.TipPfa := PedCtaTipPfa.AsString;
          Pro.tipo := PedCtaTipPfa.AsString;
          Pro.FLGCTB := PedCtaFLGCTB.Asstring;
          Pro.CodTcl := PedctaCODTCL.AsInteger;

          Pro.Carregadados;

          //CmpCt2CbaCt2.AsString := Pro.PROCbaPro;
           //CmpCt2CLSIPI.asString := Pro.PRONCM;
          PedCt2CodUnd.AsString := Pro.PROCodUnd;
          PedCt2CodSt1.AsString := Pro.PROOrigem;
          PedCt2DesCt2.AsString := Pro.PRODescPro;
          PedCt2ClsIpi.AsString := Pro.PRONCM;
          //aqui
          pedCt2Cest.asString := Pro.PROCEST;


          PedCt2ALIQ_FCPUFDEST.AsFloat := pro.FCPALIQ_FCPUFDEST;
          PedCt2ALIQ_ICMSUFDEST.AsFloat := pro.DIFALALIQ_ICMSUFDEST;
          PedCt2ALIQ_ICMSINTER.AsFloat := pro.DIFALALIQ_ICMSINTER;
          PedCt2ID_REGRA_FCP.AsInteger := pro.ID_REGRA_FCP;

          pedCt2ALIQ_FCPUFDEST.AsFloat := pro.FCPALIQ_FCPUFDEST;
          pedCt2ALIQ_ICMSUFDEST.AsFloat := pro.DIFALALIQ_ICMSUFDEST;
          pedCt2ALIQ_ICMSINTER.AsFloat := pro.DIFALALIQ_ICMSINTER;
          pedCt2ID_REGRA_FCP.AsInteger := pro.ID_REGRA_FCP;
          //PedCt2QtdEmb.AsFloat := Pro.ProQtdEmb;

          PedCt2REGICM.AsString := Pro.ICMSRegra;
          PedCt2TIPICM.AsString := Pro.ICMSTipo;
          PedCt2CodSt2.AsString := Pro.CSTICMS;
          PedCt2IcmCt2.AsFloat := Pro.ICMSAliq;
          PedCt2BSCICM.AsFloat := Pro.ICMSBase;
          PedCt2REDICM.AsFloat := Pro.ICMSRed;
          PedCt2INCREV.AsFloat := Pro.ICMSIncRev;
          PedCt2INCFIN.AsFloat := Pro.ICMSIncFin;
          PedCt2CodCFO.AsString := Pro.CFOP;

          PedCt2CODSTR.AsString := Pro.STRRegra;
          PedCt2TIPSTR.AsString := Pro.STRTipo;
          PedCt2ICMSUB.AsFloat := Pro.STRAliq;
          PedCt2MRGSUB.AsFloat := Pro.STRMVA;
          //PedCt2BSCSUB.AsFloat := Pro.STRBase;
          PedCt2BaseSB.AsFloat := Pro.STRBase;
          PedCt2CODTXF.AsString := pro.STRCodTXF;
          PedCt2REDSUB.AsFloat := Pro.STRRed;

          PedCt2REGIPI.AsString := Pro.IPIRegra;
          PedCt2TIPIPI.AsString := Pro.IPITipo;
          PedCt2CSTIPI.AsString := Pro.IPICST;
          PedCt2IpiCt2.AsFloat := Pro.IPIAliq;
          PedCt2Cod_Enq.AsString := Pro.IPICOD_ENQ;
          PedCt2BSCIPI.AsFloat := Pro.IPIBase;
          PedCt2CODTXF2.AsString := Pro.IPICodTXF;

          //PedCt2IMPCt2.AsFloat := Pro.IPIPerImp;

          PedCt2TRBPIS.AsString := Pro.PFAPISTRB;
          PedCt2ALIQPIS.AsFloat := Pro.PISAliq;
          PedCt2CSTPIS.AsString := Pro.PISCST;
          PedCt2FLG_DESC_ZF_PIS.AsString := Pro.PISFlgDescZf;

          PedCt2TRBCOF.AsString := Pro.PFACOFTRB;
          PedCt2ALIQCOF.AsFloat := Pro.COFAliq;
          PedCt2CSTCOF.AsString := Pro.COFCST;
          PedCt2FLG_DESC_ZF_COF.AsString := Pro.COFFlgDescZf;

          PedCt2FrtICM.AsFloat := Pro.PFAFrtICMS;
          PedCt2SegICM.AsFloat := Pro.PFASegICMS;
          PedCt2DesICM.AsFloat := Pro.PFAOutICMS;

          PedCt2FrtIPI.AsFloat := Pro.PFAFrtIPI;
          PedCt2SegIPI.AsFloat := Pro.PFASegIPI;
          PedCt2DesIPI.AsFloat := Pro.PFAOutIPI;
          //PedCt2IMPCt2.AsFloat := Pro.IPIPerImp;
          PedCt2ID_ESTICM.AsInteger := Pro.ID_ESTICM;

        finally
          FreeAndnil(Pro);
        end;

      end
      //else
      //  fMsgErro('Item Duplicado !', EdCodPro);

    end
    else
    begin

      if EdCodPro.Enabled then
      begin

        if Trim(PedCt2CodPro.Value) = '' then
          fmsgErro('Item Informado não Encontrado.', EdCodPro);

      end;
    end;

  end
  else
    fmsgErro('Item Informado não Encontrado.', EdCodPro);
end;

procedure TfmManCt2.SaiCodBarras;
begin
  if Trim(PedCt2CbaCt2.Value) <> '' then
  begin

    if PedCt2CbaCt2.Value <> '99999999999999999999' then
    begin

      if not EdDesCt2.ReadOnly then
      begin

        {pnDesCt2.Visible := True;
        pnObsCt2.Visible := True;}

        EdVluCt2.Enabled := False;
        EdCodUnd.Enabled := False;
        //EdDesCt2.ReadOnly := True;
        EdObsCt2.ReadOnly := True;

        EdDscCt2.Enabled := True;

      end;

      if PedCt2.State <> dsBrowse then
      begin

        if LanCba = 'Sim' then
        begin

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select * From EstBar Where EstBar.CodBar = ''' + PedCt2CbaCt2.Value + '''';
            Open;

          end;

        end
        else
        begin

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select EstPro.CodClp,' +
              '        EstPro.CodGru,' +
              '        EstPro.CodSub,' +
              '        EstPro.CodPro From EstPro Where EstPro.CbaPro = ''' + PedCt2CbaCt2.Value + '''';
            Open;

          end;
        end;

        if quSQL.FieldbyName('CodPro').AsString <> '' then
        begin

          PedCt2CodClp.AsString := quSQL.FieldbyName('CodClp').AsString;
          PedCt2CodGru.AsString := quSQL.FieldbyName('CodGru').AsString;
          PedCt2CodSub.AsString := quSQL.FieldbyName('CodSub').AsString;
          PedCt2CodPro.AsString := quSQL.FieldbyName('CodPro').AsString;

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select Count(*) as QtdReg From PedCt2 ' +
              ' Where PedCt2.CodEmp = ''' + IntToStr(PedCt2CodEmp.Value) + '''' +
              '   and PedCt2.DteCta = ''' + fDateToSQL(PedCt2DteCta.Value) + '''' +
              '   and PedCt2.NumCta = ''' + IntToStr(PedCt2NumCta.Value) + '''' +
              '   and PedCt2.CodClp = ''' + PedCt2CodClp.AsString + '''' +
              '   and PedCt2.CodGru = ''' + PedCt2CodGru.AsString + '''' +
              '   and PedCt2.CodSub = ''' + PedCt2CodSub.AsString + '''' +
              '   and PedCt2.CodPro = ''' + PedCt2CodPro.AsString + '''' +
              '   and PedCt2.CodTam = ''' + PedCt2CodTam.Value + '''' +
              '   and PedCt2.CodCor = ''' + PedCt2CodCor.Value + '''';
            Open;

          end;

          if quSql.FieldbyName('QtdReg').AsInteger = 0 then
          begin

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodPro,' +
                '        EstPro.SaiIcm,' +
                '        EstPro.SaiIpi,' +
                '        EstPro.CodUns,' +
                '        EstPro.CodSt1,' +
                '        EstPro.CodSt2,' +
                '        EstPro.DscPro,' +
                '        EstPro.IpiSai,' +
                '        EstPro.IpiTsd,' +
                '        EstPro.IcmSai,' +
                '        EstPro.IcmTsd From EstPro ' +
                ' Where EstPro.CodClp = :CodClp' +
                '   and EstPro.CodGru = :CodGru' +
                '   and EstPro.CodSub = :CodSub' +
                '   and EstPro.CodPro = :CodPro' +
                '   and EstPro.FlbPro = :FlbPro';

              with Params do
              begin

                Params[0].AsString := PedCt2CodClp.AsString;
                Params[1].AsString := PedCt2CodGru.AsString;
                Params[2].AsString := PedCt2CodSub.AsString;
                Params[3].AsString := PedCt2CodPro.AsString;
                Params[4].AsString := ' ';

              end;

              Open;

            end;

            if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then
            begin

              PedCt2IcmCt2.Value := quSql.FieldbyName('SaiIcm').AsFloat;
              PedCt2IpiCt2.Value := quSql.FieldbyName('SaiIpi').AsFloat;
              PedCt2CodUnd.Value := Trim(quSQL.FieldbyName('CodUns').AsString);
              PedCt2CodSt1.Value := Trim(quSql.FieldbyName('CodSt1').AsString);
              PedCt2CodSt2.Value := Trim(quSql.FieldbyName('CodSt2').AsString);
              PedCt2DesCt2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

              if Trim(quSQL.FieldbyName('IpiSai').AsString) <> '' then
              begin

                PedCt2RegIpi.Value := Trim(quSQL.FieldbyName('IpiSai').AsString);
                PedCt2TipIpi.Value := Trim(quSQL.FieldbyName('IpiTsd').AsString);

              end;

              if Trim(quSQL.FieldbyName('IcmSai').AsString) <> '' then
              begin

                PedCt2RegIcm.Value := Trim(quSQL.FieldbyName('IcmSai').AsString);
                PedCt2TipIcm.Value := Trim(quSQL.FieldbyName('IcmTsd').AsString);

              end;

              if (qticms = 1) and (GUfeEmp <> PedCtaUfeCta.Value) then
              begin

                if (PedCtaCodTcl.Value <> 1) and (PedCtaCodTcl.Value <> 3) and (PedCtaCodTcl.Value <> 5) then
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select GerIcm.PerIcm,redint From GerIcm Where GerIcm.SigUfe = ' + QuotedStr(PedCtaUfeCta.Value);
                    Open;

                    //PedCt2IcmCt2.Value := FieldbyName('PerIcm').AsFloat;

                    if fmManGDB.BuscaSimples('ESTIPI', 'flg_sineif20', ' CODIPI = ' + QuotedStr(PedCt2REGIPI.AsString) + ' and  TIPIPI = ' +
                      QuotedStr(PedCt2TIPIPI.AsString)) <> 'S' then
                    begin
                      PedCt2IcmCt2.AsFloat := fmPsqIcm.GerIcm.FieldByName('pericm').AsFloat;
                    end
                    else
                    begin
                      PedCt2IcmCt2.AsFloat := FieldByName('redint').AsFloat;
                    end;

                  end;
                end;
              end;

              if PedCtaLanEst.Value = 'Sim' then
              begin

                if PedCtaCodFil.Value > 0 then
                  CodEmp := PedCtaCodFil.Value
                else
                  CodEmp := PedCtaCodEmp.Value;

              end
              else
                CodEmp := PedCtaCodEmp.Value;

              with quSql, SQL do
              begin

                Close;
                Text := ' Select QtdEmb From EstPro ' +
                  ' Where EstPro.CodClp = ''' + PedCt2CodClp.AsString + '''' +
                  '   and EstPro.CodGru = ''' + PedCt2CodGru.AsString + '''' +
                  '   and EstPro.CodSub = ''' + PedCt2CodSub.AsString + '''' +
                  '   and EstPro.CodPro = ''' + PedCt2CodPro.AsString + '''';
                Open;

                EdQtdEmb.Caption := FormatFloat('###,###,##0.0000', FieldbyName('QtdEmb').AsFloat) + ' ';

              end;

              with quSql, SQL do
              begin

                Close;
                Text := ' Select ite.CodEmp,' +
                  ' qte.QtdQte QtdIte,' +
                  ' (SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) QtrIte,' +
                  ' qte.QtdRma QtdRma,' +
                  ' qte.QtaQte QtaIte ' +
                  ' From EstIte ' +
                  ' join estqte qte on qte.codemp = ite.codemp ' +
                  ' and qte.codclp = ite.codclp ' +
                  ' and qte.codgru = ite.codgru ' +
                  ' and qte.codsub = ite.codsub ' +
                  ' and qte.codpro = ite.codpro ' +
                  ' Where ite.CodEmp = ''' + IntToStr(CodEmp) + '''' +
                  '   and ite.CodClp = ''' + PedCt2CodClp.AsString + '''' +
                  '   and ite.CodGru = ''' + PedCt2CodGru.AsString + '''' +
                  '   and ite.CodSub = ''' + PedCt2CodSub.AsString + '''' +
                  '   and ite.CodPro = ''' + PedCt2CodPro.AsString + '''';
                Open;

              end;

              if quSql.FieldbyName('CodEmp').AsInteger > 0 then
              begin

                if not pnEstoque.visible then
                  pnEstoque.Visible := True;

                EdQtdIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('QtdIte').AsFloat) + ' ';
                EdQtrIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('QtrIte').AsFloat) + ' ';
                EdQtdRma.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('QtdRma').AsFloat) + ' ';
                EdQtaIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('QtaIte').AsFloat) + ' ';

                if (quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat)) < 0 then
                  EdSldIte.Font.Color := clRed
                else
                  EdSldIte.Font.Color := clGray;

                EdSldIte.Caption := FormatFloat('###,###,##0.0000', fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat +
                  quSQL.FieldbyName('QtdRma').AsFloat), 4)) + ' ';

                EdQtpCt2.SetFocus;

              end
              else
                fmsgErro('Item Informado não Encontrado na Empresa.', EdCbaCt2);

            end
            else
              fmsgErro('Item Informado não Encontrado.', EdCbaCt2);

          end
          else
            fMsgErro('Item Duplicado !', EdCbaCt2);

        end
        else
          fmsgErro('Item Informado não Encontrado.', EdCbaCt2);

      end
      else
      begin

        if EdCbaCt2.Enabled then
        begin

          if Trim(PedCt2CbaCt2.Value) = '' then
            fmsgErro('Código de Barras Informado não Encontrado.', EdCbaCt2);

        end;
      end;

    end
    else
    begin

      EdVluCt2.Enabled := True;
      EdCodUnd.Enabled := True;
      //EdDesCt2.ReadOnly := False;
      EdObsCt2.ReadOnly := False;

      EdDscCt2.Enabled := False;

      PedCt2IcmCt2.Value := 0;
      PedCt2IpiCt2.Value := 0;
      PedCt2CodGru.AsString := '999';
      PedCt2CodSub.AsString := '9999';
      PedCt2CodPro.AsString := '99999';

      EdQtpCt2.SetFocus;

    end;

  end
  else
    fmsgErro('Item Informado não Encontrado.', EdCbaCt2);
end;

procedure TfmManCt2.SaiCliente;
var
  CodGCl: integer;
  NroSuf, LocPfa, CodPfa: string;
begin
  if PedCtaCodCli.Value > 0 then
  begin

    if PedCta.State <> dsBrowse then
    begin

      if GCodVen_Id = 0 then
      begin

        if PedCtaCodCli.AsInteger > 0 then
          if fmmangdb.BuscaSimples('FinCli', 'FLBCLI', ' codcli = ' + PedCtaCodCli.AsString) = '*' then
          begin
            messagebox(Handle, PChar('Cliente ' + PedCtaCodCli.AsString + ' bloqueado. ' + #13 +
              'Desbloqueie o cliente ou informe novo cliente antes de continuar.'), ' Buscando dados do Cliente', mb_ok + MB_ICONEXCLAMATION);
            if EdCodCli.CanFocus then
              EdCodCli.SetFocus;

            Abort;
          end;

        with quSql, SQL do
        begin

          Close;
          Text := ' Select FinCli.CodCli,' +
            ' FinCli.NomCli,' +
            ' FinCli.CgcCli,' +
            ' FinCli.NroSuf,' +
            ' FinCli.UffCli,' +
            ' FinCli.DTVSUF,' +
            ' FincLi.REGTRB,' +
            ' FinCli.CodVen,' +
            ' FinCli.LimCli,' +
            ' FinCli.CodPfa,' +
            ' FinCli.TipPfa,' +
            ' FinCli.CodAtd,' +
            ' FinCli.REGTRB CodRegTrib,' +
            ' FinCli.CodTcl,' +
            ' FinCli.INSCLI,' +
            ' FinCli.INDIC_IE,' +
            ' FinCli.CodGCl From FinCli Where FinCli.CodCli = ' + PedCtaCodCli.AsString;
          Open;

        end;

      end
      else
      begin

        with quSql, SQL do
        begin

          Close;
          Text := ' Select FinCli.CodCli,' +
            ' FinCli.NomCli,' +
            ' FinCli.CgcCli,' +
            ' FinCli.NroSuf,' +
            ' FinCli.UffCli,' +
            ' FinCli.DTVSUF,' +
            ' FincLi.REGTRB,' +
            ' FinCli.CodVen,' +
            ' FinCli.LimCli,' +
            ' FinCli.CodPfa,' +
            ' FinCli.TipPfa,' +
            ' FinCli.CodAtd,' +
            ' FinCli.REGTRB CodRegTrib,' +
            ' FinCli.CodTcl,' +
            ' FinCli.INSCLI,' +
            ' FinCli.INDIC_IE,' +
            ' FinCli.CodGCl From FinCli' +
            ' Where FinCli.CodCli = :CodCli' +
            '   and FinCli.CodVen = :CodVen';

          with Params do
          begin

            Params[0].AsInteger := PedCtaCodCli.Asinteger;
            Params[1].AsInteger := GCodVen_Id;

          end;

          Open;

        end;
      end;

      if quSql.FieldbyName('CodCli').AsInteger = PedCtaCodCli.AsInteger then
      begin

        if trim(quSQL.FieldbyName('INDIC_IE').AsString) = '' then
        begin
          edCodCli.SetFocus;
          messagebox(handle, 'Indicação da IE não informada. Favor Corrigir no Cadastro de Clientes', 'Cotação', MB_OK + MB_ICONINFORMATION);
          Abort;
        end;

        CodGCl := quSql.FieldbyName('CodGCl').AsInteger;
        NroSuf := Trim(quSql.FieldbyName('NroSuf').AsString);
        PedCtaNroSuf.AsString := Trim(quSql.FieldbyName('NroSuf').AsString);
        PedCtaDTVSUF.AsDateTime := quSql.FieldbyName('DTVSUF').AsDateTime;
        PedCtaRegTrb.AsInteger := quSql.FieldByName('RegTrb').AsInteger;

        PedCtaUfeCta.AsString := Trim(quSQL.FieldbyName('UffCli').AsString);
        PedCtaNomCli.AsString := Trim(quSQL.FieldbyName('NomCli').AsString);
        PedCtaCGCCli.AsString := Trim(quSQL.FieldbyName('CGCCli').AsString);
        //pnCgcCli.Caption := Trim(quSQL.FieldbyName('CGCCli').AsString);

        if PedCtaCodTcl.IsNull then
          PedCtaCodTcl.AsInteger := quSQL.FieldbyName('CodTcl').AsInteger;

        if PedCtaCODREGTRIB.IsNull then
          if quSQL.FieldByName('CodRegTrib').AsInteger > 0 then
            PedCtaCODREGTRIB.AsInteger := quSQL.FieldByName('CodRegTrib').AsInteger;

        if Trim(quSQL.FieldbyName('CodPfa').AsString) <> '' then
          PedCtaCodPfa.Value := Trim(quSQL.FieldbyName('CodPfa').AsString);

        if quSQL.FieldbyName('CodVen').AsInteger > 0 then
          PedCtaCodVen.AsInteger := quSQL.FieldbyName('CodVen').AsInteger;

        PedCtaINSCLI.AsString := quSQL.FieldbyName('INSCLI').AsString;

        if (fmmangdb.BuscaSimples('GEREMP', 'sigufe', ' codemp = ' + PedCtaCodEmp.AsString) <> PedCtaUFECTA.AsString)
          and (quSQL.FieldbyName('INDIC_IE').AsString = '9') then
        begin
          InformacaoObrigatoria('Operação interestadual com cliente não contribuinte com possibilidade de DIFAL caso seja venda consumidor final.',
            'Alerta de impostos interestaduais');
        end;

        //pnNomCli.Caption := PedCtaNomCli.AsString;

        //pnUfeCta.Caption := quSQL.FieldbyName('UffCli').AsString;

        if PedCtaCodVen.AsInteger > 0 then
          EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

        CodPfa := quSQL.FieldbyName('CodPfa').AsString;

        if GCodAtd_Id > 0 then
        begin

          if quSQL.FieldbyName('CodAtd').AsInteger <> GCodAtd_Id then
          begin

            //pnNomCli.Caption := '';
            //pnUfeCta.Caption := '';
            pnNomVen.Caption := '';

            PedCtaNomCli.Clear;

            fmsgErro('Cliente Informado não Pertence ao Atendente.', EdCodCli);

          end;
        end;

        if Trim(CodPfa) <> '' then
        begin

          if PedCtaUfeCta.AsString = 'EX' then
            LocPfa := 'Importacao ou Exportacao'
          else
          begin

            if PedCtaUfeCta.AsString <> GUfeEmp then
              LocPfa := 'Outros Estados'
            else
              LocPfa := 'Mesmo Estado'

          end;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select EstPfa.DscPfa From EstPfa ' +
              ' Where coalesce(EstPfa.FlgAtivo,1) = 1 '+
              '   and EstPfa.TipPfa = :TipPfa' +
              '   and EstPfa.CodPfa = :CodPfa' +
              '   and EstPfa.LocPfa = :LocPfa';

            with Params do
            begin

              Params[0].AsString := PedCtaTipPfa.AsString;
              Params[1].AsString := PedCtaCodPfa.AsString;
              Params[2].AsString := LocPfa;

            end;

            Open;

            pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

          end;

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

        with quSql, SQL do
        begin

          Close;
          Text := ' Select FinGCl.CliTab From FinGCl Where FinGCl.CodGCl = :CodGCl';

          with Params do
          begin

            Params[0].AsInteger := CodGCl;

          end;

          Open;

          PedCtaCliTab.AsString := Trim(FieldbyName('CliTab').AsString);

        end;

        if PedCtaCodVen.Asinteger > 0 then
        begin

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select FinVen.CodVen,FinVen.ApeVen From FinVen Where FinVen.CodVen = ''' + IntToStr(PedCtaCodVen.Value) + '''';
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

        if Trim(PedCtaUfeCta.Value) <> '' then
        begin

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select * From GerUfe Where GerUfe.SigUfe = ' + QuotedStr(PedCtaUfeCta.Value);
            Open;

          end;

          if Trim(quSQL.FieldbyName('SigUfe').AsString) <> '' then
          begin

            if Trim(NroSuf) <> '' then
              PedCtaDscReg.Value := quSQL.FieldbyName('DscUfe').AsFloat
            else
              PedCtaDscReg.Value := 0;

          end
          else
            PedCtaDscReg.Value := 0;

          bPsqVen.Enabled := False;

          //pnUfeCta.Visible := True;
          //pnNomCli.Visible := True;
          EdNomCli.ReadOnly := True;
          EdCgcCli.ReadOnly := True;
          EdIECli.ReadOnly := True;

          if GCodVen_Id > 0 then
          begin

            if GGus_Id <> 1 then
            begin

              EdCodVen.Enabled := False;
              EdCodVen.Font.Style := [fsBold];

            end;
          end;

          pSaida := 'Nao';

          if edCodVen.CanFocus then
            edCodVen.SetFocus;

          EdNomCli.Enabled := False;
          EdUfeCta.Enabled := False;
          EdCgcCli.Enabled := False;
          EdIECli.Enabled := False;

          EdNomCli.Font.Style := [fsBold];
          EdUfeCta.Font.Style := [fsBold];

          pSaida := 'Sim';

          if EdCodVen.Enabled then
            EdCodVen.SetFocus
          else
          begin

            {if EdDscCom.Enabled then
              EdDscCom.SetFocus
            else
            begin}

            if EdCodPfa.Enabled then
            begin

              if Trim(CodPfa) = '' then
                EdCodPfa.SetFocus
              else
                grCt2.SetFocus;

              {end
              else}
              //Panel1.onExit(Panel1);

            end;
          end;

        end
        else
          fmsgErro('Endereço de Faturamento do Cliente Incompleto. Falta UF', EdCodCli);

      end
      else
      begin

        //pnNomCli.Caption := '';
        //pnUfeCta.Caption := '';
        pnNomVen.Caption := '';

        PedCtaNomCli.Clear;

        fmsgErro('Cliente Informado não Encontrado', EdCodCli);

      end;
    end;

  end
  else
  begin
    if FMMANGDB.BuscaSimples('PEDPAR', 'CLISEMCAD', ' 1 = 1 ') = 'Sim' then
    begin
      pSaida := 'Nao';

      bPsqPfa.Enabled := True;

      //pnUfeCta.Visible := False;
      //pnNomCli.Visible := False;
      EdNomCli.ReadOnly := False;
      EdCgcCli.ReadOnly := False;
      EdIECli.ReadOnly := False;

      EdNomCli.Enabled := True;
      EdCgcCli.Enabled := True;
      EdIECli.Enabled := True;
      EdUfeCta.Enabled := True;
      //EdCodPfa.Enabled := True;
      edCodTcl.Enabled := True;
      CbNomTCl.Enabled := True;

      EdNomCli.Font.Style := [];
      EdUfeCta.Font.Style := [];
      EdCodPfa.Font.Style := [];
      edCodTcl.Font.Style := [];

      pSaida := 'Sim';

      EdNomCli.SetFocus;
    end;

  end;
end;

procedure TfmManCt2.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqUnd := TfmPsqUnd.Create(Self);

      fmPsqUnd.ShowModal;

      if Trim(fmPsqUnd.CodUnd) <> '' then
      begin

        PedCt2CodUnd.Value := Trim(fmPsqUnd.CodUnd);

        EdCodUnd.Text := PedCt2CodUnd.Value;

      end;

    finally

      FreeAndNil(fmPsqUnd);

    end;

    if Trim(PedCt2CodUnd.Value) <> '' then
      EdDesCt2.SetFocus
    else
      EdCodUnd.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodUndExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodGru.Focused) and (not EdCodSub.Focused) and
      (not EdCodPro.Focused) and (not EdQtpCt2.Focused) and (not EdVluCt2.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if Trim(PedCt2CodUnd.Value) <> '' then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select EstUnd.NomUnd From EstUnd Where EstUnd.CodUnd = ''' + PedCt2CodUnd.Value + '''';
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

procedure TfmManCt2.EdUfeCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqUfe := TfmPsqUfe.Create(Self);

      fmPsqUfe.ShowModal;

      if Trim(fmPsqUfe.SigUfe) <> '' then
      begin

        PedCtaUfeCta.Value := Trim(fmPsqUfe.SigUfe);

        EdUfeCta.Text := PedCtaUfeCta.Value;

      end;

    finally

      FreeAndNil(fmPsqUfe);

    end;

    if Trim(PedCtaUfeCta.Value) <> '' then
    begin

      if EdCodVen.Enabled then
        EdCodVen.SetFocus
      else
      begin

        {if EdDscCom.Enabled then
          EdDscCom.SetFocus
        else
        begin}

        if EdCodPfa.Enabled then
          EdCodPfa.SetFocus
        else
          grCt2.SetFocus;

        //end;
      end;

    end
    else
      EdUfeCta.SetFocus;

  end;
end;

procedure TfmManCt2.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'V';
    fmAuxIni.ShowModal;

    if fmAuxIni.CodVen > 0 then
    begin

      PedCtaCodVen.Value := fmAuxIni.CodVen;

      pnNomVen.Caption := fmAuxIni.NomVen;

      EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManCt2.EdCodVenExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodCli.Focused) and (not EdDteCta.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if PedCta.State <> dsBrowse then
      begin

        if PedCtaCodVen.Value > 0 then
        begin

          with quSql, SQL do
          begin

            Close;
            Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

            with Params do
            begin

              Params[0].AsInteger := PedCtaCodVen.Value;

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

procedure TfmManCt2.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

        PedCtaCodVen.Value := fmAuxIni.CodVen;

        pnNomVen.Caption := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if CodVen > 0 then
    begin

      if EdCodPfa.Enabled then
        EdCodPfa.SetFocus
      else
        EdCodVen.SetFocus;

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

        PedCtaCodVen.Value := fmAuxPsq.CodVen;

        pnNomVen.Caption := fmAuxPsq.NomVen;

        EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if CodVen > 0 then
    begin

      if EdCodPfa.Enabled then
        EdCodPfa.SetFocus
      else
        EdCodVen.SetFocus;

    end;
  end;
end;

procedure TfmManCt2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then
  begin

    if key = #5 then
    begin {Estoque}

      if not Assigned(fmPsqEs2) then
      begin

        try

          fmPsqEs2 := TfmPsqEs2.Create(Self);

          fmPsqEs2.sEntr := sEntr;

          fmPsqEs2.sCodClp := '1';

          if (Trim(PedCt2CodGru.AsString) <> '') or
            (Trim(PedCt2CodSub.AsString) <> '') or
            (Trim(PedCt2CodPro.AsString) <> '') then
          begin

            with fmPsqEs2.EstPro, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodClp,' +
                ' EstPro.CodGru,' +
                ' EstPro.CodSub,' +
                ' EstPro.CodPro,' +
                ' EstPro.DscPro,' +
                ' EstPro.RefPro,' +
                ' EstPro.LocPro,' +
                ' EstPro.CodUne,' +
                ' EstPro.CodUns,' +
                ' EstPro.QtePro,' +
                ' EstPro.QtsPro,' +
                ' EstPro.EntIpi,' +
                ' EstPro.SaiIpi,' +
                ' EstPro.ClfEnt,' +
                ' EstPro.ClfSai,' +
                ' EstPro.EntIcm,' +
                ' EstPro.SaiIcm,' +
                ' EstPro.SimPro,' +
                ' EstPro.CodSt1,' +
                ' EstPro.CodSt2,' +
                ' EstPro.QtdEmb,' +
                ' EstPro.ImgPro,' +
                ' EstPro.FlgPro,' +
                ' EstPro.CbaPro,' +
                ' EstPro.WebPro,' +
                ' EstPro.CodCat,' +
                ' EstPro.CodTip,' +
                ' EstPro.CodMrc,' +
                ' EstPro.NumPro,' +
                ' EstPro.CodAnt,' +
                ' EstPro.IdePro' +
                ' From EstPro' +
                ' Where EstPro.CodClp = ' + QuotedStr('1') +
                ' and EstPro.FlbPro = ' + QuotedStr(' ');

              if Trim(PedCt2CodGru.AsString) <> '' then
                Text := Text + ' and EstPro.CodGru = ' + QuotedStr(PedCt2CodGru.AsString);
              if Trim(PedCt2CodSub.AsString) <> '' then
                Text := Text + ' and EstPro.CodSub = ' + QuotedStr(PedCt2CodSub.AsString);
              if Trim(PedCt2CodPro.AsString) <> '' then
                Text := Text + ' and EstPro.CodPro = ' + QuotedStr(PedCt2CodPro.AsString);

              Text := Text + ' Order by EstPro.DscPro';

              Open;

            end;
          end;

          fmPsqEs2.ShowModal;

          if sEntr = 'S' then
          begin

            if Trim(fmPsqEs2.CodGru) <> '' then
            begin

              if (EdCodGru.Enabled) or (EdCbaCt2.Enabled) then
              begin

                PedCt2CodClp.AsString := fmPsqEs2.CodClp;
                PedCt2CodGru.AsString := fmPsqEs2.CodGru;
                PedCt2CodSub.AsString := fmPsqEs2.CodSub;
                PedCt2CodPro.AsString := fmPsqEs2.CodPro;
                PedCt2CbaCt2.Value := Trim(fmPsqEs2.CbaPro);

              end;
            end;
          end;

        finally

          FreeAndNil(fmPsqEs2);

        end;
      end;
    end;
  end;
end;

procedure TfmManCt2.EdCbaCt2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if not grCt2.Focused then
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

        EdCbaCt2.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdVluCt2.Enabled := False;
        EdQtpCt2.Enabled := False;
        edCodCfo.Enabled := False;
        EdCodUnd.Enabled := False;
        EdDscCt2.Enabled := False;
        EdDesCt2.ReadOnly := True;
        EdObsCt2.ReadOnly := True;
        edPedCompra.Enabled := False;
        edItemCompra.EnaBled := False;

        if PedCt2.State <> dsBrowse then
          PedCt2.CancelUpdates
        else
        begin

          if not PedCt2.Bof then
            PedCt2.Prior;

        end;

        grCt2.SetFocus;

      end
      else
        EdCbaCt2.SetFocus;

    end;
  end;
end;

procedure TfmManCt2.DsCt2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedCt2.State = dsBrowse then
  begin

    AntVluCt2 := PedCt2VluCt2.Value;
    AntDscCt2 := PedCt2DscCt2.Value;
    AntDspCt2 := PedCt2DspCt2.Value;

  end;

  //pnNomCli.Caption := PedCtaNomCli.AsString;
  {pnDesCt2.Caption := PedCt2DesCt2.AsString;
  pnObsCt2.Caption := PedCt2ObsCt2.AsString;}

  pnNumCta.Caption := IntToStr(PedCtaNumCta.AsInteger);

  if PedCtaFlgOco.AsString = '*' then
    pnFlgOco.Color := clRed
  else
    pnFlgOco.Color := clLime;

  if PedCt2.State = dsInsert then
    pnNroCt2.Caption := FNumZeros(IntToStr(PedCt2NroCt2.AsInteger), 4) + '/' + FNumZeros(IntToStr(PedCtaQtiCta.AsInteger + 1), 4)
  else
    pnNroCt2.Caption := FNumZeros(IntToStr(PedCt2NroCt2.AsInteger), 4) + '/' + FNumZeros(IntToStr(PedCtaQtiCta.AsInteger), 4);

end;

procedure TfmManCt2.EdVluCt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Verificar 3 Últimas Vendas para o Item}

    if PedCtaCodCli.Value > 0 then
    begin

      try

        fmPsqUve := TfmPsqUve.Create(Self);

        fmPsqUve.Panel3.Caption := ' ' + PedCt2CodGru.AsString + '.' + PedCt2CodSub.AsString + '.' + PedCt2CodPro.AsString + ' - ' + PedCt2DesCt2.Value;

        fmPsqUve.PedRes.Close;
        fmPsqUve.PedRes.Params[0].AsInteger := PedCtaCodCli.Value;
        fmPsqUve.PedRes.Params[1].AsString := PedCt2CodClp.AsString;
        fmPsqUve.PedRes.Params[2].AsString := PedCt2CodGru.AsString;
        fmPsqUve.PedRes.Params[3].AsString := PedCt2CodSub.AsString;
        fmPsqUve.PedRes.Params[4].AsString := PedCt2CodPro.AsString;
        fmPsqUve.PedRes.Open;

        fmPsqUve.ShowModal;

      finally

        FreeAndNil(fmPsqUve);

      end;
    end;
  end;
end;

procedure TfmManCt2.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F1-Iniciais F4-Estoque F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManCt2.EdDteCtaEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F4-Estoque F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F4-Estoque';

end;

procedure TfmManCt2.EdCodCliEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F1-Iniciais F2-Inteligente F4-Estoque F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManCt2.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.AsString = '*' then
    SBText.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

end;

procedure TfmManCt2.EdCodProEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

end;

procedure TfmManCt2.EdQtpCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.Visible then
  begin
    pnEstoque.BringToFront;
    pnEstoque.Visible := True;
  end;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado';

  if PedCt2CodGru.AsString <> '999' then
  begin

    if PedCtaLanEst.AsString = 'Sim' then
    begin

      if PedCtaCodFil.AsInteger > 0 then
        CodEmp := PedCtaCodFil.AsInteger
      else
        CodEmp := PedCtaCodEmp.AsInteger;

    end
    else
      CodEmp := PedCtaCodEmp.AsInteger;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select QtdEmb From EstPro ' +
        ' Where EstPro.CodClp = ' + QuotedStr(PedCt2CodClp.AsString) +
        '   and EstPro.CodGru = ' + QuotedStr(PedCt2CodGru.AsString) +
        '   and EstPro.CodSub = ' + QuotedStr(PedCt2CodSub.AsString) +
        '   and EstPro.CodPro = ' + QuotedStr(PedCt2CodPro.AsString);
      Open;

      EdQtdEmb.Caption := FormatFloat('#,##0.0000', FieldbyName('QtdEmb').AsFloat) + ' ';

    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select Pro.QtdEmb,' +
        ' (select count(1) from estpro p2 where p2.SIMPRO = pro.SIMPRO and RTRIM(LTRIM(coalesce(p2.SIMPRO,''''))) <> '''') QTDSIM ' +
        ' From EstPro Pro ' +
        ' Where Pro.CodClp = ' + QuotedStr(PedCt2CodClp.AsString) +
        '   and Pro.CodGru = ' + QuotedStr(PedCt2CodGru.AsString) +
        '   and Pro.CodSub = ' + QuotedStr(PedCt2CodSub.AsString) +
        '   and Pro.CodPro = ' + QuotedStr(PedCt2CodPro.AsString);
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
      Text := ' Select EstQte.CodEmp,' +
        ' EstQte.QtdQte,' +
        ' (SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) QtrQte,' +
        ' Qte.QtdRma,' +
        ' Qte.QtaQte ' +
        ' From EstQte qte ' +
        ' Where Qte.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
        '   and Qte.CodClp = ' + QuotedStr(PedCt2CodClp.AsString) +
        '   and Qte.CodGru = ' + QuotedStr(PedCt2CodGru.AsString) +
        '   and Qte.CodSub = ' + QuotedStr(PedCt2CodSub.AsString) +
        '   and Qte.CodPro = ' + QuotedStr(PedCt2CodPro.AsString);
      Open;

    end;

    if not pnEstoque.visible then
      pnEstoque.Visible := True;

    EdQtdIte.Caption := FormatFloat('#,##0.0000', quSQL.FieldbyName('QtdQte').AsFloat) + ' ';
    EdQtrIte.Caption := FormatFloat('#,##0.0000', quSQL.FieldbyName('QtrQte').AsFloat) + ' ';
    EdQtdRma.Caption := FormatFloat('#,##0.0000', quSQL.FieldbyName('QtdRma').AsFloat) + ' ';
    EdQtaIte.Caption := FormatFloat('#,##0.0000', quSQL.FieldbyName('QtaQte').AsFloat) + ' ';

    if (quSQL.FieldbyName('QtdQte').AsFloat - (quSQL.FieldbyName('QtrQte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat)) < 0 then
      EdSldIte.Font.Color := clRed
    else
      EdSldIte.Font.Color := clGray;

    EdSldIte.Caption := FormatFloat('#,##0.0000', fRound(quSQL.FieldbyName('QtdQte').AsFloat - (quSQL.FieldbyName('QtrQte').AsFloat +
      quSQL.FieldbyName('QtdRma').AsFloat), 4)) + ' ';

  end;
end;

procedure TfmManCt2.EdVluCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado';

end;

procedure TfmManCt2.EdCodUndEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F1-Iniciais F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManCt2.EdIpiCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado';

end;

procedure TfmManCt2.EdDscCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'F4-Estoque F5-Reservas F7-Comprado';

  if (PEDCT2CODGRU.AsString = '999') then
  begin
    EdDesCt2.ReadOnly := False;
    EdObsCt2.ReadOnly := false;
  end;

end;

procedure TfmManCt2.grCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
    SBText.Panels[0].Text := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
    SBText.Panels[0].Text := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado';

end;

procedure TfmManCt2.grCt2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #4 then //Ctrl+D - Descontos
  begin

    if PedCt2CodEmp.Value > 0 then
    begin

      try

        fmManCtaDesc1 := TfmManCtaDesc1.Create(Self);

        fmManCtaDesc1.ShowModal;

      finally

        FreeAndNil(fmManCtaDesc1);

      end;
    end;
  end;
end;

procedure TfmManCt2.EdVluCt2Change(Sender: TObject);
begin
  inherited;
  if pedct2.state in [dsedit, dsinsert] then
    if PedCt2DscCt2.AsFloat > 0 then
      PedCt2DscCt2.AsFloat := 0
    else
      AntVluCt2 := AntVluCt2 - 0.000001;
end;

procedure TfmManCt2.CarregaCbo;
begin
  //ST ICMS
  fmManGdb.CarregaCboICMS(Trim(FmManGdb.BuscaSimples('GEREMP', 'TIPEMP', ' CODEMP = ' + IntToStr(GEmp_Id))) = 'Simples Nacional');

  //st PIS
  fmManGdb.CarregaCboPIS;

  //st COF
  fmManGdb.CarregaCboCOF;

  //st IPI
  fmManGdb.CarregaCboIPI('Saida');

  //Unidade
  fmManGdb.CarregaCboUnd(EdCodUnd.Items);

end;

procedure TfmManCt2.PedCt2CalcFields(DataSet: TDataSet);
begin
  inherited;
  if PedCt2QTPCT2.AsFloat > 0 then
    PedCt2VALLIQTRB.AsFloat := fRound(PedCt2TOTITETRB.AsFloat / PedCt2QTPCT2.AsFloat, 2);

end;

procedure TfmManCt2.PedCt2BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  pnItem.Enabled := True;
end;

procedure TfmManCt2.PedCt2BeforeInsert(DataSet: TDataSet);
begin
  inherited;
  pnItem.Enabled := True;
  edCodSt2.Enabled := True;
  edCodIPI.Enabled := True;
  edCodPIS.Enabled := True;
  edCodCOF.Enabled := True;
  dxdbcoloredit2.Enabled := True;
end;

procedure TfmManCt2.PedCtaID_FRETEChange(Sender: TField);
begin
  inherited;
  ValidaFrete;
end;

procedure TfmManCt2.ValidaFrete;
begin
  if not PedCta.IsEmpty then
    if PedCtaID_FRETE.AsInteger = 9 then
    begin
      edFrete.Enabled := False;
      if PedCta.State in [dsEdit, dsInsert] then
        PedCtaTOTFRT.AsFloat := 0;
    end
    else
    begin
      if PedCta.State in [dsEdit, dsInsert] then
        edFrete.Enabled := True;
    end;
end;

procedure TfmManCt2.PedCtaAfterOpen(DataSet: TDataSet);
begin
  inherited;

  ValidaFrete;

  //pnCgcCli.Caption := Trim(PedCtaCGCCLI.AsString);
end;

procedure TfmManCt2.PedCt2AfterScroll(DataSet: TDataSet);
begin
  inherited;
  edFrt.Hint := 'Frete: ' + FormatFloat('#,##0.00', PedCt2TotFrt.AsFloat) + _BR +
    'Seguro: ' + FormatFloat('#,##0.00', PedCt2TotSeg.AsFloat) + _BR +
    'Outras Despesas: ' + FormatFloat('#,##0.00', PedCt2TotOutDesp.AsFloat) + _BR +
    'Desconto: ' + FormatFloat('#,##0.00', PedCt2TotDescInc.AsFloat);
end;

procedure TfmManCt2.PedCtaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  {if length(trim(PedCtaCGCCLI.AsString)) > 11 then
    PedCtaCGCCLI.EditMask := '99.999.999\\9999-99;1; '
  else
    PedCtaCGCCLI.EditMask := '999.999.999-99;1; ';}
end;

procedure TfmManCt2.CarregaCFOP;
var
  LocPfa: string;
begin

  LocPfa := FmManGdb.BuscaSimples('ESTPFA', 'LOCPFA', ' CODPFA = ' + QuotedStr(Trim(PedCtaCodPfa.Asstring)));

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

procedure TfmManCt2.EdDesCt2Exit(Sender: TObject);
begin
  inherited;
  EdDesCt2.ReadOnly := True;
end;

procedure TfmManCt2.EdObsCt2Exit(Sender: TObject);
begin
  inherited;
  EdObsCt2.ReadOnly := True;
end;

procedure TfmManCt2.EdUfeCtaExit(Sender: TObject);
begin
  inherited;
  if length(trim(PedCtaUFECTA.AsString)) <> 2 then
  begin
    if pedctaCodCli.AsInteger = 0 then
    begin
      messagebox(Handle, 'Obrigatório informar UF para cliente não cadastrado.', 'Aviso', mb_ok + MB_ICONEXCLAMATION);
      EdUfeCta.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfmManCt2.Label38DblClick(Sender: TObject);
begin
  inherited;
  if ((EdCodCli.Text <> '') and (EdCodCli.Text <> '0')) then
  begin
    fmManPri.CriarForm(TfmManCli, fmManCli);
    fmManCli.EdPsqCodCli.Text := EdCodCli.Text;
    fmManCli.Bbpesquisa.Click;
    fmManCli.pcCli.ActivePageIndex := 1;
    fmManCli.EdCodVen.Enabled := False;
    //fmManCli.nvCli.Enabled := False;

    fmManCli.pcCli.Pages[0].Enabled := False;
    fmManCli.pcCli.Pages[1].Enabled := True;
    fmManCli.pcCli.Pages[2].Enabled := False;
    fmManCli.pcCli.Pages[3].Enabled := True;
    fmManCli.pcCli.Pages[4].Enabled := False;
  end
  else
    ShowMessage('Não há Cliente Atrelado à Cotação');
end;

procedure TfmManCt2.Label39DblClick(Sender: TObject);
begin
  inherited;
  if EdCodVen.Text <> '' then
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

procedure TfmManCt2.Label40DblClick(Sender: TObject);
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

procedure TfmManCt2.Label74DblClick(Sender: TObject);
begin
  inherited;
  if Trim(PedCt2REGICM.AsString) <> '' then
  begin
    fmManPri.CriarForm(TfmManIcm, fmManIcm);
    fmManIcm.EdPsqCodIcm.Text := PedCt2REGICM.AsString;
    fmManIcm.BbPesquisa.Click;
    fmManIcm.pcIcm.ActivePageIndex := 1;
    fmManIcm.nvIcm.Enabled := False;
    fmManIcm.pcIcm.Enabled := False;
  end
  else
    ShowMessage('Não há regra atrelada ao Item');
end;

procedure TfmManCt2.Label24DblClick(Sender: TObject);
begin
  inherited;
  if Trim(PedCt2REGSUB.AsString) <> '' then
  begin
    fmManPri.CriarForm(TfmManStr2, fmManStr2);

    fmManStr2.localiza(PedCt2REGSUB.AsString, 'SAI', PedCtaUFECta.AsString, ifthen(pos('SIMPLES', uppercase(fmManGdb.BuscaSimples('GEREMP', 'TIPEMP',
      ' CodEmp = ' + PedCtaCodEmp.AsString))) > 0, '1', '3'));

    fmManStr2.pcStr.ActivePageIndex := 1;
    fmManStr2.nvStr.Enabled := False;
    fmManStr2.pcStr.Enabled := False;
  end
  else
    ShowMessage('Não há regra atrelada ao Item');
end;

procedure TfmManCt2.Label7DblClick(Sender: TObject);
begin
  inherited;
  if Trim(PedCt2REGIPI.AsString) <> '' then
  begin
    fmManPri.CriarForm(TfmManIpi, fmManIpi);
    fmManIpi.EdPsqCodIpi.Text := PedCt2REGIPI.AsString;
    fmManIpi.BbPesquisa.Click;
    fmManIpi.pcIpi.ActivePageIndex := 1;
    fmManIpi.nvIpi.Enabled := False;
    fmManIpi.pcIpi.Enabled := False;
  end
  else
    ShowMessage('Não há regra atrelada ao Item');
end;

procedure TfmManCt2.EdCgcCliExit(Sender: TObject);
begin
  inherited;
  PedCtaCgcCli.AsString := SoNumero(EdCgcCli.Text);
end;

procedure TfmManCt2.bPsqAtdClick(Sender: TObject);
begin
  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'ATENDENTES';
    fmAuxIni.ShowModal;

    if fmAuxIni.CodVen > 0 then
    begin

      PedCtaCODATD.AsInteger := fmAuxIni.CodAtd;

      pnNomAtd.Caption := fmAuxIni.NomAtd;

      EdCodAtd.Text := PedCtaCODATD.AsString;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  EdCodAtd.SetFocus;

end;

procedure TfmManCt2.EdCodAtdExit(Sender: TObject);
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

procedure TfmManCt2.EdCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F1 then
  begin
    bPsqAtd.Click();
  end;
end;

procedure TfmManCt2.pnFlgOcoDblClick(Sender: TObject);
begin
  inherited;
  if (pnFlgOco.Color = clRed) then
  begin
    try
      fmOcorrencias := TfmOcorrencias.Create(Self);
      fmOcorrencias.mostrarOcorrencia(PedCta.FieldByName('NUMRES').AsInteger, 'PEDOCC');
      fmOcorrencias.ShowModal;
    finally
      FreeAndNil(fmOcorrencias);
    end;
  end;
end;

procedure TfmManCt2.cbCodRegTribKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Pedcta.State in [dsEdit, dsInsert] then
    if (Key = vk_delete) then
      PedCtaCODREGTRIB.AsVariant := null;
end;

procedure TfmManCt2.EdNomCliExit(Sender: TObject);
begin
  inherited;

  edCodTcl.TabStop := trim(EdCodCli.Text) = '';
  edCodTcl.TabStop := trim(EdCodCli.Text) = '';

  //Sem Cliente
  {if not (PedCtaCODCLI.AsInteger > 0) then
     begin
        PedCtaCodTcl.AsInteger := 1;
        PedCtaCodRegTrib.AsInteger := 1;
     end; }
end;

end.

