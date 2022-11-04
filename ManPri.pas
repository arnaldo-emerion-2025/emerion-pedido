unit ManPri;

interface

uses
  Forms, Windows, Messages, wwstorep, Db, DBTables, Menus, Classes, Controls,
  SysUtils, ExtCtrls, WinProcs, ComCtrls, Wwintl, Wwquery, Graphics, ShellApi,
  Dialogs, FileCtrl, StdCtrls, ImgList, ToolWin, dxfLabel, uObjectMDIImage,
  RLReport, QRCtrls, PsqQtdUnificado, jpeg, IniFiles;

type
  TfmManPri = class(TForm)
    sbMain: TStatusBar;
    wwIntl1: TwwIntl;
    Timer1: TTimer;
    quSql: TwwQuery;
    PopMenu: TPopupMenu;
    mmPsqUsuario: TMenuItem;
    smManTSe: TMenuItem;
    smLogin: TMenuItem;
    StoredProc: TStoredProc;
    ImageList1: TImageList;
    quSQL1: TwwQuery;
    Licenciamento1: TMenuItem;
    mmMenu: TMainMenu;
    PED01: TMenuItem;
    PED0101: TMenuItem;
    PED0102: TMenuItem;
    PED0103: TMenuItem;
    PED0104: TMenuItem;
    PED010401: TMenuItem;
    PED010402: TMenuItem;
    PED010403: TMenuItem;
    PED010404: TMenuItem;
    N4: TMenuItem;
    PED0105: TMenuItem;
    N9: TMenuItem;
    ABE0111: TMenuItem;
    PED02: TMenuItem;
    PED0201: TMenuItem;
    N21: TMenuItem;
    PED0203: TMenuItem;
    N15: TMenuItem;
    PED0212: TMenuItem;
    N7: TMenuItem;
    PED0210: TMenuItem;
    N26: TMenuItem;
    PED0204: TMenuItem;
    N28: TMenuItem;
    PED0211: TMenuItem;
    PED0205: TMenuItem;
    N12: TMenuItem;
    PED0207: TMenuItem;
    N19: TMenuItem;
    PED0208: TMenuItem;
    N20: TMenuItem;
    PED0209: TMenuItem;
    PED03: TMenuItem;
    PED0301: TMenuItem;
    PED030101: TMenuItem;
    N11: TMenuItem;
    PED030106: TMenuItem;
    N24: TMenuItem;
    PED030107: TMenuItem;
    N1: TMenuItem;
    PED030103: TMenuItem;
    N3: TMenuItem;
    PED030108: TMenuItem;
    N13: TMenuItem;
    PED030109: TMenuItem;
    PED0301091: TMenuItem;
    PED0302: TMenuItem;
    PED030201: TMenuItem;
    PED030202: TMenuItem;
    PED030203: TMenuItem;
    N16: TMenuItem;
    PED030205: TMenuItem;
    N23: TMenuItem;
    PED030206: TMenuItem;
    N25: TMenuItem;
    PED030207: TMenuItem;
    PED030208: TMenuItem;
    PED030209: TMenuItem;
    N27: TMenuItem;
    PED030210: TMenuItem;
    PED030212: TMenuItem;
    N29: TMenuItem;
    PED030211: TMenuItem;
    N10: TMenuItem;
    PED030214: TMenuItem;
    PED030215: TMenuItem;
    PED030213: TMenuItem;
    N2: TMenuItem;
    PED0303: TMenuItem;
    PED030302: TMenuItem;
    N22: TMenuItem;
    PED030301: TMenuItem;
    PED030306: TMenuItem;
    PED030303: TMenuItem;
    N8: TMenuItem;
    PED030304: TMenuItem;
    PED030305: TMenuItem;
    PED04: TMenuItem;
    PED0401: TMenuItem;
    PED0403: TMenuItem;
    N6: TMenuItem;
    PED0406: TMenuItem;
    N5: TMenuItem;
    PED0407: TMenuItem;
    ABE06: TMenuItem;
    N14: TMenuItem;
    PED030216: TMenuItem;
    PED030217: TMenuItem;
    PED010405: TMenuItem;
    procedure CriarForm(frmClass: TFormClass; out Obj);
    procedure ShowHint(Sender: Tobject);
    procedure FormCreate(Sender: TObject);
    procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
    procedure ProcErro(Sender: TObject; E: Exception);
    procedure OpArquivos(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AppIdle(Sender: TObject; var Done: Boolean);
    procedure smModLogClick(Sender: TObject);
    procedure Obs(Sender: TObject);
    procedure mmPsqUsuarioClick(Sender: TObject);
    procedure smManTSeClick(Sender: TObject);
    procedure smLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ABE0111Click(Sender: TObject);
    procedure Licenciamento1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);



  private
    procedure Splash;
    procedure configPadrao;

  public
    sCancelar: string;
    Emerion01, Emerion02, Emerion_01, Emerion_02: Boolean;

    procedure RetornoSocket(StrComando: string);
    function enviaEmail(mostrarDialog: Boolean; assunto, corpo, destinatario: PAnsiChar; anexos: Variant;copia: TStringList = nil): Boolean;
    procedure ImprimePedidoDinamicamente(codemp:Integer; numres:Integer; dteres:TDateTime);
    procedure ImprimeViaSeparacaoDinamicamente(codemp:Integer; numres:Integer; dteres:TDateTime);
    procedure ImprimePedido(codemp:Integer; numres:Integer; dteres:TDateTime; nroPage:string);
    procedure ImprimeViaSeparacao(codemp:Integer; numres:Integer; dteres:TDateTime);

  end;

  function enviarEmail(mostrarDialog: Boolean; assunto, corpo, destinatario: PAnsiChar; anexos: Variant;
                    copia: TStringList = nil): Boolean; StdCall; External 'sendMail.dll';

