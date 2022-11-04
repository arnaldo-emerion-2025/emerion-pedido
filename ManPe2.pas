unit ManPe2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorPickEdit,
  dxDBColorMemo, dxDBColorLookupEdit, dxDBColorEdit;

type
  TfmManPe2 = class(TfmShowPadrao)
    CepTit: TwwQuery;
    CepTitNOMTIT: TStringField;
    CepTitABRTIT: TStringField;
    DsTit: TDataSource;
    PaintBox: TPaintBox;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    EdCepCli: TdxDBColorEdit;
    EdTenCli: TdxDBColorEdit;
    CbNomTit: TdxDBColorLookupEdit;
    EdEndCli: TdxDBColorEdit;
    EdRefCli: TdxDBColorEdit;
    EdBaiCli: TdxDBColorEdit;
    EdNumCli: TdxDBColorEdit;
    Label9: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdObsRes: TdxDBColorMemo;
    EdUfeCli: TdxDBColorPickEdit;
    Label2: TLabel;
    Label3: TLabel;
    sbPsqCep: TSpeedButton;
    Label61: TLabel;
    EdCgeCli: TdxDBColorEdit;
    Label62: TLabel;
    EdIneCli: TdxDBColorEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdNomEnt: TdxDBColorEdit;
    pnId_FinUfe: TPanel;
    Label125: TLabel;
    Label126: TLabel;
    EdId_FinCie: TdxDBColorEdit;
    sbPsqCie: TSpeedButton;
    pnNomCie: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCepCliExit(Sender: TObject);
    procedure sbPsqCepClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCgeCliExit(Sender: TObject);
    procedure EdUfeCliExit(Sender: TObject);
    procedure EdId_FinCieExit(Sender: TObject);
    procedure EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdId_FinCieKeyPress(Sender: TObject; var Key: Char);
    procedure sbPsqCieClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    cepanterior: string;
  end;

var
  fmManPe2: TfmManPe2;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, ManPed, ManPe3, PsqCep,
  ManGDB, ManPe4, auxini, AuxPsq;

{$R *.DFM}

procedure TfmManPe2.FormCreate(Sender: TObject);
begin
  inherited;

  fmManPed.PedRes.Edit;

end;

procedure TfmManPe2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManPe2.FormShow(Sender: TObject);
begin
  inherited;

  cepanterior := fmManPed.PedResCepCli.Value;

  if Trim(fmManPed.PedResCgeCli.Value) <> '' then
  begin

    if Length(Trim(fmManPed.PedResCgeCli.Value)) > 11 then
      fmManPed.PedResCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManPed.PedResCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManPed.PedResCgeCli.EditMask := '';

  EdNomEnt.SetFocus;

end;

procedure TfmManPe2.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManPe2.bContinuarClick(Sender: TObject);
begin

  if fmManPed.PedRes.State = dsBrowse then
    fmManPed.PedRes.Edit;

  fmManPed.PedResObsRes.Value := EdObsRes.Text;

  with fmManPed.PedRes do
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

      if fmManPed.PedRes.State = dsBrowse then
        fmManPed.PedRes.Edit;

      EdCepCli.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  try

    fmManPe4 := TfmManPe4.Create(Self);
    fmManPe4.ShowModal;

  finally

    FreeAndNil(fmManPe4);

  end;

  if fmManPed.Finalizar = 'S' then
    Close
  else
  begin

    fmManPed.PedRes.Close;
    fmManPed.PedRes.Open;

    fmManPed.PedRes.Edit;

    EdCepCli.SetFocus;

  end;
end;

procedure TfmManPe2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.PedRes.State <> dsBrowse then
    fmManPed.PedRes.CancelUpdates;
end;

