unit ManIcm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwriched, dxDBEdtr,
  dxDBColorLookupEdit, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorEdit, dxColorPickEdit, dxColorEdit, DBGrids,clipbrd;

type
  TfmManIcm = class(TfmPadrao)
    pcIcm: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TQuery;
    nvIcm: ThDBNavigator;
    EstIcm: TQuery;
    DsIcm: TDataSource;
    UpIcm: TUpdateSQL;
    Label12: TLabel;
    Shape11: TShape;
    Panel3: TPanel;
    grIcm: ThGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdPsqNomIcm: TdxColorEdit;
    EdPsqCodIcm: TdxColorEdit;
    Label8: TLabel;
    Shape2: TShape;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape3: TShape;
    EdPsqTipIcm: TdxColorPickEdit;
    Label11: TLabel;
    Shape7: TShape;
    Shape1: TShape;
    Label54: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdRedIcm: TdxDBColorCurrencyEdit;
    Label17: TLabel;
    EdBasIcm: TdxDBColorCurrencyEdit;
    EstIcmTIPICM: TStringField;
    EstIcmNOMICM: TStringField;
    EstIcmTRBICM: TStringField;
    EstIcmPERICM: TFloatField;
    EstIcmREDICM: TFloatField;
    EstIcmRECICM: TFloatField;
    EstIcmBASICM: TFloatField;
    EstIcmINCREV: TFloatField;
    EstIcmINCFIN: TFloatField;
    EstIcmITECON: TStringField;
    EstIcmCODST1: TStringField;
    Label23: TLabel;
    EdCodSt2: TdxDBColorEdit;
    CbNomSt2: TdxDBColorLookupEdit;
    EstSt2: TQuery;
    EstSt2NOMST2: TStringField;
    EstSt1: TQuery;
    EstSt1NOMST1: TStringField;
    EstSt1CODST1: TStringField;
    DsSt1: TDataSource;
    DsSt2: TDataSource;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    dbReport: TppDetailBand;
    ppCodIcm: TppDBText;
    ppNomIcm: TppDBText;
    ppTipIcm: TppDBText;
    ppPerIcm: TppDBText;
    ppRedIcm: TppDBText;
    ppRecIcm: TppDBText;
    ppBasIcm: TppDBText;
    ppIncRev: TppDBText;
    ppTrbIcm: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppIncFin: TppDBText;
    ppLabel17: TppLabel;
    ppCodSt1: TppDBText;
    ppCodSt2: TppDBText;
    EstIcmCODICM: TStringField;
    ppLabel45: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    EstIcmCODST2: TStringField;
    EstSt2CODST2: TStringField;
    Label22: TLabel;
    EdCodSt1: TdxDBColorEdit;
    CbNomSt1: TdxDBColorLookupEdit;
    EdTrbIcm: TdxDBColorPickEdit;
    Label3: TLabel;
    EdRecIcm: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Shape6: TShape;
    Shape8: TShape;
    Label2: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    EdIncRev: TdxDBColorCurrencyEdit;
    EdIncFin: TdxDBColorCurrencyEdit;
    Shape9: TShape;
    Label28: TLabel;
    edUfEmitente: TdxDBColorEdit;
    cbNomUfEmit: TdxDBColorLookupEdit;
    Panel1: TPanel;
    Shape5: TShape;
    Shape4: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdCodIcm: TdxDBColorEdit;
    EdNomIcm: TdxDBColorEdit;
    EdTipIcm: TdxDBColorPickEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    sqlDet_old: TQuery;
    dsDet: TDataSource;
    EstIcmUFEMITENTE: TStringField;
    sqlDet_oldCODICM: TStringField;
    sqlDet_oldTIPICM: TStringField;
    sqlDet_oldNOMICM: TStringField;
    sqlDet_oldTRBICM: TStringField;
    sqlDet_oldPERICM: TFloatField;
    sqlDet_oldREDICM: TFloatField;
    sqlDet_oldRECICM: TFloatField;
    sqlDet_oldBASICM: TFloatField;
    sqlDet_oldINCREV: TFloatField;
    sqlDet_oldINCFIN: TFloatField;
    sqlDet_oldITECON: TStringField;
    sqlDet_oldCODST1: TStringField;
    sqlDet_oldCODST2: TStringField;
    sqlDet_oldUFEMITENTE: TStringField;
    DsGerUfe: TwwDataSource;
    GerUfe: TwwQuery;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    sqlDet_oldNOMUFE: TStringField;
    upDet: TUpdateSQL;
    FINREGTRIB: TwwQuery;
    FINREGTRIBNUMREGTRIB: TIntegerField;
    FINREGTRIBNOMREGTRIB: TStringField;
    FINREGTRIBDESCREG: TMemoField;
    dsFINREGTRIB: TwwDataSource;
    Label27: TLabel;
    EdRegTrib: TdxDBColorLookupEdit;
    EstIcmCODREGTRIB: TIntegerField;
    EstIcmID_ESTICM: TIntegerField;
    sqlDet_oldCODREGTRIB: TIntegerField;
    sqlDet_oldID_ESTICM: TIntegerField;
    ckStatus: TDBCheckBox;
    EstIcmFLGATIVO: TSmallintField;
    edPsqStatus: TdxColorPickEdit;
    Label34: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure EstIcmNewRecord(DataSet: TDataSet);
    procedure grIcmDblClick(Sender: TObject);
    procedure nvIcmImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nvIcmSalva(Sender: TObject);
    procedure EdCodSt2Exit(Sender: TObject);
    procedure EdRedIcmChange(Sender: TObject);
    procedure EstIcmAfterScroll(DataSet: TDataSet);
    procedure EstIcmAfterOpen(DataSet: TDataSet);
    procedure sqlDet_oldNewRecord(DataSet: TDataSet);
    procedure DsIcmStateChange(Sender: TObject);
    procedure sqlDet_oldBeforePost(DataSet: TDataSet);
    procedure EstIcmBeforePost(DataSet: TDataSet);
    procedure EdTipIcmChange(Sender: TObject);
    procedure EdRegTribChange(Sender: TObject);
    procedure ckStatusClick(Sender: TObject);
  private
    {Private declarations}
    procedure ValidaICMS;
    procedure SituacaoTributaria;
    
  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;

    procedure localiza(regra: string; readOnly: Boolean; tipo: string);
  end;