//  procedure ImprimePedido (codemp:Integer; numres:Integer; dteres:TDateTime; nroPage:string                    )        ; stdcall; external 'EmerionLib.dll';
  procedure ImprimeCotacao(codemp:Integer; numres:Integer; dteres:TDateTime; nroPage:string='1'                )        ; stdcall; external 'EmerionLib.dll';
  function  ExportPedido  (codemp:Integer; numres:Integer; dteres:TDateTime; pathPdf:string; nroPage:string='1'):boolean; stdcall; external 'EmerionLib.dll';
  function  ExportCotacao (codemp:Integer; numres:Integer; dteres:TDateTime; pathPdf:string; nroPage:string='1'):boolean; stdcall; external 'EmerionLib.dll';
//  procedure ImprimeViaSep(codemp:Integer; numres:Integer; dteres:TDateTime);stdcall; external 'EmerionLib.dll';


var
  fmManPri: TfmManPri;
  gStrWindows: string;
const
  APP_VER = 2;

implementation

uses Bbgeral, Bbacesso, Bbmensag, Bbfuncao, Bberro, ManGDB, VerUsu, ManTSe,
  ManTUs, ManLog, SadReg, ManDef, ManVen, ManTra, ManPar, ManLpe, ManAce,
  ManRes, ManPag, PedR01, PedR05, PedR06, PedR07, PedR09, PedR10, ManCta,
  ManCom, ManPrg, ManSep, PedR30, PedR14, PedR15, PedR16, CmpR14, PedR17,
  PedR18, PedR19, PedR20, PedR21, PedR124, ManCon, ManSer, ManCli, PsqEs2, PedR22,
  PedR23, ManFin, PedR25, ManMkp, ManTrf, PedR12, PedR26, PedR28, PedR29,
  PedR31, ManLic, ManAut, Pedr311, PedR32, ManPfa_GERAL, ManIpi,
  ManIcm, PedR20_Cta, PedR20_CtaSint, ManStr2, uRelStr;



{$R *.DFM}


procedure TfmManPri.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
begin
  case Msg.Message of
    WM_LBUTTONDOWN, WM_RBUTTONDOWN, WM_KEYDOWN: Timer1.Enabled := False;
  end;

  if Msg.message = WM_KEYDOWN then
  begin

    case Msg.wParam of
      VK_LBUTTON: Tecla := 'MOUSE';
      VK_RBUTTON: Tecla := 'MOUSE';
      VK_MBUTTON: Tecla := 'MOUSE';
      VK_ESCAPE: Tecla := 'ESC';
      VK_TAB: Tecla := 'TAB';
      VK_LEFT: Tecla := 'LEFT';
      VK_UP: Tecla := 'UP';
      VK_RIGHT: Tecla := 'RIGHT';
      VK_DOWN: Tecla := 'DOWN';
      VK_RETURN: Tecla := 'ENTER';
      VK_DELETE: Tecla := 'DEL';
    end;
  end;
