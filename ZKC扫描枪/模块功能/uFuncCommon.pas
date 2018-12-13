/// <summary>
///   <para>
///     ��������
///   </para>
///   <para>
///     Public function
///   </para>
/// </summary>
unit uFuncCommon;

interface

//���ڹ����·���FrameWork.inc
//�����ڹ�������������FMX����ָ��
{$IFNDEF FMX}
{$IFNDEF VCL}
{$I FrameWork.inc}
{$ENDIF}
{$ENDIF}


//��������FMX.�ȵ�Ԫ,��Ȼ��Android�����в���ʹ�ûῨ��
//������Android������ʹ��
uses
  Classes,
  Types,
  StrUtils,
  Math,
  RTLConsts,


  {$IFDEF MSWINDOWS}
  Windows,
  {$ENDIF}
  {$IFDEF ANDROID}
  Androidapi.IOUtils,
  {$ENDIF}
  {$IFDEF _MACOS}
  Macapi.Mach,
  {$ENDIF}


  SysUtils;






const
  //˫���ȱȽ����
  Precision:Double=0.01;






/// <summary>
///   <para>
///     ��������
///   </para>
///   <para>
///     Add refrence
///   </para>
/// </summary>
procedure ObjAddRef(Obj:TObject);

/// <summary>
///   <para>
///     ��������
///   </para>
///   <para>
///     Reduce refrence
///   </para>
/// </summary>
procedure ObjRelease(Obj:TObject);






//�ͷ�
procedure FreeAndNil(var Obj);




/// <summary>
///   ��׼���ڸ�ʽת��
///   <para>
///     Standard date convert
///   </para>
/// </summary>
function StandardDateToStr(Const ADateTime:TDateTime):String;
/// <summary>
///   ��׼���ڸ�ʽת��
///    <para>
///     Standard date convert
///   </para>
/// </summary>
function StandardStrToDateTime(Const Str:String):TDateTime;
function StandardStrToDate(Const Str:String):TDateTime;
/// <summary>
///   ��׼���ڸ�ʽת��
///     <para>
///     Standard date convert
///   </para>
/// </summary>
function StandardDateTimeToStr(Const ADateTime:TDateTime):String;



/// <summary>
///   <para>
///     ��ȡCPUʱ��
///   </para>
///   <para>
///     Get tick time of CPU
///   </para>
/// </summary>
function UIGetTickCount: LongWord;



/// <summary>
///   <para>
///     ����GUID�ַ���
///   </para>
///   <para>
///     Create GUID string
///   </para>
/// </summary>
function CreateGUIDString:String;
/// <summary>
///   <para>
///     ����GUID�ַ���(���ָ���-)
///   </para>
///   <para>
///     Create GUID string
///   </para>
/// </summary>
function CreateGUIDStringHasDevide:String;



//Double���ͱȽ�
function BiggerDouble(A,B:Double):Boolean;
function SmallerDouble(A,B:Double):Boolean;
function BiggerEqualDouble(A,B:Double):Boolean;
function SmallerEqualDouble(A,B:Double):Boolean;
function IsSameDouble(A,B:Double):Boolean;
function IsNotSameDouble(A,B:Double):Boolean;
function EqualDouble(A,B:Double):Boolean;
function NotEqualDouble(A,B:Double):Boolean;


var
  GlobalStandardFmtSettings: TFormatSettings;


implementation





function SmallerDouble(A,B:Double):Boolean;
begin
  //����С
  Result:=(A-B<-Precision);
end;

function BiggerDouble(A,B:Double):Boolean;
begin
  //������
  Result:=(A-B>Precision);
end;

function SmallerEqualDouble(A,B:Double):Boolean;
begin
  //����С
  Result:=(A-B<=Precision) or (ABS(A-B)<=Precision);
end;

function BiggerEqualDouble(A,B:Double):Boolean;
begin
  //������
  Result:=(A-B>=Precision) or (ABS(A-B)<=Precision);
end;

function IsSameDouble(A,B:Double):Boolean;
begin
  //��ͬ
  Result:=ABS(A-B)<Precision;
end;

function IsNotSameDouble(A,B:Double):Boolean;
begin
  //����ͬ
  Result:=ABS(A-B)>Precision;
end;

function EqualDouble(A,B:Double):Boolean;
begin
  //��ͬ
  Result:=ABS(A-B)<Precision;
end;

function NotEqualDouble(A,B:Double):Boolean;
begin
  //����ͬ
  Result:=ABS(A-B)>Precision;
end;

function CreateGUIDString:String;
var
  guid:TGUID;
begin
  CreateGUID(guid);
  Result:=GUIDToString(guid);
  Result:=ReplaceStr(Result,'{','');
  Result:=ReplaceStr(Result,'}','');
  Result:=ReplaceStr(Result,'-','');
end;

function CreateGUIDStringHasDevide:String;
var
  guid:TGUID;
begin
  CreateGUID(guid);
  Result:=GUIDToString(guid);
  Result:=ReplaceStr(Result,'{','');
  Result:=ReplaceStr(Result,'}','');
end;

function StandardDateTimeToStr(Const ADateTime:TDateTime):String;
begin
  Result:=DateTimeToStr(ADateTime,GlobalStandardFmtSettings);
end;

function StandardDateToStr(Const ADateTime:TDateTime):String;
begin
  Result:=FormatDateTime('YYYY-MM-DD',ADateTime);
end;

function StandardStrToDateTime(Const Str:String):TDateTime;
begin
  if Str='' then
  begin
    Result:=0;
  end
  else
  begin
    Result:=StrToDateTime(Str,GlobalStandardFmtSettings);
  end;
end;

function StandardStrToDate(Const Str:String):TDateTime;
begin
  if Str='' then
  begin
    Result:=0;
  end
  else
  begin
    Result:=StrToDate(Str,GlobalStandardFmtSettings);
  end;
end;

function UIGetTickCount: LongWord;
begin
  {$IFDEF FMX}
  Result:=TThread.GetTickCount;
  {$ENDIF}
  {$IFDEF VCL}
  Result:=GetTickCount;
  {$ENDIF}
end;

procedure ObjAddRef(Obj:TObject);
begin
  {$IFDEF IOS}
  Obj.__ObjAddRef;
  {$ENDIF}
  {$IFDEF ANDROID}
  Obj.__ObjAddRef;
  {$ENDIF}
end;

procedure ObjRelease(Obj:TObject);
begin
  {$IFDEF IOS}
  Obj.__ObjRelease;
  {$ENDIF}
  {$IFDEF ANDROID}
  Obj.__ObjRelease;
  {$ENDIF}
end;

//{$IF CompilerVersion < 29.0}
procedure FreeAndNil(var Obj);
//{$IF not Defined(AUTOREFCOUNT)}
//var
//  Temp: TObject;
begin
  Sysutils.FreeAndNil(Obj);
//  Temp := TObject(Obj);
//  Pointer(Obj) := nil;
//  if Temp<>nil then Temp.Free;
end;
//{$ELSE}
//begin
//  if TObject(Obj)<>nil then
//  begin
//    TObject(Obj).DisposeOf;
//  end;
//  TObject(Obj) := nil;
//end;
//{$ENDIF}
//{$ENDIF}





initialization
  GlobalStandardFmtSettings.ShortDateFormat:='yyyy-MM-dd';
  GlobalStandardFmtSettings.DateSeparator:='-';
  GlobalStandardFmtSettings.LongTimeFormat:='hh:mm:ss';
  GlobalStandardFmtSettings.TimeSeparator:=':';



end.






