unit ManIpi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwriched, dxDBEdtr,
  dxDBColorCurrencyEdit, dxDBColorPickEdit, dxDBColorEdit, dxColorPickEdit,
  dxColorEdit, dxDBColorLookupEdit;

type
  TfmManIpi = class(TfmPadrao)
    pcIpi: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TwwQuery;
    nvIpi: ThDBNavigator;
    EstIpi: TwwQuery;
    DsIpi: TwwDataSource;
    UpIpi: TUpdateSQL;
    EstIpiTIPIPI: TStringField;
    EstIpiREGIPI: TStringField;
    EstIpiTRBIPI: TStringField;
    EstIpiPERIPI: TFloatField;
    EstIpiREDIPI: TFloatField;
    EstIpiRECIPI: TFloatField;
    EstIpiBASIPI: TFloatField;
    EstIpiNOMIPI: TStringField;
    Label12: TLabel;
    Shape11: TShape;
    Panel3: TPanel;
    grIpi: ThGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdPsqNomIpi: TdxColorEdit;
    EdPsqCodIpi: TdxColorEdit;
    Label8: TLabel;
    Shape2: TShape;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape3: TShape;
    EdPsqTipIpi: TdxColorPickEdit;
    Label11: TLabel;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdCodIpi: TdxDBColorEdit;
    EdNomIpi: TdxDBColorEdit;
    EdTipIpi: TdxDBColorPickEdit;
    Label3: TLabel;
    EdTrbIpi: TdxDBColorPickEdit;
    Shape7: TShape;
    Shape1: TShape;
    Label54: TLabel;
    EdPerIpi: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdRedIpi: TdxDBColorCurrencyEdit;
    EdRecIpi: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Label17: TLabel;
    EdBasIpi: TdxDBColorCurrencyEdit;
    EdClsIpi: TdxDBColorEdit;
    Label18: TLabel;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dbReport: TppDetailBand;
    ppCodIpi: TppDBText;
    ppNomIpi: TppDBText;
    ppTipIpi: TppDBText;
    ppPerIPi: TppDBText;
    ppRedIpi: TppDBText;
    ppRecIpi: TppDBText;
    ppBasIpi: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppClsIpi: TppDBText;
    ppLabel11: TppLabel;
    ppTrbIpi: TppDBText;
    ppLabel14: TppLabel;
    EstIpiCODIPI: TStringField;
    EstIpiCLSIPI: TStringField;
    ppLabel45: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Label2: TLabel;
    EdPerImp: TdxDBColorCurrencyEdit;
    EstIpiPERIMP: TFloatField;
    EstIpiCODTXF: TStringField;
    EstTxf: TwwQuery;
    EstTxfCODTXF: TStringField;
    EstTxfTIPTXF: TStringField;
    EstTxfDSRTXF: TStringField;
    EstTxfDSCTXF: TStringField;
    DsTxf: TwwDataSource;
    CbNomTxf: TdxDBColorLookupEdit;
    EdCodTxf: TdxDBColorEdit;
    Label5: TLabel;
    EstNcm: TwwQuery;
    DsEstNcm: TwwDataSource;
    EstNcmID_ESTNCM: TIntegerField;
    EstNcmID_ESTSEC: TIntegerField;
    Label9: TLabel;
    EdId_EstNcm: TdxDBColorEdit;
    CbNomNcm: TdxDBColorLookupEdit;
    EstIpiID_ESTNCM: TIntegerField;
    EstNcmNOMNCM: TMemoField;
    EstNcmSIGNCM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure EstIpiNewRecord(DataSet: TDataSet);
    procedure grIpiDblClick(Sender: TObject);
    procedure nvIpiImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nvIpiBeforeSalva(Sender: TObject);
    procedure DsIpiDataChange(Sender: TObject; Field: TField);
    procedure nvIpiSalva(Sender: TObject);
  private
    {Private declarations}

  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;
  end;

var
  fmManIpi: TfmManIpi;

implementation

uses Bbgeral, BbMensag, ManPri, Fpreview, ManGDB;

{$R *.DFM}

procedure TfmManIpi.FormCreate(Sender: TObject);
begin
  inherited;

  //ModificaCampo;
  sBase := 'select * from EstIpi ';
end;

