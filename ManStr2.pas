unit ManStr2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwriched, dxDBEdtr,
  dxDBColorCurrencyEdit, dxDBColorPickEdit, dxDBColorEdit, dxColorPickEdit,
  dxColorEdit, dxDBColorLookupEdit, dxDBColorDateEdit, Math,
  dxColorCurrencyEdit;

type
  TfmManStr2 = class(TfmPadrao)
    pcStr: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TwwQuery;
    nvStr: ThDBNavigator;
    EstStr: TwwQuery;
    DsStr: TwwDataSource;
    UpStr: TUpdateSQL;
    Label12: TLabel;
    Shape11: TShape;
    Panel3: TPanel;
    grStr: ThGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdPsqNomStr: TdxColorEdit;
    EdPsqCodStr: TdxColorEdit;
    Label8: TLabel;
    Shape2: TShape;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape3: TShape;
    EdPsqTipStr: TdxColorPickEdit;
    Label11: TLabel;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label14: TLabel;
    Label15: TLabel;
    EdCodStr: TdxDBColorEdit;
    EdNomStr: TdxDBColorEdit;
    Shape7: TShape;
    Shape1: TShape;
    EstStrCODSTR: TStringField;
    EstStrNOMSTR: TStringField;
    EstStrTIPSTR: TStringField;
    DsEstUfe: TwwDataSource;
    UpEstUfe: TUpdateSQL;
    pEstUfe: TPanel;
    EstIcm: TwwQuery;
    StringField2: TStringField;
    EstIcmCODICM: TStringField;
    EstIcmPERICM: TFloatField;
    dsEstIcm: TwwDataSource;
    EstTxf: TwwQuery;
    DsTxf: TwwDataSource;
    EstTxfCODTXF: TStringField;
    EstTxfTIPTXF: TStringField;
    EstTxfDSRTXF: TStringField;
    Label19: TLabel;
    EdSigUfe: TdxDBColorEdit;
    CbNomUfe: TdxDBColorLookupEdit;
    GerUfe: TwwQuery;
    DsGerUfe: TwwDataSource;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    EstTme: TwwQuery;
    DsTme: TwwDataSource;
    EstTmeCODTME: TStringField;
    EstTmeNOMTME: TStringField;
    FinTCl: TwwQuery;
    FinTClNOMTCL: TStringField;
    FinTClCODTCL: TIntegerField;
    DsTCl: TwwDataSource;
    EstUfc: TwwQuery;
    UpEstUfc: TUpdateSQL;
    dsEstUfc: TwwDataSource;
    EstUfcCODSTR: TStringField;
    EstUfcTIPSTR: TStringField;
    EstUfcCODCLI: TIntegerField;
    EstUfcICMSUB: TFloatField;
    EstUfcMRGSUB: TFloatField;
    EstUfcBASESB: TFloatField;
    EstUfcCODCFO: TStringField;
    EstUfcREGICM: TStringField;
    EstUfcTIPICM: TStringField;
    EstUfcREGIPI: TStringField;
    EstUfcTIPIPI: TStringField;
    EstUfcCODTXF: TStringField;
    EstUfcNOMCLI: TStringField;
    FinCli: TwwQuery;
    dsFinCli: TwwDataSource;
    FinCliCODCLI: TIntegerField;
    FinCliNOMCLI: TStringField;
    EstIcc: TwwQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    dsEstIcc: TwwDataSource;
    Label107: TLabel;
    EdRegIcm1: TdxDBColorEdit;
    CbNomIcm1: TdxDBColorLookupEdit;
    Label48: TLabel;
    EdCodTCl1: TdxDBColorEdit;
    CbNomTCl: TdxDBColorLookupEdit;
    Label20: TLabel;
    EdCodTme1: TdxDBColorEdit;
    CbNomTme: TdxDBColorLookupEdit;
    EstSt2: TwwQuery;
    EstSt2NOMST2: TStringField;
    EstSt2CODST2: TStringField;
    DsSt2: TwwDataSource;
    EstTxfDSCTXF: TMemoField;
    edNCM: TdxDBColorEdit;
    Label23: TLabel;
    Label24: TLabel;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    Bevel2: TBevel;
    ESTST1: TwwQuery;
    dsESTST1: TwwDataSource;
    ESTST1CODST1: TStringField;
    ESTST1NOMST1: TStringField;
    FINREGTRIB: TwwQuery;
    dsFINREGTRIB: TwwDataSource;
    FINREGTRIBNUMREGTRIB: TIntegerField;
    FINREGTRIBNOMREGTRIB: TStringField;
    EstUfe: TwwQuery;
    EstUfeSIGUFE: TStringField;
    EstUfeNOMUFE: TStringField;
    EstUfeICMSUB: TFloatField;
    EstUfeMRGSUB: TFloatField;
    EstUfeBASESB: TFloatField;
    EstUfeCODSTR: TStringField;
    EstUfeTIPSTR: TStringField;
    EstUfeCODCFO: TStringField;
    EstUfeREGICM: TStringField;
    EstUfeTIPICM: TStringField;
    EstUfeREGIPI: TStringField;
    EstUfeTIPIPI: TStringField;
    EstUfeCODTXF: TStringField;
    EstUfeCODTME: TStringField;
    EstUfeDTEENV: TDateTimeField;
    EstUfeCODTCL: TIntegerField;
    EstUfeFLGNCALC_DIF_MVA: TStringField;
    EstUfeREDSUB: TFloatField;
    EstUfeCODST2: TStringField;
    Shape6: TShape;
    Label73: TLabel;
    Panel8: TPanel;
    nvUfe: ThDBNavigator;
    grUfe: ThGrid;
    EstUfeCODCFO_DEV: TStringField;
    EstUfeIVAENT: TFloatField;
    EstUfeCODST1: TStringField;
    Label29: TLabel;
    hGrid1: ThGrid;
    Shape8: TShape;
    EstStrIVAENT: TFloatField;
    EstStrNCM: TStringField;
    dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit;
    Label22: TLabel;
    EstStrICMSENT: TFloatField;
    EstUfeID_ESTUFE: TIntegerField;
    EstUfeICMSENT: TFloatField;
    FINREGTRIBDESCREG: TMemoField;
    ESTST1DESCST1: TStringField;
    Label25: TLabel;
    Label26: TLabel;
    edIVAEnt: TdxDBColorCurrencyEdit;
    edIcmEnt: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    Label38: TLabel;
    EdIcmSub1: TdxDBColorCurrencyEdit;
    EdMrgSub1: TdxDBColorCurrencyEdit;
    EdCodTxf1: TdxDBColorEdit;
    CbNomTxf1: TdxDBColorLookupEdit;
    edCodSt2: TdxDBColorEdit;
    EdCodCfo1: TdxDBColorEdit;
    CbNomSt2: TdxDBColorLookupEdit;
    Label10: TLabel;
    Bevel3: TBevel;
    EstUfeGRUPO_ORIGEM: TStringField;
    Label16: TLabel;
    EdTipStr: TdxDBColorPickEdit;
    CbCalc_MVA: TCheckBox;
    Label21: TLabel;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    Label30: TLabel;
    dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit;
    Label31: TLabel;
    Label32: TLabel;
    BbCalc_MVA: TButton;
    Label27: TLabel;
    EdRegTrib: TdxDBColorLookupEdit;
    Label9: TLabel;
    dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit;
    EstUfeIVA_ORGINAL: TFloatField;
    EstUfeICM_INTEREST: TFloatField;
    EstUfeICM_DENT_UF: TFloatField;
    EstUfeICM_INTER_SINIEF: TFloatField;
    EstUfeMRGMVA: TFloatField;
    EstUfeMRGMVA_SINIEF: TFloatField;
    Label28: TLabel;
    edUfEmitente: TdxDBColorEdit;
    cbNomUfEmit: TdxDBColorLookupEdit;
    EstUfeUFEMITENTE: TStringField;
    edtMva: TdxColorEdit;
    edtMvaSinief20: TdxColorEdit;
    btnAplicar: TButton;
    edRedSub: TdxDBColorCurrencyEdit;
    EdBasesb1: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    Label17: TLabel;
    EstUfeCODREGTRIB: TIntegerField;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure grStrDblClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EstStrNewRecord(DataSet: TDataSet);
    procedure DsStrDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pEstUfeExit(Sender: TObject);
    procedure EstUfeNewRecord(DataSet: TDataSet);
    procedure EstUfeBeforeEdit(DataSet: TDataSet);
    procedure EstUfeAfterCancel(DataSet: TDataSet);
    procedure EstStrBeforeEdit(DataSet: TDataSet);
    procedure EstStrAfterCancel(DataSet: TDataSet);
    procedure nvUfeBeforeSalva(Sender: TObject);
    procedure DsEstUfeDataChange(Sender: TObject; Field: TField);
    procedure EdRegIcm1Exit(Sender: TObject);
    procedure EdCodTCl1KeyPress(Sender: TObject; var Key: Char);
    procedure EdRegIcm2Exit(Sender: TObject);
    procedure EdCodCfo1KeyPress(Sender: TObject; var Key: Char);
    procedure EstUfcAfterCancel(DataSet: TDataSet);
    procedure EstUfcBeforeEdit(DataSet: TDataSet);
    procedure EstUfcNewRecord(DataSet: TDataSet);
    procedure nvUfcBeforeSalva(Sender: TObject);
    procedure nvUfeSalva(Sender: TObject);
    procedure nvStrSalva(Sender: TObject);
    procedure EstStrAfterPost(DataSet: TDataSet);
    procedure edNCMKeyPress(Sender: TObject; var Key: Char);
    procedure EstStrAfterScroll(DataSet: TDataSet);
    procedure BbCalc_MVAClick(Sender: TObject);
    procedure EstStrBeforePost(DataSet: TDataSet);
    procedure EstUfeBeforePost(DataSet: TDataSet);
    procedure EstUfeAfterOpen(DataSet: TDataSet);
    procedure EdRegTribChange(Sender: TObject);
    procedure CbCalc_MVAClick(Sender: TObject);
    procedure EstUfeBeforeInsert(DataSet: TDataSet);
    procedure EstUfeAfterInsert(DataSet: TDataSet);
    procedure EstUfeAfterPost(DataSet: TDataSet);
    procedure EdSigUfeExit(Sender: TObject);
    procedure EstUfeAfterScroll(DataSet: TDataSet);
    procedure btnAplicarClick(Sender: TObject);
    procedure EstUfeSIGUFEChange(Sender: TField);
    procedure EdCodCfo1Exit(Sender: TObject);
    procedure edRedSubChange(Sender: TObject);
    procedure EstStrBeforeDelete(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);

  private
    {Private declarations}
    Old_IVA, Old_ICM: Real;

    procedure ValidacaoSTR;
    procedure ValidacaoUFE;
    procedure calcula;
    procedure reducao;
  public
    {Public declarations}
    sBase, sFiltro, sOrdem, pSaida: string;

    procedure localiza(regra: string; entSai: string; estado: string = ''; regime: string = '');
    procedure carregaCheckBox();
  end;