end;

{*************************************************************************
* Rotina: setup da aplicação
*************************************************************************}

procedure TfmManPri.FormCreate(Sender: TObject);
begin
  configPadrao;

  fmManGdb.CheckExecutavelAtu;

  GModAce := 'PED';

  sCancelar := 'F';

  with quSql, SQL do
  begin

    Close;
    Text := ' Select * From GerPar';
    Open;

    GTmpLog := quSql.FieldbyName('TmpLog').AsInteger;

  end;

  Timer1.Interval := GTmpLog * 60000;

  //Formato de Datas
  ShortDateFormat := 'dd/MM/yyyy';
  LongDateFormat := 'dd/MM/yyyy';

  //Formato de Horas
  ShortTimeFormat := 'hh:mm:ss';
  LongTimeFormat := 'hh:mm:ss';

  if session.IsAlias('Emerion_01') then
    Emerion01 := true
  else
    Emerion01 := false;

  if session.IsAlias('Emerion_02') then
    Emerion02 := true
  else
    Emerion02 := false;

  {Tratamento de erros}
  Application.OnException := procErro;

  {Tratamento de Mensagens}
  Application.OnHint := ShowHint;

  Application.OnMessage := ProcessaMsg;

  Application.OnIdle := AppIdle;

end;

procedure TfmManPri.AppIdle(Sender: TObject; var Done: Boolean);
begin
  Timer1.Enabled := True;
end;

{*************************************************************************
* Rotina: processamento de erros
*************************************************************************}

procedure TfmManPri.ProcErro(Sender: TObject; E: Exception);
begin
  fProcErro(Sender, E);
end;

{*************************************************************************
* Rotina: Form de conexão com o banco de dados
*************************************************************************}

procedure TfmManPri.FormShow(Sender: TObject);
begin
  inherited;

  fmManPri.sbMain.Panels[2].Text := DateToStr(Date);
  sbMain.Panels[3].Text := FmManGdb.RetornaCaminho('ISADE');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select CONTRA,EXIFOR,EXICLI from PedPar';
    Open;

    GExiFor := FieldByName('EXIFOR').AsString;
    GExiCli := FieldByName('EXICLI').AsString;

    if Trim(FieldbyName('CONTRA').AsString) <> 'Sim' then
    begin

      mmMenu.Items[1].Delete(3);
      mmMenu.Items[1].Delete(3);

    end;
  end;

end;

{*************************************************************************
* Rotina: Emissão de Mensagens na Linha de Status
*************************************************************************}

procedure TfmManPri.ShowHint(Sender: Tobject);
begin
  SbMain.Panels[0].Text := Application.Hint;
end;

{*************************************************************************
* Rotina: Cadastros
*************************************************************************}

procedure TfmManPri.OpArquivos(Sender: TObject);
var
  sNome: string;
  TotGer: real;
  TotCst: real;
  Markup: real;
  DtInic: TDateTime;
  DtFina: TDateTime;
