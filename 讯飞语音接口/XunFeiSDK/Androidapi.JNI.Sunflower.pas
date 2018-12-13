//====================================================
//
//  转换来自JavaOrClass2Pas(原JavaClassToDelphiUnit)
//  原始作者：ying32
//  QQ: 1444386932
//      396506155
//  Email：yuanfen3287@vip.qq.com
//
//  修改 By：Flying Wang & 爱吃猪头肉
//  请不要移除以上的任何信息。
//  请不要将本版本发到城通网盘，否则死全家。
//
//  Email：1765535979@qq.com
//
//  生成时间：2017-06-18 15:12:45
//  工具版本：1.0.2015.5.11
//
//====================================================
unit Androidapi.JNI.Sunflower;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
//  Androidapi.JNI.org.json.JSONObject,
//  Androidapi.JNI.java.net.URL,
  Androidapi.JNI.Location,
  Androidapi.JNI.Net,
  Androidapi.JNI.Webkit,
  Androidapi.JNI.os//,
//  Androidapi.JNI.org.json.JSONArray
  ;


type
// ===== Forward declarations =====

//  Ja = interface; //com.iflytek.sunflower.a.a
//  Jb = interface; //com.iflytek.sunflower.a.b
//  Jc = interface; //com.iflytek.sunflower.a.c
//  Jd = interface; //com.iflytek.sunflower.a.d
//  Je = interface; //com.iflytek.sunflower.a.e
//  Ja = interface; //com.iflytek.sunflower.a
//  Ja_a = interface; //com.iflytek.sunflower.b.a$a
//  Ja = interface; //com.iflytek.sunflower.b.a
//  Jb = interface; //com.iflytek.sunflower.b.b
//  Jc = interface; //com.iflytek.sunflower.b.c
//  Jb = interface; //com.iflytek.sunflower.b
//  Ja = interface; //com.iflytek.sunflower.c.a
//  Jb = interface; //com.iflytek.sunflower.c.b
//  Jc = interface; //com.iflytek.sunflower.c.c
//  Jd = interface; //com.iflytek.sunflower.c.d
//  Je = interface; //com.iflytek.sunflower.c.e
//  Jf = interface; //com.iflytek.sunflower.c.f
//  Jg = interface; //com.iflytek.sunflower.c.g
//  Jh = interface; //com.iflytek.sunflower.c.h
//  Jc = interface; //com.iflytek.sunflower.c
//  JCollectorJs_a = interface; //com.iflytek.sunflower.CollectorJs$a
  JCollectorJs = interface; //com.iflytek.sunflower.CollectorJs
//  Ja = interface; //com.iflytek.sunflower.config.a
//  Jb = interface; //com.iflytek.sunflower.config.b
  JVersion = interface; //com.iflytek.sunflower.config.Version
//  Jd = interface; //com.iflytek.sunflower.d
//  Je = interface; //com.iflytek.sunflower.e
//  Jf = interface; //com.iflytek.sunflower.f
//  JFlowerCollector_1 = interface; //com.iflytek.sunflower.FlowerCollector$1
  JFlowerCollector_Gender = interface; //com.iflytek.sunflower.FlowerCollector$Gender
  JFlowerCollector = interface; //com.iflytek.sunflower.FlowerCollector
  JOnlineConfigListener = interface; //com.iflytek.sunflower.OnlineConfigListener
//  Ja = interface; //com.iflytek.sunflower.task.a
//  Jb = interface; //com.iflytek.sunflower.task.b
//  Jc = interface; //com.iflytek.sunflower.task.c
//  Jd = interface; //com.iflytek.sunflower.task.d
//  Je = interface; //com.iflytek.sunflower.task.e
//  Jf = interface; //com.iflytek.sunflower.task.f
//  Jg = interface; //com.iflytek.sunflower.task.g
//  Jh = interface; //com.iflytek.sunflower.task.h
//  Ji = interface; //com.iflytek.sunflower.task.i
//  Jj = interface; //com.iflytek.sunflower.task.j
  JSendTask = interface; //com.iflytek.sunflower.task.SendTask

// ===== Interface declarations =====