var
  fmManStr2: TfmManStr2;

implementation

uses Bbgeral, BbMensag, ManPri, Fpreview, AuxIni, AuxPsq, ManGDB, MsgUser,
  Bbfuncao, uLogEststr;

{$R *.DFM}

procedure TfmManStr2.reducao();
begin
  if Trim(edRedSub.Text) <> '' then
    if StrToFloat(edRedSub.Text) > 0 then
    begin
      edBasesb1.Enabled := False;
    end
    else
      edBasesb1.Enabled := True
  else
    edBasesb1.Enabled := True;
end;

procedure TfmManStr2.calcula();
begin
  if ((EstUfe.FieldByName('ICM_INTEREST').AsFloat > 0) and
    (EstUfe.FieldByName('ICM_DENT_UF').AsFloat > 0) and
    (EstUfe.FieldByName('IVA_ORGINAL').AsFloat > 0)) then
  begin
    edtMva.Text := FloattoStr(fRound((((1 + (EstUfe.FieldByName('IVA_ORGINAL').AsFloat) / 100) * (1 - (EstUfe.FieldByName('ICM_INTEREST').AsFloat / 100)) /
      (1 - (EstUfe.FieldByName('ICM_DENT_UF').AsFloat / 100))) - 1) * 100, 2));

    edtMvaSinief20.Text := FloattoStr(fRound((((1 + (EstUfe.FieldByName('IVA_ORGINAL').AsFloat) / 100) * (1 - (EstUfe.FieldByName('ICM_INTER_SINIEF').AsFloat /
      100)) /
      (1 - (EstUfe.FieldByName('ICM_DENT_UF').AsFloat / 100))) - 1) * 100, 2));
  end
  else
  begin
    edtMva.Text := '0.00';
    edtMvaSinief20.Text := '0.00';
  end;

  begin
    if (StrToIntDef(edtMva.Text, 0) <> EstUfe.FieldByName('MRGMVA').AsFloat) then
    begin
      edtMva.Style.BorderColor := clRed;
      EdMrgSub1.Style.BorderColor := clred;
    end
    else
    begin
      edtMva.Style.BorderColor := $00E2BC6D;
      EdMrgSub1.Style.BorderColor := $00E2BC6D;
    end;
  end;

  (*  if ((edtMvaSinief20.Text <> dxDBColorCurrencyEdit7.Text) and
      (StrtoIntDef(dxDBColorCurrencyEdit7.Text, 0) > 0)) then
    begin
      edtMvaSinief20.Style.BorderColor := clRed;
      dxDBColorCurrencyEdit7.Style.BorderColor := clred;
    end
    else
    begin
      edtMvaSinief20.Style.BorderColor := $00E2BC6D;
      dxDBColorCurrencyEdit7.Style.BorderColor := $00E2BC6D;
    end;*)
end;

procedure TfmManStr2.carregaCheckBox();
var
  grupos: string;
  function ativo(value: string): Boolean;
  begin
    if TRIM(value) <> '' then
      result := True
    else
      result := False;
  end;
begin
  inherited;
  grupos := EstUfeGRUPO_ORIGEM.AsString;

end;

procedure TfmManStr2.localiza(regra: string; entSai: string; estado: string = ''; regime: string = '');
var
  parametro: Variant;
begin
  if regra <> '' then
  begin
    EdPsqCodStr.Text := regra;
    if entSai = 'SAI' then
      EdPsqTipStr.ItemIndex := 0
    else
      EdPsqTipStr.ItemIndex := 1;

    BbPesquisa.Click;
    pcStr.ActivePageIndex := 1;

    if Trim(estado) <> '' then
    begin
      parametro := VarArrayCreate([0, 2], varVariant);
      parametro[0] := estado;
      parametro[1] := StrToInt(regime);
      EstUfe.Locate('SIGUFE;CODREGTRIB', parametro, []);
    end;
  end;
