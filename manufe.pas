unit ManUfe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxDBColorLookupEdit, dxDBColorCurrencyEdit, dxDBColorEdit, dxColorEdit;

type
  TfmManUfe = class(TfmPadrao)
    UpUfe: TUpdateSQL;
    GerUfe: TwwQuery;
    DsUfe: TwwDataSource;
    pcUfe: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    EdPsqSigUfe: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Bbselecionar: TBitBtn;
    Panel3: TPanel;
    grUfe: ThGrid;
    Label3: TLabel;
    Panel4: TPanel;
    Shape9: TShape;
    Label5: TLabel;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomUfe: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomUfe: TdxColorEdit;
    EdSigUfe: TdxDBColorEdit;
    Label12: TLabel;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    Shape4: TShape;
    Shape2: TShape;
    GerUfeDSCUFE: TFloatField;
    Label21: TLabel;
    EdDscUfe: TdxDBColorCurrencyEdit;
    Shape1: TShape;
    Shape3: TShape;
    Panel6: TPanel;
    nvIcm: ThDBNavigator;
    Panel5: TPanel;
    grIcm: ThGrid;
    Label6: TLabel;
    GerIcm: TwwQuery;
    GerIcmSIGUFE: TStringField;
    GerIcmSEQICM: TIntegerField;
    GerIcmPERICM: TFloatField;
    DsIcm: TwwDataSource;
    UpIcm: TUpdateSQL;
    Label8: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    quSql: TwwQuery;
    Shape5: TShape;
    Panel1: TPanel;
    nvUfe: ThDBNavigator;
    GerUfeNROUFE: TIntegerField;
    EdSubTrb: TdxDBColorEdit;
    Label11: TLabel;
    GerUfeSUBTRB: TStringField;
    GerUfeDSCCOM: TFloatField;
    Label13: TLabel;
    EdDscCom: TdxDBColorCurrencyEdit;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dbReport: TppDetailBand;
    ppSigUfe: TppDBText;
    ppNomUfe: TppDBText;
    ppDBPipeline: TppDBPipeline;
    ppDscUfe: TppDBText;
    ppLabel7: TppLabel;
    ppDscCom: TppDBText;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    DsGru: TwwDataSource;
    EstGru: TwwQuery;
    EstGruCODGRU: TStringField;
    EstGruNOMGRU: TStringField;
    EstSub: TwwQuery;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMSUB: TStringField;
    DsSub: TwwDataSource;
    DsPro: TwwDataSource;
    EstPro: TwwQuery;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProDSRPRO: TStringField;
    FinTmo: TwwQuery;
    FinTmoNOMTMO: TStringField;
    FinTmoCODTMO: TIntegerField;
    DsTmo: TwwDataSource;
    Panel7: TPanel;
    nvPro: ThDBNavigator;
    Shape6: TShape;
    Label14: TLabel;
    Panel8: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    EdCodPro: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    CbNomPro: TdxDBColorLookupEdit;
    CbNomSub: TdxDBColorLookupEdit;
    CbNomGru: TdxDBColorLookupEdit;
    EdDscPro: TdxDBColorEdit;
    pnText: TPanel;
    Panel9: TPanel;
    grPro: ThGrid;
    GerPro: TwwQuery;
    dsGer: TwwDataSource;
    GerProSIGUFE: TStringField;
    GerProSEQPRO: TIntegerField;
    GerProCODCLP: TStringField;
    GerProCODGRU: TStringField;
    GerProCODSUB: TStringField;
    GerProCODPRO: TStringField;
    GerProDSCPRO: TStringField;
    GerProNROPRO: TIntegerField;
    GerProFLGTRG: TStringField;
    GerProCODITE: TStringField;
    GerUfeQTDICM: TIntegerField;
    GerUfeSEQICM: TIntegerField;
    GerUfeFLGTRG: TStringField;
    GerUfeQTDPRO: TIntegerField;
    GerUfeSEQPRO: TIntegerField;
    UpPro: TUpdateSQL;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grUfeDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure GerUfeNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure GerIcmBeforeEdit(DataSet: TDataSet);
    procedure GerIcmAfterCancel(DataSet: TDataSet);
    procedure GerIcmAfterPost(DataSet: TDataSet);
    procedure GerIcmNewRecord(DataSet: TDataSet);
    procedure GerUfeBeforeEdit(DataSet: TDataSet);
    procedure GerUfeAfterCancel(DataSet: TDataSet);
    procedure GerUfeAfterPost(DataSet: TDataSet);
    procedure EdPerIcmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nvUfeImprime(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EdDscProKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDscProMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GerProNewRecord(DataSet: TDataSet);
    procedure Panel8Exit(Sender: TObject);
    procedure nvProExclui(Sender: TObject);
    procedure dsGerDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsUfeDataChange(Sender: TObject; Field: TField);
    procedure DsIcmDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro: string;
  end;

var
  fmManUfe: TfmManUfe;

implementation

uses Fpreview, Bbgeral, Bbmensag, ManPri, AuxIni, AuxPsq;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimenta��o de Janelas
*************************************************************************}

