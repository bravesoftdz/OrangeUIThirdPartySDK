/// <summary>
///   <para>
///     ��־�Ļ���
///   </para>
///   <para>
///     Base class of log
///   </para>
/// </summary>
unit uBaseLog;



interface

//���ڹ����·���FrameWork.inc
//�����ڹ�������������FMX����ָ��
{$IFNDEF FMX}
{$IFNDEF VCL}
{$I FrameWork.inc}
{$ENDIF}
{$ENDIF}


//������Android������ʹ��
uses
  SysUtils,
  Classes,



  {$IFDEF VCL}
  Windows,
  Forms,
  {$ENDIF}



  {$IFDEF FMX}
    {$IFDEF ANDROID}
    //Androidƽ̨��ʹ��FMX.Types.Log.d�������־,
    //�ڷ�������лῨ��
    Androidapi.Log,
    {$ELSE}
    FMX.Types,
    {$ENDIF}
    {$IFDEF MSWINDOWS}
    Winapi.Windows,
    {$ENDIF MSWINDOWS}
  {$ENDIF}




  uFuncCommon,
  uFileCommon;






Const
  CONST_BASELOG_FILENAME='OrangeUI.log';





type
  TBaseLog=class
  private
    //�Ƿ�д��־���ļ�
    FIsWriteLog:Boolean;
    //�Ƿ����������Ϣ
    FIsOutputLog:Boolean;

    //��־�ļ����ļ���
    FLogFileName:String;
    //��־�ļ��ľ��
    FFileHandle:THandle;


    //��־�ļ�������ļ���С
    FMaxFileSize: Integer;


    procedure CloseFileHandle;
    function GetFileHandle(InCreate:Boolean):Boolean;
  public
    constructor Create(const ALogFileName:String);
    Destructor Destroy;override;
  public

    //adb logcat | grep baidu
    /// <summary>
    ///   <para>
    ///     �ڰ�׿�������־�Ĺؼ���,�������
    ///   </para>
    ///   <para>
    ///     Keyword of output log on android,to filtration
    ///   </para>
    /// </summary>
    AndroidADBLogcatKeyword:String;


    /// <summary>
    ///   <para>
    ///     ��־�ļ�������ļ���С
    ///   </para>
    ///   <para>
    ///     Max file size of log file
    ///   </para>
    /// </summary>
    property MaxFileSize:Integer read FMaxFileSize write FMaxFileSize;
  public
    //�Ƿ�д��־���ļ�
    property IsWriteLog:Boolean read FIsWriteLog write FIsWriteLog;
    //�Ƿ����������Ϣ
    property IsOutputLog:Boolean read FIsOutputLog write FIsOutputLog;


    /// <summary>
    ///   <para>
    ///     ���������Ϣ
    ///   </para>
    ///   <para>
    ///     Output debug information
    ///   </para>
    /// </summary>
    procedure OutputDebugString(ADebugString:String);

    /// <summary>
    ///   <para>
    ///     д��־���ļ�
    ///   </para>
    ///   <para>
    ///     Write log to file
    ///   </para>
    /// </summary>
    procedure WriteLog(ALogString:String);

    /// <summary>
    ///   <para>
    ///     ��д��־�ļ�,�����������Ϣ
    ///   </para>
    ///   <para>
    ///     Write log file and output debug information
    ///   </para>
    /// </summary>
    procedure Debug(ADebugString:String);



    /// <summary>
    ///   <para>
    ///     ��¼�쳣����ϸ��Ϣ
    ///   </para>
    ///   <para>
    ///     Record detail information of exception
    ///   </para>
    /// </summary>
    /// <param name="AException">
    ///   �쳣
    ///  <para>
    ///  Exception
    ///  </para>
    /// </param>
    /// <param name="AModuleName">
    ///   ģ������
    ///  <para>
    ///  Module name
    ///  </para>
    /// </param>
    /// <param name="AUnitName">
    ///   ��Ԫ����
    ///  Unit name
    /// </param>
    /// <param name="AMethodName">
    ///   ��������
    ///  <para>
    ///  Method Name
    ///  </para>
    /// </param>
    /// <param name="APosition">
    ///   �쳣λ��
    ///  <para>
    ///  Position of exception
    ///  </para>
    /// </param>
    procedure HandleException(AException: Exception; const AModuleName:String;const AUnitName:String;const  AMethodName:String; const APosition: String='');overload;
    /// <summary>
    ///   <para>
    ///     ��¼�쳣�ľ�����Ϣ
    ///   </para>
    ///   <para>
    ///     Record detail information of exception
    ///   </para>
    /// </summary>
    procedure HandleException(AException: Exception; const  AMethodName:String);overload;
  end;