end;

procedure TfmManStr2.FormCreate(Sender: TObject);
begin
  inherited;
  EstIcm.Active := True;
  pSaida := 'S';

  sBase := ' Select * From EstStr ';

end;

procedure TfmManStr2.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
    0: sOrdem := ' Order by CodStr';
    1: sOrdem := ' Order by NomStr';
    2: sOrdem := ' Order by TipStr';
  end;

  if (EdPsqTipStr.Text <> '') and (EdPsqTipStr.Text <> 'Todos') then
    sFiltro := ' Where TipStr = ''' + EdPsqTipStr.Text + '''';

  if (EdPsqCodStr.Text <> '') then
  begin
    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where CodStr = ''' + EdPsqCodStr.Text + ''''
    else
      sFiltro := sFiltro + ' and CodStr = ''' + EdPsqCodStr.Text + '''';
  end;

  if Rgbusca.ItemIndex = 0 then
  begin

    if (EdPsqNomStr.Text <> '') then
    begin
      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where NomStr LIKE ''' + EdPsqNomStr.Text + '%'''
      else
        sFiltro := sFiltro + ' and NomStr LIKE ''' + EdPsqNomStr.Text + '%''';
    end;

  end
  else
  begin

    if (EdPsqNomStr.Text <> '') then
    begin
      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where NomStr LIKE ''%' + EdPsqNomStr.Text + '%'''
      else
        sFiltro := sFiltro + ' and NomStr LIKE ''%' + EdPsqNomStr.Text + '%''';
    end;
  end;

  EstUfe.Active := False;
  EstStr.Active := False;
  EstStr.SQL.Text := sBase + sFiltro + sOrdem;
  EstStr.Active := True;
  EstUfe.Active := True;

end;

procedure TfmManStr2.DsStrDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvStr.Salvar then
  begin

    if Trim(EstStrCodStr.AsString) <> '' then
    begin

      EdCodStr.Enabled := False;
      EdTipStr.Enabled := False;
      edNCM.Enabled := False;
      EdNomStr.Enabled := False;

      EdCodStr.Font.Style := [fsBold];
      EdTipStr.Font.Style := [fsBold];
      edNCM.Font.Style := [fsBold];

    end
    else
    begin

      EdCodStr.Enabled := True;
      EdTipStr.Enabled := True;
      edNCM.Enabled := True;
      EdNomStr.Enabled := False;

      EdCodStr.Font.Style := [];
      EdTipStr.Font.Style := [];
      edNCM.Font.Style := [];

    end;
  end;
end;

procedure TfmManStr2.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodStr.SetFocus;
end;

procedure TfmManStr2.EstStrNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstStr.DisableControls;

  EstStrTipStr.Value := 'Saida';

  EstStr.EnableControls;

  PcStr.ActivePage := pcPag2;

  EdCodStr.Enabled := True;
  EdTipStr.Enabled := True;
  edNCM.Enabled := True;
  EdNomStr.Enabled := True;

  EdCodStr.Font.Style := [];
  EdTipStr.Font.Style := [];
  edNCM.Font.Style := [];

  if EdIcmSub1.Enabled then
  begin

    pSaida := 'N';

    nvUfe.Enabled := False;
    grUfe.Enabled := False;

    EdCodCfo1.Enabled := False;
    CbNomTxf1.Enabled := False;
    EdSigUfe.Enabled := False;
    CbNomUfe.Enabled := False;
    cbNomUfEmit.Enabled := False;
    edUfEmitente.Enabled := False;

    EdIcmSub1.Enabled := False;
    ;
    EdMrgSub1.Enabled := False;
    EdBaseSb1.Enabled := False;
    EdRegIcm1.Enabled := False;
    EdCodTxf1.Enabled := False;
    EdCodTme1.Enabled := False;
    EdCodTCl1.Enabled := False;
    //EdDteEnv1.Enabled := False;

    EdCodCfo1.Enabled := False;
    CbNomTxf1.Enabled := False;
    EdSigUfe.Enabled := False;
    edUfEmitente.Enabled := False;
    CbNomUfe.Enabled := False;
    cbNomUfEmit.Enabled := False;
    CbNomTme.Enabled := False;
    CbNomTCl.Enabled := False;

    EdIcmSub1.Font.Style := [fsBold];
    EdMrgSub1.Font.Style := [fsBold];
    EdBaseSb1.Font.Style := [fsBold];
    EdRegIcm1.Font.Style := [fsBold];
    EdCodTxf1.Font.Style := [fsBold];
    EdCodTme1.Font.Style := [fsBold];
    EdCodTCl1.Font.Style := [fsBold];
    //EdDteEnv1.Font.Style := [fsBold];

    pSaida := 'S';

  end;

  EdCodStr.Setfocus;

end;

procedure TfmManStr2.grStrDblClick(Sender: TObject);
begin
  inherited;
  pcStr.ActivePage := pcPag2;
end;

procedure TfmManStr2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManStr2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManStr2 := nil;
end;

procedure TfmManStr2.FormShow(Sender: TObject);
begin
  inherited;
  pcStr.ActivePage := pcPag1;
end;

procedure TfmManStr2.pEstUfeExit(Sender: TObject);
var
  Operac: string;
begin
  inherited;
  if pSaida = 'S' then
  begin

    if nvUfe.Salvar then
    begin

      if Trim(EstUfeSigUfe.Value) = '' then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdSigUfe);

      if Trim(EstUfeCodTme.Value) = '' then
        EstUfeCodTme.Clear;

      if Trim(EstUfeRegIcm.Value) = '' then
      begin

        EstUfeRegIcm.Clear;
        EstUfeTipIcm.Clear;

      end
      else
        EstUfeTipIcm.Value := EstUfeTipStr.Value;

      if Trim(EstUfeCodTxf.Value) = '' then
        EstUfeCodTxf.Clear;

      if EstUfe.State = dsInsert then
        Operac := 'dsInsert';

      if Trim(EstUfeCodStr.Value) <> '' then
      begin

        nvUfe.SBSalvaClick(Sender);

        if (Operac = 'dsInsert') and (not nvUfe.Salvar) then
        begin

          nvUfe.SBIncluiClick(Sender);

          EdSigUfe.SetFocus;

        end
        else
        begin

          if not EstUfe.EOF then
          begin

            EstUfe.Next;

            EdIcmSub1.SetFocus;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManStr2.EstUfeNewRecord(DataSet: TDataSet);
var
  uf, multiplasUfs: string;