begin

  sNome := TMenuItem(Sender).Name;

  if Trim(fAcesso(sNome)) = '' then
    fmsgErro('Usuario não Possui Acesso a Opção', nil);

  PopMenu.AutoPopup := False;

  if GFlgAce <> 'Sim' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FLGDEL,SEQIMP from GerPar';
      Open;

      if Trim(FieldbyName('FLGDEL').AsString) = '*' then
      begin

        GFlgAce := 'Sim';

        if FieldbyName('SEQIMP').AsInteger > 0 then
          GEmpLog := FieldbyName('SEQIMP').AsInteger;

      end
      else
      begin

        GEmpLog := 0;
        GFlgAce := 'Nao';

      end;
    end;
  end;

  if sNome = 'PED010401' then
    CriarForm(TfmManPfa_GERAL, fmManPfa_GERAL);
  if sNome = 'PED010402' then
    CriarForm(TfmManIpi, fmManIpi);
  if sNome = 'PED010403' then
    CriarForm(TfmManIcm, fmManIcm);
  if sNome = 'PED010404' then
    CriarForm(TfmManStr2, fmManStr2);
  if sNome = 'PED010405' then
    CriarForm(TfrmRelStr, frmRelStr);

  if sNome = 'PED0101' then
    CriarForm(TfmManCli, fmManCli);
  if sNome = 'PED0102' then
    CriarForm(TfmManVen, fmManVen);
  if sNome = 'PED0103' then
    CriarForm(TfmManTra, fmManTra);

  if sNome = 'PED0105' then
  begin

    try

      fmPsqEs2 := TfmPsqEs2.Create(Self);

      fmPsqEs2.sEntr := 'N';

      fmPsqEs2.sCodClp := '1';

      fmPsqEs2.ShowModal;

    finally

      FreeAndNil(fmPsqEs2);

    end;

    PopMenu.AutoPopup := True;

  end;

  if sNome = 'PED0201' then
    CriarForm(TfmManRes, fmManRes);
  if sNome = 'PED0203' then
    CriarForm(TfmManCta, fmManCta);
  if sNome = 'PED0210' then
    CriarForm(TfmManPrg, fmManPrg);
  if sNome = 'PED0212' then
    CriarForm(TfmManTrf, fmManTrf);
  if sNome = 'PED0204' then
    CriarForm(TfmManCom, fmManCom);
  if sNome = 'PED0211' then
    CriarForm(TfmManCon, fmManCon);
  if sNome = 'PED0205' then
    CriarForm(TfmManFin, fmManFin);
  if sNome = 'PED0207' then
    CriarForm(TfmManSep, fmManSep);
  if sNome = 'PED0208' then
    CriarForm(TfmManLpe, fmManLpe);
  if sNome = 'PED0209' then
    CriarForm(TfmManPag, fmManPag);

  if sNome = 'PED030101' then
    CriarForm(TfmPedR01, fmPedR01);
  if sNome = 'PED030106' then
    CriarForm(TfmPedR16, fmPedR16);
  if sNome = 'PED030107' then
    CriarForm(TfmCmpR14, fmCmpR14);
  if sNome = 'PED030103' then
    CriarForm(TfmPedR22, fmPedR22);
  if sNome = 'PED030108' then
    CriarForm(TfmPedR25, fmPedR25);
  if sNome = 'PED030109' then
    CriarForm(TfmPedR31, fmPedR31);
  if sNome = 'PED0301091' then
    CriarForm(TfmPedR311, fmPedR311);

  // PED0301091
  if sNome = 'PED030201' then
    CriarForm(TfmPedR05, fmPedR05);
  if sNome = 'PED030202' then
    CriarForm(TfmPedR06, fmPedR06);
  if sNome = 'PED030203' then
    CriarForm(TfmPedR07, fmPedR07);
  if sNome = 'PED030205' then
    CriarForm(TfmPedR09, fmPedR09);
  if sNome = 'PED030206' then
    CriarForm(TfmPedR15, fmPedR15);
  if sNome = 'PED030207' then
    CriarForm(TfmPedR17, fmPedR17);
  if sNome = 'PED030208' then
    CriarForm(TfmPedR18, fmPedR18);
  if sNome = 'PED030209' then
    CriarForm(TfmPedR19, fmPedR19);
  if sNome = 'PED030210' then
    CriarForm(TfmPedR20, fmPedR20);
  if sNome = 'PED030211' then
    CriarForm(TfmPedR21, fmPedR21);
  if sNome = 'PED030212' then
    CriarForm(TfmPedR23, fmPedR23);
  if sNome = 'PED030213' then
    CriarForm(TfmPedR124, fmPedR124);
  if sNome = 'PED030214' then
    CriarForm(TfmPedR28, fmPedR28);
  if sNome = 'PED030215' then
    CriarForm(TfmPedR29, fmPedR29);
  if sNome = 'PED030216' then
    CriarForm(TfmPedR20_Cta, fmPedR20_Cta);
  if sNome = 'PED030217' then
    CriarForm(TfmPedR20_CtaSint, fmPedR20_CtaSint);

  if sNome = 'PED030301' then
    CriarForm(TfmPedR32, fmPedR32);
  if sNome = 'PED030302' then
    CriarForm(TfmPedR10, fmPedR10);
  if sNome = 'PED030303' then
    CriarForm(TfmPedR14, fmPedR14);
  if sNome = 'PED030304' then
    CriarForm(TfmPedR12, fmPedR12);
  if sNome = 'PED030305' then
    CriarForm(TfmPedR26, fmPedR26);
  if sNome = 'PED030306' then
    CriarForm(TfmPedR30, fmPedR30);

  if sNome = 'PED0401' then
    CriarForm(TfmManAce, fmManAce);
  if sNome = 'PED0403' then
    CriarForm(TfmManPar, fmManPar);
  if sNome = 'PED0406' then
    CriarForm(TfmManSer, fmManSer);

  if sNome = 'PED0407' then
  begin

    if Trim(UpperCase(GLibAce)) = 'SIM' then
    begin

      try

        fmManMkp := TfmManMkp.Create(Self);
        fmManMkp.ShowModal;

      finally

        FreeAndNil(fmManMkp);

      end;

    end
    else
      fmsgErro(GMensagem, nil);

  end;