/// <summary>
///   <para>
///     ��ȡȫ�ֵ���־����
///   </para>
///   <para>
///     Get global log
///   </para>
/// </summary>
function GetGlobalLog:TBaseLog;

/// <summary>
///   <para>
///     �����־
///   </para>
///   <para>
///     Output log
///   </para>
/// </summary>
procedure OutputDebugString(ADebugString:String);

/// <summary>
///   <para>
///     �����쳣�Ի���
///   </para>
///   <para>
///     Pop up dialog box of exception
///   </para>
/// </summary>
procedure ShowException(ADebugString:String);

/// <summary>
///   <para>
///     ��¼�쳣����ϸ��Ϣ
///   </para>
///   <para>
///     Record detail information of exception
///   </para>
/// </summary>
procedure HandleException(AException: Exception; const AModuleName:String;const  AUnitName:String;const  AMethodName:String; const APosition: String='');overload;
/// <summary>
///   <para>
///     ��¼�쳣�ļ���Ϣ
///   </para>
///   <para>
///     Record detail information of exception
///   </para>
/// </summary>
procedure HandleException(AException: Exception;const AMethodName:String);overload;





implementation



var
  //ȫ�ֵ���־����
  GlobalLog:TBaseLog;


function GetGlobalLog:TBaseLog;
begin
  if GlobalLog=nil then
  begin
    GlobalLog:=TBaseLog.Create(CONST_BASELOG_FILENAME);
  end;
  Result:=GlobalLog;
end;

procedure HandleException(AException: Exception; const AModuleName:String;const  AUnitName:String;const  AMethodName:String; const APosition: String='');
begin
  GetGlobalLog.HandleException(AException, AModuleName, AUnitName, AMethodName, APosition);
end;

procedure HandleException(AException: Exception;const AMethodName:String);
begin
  GetGlobalLog.HandleException(AException, AMethodName);
end;

procedure ShowException(ADebugString:String);
begin
  raise Exception.Create(ADebugString);
end;