begin
  inherited;

  EstUfe.DisableControls;

  EstUfeIcmSub.AsFloat := 0;
  EstUfeMrgSub.AsFloat := 0;
  EstUfeBaseSb.AsFloat := 100;
  EstUfeid_EstUfe.AsInteger := 0;
  EstUfeCodStr.AsString := EstStrCodStr.AsString;
  EstUfeTipStr.AsString := EstStrTipStr.AsString;
  //EstUfeTipIcm.Value := EstStrTipStr.Value;

  EdCodCfo1.Enabled := True;
  CbNomTxf1.Enabled := True;
  CbNomTme.Enabled := True;
  CbNomTCl.Enabled := True;

  //**  edCodSt1.Enabled := True;
  edRegTrib.Enabled := True;
  //**  edCodSt1.Font.Style := [];
  edRegTrib.Font.Style := [];

  EstUfe.EnableControls;

  pSaida := 'N';

  EdSigUfe.Enabled := True;
  CbNomUfe.Enabled := True;
  cbNomUfEmit.Enabled := True;

  EdSigUfe.Font.Style := [];
  CbNomUfe.Font.Style := [];
  cbNomUfEmit.Font.Style := [];

  pSaida := 'S';

  if EdNomStr.Enabled then
  begin

    nvStr.Enabled := False;
    grStr.Enabled := False;

    //EdNomStr.Enabled := False;

    EdNomStr.Font.Style := [fsBold];

  end;

  nvUfe.enabled := True;

  EstUfe.FieldByName('IVA_ORGINAL').AsFloat := EstStr.FieldByName('IVAENT').AsFloat;
  EstUfe.FieldByName('ICM_DENT_UF').AsFloat := EstStr.FieldByName('ICMSENT').AsFloat;

  uf := fmManGDB.BuscaSimples('GEREMP', 'SIGUFE', ' CODEMP = ' + QuotedStr(InttoStr(GEmp_Id)));
  EstUfe.FieldByName('UFEMITENTE').AsString := uf;

  multiplasUfs := fmManGDB.BuscaSimples('ESTPAR', 'MULTIPLAS_UF', ' 1 = 1');

  edUfEmitente.Enabled := StrToInt(multiplasUfs) > 0;

  if (edUfEmitente.CanFocus) then
    edUfEmitente.SetFocus;
end;

procedure TfmManStr2.EstUfeBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if EdNomStr.Enabled then
  begin

    nvStr.Enabled := False;
    grStr.Enabled := False;

    EdNomStr.Enabled := False;

    EdCodCfo1.Enabled := True;
    CbNomTxf1.Enabled := True;
    CbNomTme.Enabled := True;
    CbNomTCl.Enabled := True;

    edUfEmitente.Enabled := EstUfe.FieldByName('UFEMITENTE').AsString = '';

    EdNomStr.Font.Style := [fsBold];

  end;

end;

procedure TfmManStr2.EstUfeAfterCancel(DataSet: TDataSet);
begin
  inherited;

  if not EdNomStr.Enabled then
  begin

    nvStr.Enabled := True;
    grStr.Enabled := True;

    EdNomStr.Enabled := True;

    EdNomStr.Font.Style := [];

  end;

  nvStr.Enabled := True;

  carregaCheckBox();

  edUfEmitente.Enabled := False;

  reducao;
end;

procedure TfmManStr2.EstStrBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if EdIcmSub1.Enabled then
  begin

    pSaida := 'N';

    nvUfe.Enabled := False;
    grUfe.Enabled := False;

    EdIcmSub1.Enabled := False;
    EdMrgSub1.Enabled := False;
    EdBaseSb1.Enabled := False;
    EdRegIcm1.Enabled := False;
    EdCodTxf1.Enabled := False;
    EdCodTme1.Enabled := False;
    EdCodTCl1.Enabled := False;
    //EdDteEnv1.Enabled := False;

    EdIcmSub1.Font.Style := [fsBold];
    EdMrgSub1.Font.Style := [fsBold];
    EdBaseSb1.Font.Style := [fsBold];
    EdRegIcm1.Font.Style := [fsBold];
    EdCodTxf1.Font.Style := [fsBold];
    EdCodTme1.Font.Style := [fsBold];
    EdCodTCl1.Font.Style := [fsBold];
    //EdDteEnv1.Font.Style := [fsBold];

    pSaida := 'S';

  end;
end;

procedure TfmManStr2.EstStrAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if not EdIcmSub1.Enabled then
  begin

    pSaida := 'N';

    nvUfe.Enabled := True;
    grUfe.Enabled := True;

    EdIcmSub1.Enabled := True;
    EdMrgSub1.Enabled := True;
    EdBaseSb1.Enabled := True;
    EdRegIcm1.Enabled := True;
    EdCodTxf1.Enabled := True;
    EdCodTme1.Enabled := True;
    EdCodTCl1.Enabled := True;
    //EdDteEnv1.Enabled := True;

    EdIcmSub1.Font.Style := [];
    EdMrgSub1.Font.Style := [];
    EdBaseSb1.Font.Style := [];
    EdRegIcm1.Font.Style := [];
    EdCodTxf1.Font.Style := [];
    EdCodTme1.Font.Style := [];
    EdCodTCl1.Font.Style := [];
    //EdDteEnv1.Font.Style := [];

    pSaida := 'S';

  end;
end;

procedure TfmManStr2.nvUfeBeforeSalva(Sender: TObject);
begin
  inherited;

  ValidacaoUFE;

  if Trim(EstUfeCodTme.Value) = '' then
    EstUfeCodTme.Clear;

  if Trim(EstUfeRegIcm.Value) = '' then
  begin

    EstUfeRegIcm.Clear;
    EstUfeTipIcm.Clear;

  end
  else
    EstUfeTipIcm.Value := EstUfeTipStr.Value;

  if Trim(EstUfeCodTxf.Value) = '' then
    EstUfeCodTxf.Clear;

  nvUfe.Enabled := True;

end;

procedure TfmManStr2.DsEstUfeDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvUfe.Salvar then
  begin

    if Trim(EstUfeSigUfe.Value) <> '' then
    begin

      EdSigUfe.Enabled := False;
      CbNomUfe.Enabled := False;
      cbNomUfEmit.Enabled := False;

      EdSigUfe.Font.Style := [fsBold];
      CbNomUfe.Font.Style := [fsBold];
      cbNomUfEmit.Font.Style := [fsBold];

      //**      edCodSt1.Enabled := False;
      edRegTrib.Enabled := False;
      //**      edCodSt1.Font.Style := [fsBold];
      edRegTrib.Font.Style := [fsBold];

    end
    else
    begin

      EdSigUfe.Enabled := True;
      CbNomUfe.Enabled := True;
      cbNomUfEmit.Enabled := True;

      EdSigUfe.Font.Style := [];
      CbNomUfe.Font.Style := [];
      cbNomUfEmit.Font.Style := [];

      //**      edCodSt1.Enabled := True;
      edRegTrib.Enabled := True;
      //**      edCodSt1.Font.Style := [];
      edRegTrib.Font.Style := [];

    end;
  end;

  if (EstIcm.Params[0].AsString <> EstUfeRegIcm.Value) or
    (EstIcm.Params[1].AsString <> EstUfeTipIcm.Value) then
  begin

    EstIcm.Close;
    EstIcm.Params[0].AsString := EstUfeRegIcm.Value;
    EstIcm.Params[1].AsString := EstUfeTipIcm.Value;
    EstIcm.Open;

  end;
end;

procedure TfmManStr2.EdRegIcm1Exit(Sender: TObject);
var
  msg: string;
begin
  inherited;
  if EstUfe.State <> dsBrowse then
  begin

    if Trim(EstUfeRegIcm.Value) <> '' then
      EstUfeTipIcm.Value := EstUfeTipStr.Value;
    //alteração
    EstUfeRegIcm.Value := Trim(EdRegIcm1.Text);
    EstUfeTIPICM.Value := EstStrTIPSTR.Value;
  end;

  if edCodSt2.Text <> '' then
    if CbNomSt2.Text = '' then
    begin
      EstSt2.First;

      msg := 'Codigo de ST Inválido, o Código da ST deve estar entre:' + #13 + #13;

      while not (EstSt2.Eof) do
      begin
        msg := msg + EstSt2CODST2.AsString + ' - ' + EstSt2NOMST2.AsString + #13;
        EstSt2.Next;
      end;

      ShowMessage(msg);

      edCodSt2.SetFocus;
    end;