var
  fmManIcm: TfmManIcm;

implementation

uses Bbgeral, BbMensag, ManPri, Fpreview, mangdb,bbfuncao;

{$R *.DFM}

procedure TfmManIcm.localiza(regra: string; readOnly: Boolean; tipo: string);
begin
  EdPsqTipIcm.Text := tipo;
  EdPsqCodIcm.Text := regra;
  BbPesquisa.Click;
  pcIcm.Enabled := readOnly;
  nvIcm.Visible := readOnly;

  if regra <> '' then
    pcIcm.ActivePageIndex := 1;
end;

procedure TfmManIcm.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * From EstIcm ';
  SituacaoTributaria;
  pcIcm.ActivePage := pcPag1;
end;

procedure TfmManIcm.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := ' where 1 = 1 ';

  {Ordem}
  case rgOrdem.ItemIndex of
    0: sOrdem := ' Order by CodIcm';
    1: sOrdem := ' Order by NomIcm';
    2: sOrdem := ' Order by TipIcm';
  end;


  if (edPsqStatus.Text = 'Ativo')then
  begin
      sFiltro := sFiltro + ' and coalesce(flgativo,1) = 1 ';
  end
  else if (edPsqStatus.Text = 'Inativo')then
  begin
      sFiltro := sFiltro + ' and coalesce(flgativo,1) = 0 ';
  end;

  if (EdPsqTipIcm.Text <> '') and (EdPsqTipIcm.Text <> 'Todos') then
    sFiltro := sFiltro + ' and TipIcm = ''' + EdPsqTipIcm.Text + '''';

  if (EdPsqCodIcm.Text <> '') then
  begin
    if pos('Where', sFiltro) = 0 then
       sFiltro := sFiltro + ' and CodIcm = ''' + EdPsqCodIcm.Text + '''';
  end;

  if Rgbusca.ItemIndex = 0 then
  begin
    if (EdPsqNomIcm.Text <> '') then
      sFiltro := sFiltro + ' and NomIcm LIKE ''' + EdPsqNomIcm.Text + '%''';
  end
  else
  begin
    if (EdPsqNomIcm.Text <> '') then
      sFiltro := sFiltro + ' and NomIcm LIKE ''%' + EdPsqNomIcm.Text + '%''';
  end;

  with EstIcm, SQL do
  begin
    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;
  end;

  sqlDet_old.SQL.Text := 'Select icm.*,ufe.nomufe '+
                         '   From EstIcm icm '+
                         '   left join GERUFE ufe on ufe.sigufe = icm.ufemitente '+
                         '  where 1 = 1 '+
                         '    and codicm = :codicm '+
                         '    and tipicm = :tipicm ';

  if (edPsqStatus.Text = 'Ativo')then
  begin
      sqlDet_old.SQL.Text := sqlDet_old.SQL.Text + ' and coalesce(flgativo,1) = 1 ';
  end
  else
  if (edPsqStatus.Text = 'Inativo')then
  begin
      sqlDet_old.SQL.Text := sqlDet_old.SQL.Text + ' and coalesce(flgativo,1) = 0 ';
  end;

  sqlDet_old.Active := false;
  sqlDet_old.SQL.Text  := sqlDet_old.SQL.Text+sOrdem;
  sqlDet_old.Active := true;