procedure OutputDebugString(ADebugString:String);
begin
  GetGlobalLog.OutputDebugString(ADebugString);
  if GetGlobalLog.FIsWriteLog then GetGlobalLog.WriteLog(ADebugString+#13#10);
end;




{ TBaseLog }

procedure TBaseLog.HandleException(AException: Exception; const AModuleName:String;const  AUnitName:String;const  AMethodName:String; const APosition: String='');
var
  ALogString:String;
begin

  ALogString:=' Module:'+AModuleName+' Unit:'+AUnitName+' Method:'+AMethodName+' Pos:'+APosition+'';

  if AException<>nil then
  begin
    ALogString:='Exception:'+AException.Message+ALogString;
  end;

  ALogString:=FormatDateTime('YYYY-MM-DD HH:MM:SS:ZZZ',Now)+' '+ALogString;
  Debug(ALogString);
end;

procedure TBaseLog.HandleException(AException: Exception; const  AMethodName:String);
var
  ALogString:String;
begin
  ALogString:=' Method:'+AMethodName;

  if AException<>nil then
  begin
    ALogString:='Exception:'+AException.Message+ALogString;
  end;

  ALogString:=FormatDateTime('HH:MM:SS:ZZZ',Now)+' '+ALogString;
  Debug(ALogString);
end;

procedure TBaseLog.CloseFileHandle;
begin
  if FFileHandle <> INVALID_HANDLE_VALUE then
  begin
    FileClose(FFileHandle);
  end;
  FFileHandle:=INVALID_HANDLE_VALUE;
end;

constructor TBaseLog.Create(const ALogFileName: String);
var
  LogDir:String;
begin
  AndroidADBLogcatKeyword:='OrangeUI';


  FIsWriteLog:=False;
  FIsOutputLog:=True;
  //�����־�ļ���10M
  FMaxFileSize:=10*1024*1024;
  FFileHandle:= INVALID_HANDLE_VALUE;
  LogDir:=GetApplicationPath;


  {$IFDEF MSWINDOWS}
  //����������ܵĵ���,��ô������־�ļ�
  if DirectoryExists('E:\MyFiles\') then
  begin
    LogDir:='E:\MyFiles\';
    FIsWriteLog:=True;
  end;
  {$ENDIF}



  //������־Ŀ¼
  if Not DirectoryExists(LogDir) then
  begin
    SysUtils.ForceDirectories(LogDir);
  end;
  FLogFileName:=LogDir+ALogFileName;



end;

destructor TBaseLog.Destroy;
begin
  CloseFileHandle;
  inherited;
end;

Function TBaseLog.GetFileHandle(InCreate:Boolean):Boolean;
begin
  Result:=False;

  if FIsWriteLog then
  begin
    if InCreate or Not FileExists(FLogFileName) then
    begin
      //�رվ��
      CloseFileHandle;
      //�����ļ�
      FFileHandle:=FileCreate(FLogFileName, fmCreate or fmOpenWrite or fmShareDenyNone);
    end
    else
    begin
      //�����ļ�,����ļ�
      if FFileHandle = INVALID_HANDLE_VALUE then
      begin
        FFileHandle:=FileOpen(FLogFileName,fmOpenWrite or fmShareDenyNone);
      end;
      //�ļ����
      if FFileHandle <> INVALID_HANDLE_VALUE then
      begin
        FileSeek(FFileHandle,0,2);
      end;
    end;
  end;

  if FFileHandle <> INVALID_HANDLE_VALUE then
  begin
    Result:=True;
  end;
end;

procedure TBaseLog.WriteLog(ALogString:String);
var
  B: TBytes;
begin
  if Not FIsWriteLog then Exit;

  if GetFileHandle(False) then
  begin
    //ת����Ansi�ַ���
    {$IFDEF FMX}
    B := TEncoding.ANSI.GetBytes(ALogString);
    {$ENDIF}
    {$IFDEF VCL}
    B := TEncoding.Default.GetBytes(ALogString);
    {$ENDIF}
    FileWrite(FFileHandle, B[0],Length(B));
  end;
end;

procedure TBaseLog.OutputDebugString(ADebugString:String);
{$IFDEF ANDROID}
var
  M: TMarshaller;
{$ENDIF}
begin
  try
    {$IFDEF VCL}
    OutputDebugStringW(PWideChar(ADebugString));
    {$ENDIF}

    {$IFDEF FMX}

      {$IFDEF MSWINDOWS}
        OutputDebugStringW(PWideChar(ADebugString));
      {$ELSE}
          {$IFDEF ANDROID}
            //Android����˲���ʹ��FMX.Types.Log.d
            LOGI(M.AsAnsi(AndroidADBLogcatKeyword+' '+ADebugString).ToPointer);
          {$ELSE}
            Log.d(ADebugString);
          {$ENDIF}
      {$ENDIF}

    {$ENDIF}
  except
    //����в���������ַ�,�ᱨ��������
  end;
end;

procedure TBaseLog.Debug(ADebugString:String);
begin
  if FIsWriteLog then WriteLog(ADebugString);

  if FIsOutputLog then OutputDebugString(ADebugString);
end;





Initialization
  GlobalLog:=nil;



Finalization
  uFuncCommon.FreeAndNil(GlobalLog);




end.


