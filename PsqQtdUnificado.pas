unit PsqQtdUnificado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, StdCtrls, ExtCtrls, Grids, DBGrids, IBDatabase,
  IBCustomDataSet, IBQuery, bbFuncao, DBTables, Gauges, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner;

type
  TQEmp = record
    DescEmp: string;
    DscPro:string;
    QtrQte: double;
    QtaQte: double;
    RMAQte: double;
    QtdQte: double;
    AtuQte: double;
  end;

type
  TIdItem = record
    CODCLP: string;
    CODGRU: string;
    CODSUB: string;
    CODPRO: string;
    Descricao: string;
  end;

  TfrmPsqQtdUnificado = class(TForm)
    SQLQTE: TClientDataSet;
    Panel1: TPanel;
    lbCodigo: TLabel;
    lbDesc: TLabel;
    SQLQTEqtrqte: TFloatField;
    SQLQTEqtaqte: TFloatField;
    SQLQTEqtdqte: TFloatField;
    SQLQTErmaqte: TFloatField;
    SQLQTEfantemp: TStringField;
    DSQTE: TDataSource;
    IBQuery1: TIBQuery;
    SQLQTEatuqte: TFloatField;
    IBTransaction1: TIBTransaction;
    lbConta: TLabel;
    ggThreads: TGauge;
    SQLQTEDscPro: TStringField;
    gQTE: TdxDBGrid;
    gQTEfantemp: TdxDBGridMaskColumn;
    gQTEDscPro: TdxDBGridMaskColumn;
    gQTEqtrqte: TdxDBGridMaskColumn;
    gQTEqtaqte: TdxDBGridMaskColumn;
    gQTEqtdqte: TdxDBGridMaskColumn;
    gQTErmaqte: TdxDBGridMaskColumn;
    gQTEatuqte: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    //listThread := TList;
    listThread: TList;

  public
    { Public declarations }
    qtdThread, qtdThreadFree: integer;

    function Showmodal(sItem: TIdItem): integer;

  end;

type
  TMultEmp = class(TThread)
  private
    { Private declarations }
    qtdEmp: TQEmp;
    pConnection: string;
    vItem: TIdItem;
    pQtdItem: TQEmp;
    CDS: TClientDataSet;
    _Form: TfrmPsqQtdUnificado;

  protected
    procedure Execute; override;
    procedure QtdMultEstoque(sConnection: string; pItem: TIdItem);
    procedure AtualizaGrid;
    constructor Create(CreateSuspended: Boolean; sConnection: string; pItem: TIdItem; pForm: TfrmPsqQtdUnificado);
    destructor Destroy; override;

  end;

var
  frmPsqQtdUnificado: TfrmPsqQtdUnificado;

implementation

{$R *.DFM}

{ TMultEmp }

procedure TMultEmp.AtualizaGrid;
begin
  CDS.Append;
  CDS.FieldByName('fantemp').AsString := pQtdItem.DescEmp;
  CDS.FieldByName('DscPro').AsString := pQtdItem.DscPro;
  CDS.FieldByName('QtrQte').AsFloat := pQtdItem.QtrQte;
  CDS.FieldByName('QtaQte').AsFloat := pQtdItem.QtaQte;
  CDS.FieldByName('RMAQte').AsFloat := pQtdItem.RMAQte;
  CDS.FieldByName('QtdQte').AsFloat := pQtdItem.QtdQte;
  CDS.FieldByName('AtuQte').AsFloat := pQtdItem.AtuQte;
  CDS.Post;

  application.ProcessMessages;
  Terminate;
end;

constructor TMultEmp.Create(CreateSuspended: Boolean; sConnection: string; pItem: TIdItem; pForm: TfrmPsqQtdUnificado);
begin
  _Form := pForm;

  inc(_Form.qtdThread);
  _Form.lbConta.Caption := intToStr(_Form.qtdThread);
  _Form.ggThreads.MaxValue := _Form.qtdThread;
  _Form.ggThreads.MinValue := 0;
  _Form.lbConta.Caption := 'Processando...';

  FreeOnTerminate := true;
  inherited Create(CreateSuspended);

  pConnection := sConnection;
  vItem := pItem;
  CDS := _Form.SQLQTE;

end;