end;

procedure TfmManIcm.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodIcm.SetFocus;
end;

procedure TfmManIcm.dbReportBeforePrint(Sender: TObject);
begin
  inherited;
  ppCodIcm.Caption := PreString(EstIcmCodIcm.Value, 7);
  ppTipIcm.Caption := EstIcmTipIcm.Value;
  ppNomIcm.Caption := EstIcmNomIcm.Value;
end;

procedure TfmManIcm.EstIcmNewRecord(DataSet: TDataSet);
var
  tipo: string;
begin
  inherited;
  if (EstIcm.FieldByName('TipIcm').AsString = 'Saida') then
  begin
    tipo := UpperCase(fmManGDB.BuscaSimples('GEREMP', 'TIPEMP', 'CODEMP = ' + IntToStr(GEmp_Id), ''));

    if (tipo = 'SIMPLES NACIONAL - EXEESSO DE SUBLIMITE DE RECEITA BRUTA') then
    begin
      Esticm.FieldByName('CODREGTRIB').AsInteger := 2;
    end
    else if (tipo = 'SIMPLES NACIONAL') then
    begin
      EstIcm.FieldByName('CODREGTRIB').AsInteger := 1;
    end
    else if ((tipo = 'REGIME NORMAL') or (tipo = 'NORMAL')) then
    begin
      EstIcm.FieldByName('CODREGTRIB').AsInteger := 3;
    end;
    //desabilita o controle quando regra de saida
    //EdRegTrib.Enabled := False;
  end
  else
    EdRegTrib.Enabled := True;

  try
    EstIcm.DisableControls;

    EstIcmPerIcm.Value := 0;
    EstIcmRedIcm.Value := 0;
    EstIcmIncRev.Value := 0;
    EstIcmRecIcm.Value := 100;
    EstIcmIncFin.Value := 100;
    EstIcmBasIcm.Value := 100;
    EstIcmTrbIcm.Value := 'Sim';
    EstIcmIteCon.Value := 'Nao';
    EstIcmTipIcm.Value := 'Saida';

  finally
    EstIcm.EnableControls;
  end;

  PcIcm.ActivePage := pcPag2;

  EdCodIcm.Enabled := True;
  EdTipIcm.Enabled := True;

  EdCodIcm.Font.Style := [];
  EdTipIcm.Font.Style := [];

  EdCodIcm.Setfocus;

end;