//  JaClass = interface(JObjectClass)
//  ['{441BAE13-D34E-4DAB-8786-C580AB473EEB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: Int64): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/a/a')]
//  Ja = interface(JObject)
//  ['{4031B6D5-2E27-4D42-BD76-466750D07B4C}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Int64;
//    procedure _Setb(ab: Int64);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Int64 read _Getb write _Setb;
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{08489DDB-4E71-44BD-9914-A1983D1D72CC}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/a/b')]
//  Jb = interface(JObject)
//  ['{2D4CAFF9-DCF2-4E75-83E1-BB9894576E5A}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Int64;
//    procedure _Setb(ab: Int64);
//    function _Getc: Int64;
//    procedure _Setc(ac: Int64);
//    function _Getd: JArrayList;
//    procedure _Setd(ad: JArrayList);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Int64 read _Getb write _Setb;
//    property c: Int64 read _Getc write _Setc;
//    property d: JArrayList read _Getd write _Setd;
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{E8D55ED5-8FB5-4DEC-889B-89017A2E5BED}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jc; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/a/c')]
//  Jc = interface(JObject)
//  ['{800D5679-472C-4B86-B7C5-88D0AA109AD2}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: Int64;
//    procedure _Setc(ac: Int64);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: Int64 read _Getc write _Setc;
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{27BD6BC9-AAE3-4964-8D2B-92E86B56A23C}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jd; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/a/d')]
//  Jd = interface(JObject)
//  ['{DF91F16B-A62B-4C23-856C-F1D219696170}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JHashMap;
//    procedure _Setd(ad: JHashMap);
//    function _Gete: Int64;
//    procedure _Sete(ae: Int64);
//    function _Getf: Int64;
//    procedure _Setf(af: Int64);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JHashMap read _Getd write _Setd;
//    property e: Int64 read _Gete write _Sete;
//    property f: Int64 read _Getf write _Setf;
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{64A5FC27-DF1E-4DCC-B2B4-273D0DFAC550}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: Int64): Je; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/a/e')]
//  Je = interface(JObject)
//  ['{930FD407-220C-4DFE-9489-20291BB0C1E8}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Int64;
//    procedure _Setb(ab: Int64);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Int64 read _Getb write _Setb;
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JaClass = interface(JObjectClass)
//  ['{3648455C-A00B-4880-89C9-10F17BCD5BFA}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Ja; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/a')]
//  Ja = interface(JObject)
//  ['{6846121A-50B9-4B33-B529-33B7DAC55024}']
//    { Property Methods }
//    function _Geta: JExecutorService;
//    procedure _Seta(aa: JExecutorService);
//
//    { methods }
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure a(P1: JString; P2: JString; P3: JHashMap; P4: Int64); cdecl; overload;
//    procedure b(P1: JString; P2: JString; P3: JHashMap; P4: Int64); cdecl; overload;
//    procedure c(P1: JString; P2: JString; P3: JHashMap; P4: Int64); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    procedure a; cdecl; overload;
//    procedure b; cdecl; overload;
//    procedure b(P1: JString); cdecl; overload;
//    procedure c(P1: JString); cdecl; overload;
//    procedure a(P1: JJSONObject; P2: JString; P3: JHashMap); cdecl; overload;
//    procedure c; cdecl; overload;
//    procedure a(P1: JOnlineConfigListener); cdecl; overload;
//
//    { Property }
//    property a: JExecutorService read _Geta write _Seta;
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{D6500843-E852-4B9C-A929-FEFA799F02F9}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/b/a$a')]
//  Ja_a = interface(IJavaInstance)
//  ['{60D2E76C-467C-4CAC-9CEB-E89D4006AE1F}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Ja; P2: TJavaArray<Byte>); cdecl; overload;
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//    procedure a(P1: JException); cdecl; overload;
//
//    { Property }
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{BF2402C0-7999-498D-8CF5-92D1E4C3E989}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ja; cdecl;
//    {class} function a(P1: JString; P2: JString): JURL; cdecl; overload;
//    {class} function a(P1: JString): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/b/a')]
//  Ja = interface(JObject)
//  ['{E155985A-96C1-4F07-8896-ED47B47EB932}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: JString; P2: JString; P3: TJavaArray<Byte>); cdecl; overload;
//    procedure b(P1: Integer); cdecl; overload;
//    procedure a(P1: Ja_a); cdecl; overload;
//    procedure b(P1: Ja_a); cdecl; overload;
//    procedure run; cdecl;
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//    procedure a; cdecl; overload;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{86AA3AB6-6477-439D-A25A-FBB1D99CA746}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/b/b')]
//  Jb = interface(JObject)
//  ['{6221C35C-CECC-4B2F-A804-B42EDA52FA1E}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//
//    { methods }
//    procedure a(P1: JJSONObject; P2: Integer); cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{82B67309-B216-46C7-B63C-6A0A87E55155}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/b/c')]
//  Jc = interface(JObject)
//  ['{2CAFCB6F-A6D2-49D8-8CF4-A1A642439662}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JException); cdecl; overload;
//    procedure a(P1: Ja; P2: TJavaArray<Byte>); cdecl; overload;
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JbClass = interface(JObjectClass)
//  ['{DDB87CB8-1215-4C9D-B968-D327DE068F86}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/b')]
//  Jb = interface(JObject)
//  ['{6F3C8A84-AC91-411B-8E8A-50D3D5699EB0}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JaClass = interface(JObjectClass)
//  ['{A24E006B-B201-448F-991F-2C99E61C4C41}']
//    { static Property Methods }
//    {class} function _Geta: TJavaArray<Int64>;
//    {class} function _Getb: TJavaArray<TJavaObjectArray<JString>>;
//
//    { static Methods }
//    {class} function a(P1: JContext): Jf; cdecl; overload;
//    {class} procedure a(P1: JContext; P2: Jf; P3: JBoolean); cdecl; overload;
//    {class} procedure a(P1: Jf; P2: JContext); cdecl; overload;
//
//    { static Property }
//    {class} property a: TJavaArray<Int64> read _Geta;
//    {class} property b: TJavaArray<TJavaObjectArray<JString>> read _Getb;
//  end;