end;

procedure TfmManStr2.EdCodTCl1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManStr2.EdRegIcm2Exit(Sender: TObject);
begin
  inherited;
  if EstUfc.State <> dsBrowse then
  begin

    if Trim(EstUfcRegIcm.Value) <> '' then
      EstUfcTipIcm.Value := EstUfcTipStr.Value;

  end;
end;

procedure TfmManStr2.EdCodCfo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not (key in ['0'..'9'])) and (not (key in ['.'])) then
    key := #0;
end;

procedure TfmManStr2.EstUfcAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if not EdNomStr.Enabled then
  begin

    nvStr.Enabled := True;
    grStr.Enabled := True;

    nvUfe.Enabled := True;
    grUfe.Enabled := True;

    EdNomStr.Enabled := True;

    EdIcmSub1.Enabled := True;
    EdMrgSub1.Enabled := True;
    EdBasesb1.Enabled := True;
    EdCodCfo1.Enabled := True;
    EdRegIcm1.Enabled := True;
    EdCodTxf1.Enabled := True;
    EdCodTme1.Enabled := True;
    EdCodTCl1.Enabled := True;
    //EdDteEnv1.Enabled := True;

    EdNomStr.Font.Style := [];

    EdIcmSub1.Font.Style := [];
    EdMrgSub1.Font.Style := [];
    EdBasesb1.Font.Style := [];
    EdCodCfo1.Font.Style := [];
    EdRegIcm1.Font.Style := [];
    EdCodTxf1.Font.Style := [];
    EdCodTme1.Font.Style := [];
    EdCodTCl1.Font.Style := [];
    //EdDteEnv1.Font.Style := [];

  end;
end;

procedure TfmManStr2.EstUfcBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if EdNomStr.Enabled then
  begin

    nvStr.Enabled := False;
    grStr.Enabled := False;
    nvUfe.Enabled := False;
    grUfe.Enabled := False;

    EdNomStr.Enabled := False;

    EdIcmSub1.Enabled := False;
    EdMrgSub1.Enabled := False;
    EdBasesb1.Enabled := False;
    EdCodCfo1.Enabled := False;
    EdRegIcm1.Enabled := False;
    EdCodTxf1.Enabled := False;
    EdCodTme1.Enabled := False;
    EdCodTCl1.Enabled := False;
    //EdDteEnv1.Enabled := False;

    EdNomStr.Font.Style := [fsBold];

    EdIcmSub1.Font.Style := [fsBold];
    EdMrgSub1.Font.Style := [fsBold];
    EdBasesb1.Font.Style := [fsBold];
    EdCodCfo1.Font.Style := [fsBold];
    EdRegIcm1.Font.Style := [fsBold];
    EdCodTxf1.Font.Style := [fsBold];
    EdCodTme1.Font.Style := [fsBold];
    EdCodTCl1.Font.Style := [fsBold];
    //EdDteEnv1.Font.Style := [fsBold];

  end;
end;

procedure TfmManStr2.EstUfcNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstUfc.DisableControls;

  EstUfcIcmSub.Value := 0;
  EstUfcMrgSub.Value := 0;
  EstUfcBaseSb.Value := 100;
  EstUfcCodStr.Value := EstStrCodStr.Value;
  EstUfcTipStr.Value := EstStrTipStr.Value;
  EstUfcTipIcm.Value := EstStrTipStr.Value;

  EstUfc.EnableControls;

  pSaida := 'N';

  //EdCodCli.Enabled := True;

  //EdCodCli.Font.Style := [];

  pSaida := 'S';

  if EdNomStr.Enabled then
  begin

    nvStr.Enabled := False;
    grStr.Enabled := False;
    nvUfe.Enabled := False;
    grUfe.Enabled := False;

    EdNomStr.Enabled := False;

    EdIcmSub1.Enabled := False;
    EdMrgSub1.Enabled := False;
    EdBasesb1.Enabled := False;
    EdCodCfo1.Enabled := False;
    EdRegIcm1.Enabled := False;
    EdCodTxf1.Enabled := False;
    EdCodTme1.Enabled := False;
    EdCodTCl1.Enabled := False;
    //EdDteEnv1.Enabled := False;

    EdNomStr.Font.Style := [fsBold];

    EdIcmSub1.Font.Style := [fsBold];
    EdMrgSub1.Font.Style := [fsBold];
    EdBasesb1.Font.Style := [fsBold];
    EdCodCfo1.Font.Style := [fsBold];
    EdRegIcm1.Font.Style := [fsBold];
    EdCodTxf1.Font.Style := [fsBold];
    EdCodTme1.Font.Style := [fsBold];
    EdCodTCl1.Font.Style := [fsBold];
    //EdDteEnv1.Font.Style := [fsBold];

  end;

  //EdCodCli.SetFocus;

end;

procedure TfmManStr2.nvUfcBeforeSalva(Sender: TObject);
begin
  inherited;

  if Trim(EstUfcRegIcm.Value) = '' then
  begin

    EstUfcRegIcm.Clear;
    EstUfcTipIcm.Clear;

  end
  else
    EstUfcTipIcm.Value := EstUfcTipStr.Value;

  if Trim(EstUfcCodTxf.Value) = '' then
    EstUfcCodTxf.Clear;

end;

procedure TfmManStr2.nvUfeSalva(Sender: TObject);
begin
  inherited;
  ValidacaoUFE;
  if fmmanpri.Emerion_01 then
    fmManGDB.ReplicaUFE(EstUfeSIGUFE.AsString, EstStrCODSTR.AsString, EstStrTIPSTR.AsString);
  nvStr.Enabled := True;
  nvUfe.Enabled := True;

  nvUfe.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

  edUfEmitente.Enabled := False;
end;

procedure TfmManStr2.nvStrSalva(Sender: TObject);
begin
  inherited;

  if fmmanpri.Emerion_01 then
    fmManGDB.ReplicSTR(EstStrCODSTR.AsString, EstStrTIPSTR.AsString);
  nvUfe.Enabled := true;

end;

procedure TfmManStr2.EstStrAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not EdIcmSub1.Enabled then
  begin

    pSaida := 'N';

    nvUfe.Enabled := True;
    grUfe.Enabled := True;

    EdIcmSub1.Enabled := True;
    EdMrgSub1.Enabled := True;
    EdBaseSb1.Enabled := True;
    EdRegIcm1.Enabled := True;
    EdCodTxf1.Enabled := True;
    EdCodTme1.Enabled := True;
    EdCodTCl1.Enabled := True;
    //EdDteEnv1.Enabled := True;

    EdCodCfo1.Enabled := True;
    CbNomTxf1.Enabled := True;
    CbNomTme.Enabled := True;
    CbNomTCl.Enabled := True;

    EdIcmSub1.Font.Style := [];
    EdMrgSub1.Font.Style := [];
    EdBaseSb1.Font.Style := [];
    EdRegIcm1.Font.Style := [];
    EdCodTxf1.Font.Style := [];
    EdCodTme1.Font.Style := [];
    EdCodTCl1.Font.Style := [];
    //EdDteEnv1.Font.Style := [];

    pSaida := 'S';

  end;