end;

procedure TfmManPri.Timer1Timer(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then
  begin

    if not Assigned(fmVerUsu) then
    begin

      try

        fmVerUsu := TfmVerUsu.Create(Self);

        fmVerUsu.ShowModal;

      finally

        FreeAndNil(fmVerUsu);

      end;
    end;
  end;
end;

procedure TfmManPri.smModLogClick(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then
  begin

    if not Assigned(fmManTSe) then
    begin

      try

        fmManTSe := TfmManTSe.Create(Self);

        fmManTSe.ShowModal;

      finally

        FreeAndNil(fmManTSe);

      end;
    end;
  end;
end;

procedure TfmManPri.Obs(Sender: TObject);
var
  ret, sequenc: string;
  DteSer: TDateTime;
  Dia: string;
  Mes: string;
  Ano: string;
  strAuxDate : string;
begin

//DecimalSeparator := ',';

  if not PopMenu.AutoPopup then
    PopMenu.AutoPopup := True;

  if sCancelar = 'F' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPar';
      Open;

      GParLib := FieldbyName('ParLib').AsString;

    end;

    if Trim(GParLib) <> '' then
    begin

      GParLib := copy(GParLib, 01, 42) + copy(GParLib, 44, 42);

      fmManGDB.dbMain.StartTransaction;

      with StoredProc do
      begin

        ParamByName('SEQARQ').AsString := GParLib;
        Close;
        Prepare;
        ExecProc;
        Unprepare;

        if ParamByName('RETORNO').Value <> null then
        begin

          ret := UpperCase(ParamByName('RETORNO').Value);

          fmManGDB.dbMain.Commit;

        end
        else
          fmManGDB.dbMain.Rollback;
      end;

    end
    else
      ret := 'NAO';

    if (ret = 'NAO') and (quSql.FieldbyName('FlgSeq').AsString = 'Nao') then
    begin

      sequenc := fLimpaStr(FormatDateTime('yyyy/mm/dd', Date) + FormatDateTime('HH:mm:ss', Time));

      sequenc := fEnCripto(fCriaSeq(sequenc), 'C');

      with quSQL, SQL do
      begin

        try
          Close;
          Text := ' Update GerPar Set IdePar = ''' + sequenc + ''',' +
            '                   FlgSeq = ''' + 'Sim' + ''',' +
            '                   FlgTrg = ''' + '*' + ''',' +
            '                   ParLib = null';
          ExecSQL;
        except

        end;

      end;
    end;

    GLibAce := 'Nao';

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPar';
      Open;

      GParLib := FieldbyName('ParLib').AsString;

    end;

    if Trim(GParLib) = '' then
    begin

      try

        fmSadReg := TfmSadReg.Create(Self);

        fmSadReg.ShowModal;

      finally

        FreeAndNil(fmSadReg);

      end;
    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPar';
      Open;

      GParLib := FieldbyName('ParLib').AsString;

    end;

    if Trim(GParLib) <> '' then
    begin

      Sequenc := fEnCripto(quSQL.FieldbyName('ParLib').AsString, 'D');

      if copy(Sequenc, 43, 01) = 'L' then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select Cast(' + QuotedStr('Today') + ' as Date) as DteSer From rdb$database';
          Open;

          strAuxDate :=  formatDateTime('dd/mm/yyyy',FieldbyName('DteSer').AsDateTime);
          DteSer := strToDate(strAuxDate);

        end;

        Dia := fNumZeros(FloatToStr(StrToInt(copy(Sequenc, 11, 01) + copy(Sequenc, 22, 01) + copy(Sequenc, 33, 01)) / 8), 2);
        Mes := fNumZeros(FloatToStr(StrToInt(copy(Sequenc, 42, 01) + copy(Sequenc, 54, 01)) / 8), 2);
        Ano := fNumZeros(FloatToStr(StrToInt(copy(Sequenc, 13, 01) + copy(Sequenc, 09, 02) + copy(Sequenc, 01, 02)) / 3), 4);

        if DteSer > StrToDate(Dia + '/' + Mes + '/' + Ano) then
        begin

          Sequenc := fEnCripto(copy(Sequenc, 1, 42) + 'N' + copy(Sequenc, 44, 11), 'C');

          with quSQL, SQL do
          begin

            Close;
            Text := ' Update GerPar Set Flgtrg = ' + QuotedStr('*') + ',' +
              '                   ParLib = ' + QuotedStr(Sequenc);
            ExecSQL;

          end;

          fmsg(GMensagem, 'I');

        end
        else
          GLibAce := 'Sim';

      end
      else
        fmsg(GMensagem, 'I');

    end
    else
      fmsg(GMensagem, 'I');

    try

       fmManLog := TfmManLog.Create(Self);
      fmManLog.ShowModal;
      sCancelar := fmManLog.Cancelar;

    finally

      FreeAndNil(fmManLog);

    end;

    if uppercase(GUsu_Nm) = 'DORI' then
      Splash;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPar';
      Open;

    end;

    if Trim(quSQL.FieldbyName('ParLib').AsString) = '' then
      PopMenu.Items[3].Visible := False
    else
    begin

      if GUsu_Id <> 999 then
      begin

        if UpperCase(Trim(GLibAce)) = 'SIM' then
          PopMenu.Items[3].Visible := False

      end;
    end;

    if sCancelar = 'N' then
    begin

      try

        fmManDef := TFmManDef.Create(Self);

        fmManDef.Show;
        fmManDef.Refresh;

      finally

        FreeAndNil(fmManDef);

      end;

      if Trim(GApeEmp) <> '' then
        fmManPri.Caption := 'Emerion Comercial - ' + GApeEmp + GApeAce
      else
        fmManPri.Caption := 'Emerion Comercial';

      if GEmp_Id > 0 then
        fmManPri.sbMain.Panels[1].Text := ' Usuário : ' + GUsu_Nm
      else
        fmManPri.sbMain.Panels[1].Text := ' Usuário : ';

      fmManPri.sbMain.Panels[2].Text := DateToStr(Date);

      if GCodVen_Id > 0 then
      begin

        if Trim(fAcesso('PED0201')) <> '' then
        begin
          fmManRes := TfmManRes.Create(Self);
          fmManRes.Show;

        end;
      end;
    end;
  end;
end;

procedure TfmManPri.mmPsqUsuarioClick(Sender: TObject);
begin

  try

    fmManLog := TfmManLog.Create(Self);

    fmManLog.ShowModal;

  finally

    FreeAndNil(fmManLog);

  end;

  try

    fmManDef := TFmManDef.Create(Self);

    fmManDef.Show;
    fmManDef.Refresh;

  finally

    FreeAndNil(fmManDef);

  end;

  if Trim(GUsu_Nm) <> '' then
    fmManPri.Caption := 'Emerion Comercial - ' + GApeEmp
  else
    fmManPri.Caption := 'Emerion Comercial';

  if GEmp_Id > 0 then
    fmManPri.sbMain.Panels[1].Text := ' Usuário : ' + GUsu_Nm
  else
    fmManPri.sbMain.Panels[1].Text := ' Usuário : ';

  fmManPri.sbMain.Panels[2].Text := DateToStr(Date);

  if GCodVen_Id > 0 then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From PedPar';
      Open;

      GFlgImp := FieldByName('FlgImp').AsString;

    end;

    if Trim(fAcesso('PED0201')) <> '' then
    begin

      fmManRes := TfmManRes.Create(Self);
      fmManRes.Show;

    end;
  end;
end;

procedure TfmManPri.smManTSeClick(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then
  begin

    if not Assigned(fmManTSe) then
    begin

      try

        fmManTSe := TfmManTSe.Create(Self);

        fmManTSe.ShowModal;

      finally

        FreeAndNil(fmManTSe);

      end;
    end;
  end;
end;

procedure TfmManPri.smLoginClick(Sender: TObject);
begin
  if not Assigned(fmVerUsu) then
  begin

    try

      fmVerUsu := TfmVerUsu.Create(Self);

      fmVerUsu.ShowModal;

    finally

      FreeAndNil(fmVerUsu);

    end;
  end;
end;

procedure TfmManPri.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i, j: integer;
  FormChild: string;

begin

  j := 0;

  for i := 0 to Screen.FormCount - 1 do
  begin

    FormChild := Trim(Screen.Forms[i].Name);

    if Trim(FormChild) <> '' then
    begin

      if UpperCase(FormChild) <> 'FMMANPRI' then
        Inc(j);
    end;
  end;

  if j > 0 then
    fmsgErro('Existe(m) ' + IntToStr(j) + ' Formulario(s) Aberto(s). Por Favor Feche-os.', nil)
  else
  begin
    Action := CaFree;
    inherited;
  end;
end;

procedure TfmManPri.ABE0111Click(Sender: TObject);
begin
  close;
end;

procedure TfmManPri.CriarForm(frmClass: TFormClass; out Obj);
var
  Found, i: Integer;
begin

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is FrmClass then
      Found := i;

  end;

  if Found >= 0 then
  begin

    TForm(Obj).WindowState := wsNormal;
    TForm(Obj).BringToFront;

  end
  else
  begin

    TForm(Obj) := FrmClass.Create(Self);
    TForm(Obj).Show;

  end;
end;

procedure TfmManPri.Licenciamento1Click(Sender: TObject);
var
  i, j: integer;
  FormChild: string;
begin
  if GUsu_Id = 999 then
  begin

    try

      fmManLic := TfmManLic.Create(Self);
      fmManLic.ShowModal;

    finally

      FreeAndNil(fmManLic);

    end;

  end
  else
  begin

    if UpperCase(Trim(GLibAce)) = 'NAO' then
    begin

      j := 0;

      for i := 0 to Screen.FormCount - 1 do
      begin

        FormChild := Trim(Screen.Forms[i].Name);

        if Trim(FormChild) <> '' then
        begin

          if UpperCase(FormChild) <> 'FMMANPRI' then
            Inc(j);

        end;
      end;

      if j > 0 then
        fmsgErro('Existe(m) ' + IntToStr(j) + ' Formulario(s) Aberto(s). Por Favor Feche-os.', nil)
      else
      begin

        try

          fmManAut := TfmManAut.Create(Self);
          fmManAut.ShowModal;

        finally

          FreeAndNil(fmManAut);

        end;
      end;

      if GUsu_Id <> 999 then
      begin

        if UpperCase(Trim(GLibAce)) = 'SIM' then
          PopMenu.Items[3].Visible := False;

      end;
    end;
  end;
end;

procedure TfmManPri.RetornoSocket(StrComando: string);
begin
  //
end;

procedure TfmManPri.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sItem: TIdItem;
begin
  if (key = VK_HOME) and (Shift = [ssCtrl]) then
    ListaForms;

  if (Key = VK_F10) and (Shift = [ssCtrl]) then
  begin
    frmPsqQtdUnificado := TfrmPsqQtdUnificado.Create(Self);
    try
      sItem.CODCLP := '1';
      sItem.CODGRU := '001';
      sItem.CODSUB := '0001';
      sItem.CODPRO := '04792';
      sItem.Descricao := 'Produto de Teste';

      frmPsqQtdUnificado.Showmodal(sItem);
    finally
      FreeAndnil(frmPsqQtdUnificado);
    end;
  end;
end;

{function TfmManPri.enviaEmail(mostrarDialog: Boolean; assunto, corpo,
  destinatario: PAnsiChar; anexos: Variant; copia: TStringList): Boolean;
begin
    if copia <> nil then
      enviarEmail(mostrarDialog, assunto,corpo,destinatario,anexos,copia)
    else
       enviarEmail(mostrarDialog, assunto,corpo,destinatario,anexos);
end;}

procedure TfmManPri.Splash;

begin



end;

function TfmManPri.enviaEmail(mostrarDialog: Boolean; assunto, corpo,
  destinatario: PAnsiChar; anexos: Variant; copia: TStringList): Boolean;
begin
    if copia <> nil then
      enviarEmail(mostrarDialog, assunto,corpo,destinatario,anexos,copia)
    else
      enviarEmail(mostrarDialog, assunto,corpo,destinatario,anexos);


end;

procedure TfmManPri.configPadrao;
var
  arqIni : TIniFile;
  strPath:string;
begin
  gStrWindows:='';

  strPath := ExtractFilePath (Application.ExeName)+'CONFIG.INI';
  //showMessage(strPath);
  //showmessage( strPath);

  if (fileexists(strPath)) then
  begin
    arqIni := TIniFile.Create(strPath) ;

    try
        //arqIni.WriteString('WINDOWS','VERSAO','10');
        gStrWindows:=arqIni.ReadString('WINDOWS','VERSAO','');
        //showmessage('Versao01: '+gStrWindows);
        //gStrWindows := '10';
    finally
      arqIni.Free;
    end;

  end;

end;

procedure TfmManPri.ImprimePedidoDinamicamente(codemp: Integer; numres: Integer;dteres: TDateTime);
var
  imprimirPedido : procedure(codemp: Integer; numres: Integer; dteres: TDateTime); stdcall;
  dll :THandle ;

begin
 dll := LoadLibrary('EmerionLib.dll');

  if dll > 0 then
  begin
    @imprimirPedido := GetProcAddress(dll, 'ImprimePedido');

    if (@imprimirPedido <> nil) then
      imprimirPedido(codemp, numres, dteres);

    Freelibrary(dll);
  end;

end;

procedure TfmManPri.ImprimeViaSeparacaoDinamicamente(codemp,numres: Integer; dteres: TDateTime);
var
  ImprimeViaSep  : procedure(codemp:Integer; numres:Integer; dteres:TDateTime);stdcall;
  dll :THandle ;
begin

  dll := LoadLibrary('EmerionLib.dll');

  if dll > 0 then
  begin
    @ImprimeViaSep := GetProcAddress(dll, 'ImprimeViaSep');

    if (@ImprimeViaSep <> nil) then
      ImprimeViaSep(codemp, numres, dteres);

    Freelibrary(dll);
  end;

end;

procedure TfmManPri.ImprimePedido(codemp:Integer; numres:Integer; dteres:TDateTime; nroPage:string);
var
 ImprimePedido: procedure(codemp:Integer; numres:Integer; dteres:TDateTime; nroPage:string); stdcall;
 dll :THandle ;
begin
  dll := LoadLibrary('EmerionLib.dll');

  if dll > 0 then
  begin
    @ImprimePedido := GetProcAddress(dll, 'ImprimePedido');

    if (@ImprimePedido <> nil) then
      ImprimePedido(codemp, numres, dteres, nroPage);

    Freelibrary(dll);
  end;

end;

procedure TfmManPri.ImprimeViaSeparacao(codemp:Integer; numres:Integer; dteres:TDateTime);
var
  dll :THandle;
  ImprimeViaSep: procedure(codemp:Integer; numres:Integer; dteres:TDateTime); stdcall;
begin
  dll := LoadLibrary( PChar('EmerionLib.dll') );

  if dll > 0 then
  begin
    @ImprimeViaSep := GetProcAddress(dll, 'ImprimeViaSep');

    if (@ImprimeViaSep <> nil) then
      ImprimeViaSep(codemp, numres, dteres);

    Freelibrary(dll);
  end;

end;

end.