//  [JavaSignature('com/iflytek/sunflower/c/a')]
//  Ja = interface(JObject)
//  ['{67BB2A09-CDB6-4BF0-B90F-D2BA77BBCCFA}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{656608B1-09D6-407C-8C3B-6D3A55177CF8}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString; P2: Integer): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/c/b')]
//  Jb = interface(JObject)
//  ['{1410BD27-FCF5-4450-AF1D-A5F2FFC6B3FE}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{FD2BA2BC-F84E-43FC-BA2E-4584D085D52A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//    {class} function b(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//    {class} function a(P1: JString): JString; cdecl; overload;
//    {class} function b(P1: JString): JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/c/c')]
//  Jc = interface(JObject)
//  ['{6564E32B-97B8-437F-9123-21DBF1601B21}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{2314E839-1E67-469E-BA27-BCC084CE8274}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/c/d')]
//  Jd = interface(JObject)
//  ['{81E34491-24C5-42E1-A08E-202A85D3D966}']
//    { Property Methods }
//
//    { methods }
//    procedure uncaughtException(P1: JThread; P2: JThrowable); cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{961835F8-8AE3-4736-BDF2-A75738C1DE53}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString): Boolean; cdecl; overload;
//    {class} function a(P1: JContext): JString; cdecl; overload;
//    {class} function b(P1: JContext): JString; cdecl;
//    {class} function c(P1: JContext): JString; cdecl;
//    {class} function d(P1: JContext): JLocation; cdecl;
//    {class} function e(P1: JContext): TJavaArray<Int64>; cdecl;
//    {class} function f(P1: JContext): JString; cdecl;
//    {class} function g(P1: JContext): JString; cdecl;
//    {class} function a(P1: JString): JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/c/e')]
//  Je = interface(JObject)
//  ['{9EC867B8-7B6F-4364-97A9-DD8F298FB177}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{2AA4C4FD-5095-4400-A335-9180DEEEBF25}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jf; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/c/f')]
//  Jf = interface(JObject)
//  ['{4A471CDD-E899-4847-AB53-C27194A16197}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    function b: Jf; cdecl;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    function c: JHashMap; cdecl;
//    procedure a(P1: JString; P2: JString; P3: Boolean); cdecl; overload;
//    function toString: JString; cdecl;
//    function a(P1: JString): JString; cdecl; overload;
//    procedure d; cdecl;
//    function clone: JObject; cdecl;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{D02C31F7-84C8-43E2-BB72-F5913C14E3F5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: Boolean); cdecl; overload;
//    {class} procedure a(P1: JString; P2: JString); cdecl; overload;
//    {class} procedure a(P1: JString; P2: JString; P3: JThrowable); cdecl; overload;
//    {class} procedure b(P1: JString; P2: JString); cdecl; overload;
//    {class} procedure b(P1: JString; P2: JString; P3: JThrowable); cdecl; overload;
//    {class} procedure c(P1: JString; P2: JString); cdecl; overload;
//    {class} procedure c(P1: JString; P2: JString; P3: JThrowable); cdecl; overload;
//    {class} procedure d(P1: JString; P2: JString); cdecl; overload;
//    {class} procedure d(P1: JString; P2: JString; P3: JThrowable); cdecl; overload;
//    {class} procedure b(P1: Boolean); cdecl; overload;
//    {class} procedure e(P1: JString; P2: JString); cdecl;
//    {class} procedure f(P1: JString; P2: JString); cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/c/g')]
//  Jg = interface(JObject)
//  ['{A527D397-1A84-458E-85FC-9C7784EBD4A9}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{ACEC9FC9-14B4-4325-B35F-53AB37AEB84F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JNetworkInfo): JString; cdecl; overload;
//    {class} function a(P1: JContext): Boolean; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString): Boolean; cdecl; overload;
//    {class} function b(P1: JNetworkInfo): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/c/h')]
//  Jh = interface(JObject)
//  ['{4B7893A9-6A33-406D-9464-D13985E6E2FB}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JcClass = interface(JObjectClass)
//  ['{EB85FA25-FAEF-4B79-B217-9AE37819D34E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/c')]
//  Jc = interface(JObject)
//  ['{037F6A01-EEBC-4616-B16C-CC858CCEA66B}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JCollectorJs_aClass = interface(JObjectClass)
//  ['{1B58116E-38CB-4889-B9C0-571815ACA342}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JCollectorJs; P2: JWebChromeClient): JCollectorJs_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/CollectorJs$a')]
//  JCollectorJs_a = interface(JObject)
//  ['{CC349ECD-16C3-442C-A11D-6BC4B1A70EAA}']
//    { Property Methods }
//
//    { methods }
//    function onJsPrompt(P1: JWebView; P2: JString; P3: JString; P4: JString; P5: JJsPromptResult): Boolean; cdecl;
//    procedure onCloseWindow(P1: JWebView); cdecl;
//    function onCreateWindow(P1: JWebView; P2: Boolean; P3: Boolean; P4: JMessage): Boolean; cdecl;
//    function onJsAlert(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
//    function onJsBeforeUnload(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
//    function onJsConfirm(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
//    procedure onProgressChanged(P1: JWebView; P2: Integer); cdecl;
//    procedure onReceivedIcon(P1: JWebView; P2: JBitmap); cdecl;
//    procedure onReceivedTitle(P1: JWebView; P2: JString); cdecl;
//    procedure onRequestFocus(P1: JWebView); cdecl;
//
//    { Property }
//  end;

