unit ManPar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, StdCtrls, ExtCtrls, hNavigator, Db, DBTables, Wwquery, Mask,
  DBCtrls, hEdits, wwdblook, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxDBEdtr, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorMemo, ComCtrls, dxDBColorLookupEdit, dxDBColorEdit;

type
  TfmManPar = class(TfmPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label27: TLabel;
    Label19: TLabel;
    Bevel5: TBevel;
    Label36: TLabel;
    Label34: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdFlgCod: TdxDBColorPickEdit;
    EdUsaDec: TdxDBColorPickEdit;
    EdLanMai: TdxDBColorPickEdit;
    EdFlgOrd: TdxDBColorPickEdit;
    EdVerEst: TdxDBColorPickEdit;
    EdBloCre: TdxDBColorPickEdit;
    EdQtlIte: TdxDBColorCurrencyEdit;
    EdPerPro: TdxDBColorPickEdit;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    PedPar: TwwQuery;
    PedParPEDDSC: TFloatField;
    PedParFLGBLQ: TStringField;
    PedParFLGATR: TStringField;
    PedParFLGEXP: TStringField;
    PedParFLGCRE: TStringField;
    PedParFLGDSC: TStringField;
    PedParTIPDSC: TStringField;
    PedParFLGRES: TStringField;
    PedParTIPRES: TStringField;
    PedParPERCST: TFloatField;
    PedParEXIMKA: TStringField;
    PedParQTDCTA: TIntegerField;
    PedParFLGIMP: TStringField;
    PedParTIPCOM: TStringField;
    PedParEXIVEN: TStringField;
    PedParEXICOM: TStringField;
    PedParCONTRA: TStringField;
    PedParEXIFOR: TStringField;
    PedParEXICLI: TStringField;
    PedParTIPPED: TStringField;
    PedParFLGCOD: TStringField;
    PedParFLGIPI: TStringField;
    PedParFLGCOM: TStringField;
    PedParIMPREF: TStringField;
    PedParIMPTRA: TStringField;
    PedParIMPMRC: TStringField;
    PedParIMPOBS: TStringField;
    PedParIMPFIN: TStringField;
    PedParUSADEC: TStringField;
    PedParLANMAI: TStringField;
    PedParIMPLOC: TStringField;
    PedParVEREST: TStringField;
    PedParFLGORD: TStringField;
    PedParBLOCRE: TStringField;
    PedParLIBFIN: TStringField;
    PedParLIBCAD: TStringField;
    PedParQTLITE: TIntegerField;
    PedParPERPRO: TStringField;
    PedParPER_PROG: TSmallintField;
    PedParCONS_CAD: TSmallintField;
    PedParLIB_FINANC: TSmallintField;
    PedParSEP_ESTOQUE: TSmallintField;
    PedParLIB_FATURA: TSmallintField;
    PedParCONF_PAG: TIntegerField;
    PedParFRETEVENDEDOR: TSmallintField;
    PedParLIBERA_VEN: TStringField;
    PedParLIB_VEN_OUTROS: TSmallintField;
    PedParCOM_MANUAL: TSmallintField;
    DsPar: TDataSource;
    UpPar: TUpdateSQL;
    EdObsCta: TdxDBColorMemo;
    Label11: TLabel;
    PedParMSG_COTACAO: TMemoField;
    Label12: TLabel;
    EdPedDsc: TdxDBColorCurrencyEdit;
    Label13: TLabel;
    Label18: TLabel;
    EdTipDsc: TdxDBColorPickEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    EdPerCst: TdxDBColorCurrencyEdit;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    EdTipRes: TdxDBColorPickEdit;
    EdFlgRes: TdxDBCheckEdit;
    PedParTIP_IMP_PED: TStringField;
    PedParTRAVA_EMBALAGEM: TStringField;
    PedParIMPREFPED: TStringField;
    PedParTRAVA_EMBALAGEMCHAR: TStringField;
    PedParIMPREFDEP: TStringField;
    PedParOBRIGA_VER_OBS_CLI: TStringField;
    PedParORDENA_VIASEP_LOC: TStringField;
    PedParVIA_SEP_GRAF: TStringField;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    bFechar: TBitBtn;
    bConfirmar: TBitBtn;
    Label10: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label33: TLabel;
    Label1: TLabel;
    Label32: TLabel;
    Label44: TLabel;
    EdQtdCta: TdxDBColorCurrencyEdit;
    EdImpMrc: TdxDBColorPickEdit;
    EdImpTra: TdxDBColorPickEdit;
    EdImpObs: TdxDBColorPickEdit;
    EdImpFin: TdxDBColorPickEdit;
    EdImpLoc: TdxDBColorPickEdit;
    dxDBColorPickEdit2: TdxDBColorPickEdit;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    Label20: TLabel;
    Bevel4: TBevel;
    Label14: TLabel;
    Bevel6: TBevel;
    Pedi: TTabSheet;
    Bevel1: TBevel;
    Label15: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Bevel7: TBevel;
    Label26: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    Label9: TLabel;
    Label43: TLabel;
    EdFlgImp: TdxDBColorPickEdit;
    EdExiCom: TdxDBColorPickEdit;
    EdTipCom: TdxDBColorPickEdit;
    EdFlgCom: TdxDBColorPickEdit;
    EdImpRef: TdxDBColorPickEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    dxDBColorPickEdit1: TdxDBColorPickEdit;
    DBCheckBox10: TDBCheckBox;
    Label5: TLabel;
    PaintBox: TPaintBox;
    edCLISEMCAD: TdxDBColorPickEdit;
    Label45: TLabel;
    PedParCLISEMCAD: TStringField;
    DBCheckBox13: TDBCheckBox;
    PedParREFINT: TStringField;
    PedParOBRLIBPED: TStringField;
    DBCheckBox15: TDBCheckBox;
    PedParCONSCLI: TSmallintField;
    DBCheckBox16: TDBCheckBox;
    PedParIMPSITEMAIL: TSmallintField;
    RadioGroup1: TRadioGroup;
    DBCheckBox14: TDBCheckBox;
    PedParREP_ITE: TSmallintField;
    DBCheckBox17: TDBCheckBox;
    PedParALT_DESC_PROD: TStringField;
    Label29: TLabel;
    EdTipPed: TdxDBColorPickEdit;
    Label28: TLabel;
    PedParIMPPARTNUMBER: TStringField;
    dxDBColorPickEdit3: TdxDBColorPickEdit;
    Label35: TLabel;
    rgImpCot: TRadioGroup;
    PedParCOT_COMP_RED: TIntegerField;
    PedParMVAMAX: TFloatField;
    PedParVALMAX: TFloatField;
    Label46: TLabel;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    Label47: TLabel;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    Label48: TLabel;
    dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit;
    PedParACRMAX: TFloatField;
    Label49: TLabel;
    Bevel3: TBevel;
    Label25: TLabel;
    dsINDIC_PRES: TDataSource;
    INDIC_PRES: TQuery;
    INDIC_PRESID: TIntegerField;
    INDIC_PRESSITUACAO: TStringField;
    edIndicPresenca: TdxDBColorLookupEdit;
    PedParOP_PADRAO: TIntegerField;
    Label50: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    dxDBColorEdit2: TdxDBColorEdit;
    Label51: TLabel;
    PedParDECIMAIS_QTD: TStringField;
    PedParDECIMAIS_VALOR: TStringField;
    PedParPED_BLOC_NOVO: TStringField;
    DBCheckBox18: TDBCheckBox;
    EdFrtRes: TdxDBColorLookupEdit;
    Label52: TLabel;
    TIPFRT: TwwQuery;
    TIPFRTID: TIntegerField;
    TIPFRTNOMFRT: TStringField;
    dsTipFrt: TDataSource;
    PedParID_FRETE_PADRAO: TIntegerField;
    dxDBColorPickEdit4: TdxDBColorPickEdit;
    Label53: TLabel;
    PedParFLGATD: TStringField;
    PedParIMP_DEPOSITO_PEDIDO: TStringField;
    dxDBColorPickEdit5: TdxDBColorPickEdit;
    Label54: TLabel;
    PedParFLG_ACUMULA_IMP: TStringField;
    DBCheckBox19: TDBCheckBox;
    PedParLIMITE_INATIVO: TIntegerField;
    dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit;
    Label55: TLabel;
    DBCheckBox20: TDBCheckBox;
    PedParIMP_PARCELA_PEDIDO: TSmallintField;
    PedParQTD_DEC_VIA_SEP: TSmallintField;
    Label56: TLabel;
    dxDBColorPickEdit6: TdxDBColorPickEdit;
    DBCheckBox21: TDBCheckBox;
    PedParIMP_MARCA_PEDIDO_COTACAO: TSmallintField;
    PedParSUPRIMIR_ZEROS: TSmallintField;
    DBCheckBox22: TDBCheckBox;
    PedParPERMITIR_QTD_FRACIONADA: TIntegerField;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    PedParCONCATENAR_QTD_EMB_VIA_SEP: TSmallintField;
    PedParORDEM_VIASEPLOC: TStringField;
    PedParTIPO_IMPRESSAO_VIASEP: TStringField;
    dxDBColorPickEdit7: TdxDBColorPickEdit;
    dxDBColorPickEdit8: TdxDBColorPickEdit;
    Label57: TLabel;
    Label58: TLabel;
    DBCheckBox25: TDBCheckBox;
    PedParDUP_ITEM_PEDIDO: TStringField;
    DBCheckBox26: TDBCheckBox;
    PedParTOTALIZAQTDVIASEP: TStringField;
    PedParINTIMPPED: TStringField;
    PedParVALPARCELA: TStringField;
    PedParBLOQUEIA_LIMITE_CREDITO: TIntegerField;
    PedParIMPQTDVIASEP: TStringField;
    PedParIMPPEDCAT_CUSTO_MK: TStringField;
    PedParRES_ITEM_NAOCONCLUIDO: TStringField;
    PedParMOSTRA_VALOR_EXPEDICAO: TStringField;
    PedParFLG_OBRIGA_TRANS: TStringField;
    PedParFLG_OBS_FAT: TStringField;
    PedParTIPPAG: TStringField;
    PedParFLGBLOQCTA_SEMCLI: TStringField;
    PedParFLGATIVO: TSmallintField;
    PedParORDEM_IMPRESSAO: TStringField;
    dbSUPRIMIR_QTDE_EMB: TDBCheckBox;
    PedParSUPRIMIR_QTDE_EMB: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdQtdHstKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PedParAfterScroll(DataSet: TDataSet);
    procedure PedParFLGCOMChange(Sender: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPar: TfmManPar;

implementation

uses dxDemoUtils, BbMensag, ManGDB;

{$R *.DFM}

procedure TfmManPar.FormShow(Sender: TObject);
begin
  inherited;

  PedPar.Edit;

  PageControl1.ActivePage := TabSheet1;

  if EdTipPed.CanFocus then
    EdTipPed.SetFocus;

end;

procedure TfmManPar.bConfirmarClick(Sender: TObject);
begin
  inherited;

  PedParREFINT.AsInteger := RadioGroup1.ItemIndex;
  PedParCOT_COMP_RED.AsInteger := rgImpCot.ItemIndex;

  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if fMsg('Confirma Alterações', 'S') then
    begin

      with PedPar do
      begin

        if DBCheckBox13.Checked then
          PedParOBRLIBPED.Value := DBCheckBox13.ValueChecked
        else
          PedParOBRLIBPED.Value := DBCheckBox13.ValueUnchecked;

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

        except on e : exception
        do begin
             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
             if PedPar.State = dsBrowse then
                PedPar.Edit;
             raise exception.create('mensagem de erro: '+ e.message);
             //EdTipPed.SetFocus;
           end;  

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      if PedPar.State = dsBrowse then
        PedPar.Edit;

      //        EdTipPed.SetFocus;

    end;

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManPar.bFecharClick(Sender: TObject);
begin
  inherited;

  PedPar.CancelUpdates;

  Close;

end;

procedure TfmManPar.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPar.EdQtdHstKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManPar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPar.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPar := nil;
end;

procedure TfmManPar.FormCreate(Sender: TObject);
begin
  inherited;
  RadioGroup1.ItemIndex := PedParREFINT.AsInteger;
  rgImpCot.ItemIndex := PedParCOT_COMP_RED.AsInteger;
end;

procedure TfmManPar.PedParAfterScroll(DataSet: TDataSet);
begin
  inherited;
   if (PedPar.FieldByName('FLGCOM').AsString = 'Sim') then
      begin
         dxDBColorCurrencyEdit1.Enabled := False;
         dxDBColorCurrencyEdit2.Enabled := False;
         dxDBColorCurrencyEdit3.Enabled := False;
      end
   else
      begin
         dxDBColorCurrencyEdit1.Enabled := True;
         dxDBColorCurrencyEdit2.Enabled := True;
         dxDBColorCurrencyEdit3.Enabled := True;
      end;
end;

procedure TfmManPar.PedParFLGCOMChange(Sender: TField);
begin
  inherited;
   if (PedPar.FieldByName('FLGCOM').AsString = 'Sim') then
      begin
         dxDBColorCurrencyEdit1.Enabled := False;
         dxDBColorCurrencyEdit2.Enabled := False;
         dxDBColorCurrencyEdit3.Enabled := False;
      end
   else
      begin
         dxDBColorCurrencyEdit1.Enabled := True;
         dxDBColorCurrencyEdit2.Enabled := True;
         dxDBColorCurrencyEdit3.Enabled := True;
      end;
end;

end.