procedure TfmManUfe.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * From GerUfe ';
end;

procedure TfmManUfe.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
    0: sOrdem := ' Order by SigUfe';
    1: sOrdem := ' Order by NomUfe';
  end;

  if (EdpsqSigUfe.Text <> '') then
    sFiltro := ' Where SigUfe = ''' + EdpsqSigUfe.Text + '''';

  if Rgbusca.ItemIndex = 0 then
  begin

    if (EdpsqNomUfe.Text <> '') then
      sFiltro := ' Where NomUfe LIKE ''' + EdpsqNomUfe.Text + '%''';

  end
  else
  begin

    if (EdpsqNomUfe.Text <> '') then
      sFiltro := ' Where NomUfe LIKE ''%' + EdpsqNomUfe.Text + '%''';

  end;

  with GerUfe, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;
end;

procedure TfmManUfe.GerUfeNewRecord(DataSet: TDataSet);
begin
  inherited;

  GerUfe.DisableControls;

  GerUfeDscUfe.Value := 0;
  GerUfeDscCom.Value := 0;

  GerUfe.EnableControls;

  PcUfe.ActivePage := pcPag2;

  EdSigUfe.Enabled := True;

  EdSigUfe.Font.Style := [];

  EdPerIcm.Enabled := False;

  EdPerIcm.Font.Style := [fsBold];

  nvIcm.Enabled := False;
  grIcm.Enabled := False;

  GerIcm.Close;
  GerIcm.Params[0].AsString := GerUfeSigUfe.Value;
  GerIcm.Open;

  EdSigUfe.SetFocus;

end;

procedure TfmManUfe.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqSigUfe.SetFocus;
end;

procedure TfmManUfe.grUfeDblClick(Sender: TObject);
begin
  inherited;
  pcUfe.ActivePage := pcPag2;
end;

procedure TfmManUfe.FormShow(Sender: TObject);
begin
  inherited;

  PcUfe.ActivePage := PcPag1;

  EdPsqSigUfe.SetFocus;

end;

procedure TfmManUfe.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomUfe.SetFocus;
end;

procedure TfmManUfe.GerIcmBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := False;
  EdDscUfe.Enabled := False;

  EdNomUfe.Font.Style := [fsBold];
  EdDscUfe.Font.Style := [fsBold];

  nvUfe.Enabled := False;

end;

procedure TfmManUfe.GerIcmAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := True;
  EdDscUfe.Enabled := True;

  EdNomUfe.Font.Style := [];
  EdDscUfe.Font.Style := [];

  nvUfe.Enabled := True;

end;

