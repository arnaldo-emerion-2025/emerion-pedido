unit ManLre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManLre = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsFin: TdxDBColorMemo;
    UpRes: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
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
    PedResTOTCST: TFloatField;
    PedResTOTVEN: TFloatField;
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
    PedResPEDANT: TStringField;
    PedResDTEREJ: TDateTimeField;
    PedResHREREJ: TStringField;
    PedResOBSREJ: TMemoField;
    PedResUSUREJ: TIntegerField;
    PedResFLGFIN: TStringField;
    PedResDTEFIN: TDateTimeField;
    PedResHREFIN: TStringField;
    PedResOBSFIN: TMemoField;
    PedResUSUFIN: TIntegerField;
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
    PedResLANEST: TStringField;
    PedResSITRES: TStringField;
    PedResFLGCOM: TStringField;
    PedResDTECOM: TDateTimeField;
    PedResHRECOM: TStringField;
    PedResOBSCOM: TMemoField;
    PedResUSUCOM: TIntegerField;
    PedResFLGREQ: TStringField;
    PedResFLGRES: TStringField;
    PedResQTDIMP: TIntegerField;
    PedResEMPCTA: TIntegerField;
    PedResDTECTA: TDateTimeField;
    PedResNUMCTA: TIntegerField;
    PedResPRCCTA: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
    Liberar: string;
  end;

var
  fmManLre: TfmManLre;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManLre.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManLre.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLre.FormShow(Sender: TObject);
begin

  PedRes.Edit;

  EdObsFin.SetFocus;

end;

procedure TfmManLre.bCancelarClick(Sender: TObject);
begin

  PedRes.CancelUpdates;

  Close;

end;

procedure TfmManLre.bConfirmarClick(Sender: TObject);
begin

  PedResSitRes.Value := 'Liberado';

  with PedRes do
  begin

    fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
    ;

    try

      ApplyUpdates; {Tenta aplicar as altera��es}
      ;

      fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
      ;

    except

      fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
      ;

      PedRes.Close;
      PedRes.Open;

      PedRes.Edit;

      EdObsFin.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManLre.FormCreate(Sender: TObject);
begin
  inherited;

  Liberar := 'Nao';

end;

procedure TfmManLre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedRes.State <> dsBrowse then
    PedRes.CancelUpdates;
end;

end.