end;

procedure TfmManStr2.edNCMKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #9]) then
    key := #0;
end;

procedure TfmManStr2.ValidacaoSTR;
var
  strSql: string;
  RegAlt: integer;
  SQLTEMP: TQuery;
begin
  //Validação do código de str
  if trim(EstStrCODSTR.AsString) = '' then
  begin
    messagebox(handle, 'Código da regra de substituição é obrigatório. Verifique e tente novamente.', 'Validação dos dados', mb_ok + MB_ICONWARNING);
    if edCodStr.CanFocus then
      edCodStr.SetFocus;

    Abort;
  end;

  //Validação do nome de str
  if trim(EstStrNOMSTR.AsString) = '' then
  begin
    messagebox(handle, 'Nome da regra de substituição é obrigatório. Verifique e tente novamente.', 'Validação dos dados', mb_ok + MB_ICONWARNING);
    if EdNomStr.CanFocus then
      EdNomStr.SetFocus;

    Abort;
  end;

  //Validação do nome de str
  if trim(EstStrTIPSTR.AsString) = '' then
  begin
    messagebox(handle, 'Nome da regra de substituição é obrigatório. Verifique e tente novamente.', 'Validação dos dados', mb_ok + MB_ICONWARNING);
    if EdTipStr.CanFocus then
      EdTipStr.SetFocus;

    Abort;
  end;

  //Validação do NCM de str
  if trim(EstStrTIPSTR.AsString) = '' then
  begin
    if EstStr.State = dsinsert then
      InformacaoObrigatoria('Não foi informado NCM para esta regra de substituição tributária.', 'Validação dos dados');
    if edNCM.CanFocus then
      edNCM.SetFocus;
  end;

  if Eststr.State = dsInsert then
    if strtoint(fmManGDB.BuscaSimples('ESTSTR', 'TOT', '', 'SELECT COUNT(1) TOT FROM ESTSTR WHERE CODSTR = ' + QuotedStr(EstStrCODSTR.AsString) +
      ' and TIPSTR = '
      + QuotedStr(EstStrTIPSTR.Asstring))) > 0 then
    begin
      messagebox(handle, 'Código já cadastrado. Tente novo código.', 'Válidação dos dados', mb_ok + MB_ICONINFORMATION);
      Abort;
    end;

  //atualiza IVA em todos os EstUfe
  if (EstStrIVAENT.AsFloat <> Old_IVA) then
  begin
    if MessageBox(handle, 'Houve alteração do percentual de IVA. Deseja Aplicar em todas as UF(s)?', 'Validação dos dados', MB_YESNO + mb_iconquestion) = idyes
      then
    begin
      strSql := ' UPDATE ESTUFE UFE SET UFE.IVA_ORGINAL = ' + FormataReal(EstStrIVAENT.AsFloat, 2) +
        ' where ufe.codstr = ' + quotedstr(trim(EstStrCODSTR.asString)) +
        ' and ufe.tipstr = ' + QuotedStr(trim(EstStrTIPSTR.AsString));

      SQLTEMP := TQuery.Create(Self);

      try
        SQLTEMP.DataBaseName := 'Isade';

        SQLTEMP.SQL.Text := strSql;
          SQLTEMP.ExecSQL;
          RegAlt := quSql.RowsAffected;


      finally
        FreeAndNil(SQLTEMP);
      end;

      EstUfe.Active := False;
      Estufe.Active := True;
    end;
  end;

  //Atualizar todos EstUfe
  if (EstStrICMSENT.AsFloat <> Old_ICM) then
  begin
    if MessageBox(handle, 'Houve alteração do percentual de ICMS de entrada. Deseja aplicar em todas as UF(s)?', 'Validação dos dados', MB_YESNO +
      mb_iconquestion) = idyes then
    begin
      strSql := ' UPDATE ESTUFE UFE SET UFE.ICMSENT = ' + FormataReal(EstStrICMSENT.AsFloat, 2) +
        ' where ufe.codstr = ' + quotedstr(trim(EstStrCODSTR.asString)) +
        ' and ufe.tipstr = ' + QuotedStr(trim(EstStrTIPSTR.AsString));

      SQLTEMP := TQuery.Create(Self);

      try
        SQLTEMP.DataBaseName := 'Isade';

        SQLTEMP.SQL.Text := strSql;
        SQLTEMP.ExecSQL;
        RegAlt := SQLTEMP.RowsAffected;

      finally
        FreeAndNil(SQLTEMP);
      end;

      EstUfe.Active := False;
      Estufe.Active := True;

    end;
  end;

  if (EstStrIVAENT.AsFloat <> Old_IVA) or (EstStrICMSENT.AsFloat <> Old_ICM) then
  begin
    if not EstUfe.IsEmpty then
    begin
      if MessageBox(handle, 'Houve alteração do percentual de IVA ou ICMS Entrada. Deseja recalcular todas as UFs?', 'Validação dos dados', MB_YESNO +
        mb_iconquestion) = idyes then
      begin

        strSql := ' UPDATE ESTUFE UFE SET UFE.MRGSUB = ' +
          '(((1+(COALESCE(UFE.ivaent,0)/100)) * (1 - (COALESCE(UFE.ICMSUB,0)/100)) / (1 - (COALESCE(UFE.ICMSENT,0)/100)))-1) * 100 ' +
          ' where ufe.codstr = ' + quotedstr(trim(EstStrCODSTR.asString)) +
          ' and ufe.tipstr = ' + QuotedStr(trim(EstStrTIPSTR.AsString));

        SQLTEMP := TQuery.Create(Self);

        try
          SQLTEMP.DataBaseName := 'Isade';

          SQLTEMP.SQL.Text := strSql;
          SQLTEMP.ExecSQL;
          RegAlt := SQLTEMP.RowsAffected;

        finally
          FreeAndNil(SQLTEMP);
        end;

        EstUfe.Active := False;
        Estufe.Active := True;
      end;
    end;
  end;

end;

procedure TfmManStr2.EstStrAfterScroll(DataSet: TDataSet);
var
  tipo: string;
begin
  inherited;
  Old_IVA := EstStrIVAENT.AsFloat;
  Old_ICM := EstStrICMSENT.AsFloat;

  carregaCheckBox();

  tipo := EdRegTrib.Text;

  if (tipo = 'Simples Nacional - excesso de sublimite de receita bruta') then
    CbCalc_MVA.Enabled := False
  else if (tipo = 'Simples Nacional') then
    CbCalc_MVA.Enabled := False
  else if ((tipo = 'Regime Normal') or (tipo = 'Normal')) then
    CbCalc_MVA.Enabled := True;
end;

