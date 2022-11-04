unit PsqRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit;

type
  TfmPsqRes = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PedResNUMRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResDTFRES: TDateTimeField;
    PedResCODEMP: TIntegerField;
    Panel3: TPanel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBEdit28: TdxDBColorEdit;
    grRes: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    PedResSLDRE2: TFloatField;
    PedResSITRES: TStringField;
    Label5: TLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    Bevel1: TBevel;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    Panel2: TPanel;
    Label7: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    LojPed: TwwQuery;
    DsPed: TwwDataSource;
    dxDBEdit1: TdxDBColorEdit;
    grPed: ThGrid;
    LojPedNUMPED: TIntegerField;
    LojPedDTEPED: TDateTimeField;
    LojPedQTPPE2: TFloatField;
    LojPedCODEMP: TIntegerField;
    LojPedSITPED: TStringField;
    LojPedNOMCLI: TStringField;
    LojPedCLIENTE: TStringField;
    PedResCLIENTE: TStringField;
    quSql: TwwQuery;
    PedResAPECLI: TStringField;
    PedResAPEVEN: TStringField;
    LojPedAPEVEN: TStringField;
    pnApeCli1: TPanel;
    pnApeCli2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    PedResFLGIMP: TStringField;
    Label4: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure DsPedDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqRes: TfmPsqRes;

implementation

uses ManGDB, dxDemoUtils, Bbgeral;

{$R *.DFM}

procedure TfmPsqRes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TfmPsqRes.FormShow(Sender: TObject);
begin
  inherited;

  LojPed.Close;
  LojPed.Params[0].AsString := PedRes.Params[0].AsString;
  LojPed.Params[1].AsString := PedRes.Params[1].AsString;
  LojPed.Params[2].AsString := PedRes.Params[2].AsString;
  LojPed.Params[3].AsString := PedRes.Params[3].AsString;
  LojPed.Open;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
  begin

    if GCodVen_Id > 0 then
    begin

      if GExiCli = 'Nao' then
      begin

        pnApeCli1.Visible := False;
        pnApeCli2.Visible := False;

      end;
    end;
  end;

  grRes.SetFocus;

end;

procedure TfmPsqRes.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedResCodEmp.Value > 0 then
    pnApeCli1.Caption := ' Reservado Para : ' + PedResApeCli.Value
  else
    pnApeCli1.Caption := ' ';
end;

procedure TfmPsqRes.DsPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if LojPedCodEmp.Value > 0 then
    pnApeCli2.Caption := ' Reservado Para : ' + LojPedNomCli.Value
  else
    pnApeCli2.Caption := ' ';
end;

end.