procedure TfmManIpi.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
    0: sOrdem := ' Order by CodIpi';
    1: sOrdem := ' Order by NomIpi';
    2: sOrdem := ' Order by TipIpi';
  end;

  if (EdPsqTipIpi.Text <> '') and (EdPsqTipIpi.Text <> 'Todos') then sFiltro := ' Where TipIpi = ''' + EdPsqTipIpi.Text + '''';

  if (EdPsqCodIpi.Text <> '') then begin
    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where CodIpi = ''' + EdPsqCodIpi.Text + ''''
    else
      sFiltro := sFiltro + ' and CodIpi = ''' + EdPsqCodIpi.Text + '''';
  end;

  if Rgbusca.ItemIndex = 0 then begin

    if (EdPsqNomIpi.Text <> '') then begin
      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where NomIpi LIKE ''' + EdPsqNomIpi.Text + '%'''
      else
        sFiltro := sFiltro + ' and NomIpi LIKE ''' + EdPsqNomIpi.Text + '%''';
    end;

  end
  else
  begin

    if (EdPsqNomIpi.Text <> '') then begin
      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where NomIpi LIKE ''%' + EdPsqNomIpi.Text + '%'''
      else
        sFiltro := sFiltro + ' and NomIpi LIKE ''%' + EdPsqNomIpi.Text + '%''';
    end;
  end;

  with EstIpi, SQL do begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;
end;

procedure TfmManIpi.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodIpi.SetFocus;
end;

procedure TfmManIpi.dbReportBeforePrint(Sender: TObject);
begin
  inherited;
  ppCodIpi.Caption := PreString(EstIpiCodIpi.Value, 7);
  ppTipIpi.Caption := EstIpiTipIpi.Value;
  ppNomIpi.Caption := EstIpiNomIpi.Value;
end;

procedure TfmManIpi.EstIpiNewRecord(DataSet: TDataSet);
begin
  inherited;

  if copy(GFprm, 1, 1) <> 'S' then Abort;

  EstIpi.DisableControls;

  EstIpiPerIpi.Value := 0;
  EstIpiRedIpi.Value := 0;
  EstIpiClsIpi.Value := '';
  EstIpiRecIpi.Value := 100;
  EstIpiBasIpi.Value := 100;
  EstIpiRegIpi.Value := 'Nao';
  EstIpiTrbIpi.Value := 'Sim';
  EstIpiTipIpi.Value := 'Saida';

  EstIpi.EnableControls;

  PcIpi.ActivePage := pcPag2;

  EdCodIpi.Enabled := True;
  EdTipIpi.Enabled := True;

  EdCodIpi.Font.Style := [];
  EdTipIpi.Font.Style := [];

  EdCodIpi.Setfocus;

end;

procedure TfmManIpi.grIpiDblClick(Sender: TObject);
begin
  inherited;
  pcIpi.ActivePage := pcPag2;
end;

procedure TfmManIpi.nvIpiImprime(Sender: TObject);
begin
  inherited;

  EstIpi.First;

  if not EstIpi.Eof then begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmManIpi);
      fmPreview.ppViewer.Report := ppReport;
      ppReport.PrintToDevices;
      fmPreview.ShowModal;

      if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

    finally

      FreeAndNil(fmPreview);

    end;
  end;
end;

procedure TfmManIpi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManIpi.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManIpi := nil;
end;

procedure TfmManIpi.nvIpiBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  PcIpi.ActivePage := pcPag2;

  if Trim(EstIpiCodTxf.Value) = '' then EstIpiCodTxf.Clear;

  if Trim(EstIpiClsIpi.Value) <> '' then begin

    if Length(Trim(fLimpaStr(EstIpiClsIpi.Value))) < 8 then
      fmsgErro('Classifica��o Fiscal do IPI Informado com Conte�do Inv�lido.', nil)
    else
    begin

      if Length(Trim(fLimpaStr(EstIpiClsIpi.Value))) > 8 then
        fmsgErro('Classifica��o Fiscal do IPI Informado com Conte�do Inv�lido.', nil);

    end;
  end;
end;

procedure TfmManIpi.DsIpiDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvIpi.Salvar then begin

    if EstIpiCodIpi.Value <> '' then begin

      EdCodIpi.Enabled := False;
      EdTipIpi.Enabled := False;

      EdCodIpi.Font.Style := [fsBold];
      EdTipIpi.Font.Style := [fsBold];

    end
    else
    begin

      EdCodIpi.Enabled := True;
      EdTipIpi.Enabled := True;

      EdCodIpi.Font.Style := [];
      EdTipIpi.Font.Style := [];

    end;
  end;
end;

procedure TfmManIpi.nvIpiSalva(Sender: TObject);
begin
  inherited;
  //fmManGDB.ReplicaIPI(EstIpiCODIPI.AsString, EstIpiTIPIPI.AsString, EstIpiCODTXF.AsString);
end;



end.