//  TJCollectorJs_a = class(TJavaGenericImport<JCollectorJs_aClass, JCollectorJs_a>) end;

  JCollectorJsClass = interface(JObjectClass)
  ['{3BD731D3-C70D-4714-897C-F0AE91CDDF56}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext; P2: JWebView): JCollectorJs; cdecl; overload;
    {class} function init(P1: JContext; P2: JWebView; P3: JWebChromeClient): JCollectorJs; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/iflytek/sunflower/CollectorJs')]
  JCollectorJs = interface(JObject)
  ['{02418A70-E717-4082-9484-0D60454FDB4B}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCollectorJs = class(TJavaGenericImport<JCollectorJsClass, JCollectorJs>) end;

//  JaClass = interface(JObjectClass)
//  ['{28C1AED5-BB56-4D27-8854-BF6B0BF2D171}']
//    { static Property Methods }
//    {class} function _Geta: Int64;
//    {class} function _Getb: JString;
//    {class} function _Getc: JString;
//    {class} function _Getd: Boolean;
//    {class} function _Gete: JString;
//    {class} function _Getf: JString;
//    {class} function _Getg: JLong;
//    {class} function _Geth: JString;
//    {class} function _Geti: JBoolean;
//    {class} function _Getj: JBoolean;
//    {class} function _Getk: JBoolean;
//    {class} function _Getl: Integer;
//    {class} function _Getm: Integer;
//    {class} function _Getn: JBoolean;
//    {class} function _Geto: JString;
//    {class} function _Getp: Integer;
//    {class} function _Getq: Integer;
//    {class} function _Getr: Int64;
//    {class} function _Gets: Int64;
//    {class} function _Gett: JString;
//    {class} function _Getu: JString;
//    {class} function _Getv: JString;
//    {class} function _Getw: JString;
//    {class} function _Getx: JString;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: Int64 read _Geta;
//    {class} property b: JString read _Getb;
//    {class} property c: JString read _Getc;
//    {class} property d: Boolean read _Getd;
//    {class} property e: JString read _Gete;
//    {class} property f: JString read _Getf;
//    {class} property g: JLong read _Getg;
//    {class} property h: JString read _Geth;
//    {class} property i: JBoolean read _Geti;
//    {class} property j: JBoolean read _Getj;
//    {class} property k: JBoolean read _Getk;
//    {class} property l: Integer read _Getl;
//    {class} property m: Integer read _Getm;
//    {class} property n: JBoolean read _Getn;
//    {class} property o: JString read _Geto;
//    {class} property p: Integer read _Getp;
//    {class} property q: Integer read _Getq;
//    {class} property r: Int64 read _Getr;
//    {class} property s: Int64 read _Gets;
//    {class} property t: JString read _Gett;
//    {class} property u: JString read _Getu;
//    {class} property v: JString read _Getv;
//    {class} property w: JString read _Getw;
//    {class} property x: JString read _Getx;
//  end;

//  [JavaSignature('com/iflytek/sunflower/config/a')]
//  Ja = interface(JObject)
//  ['{787020DC-80CC-434A-8604-87224F96186D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{34E458F0-D1C9-4305-B46B-C9D393573BDD}']
//    { static Property Methods }
//    {class} function _Geta: JString;
//    {class} function _Getb: JString;
//    {class} function _Getc: JString;
//    {class} function _Getd: JString;
//    {class} function _Gete: JString;
//    {class} function _Getf: JString;
//    {class} function _Getg: JString;
//    {class} function _Geth: JString;
//    {class} function _Geti: JString;
//    {class} function _Getj: JString;
//    {class} function _Getk: JString;
//    {class} function _Getl: JString;
//    {class} function _Getm: JString;
//    {class} function _Getn: JString;
//    {class} function _Geto: JString;
//    {class} function _Getp: JString;
//    {class} function _Getq: JString;
//    {class} function _Getr: JString;
//    {class} function _Gets: JString;
//    {class} function _Gett: JString;
//    {class} function _Getu: JString;
//    {class} function _Getv: JString;
//    {class} function _Getw: JString;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: JString read _Geta;
//    {class} property b: JString read _Getb;
//    {class} property c: JString read _Getc;
//    {class} property d: JString read _Getd;
//    {class} property e: JString read _Gete;
//    {class} property f: JString read _Getf;
//    {class} property g: JString read _Getg;
//    {class} property h: JString read _Geth;
//    {class} property i: JString read _Geti;
//    {class} property j: JString read _Getj;
//    {class} property k: JString read _Getk;
//    {class} property l: JString read _Getl;
//    {class} property m: JString read _Getm;
//    {class} property n: JString read _Getn;
//    {class} property o: JString read _Geto;
//    {class} property p: JString read _Getp;
//    {class} property q: JString read _Getq;
//    {class} property r: JString read _Getr;
//    {class} property s: JString read _Gets;
//    {class} property t: JString read _Gett;
//    {class} property u: JString read _Getu;
//    {class} property v: JString read _Getv;
//    {class} property w: JString read _Getw;
//  end;

//  [JavaSignature('com/iflytek/sunflower/config/b')]
//  Jb = interface(JObject)
//  ['{349A0675-E97F-48B9-B1C4-3D82E4F8FED1}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

  JVersionClass = interface(JObjectClass)
  ['{03922271-B849-4510-BC3B-D51A9E62B0C9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVersion; cdecl;
    {class} function getVersion: JString; cdecl;
    {class} function getLogVersion: JString; cdecl;
    {class} function getCustomLogVersion: JString; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/sunflower/config/Version')]
  JVersion = interface(JObject)
  ['{7F45E49E-ED76-4EAD-B330-B982D3F84881}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVersion = class(TJavaGenericImport<JVersionClass, JVersion>) end;

//  JdClass = interface(JObjectClass)
//  ['{E9FD68DB-0C71-43C4-9104-0891953CA700}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): JSharedPreferences; cdecl; overload;
//    {class} function b(P1: JContext): JSharedPreferences; cdecl;
//    {class} function c(P1: JContext): JString; cdecl;
//    {class} function d(P1: JContext): JString; cdecl;
//    {class} function a(P1: JContext; P2: JString): Int64; cdecl; overload;
//    {class} function e(P1: JContext): JJSONObject; cdecl;
//    {class} function f(P1: JContext): JString; cdecl;
//    {class} procedure a(P1: JContext; P2: JString; P3: JString; P4: Integer); cdecl; overload;
//    {class} procedure g(P1: JContext); cdecl;
//    {class} procedure a(P1: JContext; P2: JString; P3: JLong); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/d')]
//  Jd = interface(JObject)
//  ['{E9235D25-BB53-426E-9E19-D0EDE3B8E520}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{960D4B93-6E26-4EF9-B060-FF68DF6FB109}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: Ja; P2: JJSONObject): JJSONObject; cdecl; overload;
//    {class} function a(P1: Jb; P2: JJSONObject): JJSONObject; cdecl; overload;
//    {class} function a(P1: JJSONObject; P2: JJSONObject): JJSONObject; cdecl; overload;
//    {class} function a(P1: JContext): JJSONObject; cdecl; overload;
//    {class} function b(P1: JJSONObject; P2: JJSONObject): JJSONObject; cdecl; overload;
//    {class} function a(P1: JJSONArray; P2: JJSONObject): JJSONObject; cdecl; overload;
//    {class} function a(P1: Boolean; P2: Jf; P3: JString): JJSONObject; cdecl; overload;
//    {class} function a(P1: Jd): JJSONObject; cdecl; overload;
//    {class} function a(P1: JArrayList): JJSONObject; cdecl; overload;
//    {class} function b(P1: JArrayList): JJSONArray; cdecl; overload;
//    {class} function b(P1: JContext): TJavaArray<Int64>; cdecl; overload;
//    {class} function c(P1: JContext): Integer; cdecl;
//    {class} function d(P1: JContext): Integer; cdecl;
//    {class} function e(P1: JContext): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/e')]
//  Je = interface(JObject)
//  ['{F29D6455-52AB-4C8F-AEB7-90C98CB29191}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{B0DDE6F7-D5E2-4FC7-8F6F-4D2336DCB5BF}']
//    { static Property Methods }
//    {class} function _Geta: JStack;
//    {class} function _Getb: JArrayList;
//    {class} function _Getc: JObject;
//
//    { static Methods }
//    {class} procedure a(P1: Jd); cdecl; overload;
//    {class} procedure b(P1: Jd); cdecl; overload;
//    {class} procedure a(P1: Ja); cdecl; overload;
//    {class} procedure c(P1: Jd); cdecl; overload;
//    {class} procedure a(P1: Jb); cdecl; overload;
//    {class} procedure a(P1: Jc); cdecl; overload;
//    {class} procedure a(P1: Je); cdecl; overload;
//    {class} function a: JArrayList; cdecl; overload;
//    {class} function b: JArrayList; cdecl; overload;
//    {class} function c: JArrayList; cdecl; overload;
//    {class} function d: JArrayList; cdecl;
//    {class} procedure e; cdecl;
//    {class} procedure f; cdecl;
//    {class} procedure g; cdecl;
//    {class} procedure h; cdecl;
//    {class} procedure i; cdecl;
//    {class} procedure j; cdecl;
//    {class} function k: Integer; cdecl;
//
//    { static Property }
//    {class} property a: JStack read _Geta;
//    {class} property b: JArrayList read _Getb;
//    {class} property c: JObject read _Getc;
//  end;

//  [JavaSignature('com/iflytek/sunflower/f')]
//  Jf = interface(JObject)
//  ['{CF1DB3B4-2C24-4EB9-8B7C-A48A0C7C5A5D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JFlowerCollector_1Class = interface(JObjectClass)
//  ['{1BEDB01E-BA57-4114-909C-22764FDAA0F6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/FlowerCollector$1')]
//  JFlowerCollector_1 = interface(JObject)
//  ['{5B8A49E4-8395-41C9-86B2-814EB7E5B8F6}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJFlowerCollector_1 = class(TJavaGenericImport<JFlowerCollector_1Class, JFlowerCollector_1>) end;

  JFlowerCollector_GenderClass = interface(JObjectClass)
  ['{DAE62609-0AA7-4DF9-9947-6D92DEB31B2A}']
    { static Property Methods }
    {class} function _GetMale: JFlowerCollector_Gender;
    {class} function _GetFemale: JFlowerCollector_Gender;
    {class} function _GetUnknown: JFlowerCollector_Gender;

    { static Methods }
    {class} function a: TJavaObjectArray<JFlowerCollector_Gender>; cdecl;

    { static Property }
    {class} property Male: JFlowerCollector_Gender read _GetMale;
    {class} property Female: JFlowerCollector_Gender read _GetFemale;
    {class} property Unknown: JFlowerCollector_Gender read _GetUnknown;
  end;

  [JavaSignature('com/iflytek/sunflower/FlowerCollector$Gender')]
  JFlowerCollector_Gender = interface(JObject)
  ['{8986B403-974C-44A6-B061-95AE8C82D261}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJFlowerCollector_Gender = class(TJavaGenericImport<JFlowerCollector_GenderClass, JFlowerCollector_Gender>) end;

  JFlowerCollectorClass = interface(JObjectClass)
  ['{33F6BC2D-5E18-4EEB-B44A-0946BE2C5D41}']
    { static Property Methods }

    { static Methods }
    {class} function init: JFlowerCollector; cdecl;
    {class} procedure setAutoLocation(P1: Boolean); cdecl;
    {class} procedure setAppid(P1: JString); cdecl;
    {class} procedure openPageMode(P1: JBoolean); cdecl;
    {class} procedure setChannel(P1: JString); cdecl;
    {class} procedure setDebugMode(P1: Boolean); cdecl;
    {class} procedure setGender(P1: JContext; P2: JFlowerCollector_Gender); cdecl;
    {class} procedure setAge(P1: JContext; P2: Integer); cdecl;
    {class} procedure setUserID(P1: JContext; P2: JString); cdecl;
    {class} procedure setSessionContinueMillis(P1: Int64); cdecl;
    {class} procedure setCaptureUncaughtException(P1: JBoolean); cdecl;
    {class} procedure setParameter(P1: JString; P2: JString); cdecl;
    {class} procedure onPageStart(P1: JString); cdecl;
    {class} procedure onPageEnd(P1: JString); cdecl;
    {class} procedure onPause(P1: JContext); cdecl;
    {class} procedure onResume(P1: JContext); cdecl;
    {class} procedure onError(P1: JContext; P2: JString); cdecl;
    {class} procedure flush(P1: JContext); cdecl;
    {class} procedure onEvent(P1: JContext; P2: JString); cdecl; overload;
    {class} procedure onEvent(P1: JContext; P2: JString; P3: JString); cdecl; overload;
    {class} procedure onEvent(P1: JContext; P2: JString; P3: JHashMap); cdecl; overload;
    {class} procedure onEventDuration(P1: JContext; P2: JString; P3: Int64); cdecl; overload;
    {class} procedure onEventDuration(P1: JContext; P2: JString; P3: JString; P4: Int64); cdecl; overload;
    {class} procedure onEventDuration(P1: JContext; P2: JString; P3: JHashMap; P4: Int64); cdecl; overload;
    {class} procedure onEventBegin(P1: JContext; P2: JString); cdecl; overload;
    {class} procedure onEventBegin(P1: JContext; P2: JString; P3: JHashMap); cdecl; overload;
    {class} procedure onEventEnd(P1: JContext; P2: JString); cdecl;
    {class} procedure onLog(P1: JContext; P2: JJSONObject; P3: JString; P4: JHashMap); cdecl;
    {class} function getOnlineParams(P1: JContext; P2: JString): JString; cdecl;
    {class} procedure updateOnlineConfig(P1: JContext; P2: JOnlineConfigListener); cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/sunflower/FlowerCollector')]
  JFlowerCollector = interface(JObject)
  ['{5FF152E0-281E-455C-9F06-81FB71742207}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJFlowerCollector = class(TJavaGenericImport<JFlowerCollectorClass, JFlowerCollector>) end;

  JOnlineConfigListenerClass = interface(JObjectClass)
  ['{F2669931-53D4-4DF5-A4B4-436AF48FBF7B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/sunflower/OnlineConfigListener')]
  JOnlineConfigListener = interface(IJavaInstance)
  ['{26F748B3-8E6D-4AF5-BDE5-819057570504}']
    { Property Methods }

    { methods }
    procedure onDataReceived(P1: JJSONObject); cdecl;

    { Property }
  end;

  TJOnlineConfigListener = class(TJavaGenericImport<JOnlineConfigListenerClass, JOnlineConfigListener>) end;

//  JaClass = interface(JObjectClass)
//  ['{26883BE8-99E6-4C5A-9626-4196112FF0C5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JOnlineConfigListener): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/a')]
//  Ja = interface(JObject)
//  ['{BC380C7D-3225-48F7-8641-6D28C9BA0C81}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{1EC3CC66-F7F8-4CD6-A5D9-65555424397D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jc): Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/b')]
//  Jb = interface(JObject)
//  ['{78744C18-67AC-44A9-9980-A94CCBBBFFC3}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{2A1C60AF-5EE8-4A55-BE5E-599B5E348EA3}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Integer; P2: JString; P3: JString; P4: JHashMap; P5: Int64): Jc; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/c')]
//  Jc = interface(JObject)
//  ['{45900F15-EC07-4162-BB7F-C37D6ABDFEEE}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{EFFF0D1B-7191-46D4-B6A3-2F1E8A4D5630}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JJSONObject; P3: JString; P4: JHashMap): Jd; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/d')]
//  Jd = interface(JObject)
//  ['{0F06F21A-D84E-4B62-9B08-06065074102B}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//    procedure a(P1: JString); cdecl; overload;
//    function a: JJSONArray; cdecl; overload;
//    function b: JJSONArray; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{B3FCDBB5-20D3-4DEB-A511-210A1063093B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JOnlineConfigListener): Je; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/e')]
//  Je = interface(JObject)
//  ['{4B0D89E4-A327-4C2B-B426-ADABE0AB7EA6}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{0D84AA47-2992-4D5D-8720-E0D7C1CE4FF4}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/f')]
//  Jf = interface(JObject)
//  ['{2F6FF08B-7E30-4512-9F2D-AD23B0C29D3D}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Ja; P2: TJavaArray<Byte>); cdecl; overload;
//    procedure a(P1: JException); cdecl; overload;
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{ACDB7F46-9CF5-4A74-BDCD-714CC37A7444}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jg; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/g')]
//  Jg = interface(JObject)
//  ['{1ED28250-94DD-4C18-86FF-83061FAF0DBA}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//    procedure a; cdecl; overload;
//    function a(P1: JSharedPreferences; P2: JArrayList; P3: Int64; P4: Int64): JSharedPreferences_Editor; cdecl; overload;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{2ED58A6C-429F-40E8-BA5E-C41BBE613C2B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jh; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/h')]
//  Jh = interface(JObject)
//  ['{1C481681-3AE4-40DA-AAFE-DB2AA73CB182}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JiClass = interface(JObjectClass)
//  ['{15016EAA-5802-4A7A-997B-9F667A9DC61F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JOnlineConfigListener): Ji; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/i')]
//  Ji = interface(JObject)
//  ['{79473090-300B-43CB-A95B-D39506AB078A}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{0E41AF64-9DA4-4386-9E69-B3548CFF6D28}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/sunflower/task/j')]
//  Jj = interface(JObject)
//  ['{D10090AD-10EE-419B-9B67-2B399CD153BC}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

  JSendTaskClass = interface(JObjectClass)
  ['{9F4B3188-2F6C-437B-BEEE-DBCC413D2FB4}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext): JSendTask; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/sunflower/task/SendTask')]
  JSendTask = interface(JObject)
  ['{D9855377-CB36-4510-9357-9CF5A5443F1D}']
    { Property Methods }

    { methods }
    procedure run; cdecl;
    procedure send; cdecl;

    { Property }
  end;

  TJSendTask = class(TJavaGenericImport<JSendTaskClass, JSendTask>) end;

{$ENDIF}
implementation
{$IFDEF ANDROID}


procedure RegisterTypes;
begin
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Ja',
//    TypeInfo(Androidapi.JNI.Sunflower.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jb',
//    TypeInfo(Androidapi.JNI.Sunflower.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jc',
//    TypeInfo(Androidapi.JNI.Sunflower.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jd',
//    TypeInfo(Androidapi.JNI.Sunflower.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Je',
//    TypeInfo(Androidapi.JNI.Sunflower.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Ja',
//    TypeInfo(Androidapi.JNI.Sunflower.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Ja_a',
//    TypeInfo(Androidapi.JNI.Sunflower.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Ja',
//    TypeInfo(Androidapi.JNI.Sunflower.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jb',
//    TypeInfo(Androidapi.JNI.Sunflower.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jc',
//    TypeInfo(Androidapi.JNI.Sunflower.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jb',
//    TypeInfo(Androidapi.JNI.Sunflower.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Ja',
//    TypeInfo(Androidapi.JNI.Sunflower.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jb',
//    TypeInfo(Androidapi.JNI.Sunflower.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jc',
//    TypeInfo(Androidapi.JNI.Sunflower.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jd',
//    TypeInfo(Androidapi.JNI.Sunflower.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Je',
//    TypeInfo(Androidapi.JNI.Sunflower.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jf',
//    TypeInfo(Androidapi.JNI.Sunflower.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jg',
//    TypeInfo(Androidapi.JNI.Sunflower.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jh',
//    TypeInfo(Androidapi.JNI.Sunflower.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jc',
//    TypeInfo(Androidapi.JNI.Sunflower.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.JCollectorJs_a',
//    TypeInfo(Androidapi.JNI.Sunflower.JCollectorJs_a));
  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.JCollectorJs',
    TypeInfo(Androidapi.JNI.Sunflower.JCollectorJs));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Ja',
//    TypeInfo(Androidapi.JNI.Sunflower.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jb',
//    TypeInfo(Androidapi.JNI.Sunflower.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.JVersion',
//    TypeInfo(Androidapi.JNI.Sunflower.JVersion));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jd',
//    TypeInfo(Androidapi.JNI.Sunflower.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Je',
//    TypeInfo(Androidapi.JNI.Sunflower.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jf',
//    TypeInfo(Androidapi.JNI.Sunflower.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.JFlowerCollector_1',
//    TypeInfo(Androidapi.JNI.Sunflower.JFlowerCollector_1));
  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.JFlowerCollector_Gender',
    TypeInfo(Androidapi.JNI.Sunflower.JFlowerCollector_Gender));
  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.JFlowerCollector',
    TypeInfo(Androidapi.JNI.Sunflower.JFlowerCollector));
  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.JOnlineConfigListener',
    TypeInfo(Androidapi.JNI.Sunflower.JOnlineConfigListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Ja',
//    TypeInfo(Androidapi.JNI.Sunflower.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jb',
//    TypeInfo(Androidapi.JNI.Sunflower.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jc',
//    TypeInfo(Androidapi.JNI.Sunflower.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jd',
//    TypeInfo(Androidapi.JNI.Sunflower.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Je',
//    TypeInfo(Androidapi.JNI.Sunflower.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jf',
//    TypeInfo(Androidapi.JNI.Sunflower.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jg',
//    TypeInfo(Androidapi.JNI.Sunflower.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jh',
//    TypeInfo(Androidapi.JNI.Sunflower.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Ji',
//    TypeInfo(Androidapi.JNI.Sunflower.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.Jj',
//    TypeInfo(Androidapi.JNI.Sunflower.Jj));
  TRegTypes.RegisterType('Androidapi.JNI.Sunflower.JSendTask',
    TypeInfo(Androidapi.JNI.Sunflower.JSendTask));
end;


initialization
  RegisterTypes;

{$ENDIF}

end.