procedure TfmManPe2.EdCepCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManPed.PedResCepCli.Value)) <> '' then
  begin

    if fmManPed.PedResCepCli.Value <> cepanterior then
    begin

      with fmManPed.quSql, SQL do
      begin

        Close;
        Text := ' Select * From GerCep ' +
          ' Where NumCep = ''' + fmManPed.PedResCepCli.Value + '''';
        Open;

      end;

      fmManPed.PedResEndCli.Value := fLimpaCep(fmManPed.quSql.FieldByName('EndCep').AsString);
      fmManPed.PedResTenCli.Value := fmManPed.quSql.FieldByName('TipCep').AsString;
      fmManPed.PedResBaiCli.Value := fmManPed.quSql.FieldByName('BaiCep').AsString;
      fmManPed.PedResCidCli.Value := fmManPed.quSql.FieldByName('CidCep').AsString;
      fmManPed.PedResUfeCli.Value := fmManPed.quSql.FieldByName('SigUfe').AsString;

    end;
  end;
end;

procedure TfmManPe2.sbPsqCepClick(Sender: TObject);
begin

  try

    fmPsqCep := TfmPsqCep.Create(Self);

    fmPsqCep.ShowModal;

    if Trim(fmPsqCep.sCepCli) <> '' then
    begin

      if Trim(fmPsqCep.sCepCli) <> '' then
        fmManPed.PedResCepCli.Value := fmPsqCep.sCepCli;
      if Trim(fmPsqCep.sTenCli) <> '' then
        fmManPed.PedResTenCli.Value := fmPsqCep.sTenCli;
      if Trim(fmPsqCep.sEndCli) <> '' then
        fmManPed.PedResEndCli.Value := fmPsqCep.sEndCli;
      if Trim(fmPsqCep.sBaiCli) <> '' then
        fmManPed.PedResBaiCli.Value := fmPsqCep.sBaiCli;
      if Trim(fmPsqCep.sCidCli) <> '' then
        fmManPed.PedResCidCli.Value := fmPsqCep.sCidCli;
      if Trim(fmPsqCep.sUfeCli) <> '' then
        fmManPed.PedResUfeCli.Value := fmPsqCep.sUfeCli;

    end;

  finally

    FreeAndNil(fmPsqCep);

  end;

  EdNumCli.SetFocus;

end;

procedure TfmManPe2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe2.EdCgeCliExit(Sender: TObject);
begin
  inherited;

  if Trim(fmManPed.PedResCgeCli.Value) <> '' then
  begin

    if Length(Trim(fmManPed.PedResCgeCli.Value)) > 11 then
      fmManPed.PedResCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManPed.PedResCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManPed.PedResCgeCli.EditMask := '';

end;

procedure TfmManPe2.EdUfeCliExit(Sender: TObject);
begin
  inherited;
  with fmManped.quSQL, SQL do
  begin

    Close;
    Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmmanped.PedResUFECLI.Value);
    Open;

    if FieldbyName('Id_FinUfe').AsInteger > 0 then
      fmManped.pedresId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
    else
      fmManped.pedresId_FinUfe.Clear;

  end;
  if fmManped.pedresId_FinUfe.Value > 0 then
    pnId_FinUfe.Caption := IntToStr(fmManped.pedresId_FinUfe.Value);
end;

procedure TfmManPe2.EdId_FinCieExit(Sender: TObject);
begin
  inherited;

  with fmManPED.quSQL, SQL do
  begin

    Close;
    Text := ' Select FinCie.NomCie,' +
      '        FinCie.SigNfe ' +
      ' From FinCie' +
      ' Where FinCie.Id_FinCie = ' + QuotedStr(EdId_FinCie.Text);
    Open;

    fmManPed.PedResCIDCLI.Value := Trim(FieldbyName('NomCie').AsString);

    pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString) + ' IBGE: ' + Trim(FieldbyName('SigNFE').AsString);

  end;

end;

procedure TfmManPe2.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmManped.pedresId_FinUfe.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManped.pedresId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmManped.pedresId_FinCie.Value := fmAuxIni.Id_FinCie;

          pnNomCie.Caption := Trim(fmAuxIni.NomCie) + ' IBGE: ' + Trim(fmAuxIni.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      EdId_FinCie.SetFocus;

    end
    else
      fmsgErro('Código para UF da NFe não informado.', EdId_FinCie);

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    if fmManped.pedresId_FinUfe.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmManped.pedresId_FinUfe.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmManped.pedresId_FinCie.Value := fmAuxPsq.Id_FinCie;

          pnNomCie.Caption := Trim(fmAuxPsq.NomCie) + ' IBGE: ' + Trim(fmAuxPsq.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      EdId_FinCie.SetFocus;

    end
    else
      fmsgErro('Código para UF da NFe não informado.', EdId_FinCie);

  end;

end;

procedure TfmManPe2.EdId_FinCieKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;

end;

procedure TfmManPe2.sbPsqCieClick(Sender: TObject);
begin
  if fmManped.pedresId_FinUfe.Value > 0 then
  begin

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Municipios';

      fmAuxIni.Id_FinUfe := fmManped.pedresId_FinUfe.Value;

      fmAuxIni.ShowModal;

      if fmAuxIni.Id_FinCie > 0 then
      begin

        fmManped.pedresId_FinCie.Value := fmAuxIni.Id_FinCie;

        pnNomCie.Caption := Trim(fmAuxIni.NomCie) + ' IBGE: ' + Trim(fmAuxIni.SigNFE);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdId_FinCie.SetFocus;

  end
  else
    fmsgErro('Código para UF da NFe não informado.', EdId_FinCie);

end;

end.