procedure TfmManIcm.grIcmDblClick(Sender: TObject);
begin
  inherited;
  pcIcm.ActivePage := pcPag2;
end;

procedure TfmManIcm.nvIcmImprime(Sender: TObject);
begin
  inherited;

  EstIcm.First;

  if not EstIcm.Eof then
  begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmManIcm);
      fmPreview.ppViewer.Report := ppReport;
      ppReport.PrintToDevices;
      fmPreview.ShowModal;

      if Assigned(ppReport.AfterPrint) then
        ppReport.AfterPrint(Sender);

    finally

      FreeAndNil(fmPreview);

    end;
  end;
end;

procedure TfmManIcm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManIcm.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManIcm := nil;
end;

procedure TfmManIcm.nvIcmSalva(Sender: TObject);
begin
  inherited;
  with ESTICM do
  begin

    fmManGDB.dbMain.StartTransaction;

    try

      ApplyUpdates;

      fmManGDB.dbMain.Commit;

    except

      fmManGDB.dbMain.Rollback;

      if ESTICM.State <> dsBrowse then
        ESTICM.CancelUpdates;

      raise;

    end;

    CommitUpdates;

  end;

end;

procedure TfmManIcm.EdCodSt2Exit(Sender: TObject);
begin
  inherited;

  if (esticm.State in [dsInsert, dsEdit]) then
  begin

    if CbNomSt2.Text = '' then
    begin
      if (EdCodSt2.Text <> '') then
      begin
        MessageBox(Handle, 'Somente será aceita Situação Tributária para Operação Própria', 'ATENÇÃO', MB_DEFBUTTON1 + MB_OK);
        EdCodSt2.SetFocus;
        esticm.FieldByName('CODST2').AsString := '';
      end;
    end;

  end;
end;

procedure TfmManIcm.EdRedIcmChange(Sender: TObject);
begin
  inherited;
  if Trim(EdRedIcm.Text) <> '' then
  begin
    if StrToFloat(EdRedIcm.Text) > 0 then
    begin
      EdBasIcm.Enabled := False;
      esticm.FieldByName('BASICM').AsFloat := 100.00;
    end
    else
      EdBasIcm.Enabled := True;
  end
  else
    EdBasIcm.Enabled := True;
end;

procedure TfmManIcm.EstIcmAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if Trim(EdRedIcm.Text) <> '' then
  begin
    if StrToFloat(EdRedIcm.Text) > 0 then
      EdBasIcm.Enabled := False
    else
      EdBasIcm.Enabled := True;
  end    
  else
    EdBasIcm.Enabled := True;


  SituacaoTributaria;
end;

procedure TfmManIcm.EstIcmAfterOpen(DataSet: TDataSet);
begin
  inherited;
  esticm.Active := true;
end;

procedure TfmManIcm.sqlDet_oldNewRecord(DataSet: TDataSet);
var

  multiplasUfs: string;
begin
  inherited;

  PcIcm.ActivePage := pcPag2;

  EdCodIcm.Enabled := True;
  EdTipIcm.Enabled := True;

  EdCodIcm.Font.Style := [];
  EdTipIcm.Font.Style := [];

  EdCodIcm.Setfocus;

end;

procedure TfmManIcm.DsIcmStateChange(Sender: TObject);
begin
  inherited;

  if esticm.State <> dsBrowse then
  begin

    if esticmCodIcm.Value <> '' then
    begin

      EdCodIcm.Enabled := False;
      EdTipIcm.Enabled := False;
      edUfEmitente.Enabled := False;
      cbNomUfEmit.Enabled := False;

      EdCodIcm.Font.Style := [fsBold];
      EdTipIcm.Font.Style := [fsBold];

    end
    else
    begin

      EdCodIcm.Enabled := True;
      EdTipIcm.Enabled := True;
      edUfEmitente.Enabled := True;
      cbNomUfEmit.Enabled := True;

      EdCodIcm.Font.Style := [];
      EdTipIcm.Font.Style := [];

    end;
  end;
end;