procedure TfmManStr2.BbCalc_MVAClick(Sender: TObject);
begin
  inherited;

  if EstUfe.FieldByName('ICM_INTEREST').AsFloat <= 0 then
  begin
    messagebox(handle, 'Aliquota interna de ICMS não informada. Este valor é necessário ao cálculo de MVA. Informe o valor e tente novamente.',
      'Validação do calculo do MVA', mb_ok + MB_ICONWARNING);

    if EdIcmSub1.CanFocus then
      edicmsub1.SetFocus;

    Abort;
  end;

  if EstUfe.FieldByName('ICM_DENT_UF').AsFloat <= 0 then
  begin
    messagebox(handle, 'Aliquota de ICMS de entrada não informada. Este valor é necessário ao cálculo de MVA. Informe o valor e tente novamente.',
      'Validação do calculo do MVA', mb_ok + MB_ICONWARNING);

    if edIcmEnt.CanFocus then
      edIcmEnt.SetFocus;

    Abort;
  end;

  if EstUfe.FieldByName('IVA_ORGINAL').AsFloat <= 0 then
  begin
    messagebox(handle, 'Porcentagem de IVA de Entrada não informada. Este valor é necessário ao cálculo de MVA. Informe o valor e tente novamente.',
      'Validação do calculo do MVA', mb_ok + MB_ICONWARNING);

    if edIVAEnt.CanFocus then
      edIVAEnt.SetFocus;

    Abort;
  end;

  if not (EstUfe.State in [dsinsert, dsedit]) then
    EstUfe.Edit;

  //IVA AJUSTADA = [(1+IVA original) x (1- alíquota interestadual) / (1- alíquota interna)]-1

  calcula;
  {EstUfe.FieldByName('MRGMVA').AsFloat := fRound((((1 + (EstUfe.FieldByName('IVA_ORGINAL').AsFloat) / 100) * (1 - (EstUfe.FieldByName('ICM_INTEREST').AsFloat / 100)) /
                                   (1 - (EstUfe.FieldByName('ICM_DENT_UF').AsFloat / 100))) - 1) * 100, 2);

  EstUfe.FieldByName('MRGMVA_SINIEF').AsFloat := fRound((((1 + (EstUfe.FieldByName('IVA_ORGINAL').AsFloat) / 100) * (1 - (EstUfe.FieldByName('ICM_INTER_SINIEF').AsFloat / 100)) /
                                   (1 - (EstUfe.FieldByName('ICM_DENT_UF').AsFloat / 100))) - 1) * 100, 2);}

end;

procedure TfmManStr2.EstStrBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidacaoSTR;
end;

procedure TfmManStr2.ValidacaoUFE;
var
  erros: string;