procedure TfmManUfe.GerIcmAfterPost(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := True;
  EdDscUfe.Enabled := True;

  EdNomUfe.Font.Style := [];
  EdDscUfe.Font.Style := [];

  nvUfe.Enabled := True;

end;

procedure TfmManUfe.GerIcmNewRecord(DataSet: TDataSet);
begin
  inherited;

  GerIcm.DisableControls;

  GerIcmSigUfe.Value := GerUfeSigUfe.Value;

  with quSql, SQL do
  begin

    Close;
    Text := ' Select * From GerIcm ' +
      ' Where SigUfe = ''' + GerUfeSigUfe.Value + '''' +
      ' Order by SigUfe,SeqIcm';
    Open;
    Last;

  end;

  GerIcmSeqIcm.Value := quSql.FieldByName('SeqIcm').AsInteger + 1;

  GerIcm.EnableControls;

  EdNomUfe.Enabled := False;
  EdDscUfe.Enabled := False;

  EdNomUfe.Font.Style := [fsBold];
  EdDscUfe.Font.Style := [fsBold];

  nvUfe.Enabled := False;

  EdPerIcm.SetFocus;

end;

procedure TfmManUfe.GerUfeBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdPerIcm.Enabled := False;

  EdPerIcm.Font.Style := [fsBold];

  nvIcm.Enabled := False;
  grIcm.Enabled := False;

end;

procedure TfmManUfe.GerUfeAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdPerIcm.Enabled := True;

  EdPerIcm.Font.Style := [];

  nvIcm.Enabled := True;
  grIcm.Enabled := True;

end;

procedure TfmManUfe.GerUfeAfterPost(DataSet: TDataSet);
begin
  inherited;

  EdPerIcm.Enabled := True;

  EdPerIcm.Font.Style := [];

  nvIcm.Enabled := True;
  grIcm.Enabled := True;

end;

procedure TfmManUfe.EdPerIcmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  operac: string;
begin
  inherited;
  if (key = 13) or (key = 40) then
  begin

    if nvIcm.Salvar then
    begin

      if GerIcm.State = dsInsert then
        Operac := 'I';

      if Trim(GerIcmSigUfe.Value) <> '' then
      begin

        nvIcm.SBSalvaClick(Sender);

        if (Operac = 'I') and (not nvIcm.Salvar) then
        begin

          nvIcm.SBIncluiClick(Sender);

          EdPerIcm.SetFocus;

        end;
      end;
    end;
  end;
end;

procedure TfmManUfe.nvUfeImprime(Sender: TObject);
begin
  inherited;

  GerUfe.First;

  if not GerUfe.Eof then
  begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmManUfe);
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

procedure TfmManUfe.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if EdCodGru.Enabled then
    begin

      if Trim(GerProCodGru.Value) <> '' then
        GerProCodGru.Value := FNumZeros(GerProCodGru.Value, 3);

    end;
  end;
end;

procedure TfmManUfe.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if EdCodSub.Enabled then
    begin

      if Trim(GerProCodSub.Value) <> '' then
        GerProCodSub.Value := FNumZeros(GerProCodSub.Value, 4);

    end;
  end;
end;

procedure TfmManUfe.EdCodProExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if EdCodPro.Enabled then
    begin

      if Trim(GerProCodPro.Value) <> '' then
        GerProCodPro.Value := FNumStrZero(GerProCodPro.Value);

    end;
  end;
end;

procedure TfmManUfe.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := GerProCodClp.Value;

      fmAuxIni.TipoPesq := 'G';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if GerPro.State = dsBrowse then
        begin

          if Trim(GerProSigUfe.Value) <> '' then
            GerPro.Edit
          else
            GerPro.Append;

        end;

        GerProCodGru.Value := fmAuxIni.CodGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(GerProCodGru.Value) <> '' then
      EdCodSub.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := GerProCodClp.Value;

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if GerPro.State = dsBrowse then
        begin

          if Trim(GerProSigUfe.Value) <> '' then
            GerPro.Edit
          else
            GerPro.Append;

        end;

        GerProCodGru.Value := fmAuxPsq.CodGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(GerProCodGru.Value) <> '' then
      EdCodSub.SetFocus;

  end;
end;

procedure TfmManUfe.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(GerProCodClp.Value) <> '' then
        fmAuxIni.CodClp := GerProCodClp.Value;
      if Trim(GerProCodGru.Value) <> '' then
        fmAuxIni.CodGru := GerProCodGru.Value;

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if GerPro.State = dsBrowse then
        begin

          if Trim(GerProSigUfe.Value) <> '' then
            GerPro.Edit
          else
            GerPro.Append;

        end;

        GerProCodGru.Value := fmAuxIni.CodGru;
        GerProCodSub.Value := fmAuxIni.CodSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(GerProCodSub.Value) <> '' then
      EdCodPro.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      if Trim(GerProCodClp.Value) <> '' then
        fmAuxPsq.CodClp := GerProCodClp.Value;
      if Trim(GerProCodGru.Value) <> '' then
        fmAuxPsq.CodGru := GerProCodGru.Value;

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if GerPro.State = dsBrowse then
        begin

          if Trim(GerProSigUfe.Value) <> '' then
            GerPro.Edit
          else
            GerPro.Append;

        end;

        GerProCodGru.Value := fmAuxPsq.CodGru;
        GerProCodSub.Value := fmAuxPsq.CodSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(GerProCodSub.Value) <> '' then
      EdCodPro.SetFocus;

  end;
end;

procedure TfmManUfe.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {f1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(GerProCodClp.Value) <> '' then
        fmAuxIni.CodClp := GerProCodClp.Value;
      if Trim(GerProCodGru.Value) <> '' then
        fmAuxIni.CodGru := GerProCodGru.Value;
      if Trim(GerProCodSub.Value) <> '' then
        fmAuxIni.CodSub := GerProCodSub.Value;

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if GerPro.State = dsBrowse then
        begin

          if Trim(GerProSigUfe.Value) <> '' then
            GerPro.Edit
          else
            GerPro.Append;

        end;

        GerProCodClp.Value := fmAuxIni.CodClp;
        GerProCodGru.Value := fmAuxIni.CodGru;
        GerProCodSub.Value := fmAuxIni.CodSub;
        GerProCodPro.Value := fmAuxIni.CodPro;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(GerProCodPro.Value) <> '' then
      EdDscPro.SetFocus;

  end;

  if key = 113 then
  begin {F5 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      if Trim(GerProCodClp.Value) <> '' then
        fmAuxPsq.CodClp := GerProCodClp.Value;
      if Trim(GerProCodGru.Value) <> '' then
        fmAuxPsq.CodGru := GerProCodGru.Value;
      if Trim(GerProCodSub.Value) <> '' then
        fmAuxPsq.CodSub := GerProCodSub.Value;

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if GerPro.State = dsBrowse then
        begin

          if Trim(GerProSigUfe.Value) <> '' then
            GerPro.Edit
          else
            GerPro.Append;

        end;

        GerProCodClp.Value := fmAuxPsq.CodClp;
        GerProCodGru.Value := fmAuxPsq.CodGru;
        GerProCodSub.Value := fmAuxPsq.CodSub;
        GerProCodPro.Value := fmAuxPsq.CodPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(GerProCodPro.Value) <> '' then
      EdDscPro.SetFocus;

  end;
end;

procedure TfmManUfe.EdCodGruKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  pnText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManUfe.EdCodGruMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pnText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManUfe.EdDscProKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  pnText.Caption := ' ';
end;

procedure TfmManUfe.EdDscProMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pnText.Caption := ' ';
end;

procedure TfmManUfe.GerProNewRecord(DataSet: TDataSet);
begin
  inherited;

  GerPro.DisableControls;

  GerProFlgTrg.Value := ' ';
  GerProCodClp.Value := '1';
  GerProSigUfe.Value := GerUfeSigUfe.Value;
  GerProSeqPro.Value := GerUfeSeqPro.Value + 1;
  GerProNroPro.Value := GerUfeQtdPro.Value + 1;

  GerPro.EnableControls;

  EdCodGru.SetFocus;

end;

procedure TfmManUfe.Panel8Exit(Sender: TObject);
var
  Operac: string;
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(GerProDscPro.Value) = '' then
      fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdDscPro);

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select Count(*) as Reg From EstPro' +
        ' Where EstPro.CodClp = :CodClp' +
        '   and EstPro.CodGru = :CodGru' +
        '   and EstPro.CodSub = :CodSub' +
        '   and EstPro.CodPro = :CodPro';

      with Params do
      begin

        Params[0].AsString := GerProCodClp.Value;
        Params[1].AsString := GerProCodGru.Value;
        Params[2].AsString := GerProCodSub.Value;
        Params[3].AsString := GerProCodPro.Value;

      end;

      Open;

    end;

    if quSQL.FieldbyName('Reg').AsInteger > 0 then
    begin

      if GerPro.State = dsInsert then
        Operac := 'dsInsert';

      nvPro.SBSalvaClick(Sender);

      if (Operac = 'dsInsert') and (not nvPro.Salvar) then
      begin

        nvPro.SBIncluiClick(Sender);

        EdCodGru.SetFocus;

      end;

    end
    else
      fmsgErro('Item Informado n�o Encontrado.', EdCodGru);

  end;
end;

procedure TfmManUfe.nvProExclui(Sender: TObject);
var
  sSigUfe: string;
  sSeqPro: integer;
begin
  inherited;

  sSigUfe := GerUfeSigUfe.Value;
  sSeqPro := GerProSeqPro.Value;

  GerUfe.Close;
  GerUfe.Open;

  if Trim(sSigUfe) <> '' then
  begin

    GerUfe.Locate('SigUfe', sSigUfe, [LoPartialKey]);

    if sSeqPro > 0 then
      GerPro.Locate('SigUfe;SeqPro', VarArrayOf([sSigUfe, sSeqPro]), [loPartialKey]);

  end;
end;

procedure TfmManUfe.dsGerDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if EstGru.Params[0].AsString <> GerProCodClp.Value then
  begin

    EstGru.Close;
    EstGru.Params[0].AsString := GerProCodClp.Value;
    EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> GerProCodGru.Value) or (EstSub.Params[1].AsString <> GerProCodClp.Value) then
  begin

    EstSub.Close;
    EstSub.Params[0].AsString := GerProCodGru.Value;
    EstSub.Params[1].AsString := GerProCodClp.Value;
    EstSub.Open;

  end;

  if (EstPro.Params[0].AsString <> GerProCodClp.Value) or (EstPro.Params[1].AsString <> GerProCodGru.Value) or
    (EstPro.Params[2].AsString <> GerProCodSub.Value) then
  begin

    EstPro.Close;
    EstPro.Params[0].AsString := GerProCodClp.Value;
    EstPro.Params[1].AsString := GerProCodGru.Value;
    EstPro.Params[2].AsString := GerProCodSub.Value;
    EstPro.Open;

  end;
end;

procedure TfmManUfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManUfe.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManUfe := nil;
end;

procedure TfmManUfe.DsUfeDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if GerPro.Params[0].AsString <> GerUfeSigUfe.Value then
  begin

    GerPro.Close;
    GerPro.Params[0].AsString := GerUfeSigUfe.Value;
    GerPro.Open;

  end;

  if EstGru.Params[0].AsString <> GerProCodClp.Value then
  begin

    EstGru.Close;
    EstGru.Params[0].AsString := GerProCodClp.Value;
    EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> GerProCodGru.Value) or (EstSub.Params[1].AsString <> GerProCodClp.Value) then
  begin

    EstSub.Close;
    EstSub.Params[0].AsString := GerProCodGru.Value;
    EstSub.Params[1].AsString := GerProCodClp.Value;
    EstSub.Open;

  end;

  if (EstPro.Params[0].AsString <> GerProCodClp.Value) or (EstPro.Params[1].AsString <> GerProCodGru.Value) or
    (EstPro.Params[2].AsString <> GerProCodSub.Value) then
  begin

    EstPro.Close;
    EstPro.Params[0].AsString := GerProCodClp.Value;
    EstPro.Params[1].AsString := GerProCodGru.Value;
    EstPro.Params[2].AsString := GerProCodSub.Value;
    EstPro.Open;

  end;

  if not nvUfe.Salvar then
  begin

    if EdSigUfe.Enabled then
    begin

      EdSigUfe.Enabled := False;

      EdSigUfe.Font.Style := [fsBold];

      EdPerIcm.Enabled := True;

      EdPerIcm.Font.Style := [];

      nvIcm.Enabled := True;
      grIcm.Enabled := True;

    end;

    if GerUfeSigUfe.Value <> GerIcmSigUfe.Value then
    begin

      GerIcm.Close;
      GerIcm.Params[0].AsString := GerUfeSigUfe.Value;
      GerIcm.Open;

    end;
  end;
end;

procedure TfmManUfe.DsIcmDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvIcm.Salvar then
  begin

    if not EdNomUfe.Enabled then
    begin

      EdNomUfe.Enabled := True;
      EdDscUfe.Enabled := True;

      EdNomUfe.Font.Style := [];
      EdDscUfe.Font.Style := [];

      nvUfe.Enabled := True;

    end;
  end;
end;

end.