procedure TfmManIcm.ValidaICMS;
begin
  if (trim(esticmCODST2.AsString) = '10') or
    (trim(esticmCODST2.AsString) = '60') or
    (trim(esticmCODST2.AsString) = '70') or
    (trim(esticmCODST2.AsString) = '201') or
    (trim(esticmCODST2.AsString) = '202') or
    (trim(esticmCODST2.AsString) = '500') then
  begin
    messagebox(handle, 'Apenas permitido informar ''''Situação Tributária'''' de Operação própria. Verifique e tente novamente.', 'Validação da regra de ICMS',
      mb_ok + MB_ICONEXCLAMATION);

    if EdCodSt2.CanFocus then
      edCodSt2.SetFocus;
    Abort;

  end;
end;

procedure TfmManIcm.sqlDet_oldBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaICMS;
end;

procedure TfmManIcm.EstIcmBeforePost(DataSet: TDataSet);
begin
  inherited;

  ValidaICMS;
end;

procedure TfmManIcm.SituacaoTributaria;
var
  stBase: string;

begin

  Qusql.active := False;
  qusql.sql.Text := 'Select TipEmp from Geremp where codemp = ' + inttostr(GEmp_Id);
  qusql.Active := True;

  estst2.Active := false;

  if (trim(EdTipIcm.Text) = 'Saida') then
  begin

    if  pos('Simples Nacional',trim(EdRegTrib.Text)) > 0 then
      Estst2.sql.text := 'Select CODST2, (CODST2 || ' + QuotedStr('   ') + ' || NOMST2) as NOMST2 From EstSt2 ' +
                         ' where lengthstr(Ltrim(Rtrim(CODST2))) = 3 ' +
                         '   and CodST2 not in (201, 202, 203, 500)  ' +
                         '  order by CodSt2'
    else
      Estst2.sql.text := 'Select CODST2, (CODST2 || ' + QuotedStr('   ') + ' || NOMST2) as NOMST2 From EstSt2 ' +
                         ' where lengthstr(Ltrim(Rtrim(CODST2))) = 2 ' +
                         ' and codst2 not in (30, 60, 70) ' +
                         ' order by CodSt2 ';
  end
  else
  begin

    if  pos('Simples Nacional',trim(EdRegTrib.Text)) > 0 then
      Estst2.sql.text := 'Select CODST2, (CODST2 || ' + QuotedStr('   ') + ' || NOMST2) as NOMST2 From EstSt2 ' +
                         ' where lengthstr(Ltrim(Rtrim(CODST2))) = 3' +
                         ' and codst2 not in (201, 202, 203, 500)' +
                         ' order by CodSt2'
    else
      Estst2.sql.text := 'Select CODST2, (CODST2 || ' + QuotedStr('   ') + ' || NOMST2) as NOMST2 From EstSt2 ' +
                         ' where lengthstr(Ltrim(Rtrim(CODST2))) = 2 ' +
                         ' and codst2 not in (30, 60, 70) ' +
                         ' order by CodSt2 ';
  end;

  Estst2.Active := True;

  GerUfe.Active := True;
  FINREGTRIB.Active := True;
end;

procedure TfmManIcm.EdTipIcmChange(Sender: TObject);
begin
  inherited;
SituacaoTributaria;
end;

procedure TfmManIcm.EdRegTribChange(Sender: TObject);
begin
  inherited;
SituacaoTributaria;
end;

procedure TfmManIcm.ckStatusClick(Sender: TObject);
begin
  inherited;

  if(EstIcm.State in [dsEdit])then
  begin
    if (ckstatus.Checked = false)then
    begin

      if (validaUsoICMS(EstIcmCODICM.AsString,EstIcmTIPICM.AsString)) then
      begin
         MessageBox(handle, 'Esta regra não pode ser inativada por estar em uso. Os produtos estão listados na ''Área de transferência''.','validação da regra de ICMS',mb_ok+MB_ICONEXCLAMATION);
         ckstatus.Checked := true;
         abort;
      end;
      
    end;
  end;

end;

end.