destructor TMultEmp.Destroy;
begin
  inc(_Form.qtdThreadFree);
  //_Form.lbConta.Caption := intToStr(_Form.qtdThread - _Form.qtdThreadFree);
  _Form.ggThreads.Progress := _Form.qtdThreadFree;

  if _Form.qtdThread = _Form.qtdThreadFree then
    _Form.lbConta.Caption := 'Concluido.'
  else
    _Form.lbConta.Caption := 'Processando...';

  application.ProcessMessages;

  _Form.gQTE.ResetFullRefresh;
  _Form.gQTE.Repaint;
  if ((_Form.qtdThread - _Form.qtdThreadFree) = 0) then
  begin
    _Form.Cursor := 0;
    _Form.Panel1.Cursor := 0;
    _Form.gQTE.Cursor := 0;

    Screen.Cursor := 0;
  end;

  inherited Destroy;

end;

procedure TMultEmp.Execute;
var
  db: TIBDatabase;
  SQLQTE: TIBQuery;
  TDB: TIBTransaction;
begin
  db := TIBDatabase.Create(nil);

  try
    db.LoginPrompt := false;
    db.Params.Clear;
    db.Params.Add('user_name');
    db.Params.Add('password');

    db.Params.Values['user_name'] := 'SYSDBA';
    db.Params.Values['password'] := 'ibsade20';

    db.DatabaseName := pConnection;

    try
      db.Open;
    except on E: Exception do
      begin
        //MessageBox(0, pchar('Error: ' + E.Message), 'Erro banco', MB_OK + MB_ICONWARNING);
      end;
    end;

    if (db.Connected) then
    begin

      SQLQTE := TIBQuery.create(nil);
      SQLQTE.Database := db;
      TDB := TIBTransaction.create(nil);

      try
        SQLQTE.Active := false;
        TDB.DefaultDatabase := db;
        SQLQTE.Transaction := TDB;

        SQLQTE.SQL.Text := 'select ' + _BR +
          ' emp.apeemp, ' + _BR +
          ' pro.dscpro, ' + _BR +
          ' qte.qtrqte, ' + _BR +
          ' qte.qtaqte, ' + _BR +
          ' qte.qtdrma, ' + _BR +
          ' qte.qtdqte, ' + _BR +
          ' (qte.qtdqte - (qte.qtrqte + qte.qtdrma)) atuqte ' + _BR +
          ' from estqte qte ' + _BR +
          ' join geremp emp on emp.codemp = qte.codemp ' + _BR +
          ' join estpro pro on pro.codclp = qte.codclp ' + _BR +
          ' and pro.codgru = qte.codgru ' + _BR +
          ' and pro.codsub = qte.codsub ' + _BR +
          ' and pro.codpro = qte.codpro ' + _BR +
          ' where qte.codemp = 1 ' + _BR +
          ' and qte.codclp = ' + QuotedStr(vItem.codclp) + _BR +
          ' and qte.codgru = ' + QuotedStr(vItem.codgru) + _BR +
          ' and qte.codsub = ' + QuotedStr(vItem.codsub) + _BR +
          ' and qte.codpro = ' + QuotedStr(vItem.codpro);
        SQLQTE.Active := true;

        pQtdItem.DescEmp := SQLQTE.FieldByName('apeemp').AsString;
        pQtdItem.DscPro := SQLQTE.FieldByName('dscpro').AsString;
        pQtdItem.qtrqte := SQLQTE.FieldByName('qtrqte').AsFloat;
        pQtdItem.qtaqte := SQLQTE.FieldByName('qtaqte').AsFloat;
        pQtdItem.rmaqte := SQLQTE.FieldByName('qtdrma').AsFloat;
        pQtdItem.qtdqte := SQLQTE.FieldByName('qtdqte').AsFloat;
        pQtdItem.atuqte := SQLQTE.FieldByName('atuqte').AsFloat;

        Synchronize(AtualizaGrid);

      finally
        FreeAndnil(SQLQTE);
        FreeAndNil(TDB);
      end;
    end;
    //qtdEmp;
  finally
    FreeAndnil(db);
  end;

  //inherited;
  //QtdMultEstoque(pConnection, vItem);
end;

procedure TMultEmp.QtdMultEstoque(sConnection: string; pItem: TIdItem);
var
  db: TIBDatabase;
  SQLQTE: TIBQuery;
  TDB: TIBTransaction;