begin
  {//validação de ICMS ST
  if EstUfeICMSUB.AsFloat <= 0 then
  begin
    messagebox(Handle, 'Aliquota interna de ICMS não informado. Campo obrigatória.', 'Validação da UF', MB_OK + MB_ICONWARNING);
    if EdIcmSub1.CanFocus then
      EdIcmSub1.SetFocus;

    //Abort;
  end;

  //Validação de MVA
  if EstUfeMRGSUB.AsFloat <= 0 then
  begin
    messagebox(Handle, 'MVA não informado. Campo obrigatória.', 'Validação da UF', MB_OK + MB_ICONWARNING);
    if EdMrgSub1.CanFocus then
      EdMrgSub1.SetFocus;

    //Abort;
  end;

  //Validação de CFOP
  if Trim(EstUfeCODCFO.AsString) = '' then
  begin
    messagebox(Handle, 'CFOP não informado. Campo obrigatória.', 'Validação da UF', MB_OK + MB_ICONWARNING);
    if EdCodCfo1.CanFocus then
      EdCodCfo1.SetFocus;

    //Abort;
  end;

  //Validação de CodSt2
  if Trim(EstUfeCODSt2.AsString) = '' then
  begin
    messagebox(Handle, 'Situação tributária do ICMS não informado. Campo obrigatória.', 'Validação da UF', MB_OK + MB_ICONWARNING);
    if EdCodSt2.CanFocus then
      EdCodSt2.SetFocus;

    //Abort;
  end;}

  erros := '';

  //Validação de CFOP
  if Trim(EstUfeCODCFO.AsString) = '' then
    erros := erros + ' -CFOP não informado.' + #13;

  //Validação de CodSt2
  if Trim(EstUfeCODSt2.AsString) = '' then
    erros := erros + ' -Situação tributária do ICMS não informado.';

  if ((Trim(EstUfeCODST2.AsString) = '10') or (Trim(EstUfeCODST2.AsString) = '70')) then
  begin
    if EstUfeICMSUB.AsFloat <= 0 then
      erros := erros + ' -Aliquota interna de ICMS não informado.' + #13;

    //if EstUfeMRGMVA.AsFloat <= 0 then
    //  erros := erros + ' -MVA não informado.' + #13;
  end;

  if erros <> '' then
  begin
    showMessage('Os Campos citados abaixo são de preenchimento obrigatório!' + #13 + #13 + #13 + erros);
    Abort;
  end;
end;

procedure TfmManStr2.EstUfeBeforePost(DataSet: TDataSet);
var
  grupos: array of string;
  grupString: string;
  I: Integer;
begin
  inherited;

  if (edUfEmitente.Text = '') then
  begin
    ShowMessage('Favor Informar a UF do Emitente!');
    edUfEmitente.Enabled := True;
    edUfEmitente.SetFocus;
    Abort;
  end;

  SetLength(grupos, 20);
  grupString := '';
  EstUfeGRUPO_ORIGEM.AsString := grupString;
end;

procedure TfmManStr2.EstUfeAfterOpen(DataSet: TDataSet);
begin
  inherited;
  edIVAEnt.Enabled := False;
  edIcmEnt.Enabled := False;
  dxDBColorCurrencyEdit2.Enabled := False;
  edIcmEnt.Enabled := False;
  dxDBColorCurrencyEdit4.Enabled := False;
  CbCalc_MVA.Checked := False;
  edtMva.Enabled := False;
  edtMvaSinief20.Enabled := False;

  edtMva.Text := '';
  edtMvaSinief20.Text := '';
end;

procedure TfmManStr2.EdRegTribChange(Sender: TObject);
begin
  inherited;
  if ((EstUfe.FieldByName('CodRegTrib').AsString = '3') and (EstUfe.FieldByName('SIGUFE').Text <> 'MT')) then
    CbCalc_MVA.Enabled := True
  else
    CbCalc_MVA.Enabled := False;

  if (EstUfe.FieldByName('CodRegTrib').AsString = '3') then
  begin
    EstSt2.Active := False;
    EstSt2.sql.Text := 'select * from estst2 est ' +
      ' where lengthstr(est.codst2) = 2 ' +
      ' and est.nomst2 like ' + QuotedStr('%TRIBUTARIA%') +
      ' or (codst2 = 90)  ' +
      ' order by  ' +
      ' est.codst2';
    EstSt2.Active := True;
  end
  else
  begin
    EstSt2.Active := False;
    EstSt2.sql.Text := 'select * from estst2 est' +
      ' where lengthstr(est.codst2) = 3' +
      ' or (codst2 = 90)' +
      ' order by' +
      ' est.codst2';
    EstSt2.Active := True;
  end;

end;

procedure TfmManStr2.CbCalc_MVAClick(Sender: TObject);
begin
  inherited;

  edIVAEnt.Enabled := CbCalc_MVA.Checked;
  dxDBColorCurrencyEdit2.Enabled := CbCalc_MVA.Checked;
  edtMva.Enabled := CbCalc_MVA.Checked;
  edtMvaSinief20.Enabled := CbCalc_MVA.Checked;
  edIcmEnt.Enabled := CbCalc_MVA.Checked;
  dxDBColorCurrencyEdit4.Enabled := CbCalc_MVA.Checked;
  BbCalc_MVA.Enabled := CbCalc_MVA.Checked;
  btnAplicar.Enabled := CbCalc_MVA.Checked;

end;

procedure TfmManStr2.EstUfeBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (EstStr.State in [dsinsert, dsEdit]) then
  begin
    ShowMessage('Existem Informações ainda não confirmadas, favor salvar o registro antes de prosseguir');
    EdCodStr.SetFocus;
    Abort;
  end;
end;

procedure TfmManStr2.EstUfeAfterInsert(DataSet: TDataSet);
var
  tipo: string;
begin
  inherited;
  if (EstStr.FieldByName('TipStr').AsString = 'Saida') then
  begin
    tipo := UpperCase(fmManGDB.BuscaSimples('GEREMP', 'TIPEMP', 'CODEMP = ' + IntToStr(GEmp_Id), ''));

    EstUfe.Edit;
    if (tipo = 'SIMPLES NACIONAL - EXEESSO DE SUBLIMITE DE RECEITA BRUTA') then
    begin
      EstUfe.FieldByName('CODREGTRIB').AsInteger := 2;
      CbCalc_MVA.Enabled := False;
    end
    else if (tipo = 'SIMPLES NACIONAL') then
    begin
      EstUfe.FieldByName('CODREGTRIB').AsInteger := 1;
      CbCalc_MVA.Enabled := False;
    end
    else if ((tipo = 'REGIME NORMAL') or (tipo = 'NORMAL')) then
    begin
      EstUfe.FieldByName('CODREGTRIB').AsInteger := 3;
      CbCalc_MVA.Enabled := True;
    end;
    //desabilita o controle quando regra de saida
    //EdRegTrib.Enabled := False;
  end
  else
    EdRegTrib.Enabled := True;

  EdSigUfe.SetFocus;
end;

procedure TfmManStr2.EstUfeAfterPost(DataSet: TDataSet);
begin
  inherited;
  edUfEmitente.Enabled := False;
  calcula;
end;

procedure TfmManStr2.EdSigUfeExit(Sender: TObject);
begin
  inherited;
  if (estufe.state in [dsEdit, dsInsert]) then
  begin
    if EdSigUfe.Text <> '' then
    begin
      EstUfe.FieldByName('ICM_INTEREST').AsString :=
        fmManGDB.BuscaSimples('GERICM', 'PERICM', ' SIGUFE = ' + QuotedStr(EdSigUfe.Text));
      EstUfe.FieldByName('ICM_INTER_SINIEF').AsString :=
        fmManGDB.BuscaSimples('GERICM', 'REDINT', ' SIGUFE = ' + QuotedStr(EdSigUfe.Text));
    end;
  end;
end;

procedure TfmManStr2.EstUfeAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if ((EstUfe.FieldByName('CodRegTrib').AsString = '3') and (EstUfe.FieldByName('SIGUFE').Text <> 'MT')) then
    CbCalc_MVA.Enabled := True
  else
    CbCalc_MVA.Enabled := False;

  reducao;

  calcula;

  if (EstUfe.FieldByName('CodRegTrib').AsString = '3') then
  begin
    EstSt2.Active := False;
    EstSt2.sql.Text := 'select * from estst2 est ' +
      ' where lengthstr(est.codst2) = 2 ' +
      ' and est.nomst2 like ' + QuotedStr('%TRIBUTARIA%') +
      ' or (codst2 = 90)  ' +
      ' order by  ' +
      ' est.codst2';
    EstSt2.Active := True;
  end
  else
  begin
    EstSt2.Active := False;
    EstSt2.sql.Text := 'select * from estst2 est' +
      ' where lengthstr(est.codst2) = 3' +
      ' or (codst2 = 90)' +
      ' order by' +
      ' est.codst2';
    EstSt2.Active := True;
  end;
end;

procedure TfmManStr2.btnAplicarClick(Sender: TObject);
begin
  inherited;
  EstUfe.FieldByName('ICMSUB').AsFloat := EstUfe.FieldByName('ICM_DENT_UF').AsFloat;
  EstUfe.FieldByName('MRGMVA').AsString := edtMva.Text;
  EstUfe.FieldByName('MRGMVA_SINIEF').AsString := edtMvaSinief20.Text;
end;

procedure TfmManStr2.EstUfeSIGUFEChange(Sender: TField);
begin
  inherited;
  if ((EstUfe.FieldByName('CodRegTrib').AsString = '3') and (EstUfe.FieldByName('SIGUFE').Text <> 'MT')) then
    CbCalc_MVA.Enabled := True
  else
    CbCalc_MVA.Enabled := False;
end;

procedure TfmManStr2.EdCodCfo1Exit(Sender: TObject);
var
  dest: Integer;
  cfop: string;
  erro: boolean;
begin
  inherited;

  erro := False;

  if (EdSigUfe.Text = 'EX') then
    dest := 3
  else if (EdSigUfe.Text = edUfEmitente.Text) then
    dest := 1
  else if (EdSigUfe.Text <> edUfEmitente.Text) then
    dest := 2;

  cfop := Copy(EdCodCfo1.Text, 1, 1);

  if (UpperCase(EdTipStr.Text) = 'ENTRADA') then
  begin
    case dest of
      1: erro := cfop <> '1';
      2: erro := cfop <> '2';
      3: erro := cfop <> '3';
    end;
  end;

  if (UpperCase(EdTipStr.Text) = 'SAIDA') then
  begin
    case dest of
      1: erro := cfop <> '5';
      2: erro := cfop <> '6';
      3: erro := cfop <> '7';
    end;
  end;

  if (erro = True) then
  begin
    if (UpperCase(EdTipStr.Text) = 'ENTRADA') then
      ShowMessage('Há inconsistências no código CFOP' + #13 +
        'O primeiro Digito do CFOP deve estar entre:' + #13 + #13 +
        '1 - Dentro do Estado' + #13 +
        '2 - Fora do Estado' + #13 +
        '3 - Exterior')
    else
      ShowMessage('Há inconsistências no código CFOP' + #13 +
        'O primeiro Digito do CFOP deve estar entre:' + #13 + #13 +
        '5 - Dentro do Estado' + #13 +
        '6 - Fora do Estado' + #13 +
        '7 - Exterior');
  end;
end;

procedure TfmManStr2.edRedSubChange(Sender: TObject);
begin
  inherited;
  if Trim(edRedSub.Text) <> '' then
    if StrToFloat(edRedSub.Text) > 0 then
    begin
      edBasesb1.Enabled := False;
      estUfe.FieldByName('BASESB').AsFloat := 100.00;
    end
    else
      edBasesb1.Enabled := True
  else
    edBasesb1.Enabled := True;
end;

procedure TfmManStr2.EstStrBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if StrToInt(fmManGDB.BuscaSimples('ESTPRO', 'TOT', '', 'SELECT COUNT(1) TOT FROM estpro pro WHERE pro.codsts = ' +
    QuotedStr(EstStrCODSTR.AsString))) > 0 then
  begin
    messagebox(handle, 'Regra de substituição está em uso e não poderá ser excluida. Verifique no cadastro do produto e tente novamente.',
      'Validação de exlusão', mb_ok + MB_ICONINFORMATION);
    Abort;
  end;
end;

procedure TfmManStr2.BitBtn1Click(Sender: TObject);
begin
  inherited;
   try
      begin
         fmLogST := TfmLogST.Create(Self,EstStrCODSTR.AsString, EstStrTIPSTR.AsString);
         fmLogST.ShowModal;
      end
   finally
      FreeAndNil(fmLogST);
   end
end;

end.

