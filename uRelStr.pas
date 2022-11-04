unit uRelStr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, dxEditor, dxExEdtr, dxEdLib, dxColorPickEdit, dxCntner,
  dxColorEdit, Db, DBTables, Grids, DBGrids, ExtCtrls, ComCtrls, Fpadrao,
  dxTL, dxDBCtrl, dxDBGrid, Menus, dxDBTLCl, dxGrClms;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfrmRelStr = class(TfmPadrao)
    sqlRel: TQuery;
    dsRel: TDataSource;
    Label4: TLabel;
    edCodGru: TdxColorEdit;
    Label1: TLabel;
    edCodSt1: TdxColorPickEdit;
    Label2: TLabel;
    edCodNcm: TdxColorEdit;
    Label3: TLabel;
    edCodAnt: TdxColorEdit;
    Button1: TButton;
    StatusBar1: TStatusBar;
    btnXls: TButton;
    SaveDialog: TSaveDialog;
    grSt: TdxDBGrid;
    sqlRelCONCATENATION: TStringField;
    sqlRelCODIGO_ANTIGO: TStringField;
    sqlRelID_ATUAL: TStringField;
    sqlRelID_NOVO: TStringField;
    sqlRelDESCRICAO_COMPLETA: TStringField;
    sqlRelCOD_NCM: TStringField;
    sqlRelLOCALIZACAO_PRODUTO: TStringField;
    sqlRelORIGEM: TStringField;
    sqlRelS_AC: TStringField;
    sqlRelS_AL: TStringField;
    sqlRelS_AM: TStringField;
    sqlRelS_AP: TStringField;
    sqlRelS_BA: TStringField;
    sqlRelS_CE: TStringField;
    sqlRelS_DF: TStringField;
    sqlRelS_ES: TStringField;
    sqlRelS_GO: TStringField;
    sqlRelS_MA: TStringField;
    sqlRelS_MG: TStringField;
    sqlRelS_MS: TStringField;
    sqlRelS_MT: TStringField;
    sqlRelS_PA: TStringField;
    sqlRelS_PB: TStringField;
    sqlRelS_PE: TStringField;
    sqlRelS_PI: TStringField;
    sqlRelS_PR: TStringField;
    sqlRelS_PR_SN: TStringField;
    sqlRelS_RJ: TStringField;
    sqlRelS_RN: TStringField;
    sqlRelS_RO: TStringField;
    sqlRelS_RR: TStringField;
    sqlRelS_RS: TStringField;
    sqlRelS_SC: TStringField;
    sqlRelS_SC_SN: TStringField;
    sqlRelS_SE: TStringField;
    sqlRelS_SP: TStringField;
    sqlRelS_TO: TStringField;
    grStCONCATENATION: TdxDBGridMaskColumn;
    grStCODIGO_ANTIGO: TdxDBGridMaskColumn;
    grStID_ATUAL: TdxDBGridMaskColumn;
    grStID_NOVO: TdxDBGridMaskColumn;
    grStDESCRICAO_COMPLETA: TdxDBGridMaskColumn;
    grStCOD_NCM: TdxDBGridMaskColumn;
    grStLOCALIZACAO_PRODUTO: TdxDBGridMaskColumn;
    grStORIGEM: TdxDBGridMaskColumn;
    Label5: TLabel;
    edDscPro: TdxColorEdit;
    Label6: TLabel;
    edIdePro: TdxColorEdit;
    Label7: TLabel;
    edId2Pro: TdxColorEdit;
    Label8: TLabel;
    edLocPro: TdxColorEdit;
    edCodSub: TdxColorEdit;
    Label9: TLabel;
    Label10: TLabel;
    edCodPro: TdxColorEdit;
    PopUpMenu: TPopupMenu;
    Colunas1: TMenuItem;
    grStS_AC: TdxDBGridMaskColumn;
    grStS_AL: TdxDBGridMaskColumn;
    grStS_AM: TdxDBGridMaskColumn;
    grStS_AP: TdxDBGridMaskColumn;
    grStS_BA: TdxDBGridMaskColumn;
    grStS_CE: TdxDBGridMaskColumn;
    grStS_DF: TdxDBGridMaskColumn;
    grStS_ES: TdxDBGridMaskColumn;
    grStS_GO: TdxDBGridMaskColumn;
    grStS_MA: TdxDBGridMaskColumn;
    grStS_MG: TdxDBGridMaskColumn;
    grStS_MS: TdxDBGridMaskColumn;
    grStS_MT: TdxDBGridMaskColumn;
    grStS_PA: TdxDBGridMaskColumn;
    grStS_PB: TdxDBGridMaskColumn;
    grStS_PE: TdxDBGridMaskColumn;
    grStS_PI: TdxDBGridMaskColumn;
    grStS_PR: TdxDBGridMaskColumn;
    grStS_PR_SN: TdxDBGridMaskColumn;
    grStS_RJ: TdxDBGridMaskColumn;
    grStS_RN: TdxDBGridMaskColumn;
    grStS_RO: TdxDBGridMaskColumn;
    grStS_RR: TdxDBGridMaskColumn;
    grStS_RS: TdxDBGridMaskColumn;
    grStS_SC: TdxDBGridMaskColumn;
    grStS_SC_SN: TdxDBGridMaskColumn;
    grStS_SE: TdxDBGridMaskColumn;
    grStS_SP: TdxDBGridMaskColumn;
    grStS_TO: TdxDBGridMaskColumn;
    sqlRelLINHA: TMemoField;
    Label11: TLabel;
    edCest: TdxColorEdit;
    grStColumn38: TdxDBGridColumn;
    sqlRelCEST: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sqlRelAfterOpen(DataSet: TDataSet);
    procedure btnXlsClick(Sender: TObject);
    procedure edCodGruExit(Sender: TObject);
    procedure edCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodSubExit(Sender: TObject);
    procedure edCodProExit(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    { Private declarations }
    sBase       :       String;

    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    { Public declarations }
  end;

var
  frmRelStr: TfrmRelStr;

implementation

uses Bbfuncao, AuxIni, ManCol;

{$R *.DFM}

procedure TfrmRelStr.FormCreate(Sender: TObject);
begin
//**RELATORIO NA VERTICAL***//
{        sBase :=

          'select cast(' + QuotedStr('MVA - COMUM') + ' as char(15)) Tipo,str.codstr, str.tipstr, ufe.sigufe,' +
          ' str.ncm, ufe.mrgmva, ufe.codcfo, ufe.icmsub,' +
              ' case ufe.codregtrib when 1 then ' + QuotedStr('SN') + ' else ' + QuotedStr('N') + ' end' +
          ' from eststr str' +
          ' left join estufe ufe on ufe.codstr = str.codstr' +
                              ' and ufe.tipstr = str.tipstr' +
          ' where RTRIM(LTRIM(coalesce(ncm, ' + QuotedStr('') + '))) <> ' + QuotedStr('') +
               ' and ufe.mrgmva is not null' +
          ' SELECTFILTRO ' +

          ' union all ' +

          'select cast(' + QuotedStr('MVA - SN') + ' as char(15)) Tipo,str.codstr, str.tipstr, ufe.sigufe,' +
          ' str.ncm, ufe.mrgmva_sn, ufe.codcfo, ufe.icmsub,' +
              ' case ufe.codregtrib when 1 then ' + QuotedStr('SN') + ' else ' + QuotedStr('N') + ' end' +
          ' from eststr str' +
          ' left join estufe ufe on ufe.codstr = str.codstr' +
                              ' and ufe.tipstr = str.tipstr' +
          ' where RTRIM(LTRIM(coalesce(ncm, ' + QuotedStr('') + '))) <> ' + QuotedStr('') +
               ' and ufe.mrgmva is not null' +
          ' SELECTFILTRO ' +

          ' union all ' +

          'select cast(' + QuotedStr('MVA - SINIEF') + ' as char(15)) Tipo,str.codstr, str.tipstr, ufe.sigufe,' +
          ' str.ncm, ufe.mrgmva_sinief, ufe.codcfo, ufe.icmsub,' +
              ' case ufe.codregtrib when 1 then ' + QuotedStr('SN') + ' else ' + QuotedStr('N') + ' end' +
          ' from eststr str' +
          ' left join estufe ufe on ufe.codstr = str.codstr' +
                              ' and ufe.tipstr = str.tipstr' +
          ' where RTRIM(LTRIM(coalesce(ncm, ' + QuotedStr('') + '))) <> ' + QuotedStr('') +
               ' and ufe.mrgmva is not null' +
          ' SELECTFILTRO ' +

          ' union all ' +

          'select cast(' + QuotedStr('MVA_SN - SINIEF') + ' as char(15)) Tipo,str.codstr, str.tipstr, ufe.sigufe,' +
          ' str.ncm, ufe.mrgmva_sn_sinief, ufe.codcfo, ufe.icmsub,' +
              ' case ufe.codregtrib when 1 then ' + QuotedStr('SN') + ' else ' + QuotedStr('N') + ' end' +
          ' from eststr str' +
          ' left join estufe ufe on ufe.codstr = str.codstr' +
                              ' and ufe.tipstr = str.tipstr' +
          ' where RTRIM(LTRIM(coalesce(ncm, ' + QuotedStr('') + '))) <> ' + QuotedStr('') +
               ' and ufe.mrgmva is not null' +
          ' SELECTFILTRO ' +

          ' order by 2, 3, 4';
}
        sBase :=
        'select distinct' +
          ' pro.codclp || ' + QuotedStr('-') + ' || pro.codgru || ' + QuotedStr('.') +
                                               ' || pro.codsub || ' + QuotedStr('.') +
                                               ' || pro.codpro, ' +
          ' pro.codant CODIGO_ANTIGO,' +
          ' pro.idepro ID_ATUAL,' +
          ' pro.id2pro ID_NOVO,' +
          ' pro.dscpro DESCRICAO_COMPLETA,' +
          ' pro.codncm COD_NCM,' +
          ' pro.locpro LOCALIZACAO_PRODUTO,' +
          ' pro.codst1 ORIGEM,' +
          ' pro.CEST   CEST,' + 

          ' S_AC, S_AL, S_AM, S_AP, S_BA, S_CE, S_DF, S_ES, S_GO, S_MA, S_MG, S_MS, S_MT,' +
          ' S_PA, S_PB, S_PE, S_PI, S_PR, S_PR_SN, S_RJ, S_RN, S_RO, S_RR, S_RS, S_SC,' +
          ' S_SC_SN, S_SE, S_SP, S_TO, linha' +

      ' from proc_valores_st p' +
      ' left join estpro pro on p.s_regra = pro.codsts and p.s_tipo = ' + QuotedStr('Saida') +
      ' Where 1 = 1 and pro.codgru is not null';
end;

procedure TfrmRelStr.Button1Click(Sender: TObject);
var
   sFiltro, selectFull : String;
begin
   sFiltro := '';

   if(Trim(edCodGru.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and CODGRU = ' + QuotedStr(edCodGru.Text);
      end;

   if(Trim(edCodSub.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and CODSUB = ' + QuotedStr(edCodSub.Text);
      end;

   if(Trim(edCodPro.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and CODPRO = ' + QuotedStr(edCodPro.Text);
      end;

   if(Trim(edDscPro.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and DSCPRO like ' + QuotedStr('%' + edDscPro.Text + '%');
      end;

   if(Trim(edCodSt1.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and CODST1 = ' + QuotedStr(copy(edCodSt1.Text,0,1));
      end;

   if(Trim(edCodAnt.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and CODANT like ' + QuotedStr(edCodAnt.Text + '%');
      end;

   if(Trim(edIdePro.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and IDEPRO like ' + QuotedStr(edIdePro.Text + '%');
      end;

   if(Trim(edId2Pro.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and ID2PRO like ' + QuotedStr(edId2Pro.Text + '%');
      end;

   if(Trim(edCodNcm.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and CODNCM like ' + QuotedStr(edCodNcm.Text + '%');
      end;

   if(Trim(edLocPro.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and LOCPRO like ' + QuotedStr(edLocPro.Text + '%');
      end;

    if(Trim(edCest.Text) <> '') then
      begin
         sFiltro := sFiltro + ' and pro.CEST like ' + QuotedStr(edCest.Text + '%');
      end;

   selectFull := sBase + sFiltro;

   sqlRel.Active := False;
   sqlRel.sql.Text := selectFull;
   sqlRel.Active := True;
end;

procedure TfrmRelStr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRelStr.sqlRelAfterOpen(DataSet: TDataSet);
begin
   StatusBar1.Panels[1].Text := 'Qtd. de Registros: ' + FormatFloat('00000', sqlRel.RecordCount);
end;

procedure TfrmRelStr.Save(ADefaultExt, AFilter, AFileName: string;
  AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin

    DefaultExt := ADefaultExt;

    Filter := AFilter;

    FileName := AFileName;

    if Execute then
      AMethod(FileName, True);

  end;
end;

procedure TfrmRelStr.btnXlsClick(Sender: TObject);
var
   nomeArq : String;
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Regras de ST.xls', grST.SaveToXLS);
  {if(SaveDialog.Execute) then
      begin
         if(Trim(saveDialog.FileName) <> '') then
            begin
               nomeArq := saveDialog.FileName;
               if not(pos('.txt',nomeArq) > 0) then
                  nomeArq := nomeArq + '.txt';

               grST.SaveToText(nomeArq,true,';','','');
            end;
      end;
  //GeraExcelQuery(sqlRel);  }
end;

procedure TfrmRelStr.edCodGruExit(Sender: TObject);
begin
  inherited;
  if(Trim(edCodGru.Text) <> '') then
      edCodGru.Text := FormatFloat('000',StrToIntDef(edCodGru.Text,0));
end;

procedure TfrmRelStr.edCodGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

        EdCodGru.Text := fmAuxIni.CodGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodGru.Text) <> '' then
      EdCodSub.SetFocus;

  end;
end;

procedure TfrmRelStr.edCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := '1';
      fmAuxIni.CodGru := EdCodGru.Text;

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EdCodSub.Text := fmAuxIni.CodSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodSub.Text) <> '' then
      EdCodPro.SetFocus;

  end;
end;

procedure TfrmRelStr.edCodSubExit(Sender: TObject);
begin
  inherited;
   if(Trim(edCodSub.Text) <> '') then
      edCodSub.Text := FormatFloat('0000',StrToIntDef(edCodSub.Text,0));
end;

procedure TfrmRelStr.edCodProExit(Sender: TObject);
begin
  inherited;
   if(Trim(edCodPro.Text) <> '') then
      edCodPro.Text := FormatFloat('00000',StrToIntDef(edCodPro.Text,0));
end;

procedure TfrmRelStr.Colunas1Click(Sender: TObject);
begin
  inherited;
  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(grSt);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

end.