begin
  //try

  db := TIBDatabase.Create(nil);

  try
    db.LoginPrompt := false;
    db.Params.Add('user_name');
    db.Params.Add('password');

    db.Params.Values['user_name'] := 'SYSDBA';
    db.Params.Values['password'] := 'ibsade20';

    try

      db.DatabaseName := sConnection;
    except
    end;

    if (db.Connected) then
    begin
      SQLQTE := TIBQuery.create(nil);
      SQLQTE.Database := db;
      try
        TDB := TIBTransaction.Create(nil);

        TDB.defaultDataBase := db;

        SQLQTE.Transaction := TDB;
        SQLQTE.Active := false;
        SQLQTE.SQL.Text := 'select ' + _BR +
          ' emp.apeemp, ' + _BR +
          ' qte.qtrqte, ' + _BR +
          ' qte.qtaqte, ' + _BR +
          ' qte.qtdrma, ' + _BR +
          ' qte.qtdqte, ' + _BR +
          ' (qte.qtdqte - (qte.qtrqte + qte.qtdrma)) atuqte ' + _BR +
          ' from estqte qte ' + _BR +
          ' join geremp emp on emp.codemp = qte.codemp ' + _BR +
          ' where qte.codemp = 1 ' + _BR +
          ' and qte.codclp = ' + QuotedStr(pItem.codclp) + _BR +
          ' and qte.codgru = ' + QuotedStr(pItem.codgru) + _BR +
          ' and qte.codsub = ' + QuotedStr(pItem.codsub) + _BR +
          ' and qte.codpro = ' + QuotedStr(pItem.codpro);
        SQLQTE.Active := true;

        pQtdItem.DescEmp := SQLQTE.FieldByName('apeemp').AsString;
        pQtdItem.qtrqte := SQLQTE.FieldByName('qtrqte').AsFloat;
        pQtdItem.qtaqte := SQLQTE.FieldByName('qtaqte').AsFloat;
        pQtdItem.rmaqte := SQLQTE.FieldByName('qtdrma').AsFloat;
        pQtdItem.qtdqte := SQLQTE.FieldByName('qtdqte').AsFloat;
        pQtdItem.atuqte := SQLQTE.FieldByName('atuqte').AsFloat;

        Synchronize(AtualizaGrid);

      finally
        FreeAndnil(SQLQTE);
      end;
    end;

    //qtdEmp;
  finally
    FreeAndnil(db);
  end;

  {except on E: Exception do
        messagebox(handle,pchar('Erro: '+E.Message),'Falha no acesso do banco.',MB_OK+MB_ICONINFORMATION);
  end;}

end;

{ TfrmPsqQtdUnificado }

function TfrmPsqQtdUnificado.Showmodal(sItem: TIdItem): integer;
var
  SQLTEMP: TQuery;
  thrEmp: TMultEmp;
  sConn: string;
  vItem: TIdItem;

begin
  vItem.CODCLP := sItem.CodClp;
  vItem.CodGru := sItem.CodGru;
  vItem.CodSub := sItem.CodSub;
  vItem.CodPro := sItem.CodPro;

  lbCodigo.Caption := sItem.CodClp + '-' + sItem.CodGru + '.' + sItem.CodSub + '.' + sItem.CodPro;
  lbDesc.Caption := sItem.Descricao;

  listThread := TList.Create;

  SQLTEMP := TQuery.Create(Self);
  try

    SQLTEMP.DatabaseName := 'ISade';
    SQLTEMP.SQL.Text := 'select  IP, PATH caminho , PORT porta from LIST_DATABASE';
    SQLTEMP.Active := true;

    while not SQLTEMP.Eof do
    begin
      sConn := SQLTEMP.FieldByName('ip').AsString + '/' + SQLTEMP.FieldByName('porta').AsString + ':' + SQLTEMP.FieldByName('caminho').AsString;
      thrEmp := TMultEmp.Create(false, sConn, vItem, self);
      //listThread.;
      listThread.Add(thrEmp);

      SQLTEMP.Next;
    end;

  finally
    FreeAndNil(SQLTEMP);
  end;

  inherited Showmodal;
end;

procedure TfrmPsqQtdUnificado.FormCreate(Sender: TObject);
begin
  qtdThread := 0;
  qtdThreadFree := 0;
  SQLQTE.CreateDataSet;
end;

procedure TfrmPsqQtdUnificado.FormDestroy(Sender: TObject);
begin
  while listThread.Count > 0 do
  begin
    if TMultEmp(listThread[0]) <> nil then
      listThread[0] := nil;

    listThread.Delete(0);
  end;
end;

procedure TfrmPsqQtdUnificado.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (key = ord('R')) then
   begin
        gQTEDscPro.Visible := not gQTEDscPro.Visible;
   end;

   if(key = VK_ESCAPE) then
   begin
       Self.Close;
   end;
end;

end.


