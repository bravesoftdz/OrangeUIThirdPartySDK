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
//  生成时间：2017-06-18 15:12:40
//  工具版本：1.0.2015.5.11
//
//====================================================
unit Androidapi.JNI.Msc;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.os,
  Androidapi.JNI.Media,
  Androidapi.JNI.Net,
  Androidapi.JNI.Location,
  Androidapi.JNI.Util,
//  Androidapi.JNI.java.net.URL,
  Androidapi.JNI.Widget,
  Androidapi.JNI.Hardware;


type
// ===== Forward declarations =====

  JDataDownloader = interface; //com.iflytek.cloud.DataDownloader
  JDataUploader = interface; //com.iflytek.cloud.DataUploader
  JErrorCode = interface; //com.iflytek.cloud.ErrorCode
  JEvaluatorListener = interface; //com.iflytek.cloud.EvaluatorListener
//  JEvaluatorResult_1 = interface; //com.iflytek.cloud.EvaluatorResult$1
  JEvaluatorResult = interface; //com.iflytek.cloud.EvaluatorResult
  JFaceDetector = interface; //com.iflytek.cloud.FaceDetector
//  JFaceRequest_a_1 = interface; //com.iflytek.cloud.FaceRequest$a$1
//  JFaceRequest_a = interface; //com.iflytek.cloud.FaceRequest$a
  JFaceRequest = interface; //com.iflytek.cloud.FaceRequest
  JGrammarListener = interface; //com.iflytek.cloud.GrammarListener
  JIdentityListener = interface; //com.iflytek.cloud.IdentityListener
//  JIdentityResult_1 = interface; //com.iflytek.cloud.IdentityResult$1
  JIdentityResult = interface; //com.iflytek.cloud.IdentityResult
//  JIdentityVerifier_1 = interface; //com.iflytek.cloud.IdentityVerifier$1
  JIdentityVerifier = interface; //com.iflytek.cloud.IdentityVerifier
  JInitListener = interface; //com.iflytek.cloud.InitListener
  JLexiconListener = interface; //com.iflytek.cloud.LexiconListener
  JRecognizerListener = interface; //com.iflytek.cloud.RecognizerListener
//  JRecognizerResult_1 = interface; //com.iflytek.cloud.RecognizerResult$1
  JRecognizerResult = interface; //com.iflytek.cloud.RecognizerResult
//  Ja = interface; //com.iflytek.cloud.record.a
//  Jb_a = interface; //com.iflytek.cloud.record.b$a
//  Jb = interface; //com.iflytek.cloud.record.b
//  Jc_1 = interface; //com.iflytek.cloud.record.c$1
//  Jc_2 = interface; //com.iflytek.cloud.record.c$2
//  Jc_a = interface; //com.iflytek.cloud.record.c$a
//  Jc_b = interface; //com.iflytek.cloud.record.c$b
//  Jc = interface; //com.iflytek.cloud.record.c
//  Jd = interface; //com.iflytek.cloud.record.d
  JPcmRecorder_PcmRecordListener = interface; //com.iflytek.cloud.record.PcmRecorder$PcmRecordListener
  JPcmRecorder = interface; //com.iflytek.cloud.record.PcmRecorder
  JRequestListener = interface; //com.iflytek.cloud.RequestListener
//  Ja = interface; //com.iflytek.cloud.resource.a
//  Jb = interface; //com.iflytek.cloud.resource.b
//  Jc = interface; //com.iflytek.cloud.resource.c
  JResource = interface; //com.iflytek.cloud.resource.Resource
  JSetting_LOG_LEVEL = interface; //com.iflytek.cloud.Setting$LOG_LEVEL
  JSetting = interface; //com.iflytek.cloud.Setting
  JSpeakerVerifier = interface; //com.iflytek.cloud.SpeakerVerifier
  JSpeechConstant = interface; //com.iflytek.cloud.SpeechConstant
  JSpeechError = interface; //com.iflytek.cloud.SpeechError
  JSpeechEvaluator = interface; //com.iflytek.cloud.SpeechEvaluator
  JSpeechEvent = interface; //com.iflytek.cloud.SpeechEvent
  JSpeechListener = interface; //com.iflytek.cloud.SpeechListener
//  JSpeechRecognizer_1 = interface; //com.iflytek.cloud.SpeechRecognizer$1
//  JSpeechRecognizer_2 = interface; //com.iflytek.cloud.SpeechRecognizer$2
//  JSpeechRecognizer_3 = interface; //com.iflytek.cloud.SpeechRecognizer$3
//  JSpeechRecognizer_a_1 = interface; //com.iflytek.cloud.SpeechRecognizer$a$1
//  JSpeechRecognizer_a_2 = interface; //com.iflytek.cloud.SpeechRecognizer$a$2
//  JSpeechRecognizer_a = interface; //com.iflytek.cloud.SpeechRecognizer$a
  JSpeechRecognizer = interface; //com.iflytek.cloud.SpeechRecognizer
//  JSpeechSynthesizer_1 = interface; //com.iflytek.cloud.SpeechSynthesizer$1
//  JSpeechSynthesizer_a_1 = interface; //com.iflytek.cloud.SpeechSynthesizer$a$1
//  JSpeechSynthesizer_a_2 = interface; //com.iflytek.cloud.SpeechSynthesizer$a$2
//  JSpeechSynthesizer_a = interface; //com.iflytek.cloud.SpeechSynthesizer$a
  JSpeechSynthesizer = interface; //com.iflytek.cloud.SpeechSynthesizer
//  JSpeechUnderstander_1 = interface; //com.iflytek.cloud.SpeechUnderstander$1
//  JSpeechUnderstander_a_1 = interface; //com.iflytek.cloud.SpeechUnderstander$a$1
//  JSpeechUnderstander_a_2 = interface; //com.iflytek.cloud.SpeechUnderstander$a$2
//  JSpeechUnderstander_a = interface; //com.iflytek.cloud.SpeechUnderstander$a
  JSpeechUnderstander = interface; //com.iflytek.cloud.SpeechUnderstander
  JSpeechUnderstanderListener = interface; //com.iflytek.cloud.SpeechUnderstanderListener
//  JSpeechUtility_1 = interface; //com.iflytek.cloud.SpeechUtility$1
//  JSpeechUtility_a = interface; //com.iflytek.cloud.SpeechUtility$a
  JSpeechUtility = interface; //com.iflytek.cloud.SpeechUtility
  JSynthesizerListener = interface; //com.iflytek.cloud.SynthesizerListener
//  JTextUnderstander_1 = interface; //com.iflytek.cloud.TextUnderstander$1
//  JTextUnderstander_a_1 = interface; //com.iflytek.cloud.TextUnderstander$a$1
//  JTextUnderstander_a_2 = interface; //com.iflytek.cloud.TextUnderstander$a$2
//  JTextUnderstander_a = interface; //com.iflytek.cloud.TextUnderstander$a
  JTextUnderstander = interface; //com.iflytek.cloud.TextUnderstander
  JTextUnderstanderListener = interface; //com.iflytek.cloud.TextUnderstanderListener
//  JA = interface; //com.iflytek.cloud.thirdparty.A
//  JaA = interface; //com.iflytek.cloud.thirdparty.aA
//  Jab_a = interface; //com.iflytek.cloud.thirdparty.ab$a
//  JaB = interface; //com.iflytek.cloud.thirdparty.aB
//  Jac_a = interface; //com.iflytek.cloud.thirdparty.ac$a
//  JaC = interface; //com.iflytek.cloud.thirdparty.aC
//  Jad_a = interface; //com.iflytek.cloud.thirdparty.ad$a
//  JaD = interface; //com.iflytek.cloud.thirdparty.aD
//  JaE = interface; //com.iflytek.cloud.thirdparty.aE
//  JaF = interface; //com.iflytek.cloud.thirdparty.aF
//  JaG = interface; //com.iflytek.cloud.thirdparty.aG
//  Jah_1 = interface; //com.iflytek.cloud.thirdparty.ah$1
//  Jah_a = interface; //com.iflytek.cloud.thirdparty.ah$a
//  JaH = interface; //com.iflytek.cloud.thirdparty.aH
//  Jai = interface; //com.iflytek.cloud.thirdparty.ai
//  Jaj = interface; //com.iflytek.cloud.thirdparty.aj
//  Jak = interface; //com.iflytek.cloud.thirdparty.ak
//  Jal = interface; //com.iflytek.cloud.thirdparty.al
//  Jam = interface; //com.iflytek.cloud.thirdparty.am
//  Jan_1 = interface; //com.iflytek.cloud.thirdparty.an$1
//  Jan_a = interface; //com.iflytek.cloud.thirdparty.an$a
//  Jan = interface; //com.iflytek.cloud.thirdparty.an
//  Jao = interface; //com.iflytek.cloud.thirdparty.ao
//  Jap = interface; //com.iflytek.cloud.thirdparty.ap
//  Jaq_1 = interface; //com.iflytek.cloud.thirdparty.aq$1
//  Jaq = interface; //com.iflytek.cloud.thirdparty.aq
//  Jar = interface; //com.iflytek.cloud.thirdparty.ar
//  Jas = interface; //com.iflytek.cloud.thirdparty.as
//  Jat = interface; //com.iflytek.cloud.thirdparty.at
//  Jau = interface; //com.iflytek.cloud.thirdparty.au
//  Jav = interface; //com.iflytek.cloud.thirdparty.av
//  Jaw = interface; //com.iflytek.cloud.thirdparty.aw
//  Jax = interface; //com.iflytek.cloud.thirdparty.ax
//  Jay = interface; //com.iflytek.cloud.thirdparty.ay
//  Jaz = interface; //com.iflytek.cloud.thirdparty.az
//  JB_1 = interface; //com.iflytek.cloud.thirdparty.B$1
//  JB_2 = interface; //com.iflytek.cloud.thirdparty.B$2
//  JB_3 = interface; //com.iflytek.cloud.thirdparty.B$3
//  JB_4 = interface; //com.iflytek.cloud.thirdparty.B$4
//  JB_5 = interface; //com.iflytek.cloud.thirdparty.B$5
//  JB_a = interface; //com.iflytek.cloud.thirdparty.B$a
//  JB = interface; //com.iflytek.cloud.thirdparty.B
//  JC = interface; //com.iflytek.cloud.thirdparty.C
//  JD = interface; //com.iflytek.cloud.thirdparty.D
//  JE = interface; //com.iflytek.cloud.thirdparty.E
//  JF = interface; //com.iflytek.cloud.thirdparty.F
//  JG = interface; //com.iflytek.cloud.thirdparty.G
//  JH = interface; //com.iflytek.cloud.thirdparty.H
//  JI = interface; //com.iflytek.cloud.thirdparty.I
//  Jj_1 = interface; //com.iflytek.cloud.thirdparty.j$1
//  JJ = interface; //com.iflytek.cloud.thirdparty.J
//  JK = interface; //com.iflytek.cloud.thirdparty.K
//  JL_a = interface; //com.iflytek.cloud.thirdparty.L$a
//  JL = interface; //com.iflytek.cloud.thirdparty.L
//  JM = interface; //com.iflytek.cloud.thirdparty.M
//  JN_1 = interface; //com.iflytek.cloud.thirdparty.N$1
//  JN_2 = interface; //com.iflytek.cloud.thirdparty.N$2
//  JN_3 = interface; //com.iflytek.cloud.thirdparty.N$3
//  Jn_a_1 = interface; //com.iflytek.cloud.thirdparty.n$a$1
//  Jn_a = interface; //com.iflytek.cloud.thirdparty.n$a
//  JN = interface; //com.iflytek.cloud.thirdparty.N
//  Jo_1 = interface; //com.iflytek.cloud.thirdparty.o$1
//  JO_a = interface; //com.iflytek.cloud.thirdparty.O$a
//  JO = interface; //com.iflytek.cloud.thirdparty.O
//  JP = interface; //com.iflytek.cloud.thirdparty.P
//  JQ_1 = interface; //com.iflytek.cloud.thirdparty.Q$1
//  JQ_2 = interface; //com.iflytek.cloud.thirdparty.Q$2
//  JQ_3 = interface; //com.iflytek.cloud.thirdparty.Q$3
//  JQ_4 = interface; //com.iflytek.cloud.thirdparty.Q$4
//  JQ = interface; //com.iflytek.cloud.thirdparty.Q
//  JR = interface; //com.iflytek.cloud.thirdparty.R
//  Js_a = interface; //com.iflytek.cloud.thirdparty.s$a
//  Js_b = interface; //com.iflytek.cloud.thirdparty.s$b
//  JS = interface; //com.iflytek.cloud.thirdparty.S
//  Jt_a = interface; //com.iflytek.cloud.thirdparty.t$a
//  JT = interface; //com.iflytek.cloud.thirdparty.T
//  JU = interface; //com.iflytek.cloud.thirdparty.U
//  JV_1 = interface; //com.iflytek.cloud.thirdparty.V$1
//  Jv_a = interface; //com.iflytek.cloud.thirdparty.v$a
//  JV = interface; //com.iflytek.cloud.thirdparty.V
//  JW_a_1 = interface; //com.iflytek.cloud.thirdparty.W$a$1
//  JW_a = interface; //com.iflytek.cloud.thirdparty.W$a
//  JW = interface; //com.iflytek.cloud.thirdparty.W
//  JX_a_1 = interface; //com.iflytek.cloud.thirdparty.X$a$1
//  JX_a = interface; //com.iflytek.cloud.thirdparty.X$a
//  JX = interface; //com.iflytek.cloud.thirdparty.X
//  JY_a_1 = interface; //com.iflytek.cloud.thirdparty.Y$a$1
//  JY_a = interface; //com.iflytek.cloud.thirdparty.Y$a
//  JY = interface; //com.iflytek.cloud.thirdparty.Y
//  JZ_a_1 = interface; //com.iflytek.cloud.thirdparty.Z$a$1
//  JZ_a = interface; //com.iflytek.cloud.thirdparty.Z$a
//  JZ_b_1 = interface; //com.iflytek.cloud.thirdparty.Z$b$1
//  JZ_b = interface; //com.iflytek.cloud.thirdparty.Z$b
//  JZ_c_1 = interface; //com.iflytek.cloud.thirdparty.Z$c$1
//  JZ_c = interface; //com.iflytek.cloud.thirdparty.Z$c
//  JZ = interface; //com.iflytek.cloud.thirdparty.Z
//  Ja_1 = interface; //com.iflytek.cloud.ui.a$1
//  Ja_a = interface; //com.iflytek.cloud.ui.a$a
//  Ja = interface; //com.iflytek.cloud.ui.a
  JRecognizerDialog = interface; //com.iflytek.cloud.ui.RecognizerDialog
  JRecognizerDialogListener = interface; //com.iflytek.cloud.ui.RecognizerDialogListener
//  JUnderstanderResult_1 = interface; //com.iflytek.cloud.UnderstanderResult$1
  JUnderstanderResult = interface; //com.iflytek.cloud.UnderstanderResult
//  JAccelerometer_1 = interface; //com.iflytek.cloud.util.Accelerometer$1
  JAccelerometer_CLOCKWISE_ANGLE = interface; //com.iflytek.cloud.util.Accelerometer$CLOCKWISE_ANGLE
  JAccelerometer = interface; //com.iflytek.cloud.util.Accelerometer
  JAudioDetector_DetectorResult = interface; //com.iflytek.cloud.util.AudioDetector$DetectorResult
  JAudioDetector = interface; //com.iflytek.cloud.util.AudioDetector
  JContactManager_ContactListener = interface; //com.iflytek.cloud.util.ContactManager$ContactListener
  JContactManager = interface; //com.iflytek.cloud.util.ContactManager
  JResourceUtil_RESOURCE_TYPE = interface; //com.iflytek.cloud.util.ResourceUtil$RESOURCE_TYPE
  JResourceUtil = interface; //com.iflytek.cloud.util.ResourceUtil
  JUserWords = interface; //com.iflytek.cloud.util.UserWords
  JVerifierUtil = interface; //com.iflytek.cloud.util.VerifierUtil
  JVolumeUtil = interface; //com.iflytek.cloud.util.VolumeUtil
  JVerifierListener = interface; //com.iflytek.cloud.VerifierListener
  JVerifierResult = interface; //com.iflytek.cloud.VerifierResult
  JVersion = interface; //com.iflytek.cloud.Version
//  Ja = interface; //com.iflytek.common.a
//  Jb = interface; //com.iflytek.common.b
//  Jc = interface; //com.iflytek.common.c
  JLaunchService = interface; //com.iflytek.common.LaunchService
  JMetaVAD_Instance = interface; //com.iflytek.msc.MetaVAD$Instance
  JMetaVAD = interface; //com.iflytek.msc.MetaVAD
  JMSC = interface; //com.iflytek.msc.MSC
  JMSCSessionInfo = interface; //com.iflytek.msc.MSCSessionInfo
  JVAD_VadData = interface; //com.iflytek.msc.VAD$VadData
  JVAD = interface; //com.iflytek.msc.VAD
  JISpeakerVerifier_Stub_Proxy = interface; //com.iflytek.speech.aidl.ISpeakerVerifier$Stub$Proxy
  JISpeakerVerifier_Stub = interface; //com.iflytek.speech.aidl.ISpeakerVerifier$Stub
  JISpeakerVerifier = interface; //com.iflytek.speech.aidl.ISpeakerVerifier
  JISpeechRecognizer_Stub_Proxy = interface; //com.iflytek.speech.aidl.ISpeechRecognizer$Stub$Proxy
  JISpeechRecognizer_Stub = interface; //com.iflytek.speech.aidl.ISpeechRecognizer$Stub
  JISpeechRecognizer = interface; //com.iflytek.speech.aidl.ISpeechRecognizer
  JISpeechSynthesizer_Stub_Proxy = interface; //com.iflytek.speech.aidl.ISpeechSynthesizer$Stub$Proxy
  JISpeechSynthesizer_Stub = interface; //com.iflytek.speech.aidl.ISpeechSynthesizer$Stub
  JISpeechSynthesizer = interface; //com.iflytek.speech.aidl.ISpeechSynthesizer
  JISpeechUnderstander_Stub_Proxy = interface; //com.iflytek.speech.aidl.ISpeechUnderstander$Stub$Proxy
  JISpeechUnderstander_Stub = interface; //com.iflytek.speech.aidl.ISpeechUnderstander$Stub
  JISpeechUnderstander = interface; //com.iflytek.speech.aidl.ISpeechUnderstander
  JITextUnderstander_Stub_Proxy = interface; //com.iflytek.speech.aidl.ITextUnderstander$Stub$Proxy
  JITextUnderstander_Stub = interface; //com.iflytek.speech.aidl.ITextUnderstander$Stub
  JITextUnderstander = interface; //com.iflytek.speech.aidl.ITextUnderstander
  JIWakeuper_Stub_Proxy = interface; //com.iflytek.speech.aidl.IWakeuper$Stub$Proxy
  JIWakeuper_Stub = interface; //com.iflytek.speech.aidl.IWakeuper$Stub
  JIWakeuper = interface; //com.iflytek.speech.aidl.IWakeuper
  JGrammarListener_Stub_Proxy = interface; //com.iflytek.speech.GrammarListener$Stub$Proxy
  JGrammarListener_Stub = interface; //com.iflytek.speech.GrammarListener$Stub
//  JGrammarListener = interface; //com.iflytek.speech.GrammarListener
  JISpeechModule = interface; //com.iflytek.speech.ISpeechModule
  JLexiconListener_Stub_Proxy = interface; //com.iflytek.speech.LexiconListener$Stub$Proxy
  JLexiconListener_Stub = interface; //com.iflytek.speech.LexiconListener$Stub
//  JLexiconListener = interface; //com.iflytek.speech.LexiconListener
  JRecognizerListener_Stub_Proxy = interface; //com.iflytek.speech.RecognizerListener$Stub$Proxy
  JRecognizerListener_Stub = interface; //com.iflytek.speech.RecognizerListener$Stub
//  JRecognizerListener = interface; //com.iflytek.speech.RecognizerListener
//  JRecognizerResult_1 = interface; //com.iflytek.speech.RecognizerResult$1
//  JRecognizerResult = interface; //com.iflytek.speech.RecognizerResult
  JSpeakerVerifierAidl_DownloadListener = interface; //com.iflytek.speech.SpeakerVerifierAidl$DownloadListener
  JSpeakerVerifierAidl_PassWord = interface; //com.iflytek.speech.SpeakerVerifierAidl$PassWord
  JSpeakerVerifierAidl = interface; //com.iflytek.speech.SpeakerVerifierAidl
  JSpeechComponent = interface; //com.iflytek.speech.SpeechComponent
//  JSpeechModuleAidl_1 = interface; //com.iflytek.speech.SpeechModuleAidl$1
//  JSpeechModuleAidl_2 = interface; //com.iflytek.speech.SpeechModuleAidl$2
  JSpeechModuleAidl = interface; //com.iflytek.speech.SpeechModuleAidl
  JSpeechRecognizerAidl = interface; //com.iflytek.speech.SpeechRecognizerAidl
  JSpeechSynthesizerAidl = interface; //com.iflytek.speech.SpeechSynthesizerAidl
  JSpeechUnderstanderAidl = interface; //com.iflytek.speech.SpeechUnderstanderAidl
  JSpeechUnderstanderListener_Stub_Proxy = interface; //com.iflytek.speech.SpeechUnderstanderListener$Stub$Proxy
  JSpeechUnderstanderListener_Stub = interface; //com.iflytek.speech.SpeechUnderstanderListener$Stub
//  JSpeechUnderstanderListener = interface; //com.iflytek.speech.SpeechUnderstanderListener
  JSynthesizerListener_Stub_Proxy = interface; //com.iflytek.speech.SynthesizerListener$Stub$Proxy
  JSynthesizerListener_Stub = interface; //com.iflytek.speech.SynthesizerListener$Stub
//  JSynthesizerListener = interface; //com.iflytek.speech.SynthesizerListener
  JSynthesizeToUrlListener_Stub_Proxy = interface; //com.iflytek.speech.SynthesizeToUrlListener$Stub$Proxy
  JSynthesizeToUrlListener_Stub = interface; //com.iflytek.speech.SynthesizeToUrlListener$Stub
  JSynthesizeToUrlListener = interface; //com.iflytek.speech.SynthesizeToUrlListener
  JTextUnderstanderAidl = interface; //com.iflytek.speech.TextUnderstanderAidl
  JTextUnderstanderListener_Stub_Proxy = interface; //com.iflytek.speech.TextUnderstanderListener$Stub$Proxy
  JTextUnderstanderListener_Stub = interface; //com.iflytek.speech.TextUnderstanderListener$Stub
//  JTextUnderstanderListener = interface; //com.iflytek.speech.TextUnderstanderListener
//  JUnderstanderResult_1 = interface; //com.iflytek.speech.UnderstanderResult$1
//  JUnderstanderResult = interface; //com.iflytek.speech.UnderstanderResult
  JUtilityConfig = interface; //com.iflytek.speech.UtilityConfig
  JVerifierListener_Stub_Proxy = interface; //com.iflytek.speech.VerifierListener$Stub$Proxy
  JVerifierListener_Stub = interface; //com.iflytek.speech.VerifierListener$Stub
//  JVerifierListener = interface; //com.iflytek.speech.VerifierListener
//  JVerifierResult_1 = interface; //com.iflytek.speech.VerifierResult$1
//  JVerifierResult = interface; //com.iflytek.speech.VerifierResult
//  JVersion = interface; //com.iflytek.speech.Version
  JVoiceWakeuperAidl = interface; //com.iflytek.speech.VoiceWakeuperAidl
  JWakeuperListener_Stub_Proxy = interface; //com.iflytek.speech.WakeuperListener$Stub$Proxy
  JWakeuperListener_Stub = interface; //com.iflytek.speech.WakeuperListener$Stub
  JWakeuperListener = interface; //com.iflytek.speech.WakeuperListener
//  JWakeuperResult_1 = interface; //com.iflytek.speech.WakeuperResult$1
  JWakeuperResult = interface; //com.iflytek.speech.WakeuperResult

// ===== Interface declarations =====

  JDataDownloaderClass = interface(JObjectClass)
  ['{8C9C35F0-B100-49B2-AB0F-C9F897FBE2D6}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext): JDataDownloader; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/DataDownloader')]
  JDataDownloader = interface(JObject)
  ['{645DBB50-0E14-4F8A-B2CE-285BAA4A6970}']
    { Property Methods }

    { methods }
    function downloadData(P1: JSpeechListener): Integer; cdecl;

    { Property }
  end;

  TJDataDownloader = class(TJavaGenericImport<JDataDownloaderClass, JDataDownloader>) end;

  JDataUploaderClass = interface(JObjectClass)
  ['{7D8F4793-1B51-4583-A59C-A3CC7966A1C7}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext): JDataUploader; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/DataUploader')]
  JDataUploader = interface(JObject)
  ['{22567FE9-2AB7-49F0-AB41-34A2E901A7DB}']
    { Property Methods }

    { methods }
    function uploadData(P1: JSpeechListener; P2: JString; P3: TJavaArray<Byte>): Integer; cdecl;

    { Property }
  end;

  TJDataUploader = class(TJavaGenericImport<JDataUploaderClass, JDataUploader>) end;

  JErrorCodeClass = interface(JObjectClass)
  ['{3212904D-6DD2-4E1A-8DAB-1FCE2AD61D36}']
    { static Property Methods }
    {class} function _GetSUCCESS: Integer;
    {class} function _GetMSP_ERROR_FAIL: Integer;
    {class} function _GetMSP_ERROR_EXCEPTION: Integer;
    {class} function _GetMSP_ERROR_GENERAL: Integer;
    {class} function _GetMSP_ERROR_OUT_OF_MEMORY: Integer;
    {class} function _GetMSP_ERROR_FILE_NOT_FOUND: Integer;
    {class} function _GetMSP_ERROR_NOT_SUPPORT: Integer;
    {class} function _GetMSP_ERROR_NOT_IMPLEMENT: Integer;
    {class} function _GetMSP_ERROR_ACCESS: Integer;
    {class} function _GetMSP_ERROR_INVALID_PARA: Integer;
    {class} function _GetMSP_ERROR_INVALID_PARA_VALUE: Integer;
    {class} function _GetMSP_ERROR_INVALID_HANDLE: Integer;
    {class} function _GetMSP_ERROR_INVALID_DATA: Integer;
    {class} function _GetMSP_ERROR_NO_LICENSE: Integer;
    {class} function _GetMSP_ERROR_NOT_INIT: Integer;
    {class} function _GetMSP_ERROR_NULL_HANDLE: Integer;
    {class} function _GetMSP_ERROR_OVERFLOW: Integer;
    {class} function _GetMSP_ERROR_TIME_OUT: Integer;
    {class} function _GetMSP_ERROR_OPEN_FILE: Integer;
    {class} function _GetMSP_ERROR_NOT_FOUND: Integer;
    {class} function _GetMSP_ERROR_NO_ENOUGH_BUFFER: Integer;
    {class} function _GetMSP_ERROR_NO_DATA: Integer;
    {class} function _GetMSP_ERROR_NO_MORE_DATA: Integer;
    {class} function _GetMSP_ERROR_NO_RESPONSE_DATA: Integer;
    {class} function _GetMSP_ERROR_ALREADY_EXIST: Integer;
    {class} function _GetMSP_ERROR_LOAD_MODULE: Integer;
    {class} function _GetMSP_ERROR_BUSY: Integer;
    {class} function _GetMSP_ERROR_INVALID_CONFIG: Integer;
    {class} function _GetMSP_ERROR_VERSION_CHECK: Integer;
    {class} function _GetMSP_ERROR_CANCELED: Integer;
    {class} function _GetMSP_ERROR_INVALID_MEDIA_TYPE: Integer;
    {class} function _GetMSP_ERROR_CONFIG_INITIALIZE: Integer;
    {class} function _GetMSP_ERROR_CREATE_HANDLE: Integer;
    {class} function _GetMSP_ERROR_CODING_LIB_NOT_LOAD: Integer;
    {class} function _GetMSP_ERROR_USER_CANCELLED: Integer;
    {class} function _GetMSP_ERROR_INVALID_OPERATION: Integer;
    {class} function _GetMSP_ERROR_MESSAGE_NOT_COMPLETE: Integer;
    {class} function _GetMSP_ERROR_USER_ACTIVE_ABORT: Integer;
    {class} function _GetMSP_ERROR_BUSY_GRMBUILDING: Integer;
    {class} function _GetMSP_ERROR_BUSY_LEXUPDATING: Integer;
    {class} function _GetMSP_ERROR_BOS_TIMEOUT: Integer;
    {class} function _GetMSP_ERROR_NET_GENERAL: Integer;
    {class} function _GetMSP_ERROR_NET_OPENSOCK: Integer;
    {class} function _GetMSP_ERROR_NET_CONNECTSOCK: Integer;
    {class} function _GetMSP_ERROR_NET_ACCEPTSOCK: Integer;
    {class} function _GetMSP_ERROR_NET_SENDSOCK: Integer;
    {class} function _GetMSP_ERROR_NET_RECVSOCK: Integer;
    {class} function _GetMSP_ERROR_NET_INVALIDSOCK: Integer;
    {class} function _GetMSP_ERROR_NET_BADADDRESS: Integer;
    {class} function _GetMSP_ERROR_NET_BINDSEQUENCE: Integer;
    {class} function _GetMSP_ERROR_NET_NOTOPENSOCK: Integer;
    {class} function _GetMSP_ERROR_NET_NOTBIND: Integer;
    {class} function _GetMSP_ERROR_NET_NOTLISTEN: Integer;
    {class} function _GetMSP_ERROR_NET_CONNECTCLOSE: Integer;
    {class} function _GetMSP_ERROR_NET_NOTDGRAMSOCK: Integer;
    {class} function _GetMSP_ERROR_NET_DNS: Integer;
    {class} function _GetMSP_ERROR_NET_INIT: Integer;
    {class} function _GetMSP_ERROR_NFL_INNER_ERROR: Integer;
    {class} function _GetMSP_ERROR_MSS_TIME_OUT: Integer;
    {class} function _GetMSP_ERROT_CLIENT_TIME_OUT: Integer;
    {class} function _GetMSP_ERROR_CLIENT_CLOSE: Integer;
    {class} function _GetMSP_ERROR_CLIENT_AREA_CHANGE: Integer;
    {class} function _GetMSP_ERROR_NET_SSL_HANDSHAKE: Integer;
    {class} function _GetMSP_ERROR_NET_INVALID_ROOT_CERT: Integer;
    {class} function _GetMSP_ERROR_NET_INVALID_CLIENT_CERT: Integer;
    {class} function _GetMSP_ERROR_NET_INVALID_SERVER_CERT: Integer;
    {class} function _GetMSP_ERROR_NET_INVALID_KEY: Integer;
    {class} function _GetMSP_ERROR_MSG_GENERAL: Integer;
    {class} function _GetMSP_ERROR_MSG_PARSE_ERROR: Integer;
    {class} function _GetMSP_ERROR_MSG_BUILD_ERROR: Integer;
    {class} function _GetMSP_ERROR_MSG_PARAM_ERROR: Integer;
    {class} function _GetMSP_ERROR_MSG_CONTENT_EMPTY: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_CONTENT_TYPE: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_CONTENT_LENGTH: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_CONTENT_ENCODE: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_KEY: Integer;
    {class} function _GetMSP_ERROR_MSG_KEY_EMPTY: Integer;
    {class} function _GetMSP_ERROR_MSG_SESSION_ID_EMPTY: Integer;
    {class} function _GetMSP_ERROR_MSG_LOGIN_ID_EMPTY: Integer;
    {class} function _GetMSP_ERROR_MSG_SYNC_ID_EMPTY: Integer;
    {class} function _GetMSP_ERROR_MSG_APP_ID_EMPTY: Integer;
    {class} function _GetMSP_ERROR_MSG_EXTERN_ID_EMPTY: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_CMD: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_SUBJECT: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_VERSION: Integer;
    {class} function _GetMSP_ERROR_MSG_NO_CMD: Integer;
    {class} function _GetMSP_ERROR_MSG_NO_SUBJECT: Integer;
    {class} function _GetMSP_ERROR_MSG_NO_VERSION: Integer;
    {class} function _GetMSP_ERROR_MSG_MSSP_EMPTY: Integer;
    {class} function _GetMSP_ERROR_MSG_NEW_RESPONSE: Integer;
    {class} function _GetMSP_ERROR_MSG_NEW_CONTENT: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_SESSION_ID: Integer;
    {class} function _GetMSP_ERROR_MSG_INVALID_CONTENT: Integer;
    {class} function _GetMSP_ERROR_DB_GENERAL: Integer;
    {class} function _GetMSP_ERROR_DB_EXCEPTION: Integer;
    {class} function _GetMSP_ERROR_DB_NO_RESULT: Integer;
    {class} function _GetMSP_ERROR_DB_INVALID_USER: Integer;
    {class} function _GetMSP_ERROR_DB_INVALID_PWD: Integer;
    {class} function _GetMSP_ERROR_DB_CONNECT: Integer;
    {class} function _GetMSP_ERROR_DB_INVALID_SQL: Integer;
    {class} function _GetMSP_ERROR_DB_INVALID_APPID: Integer;
    {class} function _GetMSP_ERROR_DB_NO_UID: Integer;
    {class} function _GetMSP_ERROR_RES_GENERAL: Integer;
    {class} function _GetMSP_ERROR_RES_LOAD: Integer;
    {class} function _GetMSP_ERROR_RES_FREE: Integer;
    {class} function _GetMSP_ERROR_RES_MISSING: Integer;
    {class} function _GetMSP_ERROR_RES_INVALID_NAME: Integer;
    {class} function _GetMSP_ERROR_RES_INVALID_ID: Integer;
    {class} function _GetMSP_ERROR_RES_INVALID_IMG: Integer;
    {class} function _GetMSP_ERROR_RES_WRITE: Integer;
    {class} function _GetMSP_ERROR_RES_LEAK: Integer;
    {class} function _GetMSP_ERROR_RES_HEAD: Integer;
    {class} function _GetMSP_ERROR_RES_DATA: Integer;
    {class} function _GetMSP_ERROR_RES_SKIP: Integer;
    {class} function _GetMSP_ERROR_TTS_GENERAL: Integer;
    {class} function _GetMSP_ERROR_TTS_TEXTEND: Integer;
    {class} function _GetMSP_ERROR_TTS_TEXT_EMPTY: Integer;
    {class} function _GetMSP_ERROR_TTS_LTTS_ERROR: Integer;
    {class} function _GetMSP_ERROR_REC_GENERAL: Integer;
    {class} function _GetMSP_ERROR_REC_INACTIVE: Integer;
    {class} function _GetMSP_ERROR_REC_GRAMMAR_ERROR: Integer;
    {class} function _GetMSP_ERROR_REC_NO_ACTIVE_GRAMMARS: Integer;
    {class} function _GetMSP_ERROR_REC_DUPLICATE_GRAMMAR: Integer;
    {class} function _GetMSP_ERROR_REC_INVALID_MEDIA_TYPE: Integer;
    {class} function _GetMSP_ERROR_REC_INVALID_LANGUAGE: Integer;
    {class} function _GetMSP_ERROR_REC_URI_NOT_FOUND: Integer;
    {class} function _GetMSP_ERROR_REC_URI_TIMEOUT: Integer;
    {class} function _GetMSP_ERROR_REC_URI_FETCH_ERROR: Integer;
    {class} function _GetMSP_ERROR_REC_PROC_MOD: Integer;
    {class} function _GetMSP_ERROR_EP_GENERAL: Integer;
    {class} function _GetMSP_ERROR_EP_NO_SESSION_NAME: Integer;
    {class} function _GetMSP_ERROR_EP_INACTIVE: Integer;
    {class} function _GetMSP_ERROR_EP_INITIALIZED: Integer;
    {class} function _GetMSP_ERROR_TUV_GENERAL: Integer;
    {class} function _GetMSP_ERROR_TUV_GETHIDPARAM: Integer;
    {class} function _GetMSP_ERROR_TUV_TOKEN: Integer;
    {class} function _GetMSP_ERROR_TUV_CFGFILE: Integer;
    {class} function _GetMSP_ERROR_TUV_RECV_CONTENT: Integer;
    {class} function _GetMSP_ERROR_TUV_VERFAIL: Integer;
    {class} function _GetMSP_ERROR_LOGIN_SUCCESS: Integer;
    {class} function _GetMSP_ERROR_LOGIN_NO_LICENSE: Integer;
    {class} function _GetMSP_ERROR_LOGIN_SESSIONID_INVALID: Integer;
    {class} function _GetMSP_ERROR_LOGIN_SESSIONID_ERROR: Integer;
    {class} function _GetMSP_ERROR_LOGIN_UNLOGIN: Integer;
    {class} function _GetMSP_ERROR_LOGIN_INVALID_USER: Integer;
    {class} function _GetMSP_ERROR_LOGIN_INVALID_PWD: Integer;
    {class} function _GetMSP_ERROR_LOGIN_SYSTEM_ERROR: Integer;
    {class} function _GetMSP_ERROR_HCR_GENERAL: Integer;
    {class} function _GetMSP_ERROR_HCR_RESOURCE_NOT_EXIST: Integer;
    {class} function _GetMSP_ERROR_HCR_CREATE: Integer;
    {class} function _GetMSP_ERROR_HCR_DESTROY: Integer;
    {class} function _GetMSP_ERROR_HCR_START: Integer;
    {class} function _GetMSP_ERROR_HCR_APPEND_STROKES: Integer;
    {class} function _GetMSP_ERROR_HCR_INIT: Integer;
    {class} function _GetMSP_ERROR_HCR_POINT_DECODE: Integer;
    {class} function _GetMSP_ERROR_HCR_DISPATCH: Integer;
    {class} function _GetMSP_ERROR_HCR_GETRESULT: Integer;
    {class} function _GetMSP_ERROR_HCR_RESOURCE: Integer;
    {class} function _GetMSP_ERROR_AUTH_NO_LICENSE: Integer;
    {class} function _GetMSP_ERROR_AUTH_NO_ENOUGH_LICENSE: Integer;
    {class} function _GetMSP_ERROR_AUTH_INVALID_LICENSE: Integer;
    {class} function _GetMSP_ERROR_AUTH_LICENSE_EXPIRED: Integer;
    {class} function _GetMSP_ERROR_AUTH_NEED_MORE_DATA: Integer;
    {class} function _GetMSP_ERROR_AUTH_LICENSE_TO_BE_EXPIRED: Integer;
    {class} function _GetMSP_ERROR_AUTH_INVALID_MACHINE_ID: Integer;
    {class} function _GetMSP_ERROR_AUTH_LOCAL_ASR_FORBIDDEN: Integer;
    {class} function _GetMSP_ERROR_AUTH_LOCAL_TTS_FORBIDDEN: Integer;
    {class} function _GetMSP_ERROR_AUTH_LOCAL_IVW_FORBIDDEN: Integer;
    {class} function _GetMSP_ERROR_AUTH_APPID_NOT_MATCH: Integer;
    {class} function _GetMSP_ERROR_AUTH_UID_NOT_MATCH: Integer;
    {class} function _GetMSP_ERROR_AUTH_TRIAL_EXPIRED: Integer;
    {class} function _GetMSP_ERROR_AUTH_ERROR_END: Integer;
    {class} function _GetMSP_ERROR_AUTH_DVC_NO_LICENSE: Integer;
    {class} function _GetMSP_ERROR_AUTH_DVC_NO_ENOUGH_LICENSE: Integer;
    {class} function _GetMSP_ERROR_AUTH_DVC_INVALID_LICENSE: Integer;
    {class} function _GetMSP_ERROR_AUTH_DVC_LICENSE_EXPIRED: Integer;
    {class} function _GetMSP_ERROR_AUTH_DVC_NEED_MORE_DATA: Integer;
    {class} function _GetMSP_ERROR_AUTH_DVC_LICENSE_TO_BE_EXPIRED: Integer;
    {class} function _GetMSP_ERROR_AUTH_DVC_EXCEED_LICENSE: Integer;
    {class} function _GetMSP_ERROR_ASE_EXCEP_SILENCE: Integer;
    {class} function _GetMSP_ERROR_ASE_EXCEP_SNRATIO: Integer;
    {class} function _GetMSP_ERROR_ASE_EXCEP_PAPERDATA: Integer;
    {class} function _GetMSP_ERROR_ASE_EXCEP_PAPERCONTENTS: Integer;
    {class} function _GetMSP_ERROR_ASE_EXCEP_NOTMONO: Integer;
    {class} function _GetMSP_ERROR_ASE_EXCEP_OTHERS: Integer;
    {class} function _GetMSP_ERROR_ASE_EXCEP_PAPERFMT: Integer;
    {class} function _GetMSP_ERROR_ASE_EXCEP_ULISTWORD: Integer;
    {class} function _GetMSP_ERROR_IVW_MODEL_TRAINING: Integer;
    {class} function _GetMSP_ERROR_IVW_MODEL_NO_FOUND: Integer;
    {class} function _GetMSP_ERROR_IVW_BUSY: Integer;
    {class} function _GetMSP_ERROR_IVP_GENERAL: Integer;
    {class} function _GetMSP_ERROR_IVP_EXTRA_RGN_SOPPORT: Integer;
    {class} function _GetMSP_ERROR_IVP_TRUNCATED: Integer;
    {class} function _GetMSP_ERROR_IVP_MUCH_NOISE: Integer;
    {class} function _GetMSP_ERROR_IVP_TOO_LOW: Integer;
    {class} function _GetMSP_ERROR_IVP_ZERO_AUDIO: Integer;
    {class} function _GetMSP_ERROR_IVP_UTTER_TOO_SHORT: Integer;
    {class} function _GetMSP_ERROR_IVP_TEXT_NOT_MATCH: Integer;
    {class} function _GetMSP_ERROR_IVP_NO_ENOUGH_AUDIO: Integer;
    {class} function _GetMSP_ERROR_IVP_MODEL_NOT_FOUND_IN_HBASE: Integer;
    {class} function _GetMSP_MODEL_NEED_UPDATE: Integer;
    {class} function _GetMSP_ERROR_IFR_NOT_FACE_IMAGE: Integer;
    {class} function _GetMSP_ERROR_FACE_IMAGE_FULL_LEFT: Integer;
    {class} function _GetMSP_ERROR_FACE_IMAGE_FULL_RIGHT: Integer;
    {class} function _GetMSP_ERROR_IMAGE_CLOCKWISE_WHIRL: Integer;
    {class} function _GetMSP_ERROR_IMAGE_COUNTET_CLOCKWISE_WHIRL: Integer;
    {class} function _GetMSP_ERROR_VALID_IMAGE_SIZE: Integer;
    {class} function _GetMSP_ERROR_ILLUMINATION: Integer;
    {class} function _GetMSP_ERROR_FACE_OCCULTATION: Integer;
    {class} function _GetMSP_ERROR_FACE_INVALID_MODEL: Integer;
    {class} function _GetMSP_ERROR_FACE_MODEL_NOT_FOUND_IN_HBASE: Integer;
    {class} function _GetMSP_ERROR_FUSION_INVALID_INPUT_TYPE: Integer;
    {class} function _GetMSP_ERROR_FUSION_NO_ENOUGH_DATA: Integer;
    {class} function _GetMSP_ERROR_FUSION_ENOUGH_DATA: Integer;
    {class} function _GetMSP_ERROR_NO_GROUP: Integer;
    {class} function _GetMSP_ERROR_GROUP_EMPTY: Integer;
    {class} function _GetMSP_ERROR_NO_USER: Integer;
    {class} function _GetMSP_ERROR_OVERFLOW_IN_GROUP: Integer;
    {class} function _GetMSP_ERROR_HTTP_BASE: Integer;
    {class} function _GetMSP_ERROR_ISV_NO_USER: Integer;
    {class} function _GetMSP_ERROR_LUA_BASE: Integer;
    {class} function _GetMSP_ERROR_LUA_YIELD: Integer;
    {class} function _GetMSP_ERROR_LUA_ERRRUN: Integer;
    {class} function _GetMSP_ERROR_LUA_ERRSYNTAX: Integer;
    {class} function _GetMSP_ERROR_LUA_ERRMEM: Integer;
    {class} function _GetMSP_ERROR_LUA_ERRERR: Integer;
    {class} function _GetMSP_ERROR_LUA_INVALID_PARAM: Integer;
    {class} function _GetMSP_ERROR_MMP_BASE: Integer;
    {class} function _GetMSP_ERROR_MMP_MYSQL_INITFAIL: Integer;
    {class} function _GetMSP_ERROR_MMP_REDIS_INITFAIL: Integer;
    {class} function _GetMSP_ERROR_MMP_NETDSS_INITFAIL: Integer;
    {class} function _GetMSP_ERROR_MMP_TAIR_INITFAIL: Integer;
    {class} function _GetMSP_ERROR_MMP_MAIL_SESSION_FAIL: Integer;
    {class} function _GetMSP_ERROR_MMP_MAIL_LOGON_FAIL: Integer;
    {class} function _GetMSP_ERROR_MMP_MAIL_USER_ILLEGAL: Integer;
    {class} function _GetMSP_ERROR_MMP_MAIL_PWD_ERR: Integer;
    {class} function _GetMSP_ERROR_MMP_MAIL_SOCKET_ERR: Integer;
    {class} function _GetMSP_ERROR_MMP_MAIL_INIT_FAIL: Integer;
    {class} function _GetMSP_ERROR_MMP_STORE_MNR_NO_INIT: Integer;
    {class} function _GetMSP_ERROR_MMP_STORE_MNR_POOL_FULL: Integer;
    {class} function _GetMSP_ERROR_MMP_STRATGY_PARAM_ILLEGAL: Integer;
    {class} function _GetMSP_ERROR_MMP_STRATGY_PARAM_TOOLOOG: Integer;
    {class} function _GetMSP_ERROR_MMP_PARAM_NULL: Integer;
    {class} function _GetMSP_ERROR_MMP_ERR_MORE_TOTAL: Integer;
    {class} function _GetMSP_ERROR_MMP_PROC_THRESHOLD: Integer;
    {class} function _GetMSP_ERROR_MMP_SERVER_THRESHOLD: Integer;
    {class} function _GetMSP_ERROR_MMP_PYTHON_NO_EXIST: Integer;
    {class} function _GetMSP_ERROR_MMP_PYTHON_IMPORT_FAILED: Integer;
    {class} function _GetMSP_ERROR_MMP_PYTHON_BAD_FUNC: Integer;
    {class} function _GetMSP_ERROR_MMP_DB_DATA_ILLEGAL: Integer;
    {class} function _GetMSP_ERROR_MMP_REDIS_NOT_CONN: Integer;
    {class} function _GetMSP_ERROR_MMP_PMA_NOT_FOUND_STRATEGY: Integer;
    {class} function _GetMSP_ERROR_MMP_TAIR_CONNECT: Integer;
    {class} function _GetMSP_ERROR_MMP_PMC_SERVINFO_INVALID: Integer;
    {class} function _GetMSP_ERROR_MMP_ALARM_GROUP_NULL: Integer;
    {class} function _GetMSP_ERROR_MMP_ALARM_CONTXT_NULL: Integer;
    {class} function _GetMSP_ERROR_LMOD_BASE: Integer;
    {class} function _GetMSP_ERROR_LMOD_NOT_FOUND: Integer;
    {class} function _GetMSP_ERROR_LMOD_UNEXPECTED_BIN: Integer;
    {class} function _GetMSP_ERROR_LMOD_LOADCODE: Integer;
    {class} function _GetMSP_ERROR_LMOD_PRECALL: Integer;
    {class} function _GetMSP_ERROR_LMOD_RUNTIME_EXCEPTION: Integer;
    {class} function _GetMSP_ERROR_LMOD_ALREADY_LOADED: Integer;
    {class} function _GetMSP_ERROR_BIZ_BASE: Integer;
    {class} function _GetMSP_ERROR_NGX_LOG_MORE_TOTEL_SIZE: Integer;
    {class} function _GetERROR_NO_NETWORK: Integer;
    {class} function _GetERROR_NETWORK_TIMEOUT: Integer;
    {class} function _GetERROR_NET_EXCEPTION: Integer;
    {class} function _GetERROR_INVALID_RESULT: Integer;
    {class} function _GetERROR_NO_MATCH: Integer;
    {class} function _GetERROR_AUDIO_RECORD: Integer;
    {class} function _GetERROR_NO_SPEECH: Integer;
    {class} function _GetERROR_SPEECH_TIMEOUT: Integer;
    {class} function _GetERROR_EMPTY_UTTERANCE: Integer;
    {class} function _GetERROR_FILE_ACCESS: Integer;
    {class} function _GetERROR_PLAY_MEDIA: Integer;
    {class} function _GetERROR_INVALID_PARAM: Integer;
    {class} function _GetERROR_TEXT_OVERFLOW: Integer;
    {class} function _GetERROR_INVALID_DATA: Integer;
    {class} function _GetERROR_LOGIN: Integer;
    {class} function _GetERROR_PERMISSION_DENIED: Integer;
    {class} function _GetERROR_INTERRUPT: Integer;
    {class} function _GetERROR_VERSION_LOWER: Integer;
    {class} function _GetERROR_SYSTEM_PREINSTALL: Integer;
    {class} function _GetERROR_UNSATISFIED_LINK: Integer;
    {class} function _GetERROR_UNKNOWN: Integer;
    {class} function _GetERROR_COMPONENT_NOT_INSTALLED: Integer;
    {class} function _GetERROR_ENGINE_NOT_SUPPORTED: Integer;
    {class} function _GetERROR_ENGINE_INIT_FAIL: Integer;
    {class} function _GetERROR_ENGINE_CALL_FAIL: Integer;
    {class} function _GetERROR_ENGINE_BUSY: Integer;
    {class} function _GetERROR_LOCAL_NO_INIT: Integer;
    {class} function _GetERROR_LOCAL_RESOURCE: Integer;
    {class} function _GetERROR_LOCAL_ENGINE: Integer;
    {class} function _GetERROR_IVW_INTERRUPT: Integer;
    {class} function _GetERROR_ASR_CLIENT: Integer;
    {class} function _GetERROR_ASR_INVALID_PARA: Integer;
    {class} function _GetERROR_ASR_INVALID_PARA_VALUE: Integer;
    {class} function _GetERROR_ASR_OUT_OF_MEMORY: Integer;
    {class} function _GetERROR_ASR_CREATE_HANDLE_FAILED: Integer;
    {class} function _GetERROR_ASR_ENGINE_INIT_FAILED: Integer;
    {class} function _GetERROR_ASR_ENGINE_STARTED: Integer;
    {class} function _GetERROR_ASR_ENGINE_UNINIT: Integer;
    {class} function _GetERROR_ASR_SPEECH_TIMEOUT: Integer;
    {class} function _GetERROR_ASR_NO_RECOGNIZED_RESULT: Integer;
    {class} function _GetERROR_ASR_INVALID_HANDLE: Integer;
    {class} function _GetERROR_ASR_FILE_ACCESS: Integer;
    {class} function _GetERROR_AITALK_FALSE: Integer;
    {class} function _GetERROR_AITALK_PERMISSION_DENIED: Integer;
    {class} function _GetERROR_AITALK_INVALID_PARA: Integer;
    {class} function _GetERROR_AITALK_BUFFER_OVERFLOW: Integer;
    {class} function _GetERROR_AITALK_FAILED: Integer;
    {class} function _GetERROR_AITALK_NOT_SUPPORTED: Integer;
    {class} function _GetERROR_AITALK_OUT_OF_MEMORY: Integer;
    {class} function _GetERROR_AITALK_INVALID_RESOURCE: Integer;
    {class} function _GetERROR_AITALK_NOT_FOUND: Integer;
    {class} function _GetERROR_AITALK_INVALID_GRAMMAR: Integer;
    {class} function _GetERROR_AITALK_INVALID_CALL: Integer;
    {class} function _GetERROR_AITALK_SYNTAX_ERROR: Integer;
    {class} function _GetERROR_AITALK_RESET: Integer;
    {class} function _GetERROR_AITALK_ENDED: Integer;
    {class} function _GetERROR_AITALK_IDLE: Integer;
    {class} function _GetERROR_AITALK_CANNOT_SAVE_FILE: Integer;
    {class} function _GetERROR_AITALK_INVALID_GRAMMAR_NAME: Integer;
    {class} function _GetERROR_AITALK_BUFFER_EMPTY: Integer;
    {class} function _GetERROR_AITALK_GET_RESULT: Integer;
    {class} function _GetERROR_AITALK_REACT_OUT_TIME: Integer;
    {class} function _GetERROR_AITALK_SPEECH_OUT_TIME: Integer;
    {class} function _GetERROR_AITALK_AUDIO_CUT: Integer;
    {class} function _GetERROR_AITALK_AUDIO_LOWER: Integer;
    {class} function _GetERROR_AITALK_INSUFFICIENT_PERMISSIONS: Integer;
    {class} function _GetERROR_AITALK_RESULT_ERROR: Integer;
    {class} function _GetERROR_AITALK_SHORT_PAUSE: Integer;
    {class} function _GetERROR_AITALK_BUSY: Integer;
    {class} function _GetERROR_AITALK_GRM_NOT_UPDATE: Integer;
    {class} function _GetERROR_AITALK_STARTED: Integer;
    {class} function _GetERROR_AITALK_STOPPED: Integer;
    {class} function _GetERROR_AITALK_ALREADY_STARTED: Integer;
    {class} function _GetERROR_AITALK_ALREADY_STOPPED: Integer;
    {class} function _GetERROR_AITALK_TOO_MANY_COMMAND: Integer;
    {class} function _GetERROR_AITALK_WAIT: Integer;
    {class} function _GetERROR_AITALK_MAE_RIGHT: Integer;
    {class} function _GetERROR_AITALK_MAE_WRONG: Integer;
    {class} function _GetERROR_AITALK_GRM_ERR: Integer;
    {class} function _GetERROR_TTS_INVALID_PARA: Integer;
    {class} function _GetERROR_TTS_INVALID_PARA_VALUE: Integer;
    {class} function _GetERROR_TTS_OUT_OF_MEMORY: Integer;
    {class} function _GetERROR_TTS_INVALID_HANDLE: Integer;
    {class} function _GetERROR_TTS_CREATE_HANDLE_FAILED: Integer;
    {class} function _GetERROR_TTS_INVALID_RESOURCE: Integer;
    {class} function _GetERROR_TTS_INVALID_VOICE_NAME: Integer;
    {class} function _GetERROR_TTS_ENGINE_UNINIT: Integer;
    {class} function _GetERROR_TTS_ENGINE_INIT_FAILED: Integer;
    {class} function _GetERROR_TTS_ENGINE_BUSY: Integer;
    {class} function _GetERROR_AISOUND_BASE: Integer;
    {class} function _GetERROR_AISOUND_UNIMPEMENTED: Integer;
    {class} function _GetERROR_AISOUND_UNSUPPORTED: Integer;
    {class} function _GetERROR_AISOUND_INVALID_HANDLE: Integer;
    {class} function _GetERROR_AISOUND_INVALID_PARA: Integer;
    {class} function _GetERROR_AISOUND_INSUFFICIENT_HEAP: Integer;
    {class} function _GetERROR_AISOUND_STATE_REFUSE: Integer;
    {class} function _GetERROR_AISOUND_INVALID_PARA_ID: Integer;
    {class} function _GetERROR_AISOUND_INVALID_PARA_VALUE: Integer;
    {class} function _GetERROR_AISOUND_RESOURCE: Integer;
    {class} function _GetERROR_AISOUND_RESOURCE_READ: Integer;
    {class} function _GetERROR_AISOUND_LBENDIAN: Integer;
    {class} function _GetERROR_AISOUND_HEADFILE: Integer;
    {class} function _GetERROR_AISOUND_BUFFER_OVERFLOW: Integer;
    {class} function _GetERROR_AISOUND_INVALID_ISAMPA: Integer;
    {class} function _GetERROR_AISOUND_INVALID_CSSML: Integer;
    {class} function _GetERROR_IVW_ENGINE_UNINI: Integer;
    {class} function _GetERROR_IVW_RESVER_NOMATCH: Integer;
    {class} function _GetSPEECH_ERROR_IVW_INVALID_RESTYPE: Integer;
    {class} function _GetERROR_IVW_INVALID_CALL: Integer;
    {class} function _GetERROR_IVW_INVALID_ARG: Integer;
    {class} function _GetERROR_IVW_TELL_SIZE: Integer;
    {class} function _GetERROR_IVW_OUT_OF_MEMORY: Integer;
    {class} function _GetERROR_IVW_OUT_BUFFER_FULL: Integer;
    {class} function _GetERROR_IVW_OUT_BUFFER_EMPTY: Integer;
    {class} function _GetERROR_IVW_INVALID_RESOURCE: Integer;
    {class} function _GetERROR_IVW_REPETITIOPN_ENTER: Integer;
    {class} function _GetERROR_IVW_NOT_SUPPORT: Integer;
    {class} function _GetERROR_IVW_NOT_FOUND: Integer;
    {class} function _GetERROR_IVW_INVALID_SN: Integer;
    {class} function _GetERROR_IVW_LIMITTED: Integer;
    {class} function _GetERROR_IVW_TIME_OUT: Integer;
    {class} function _GetERROR_IVW_ENROLL1_SUCESS: Integer;
    {class} function _GetERROR_IVW_ENROLL1_FAILED: Integer;
    {class} function _GetERROR_IVW_ENROLL2_SUCESS: Integer;
    {class} function _GetERROR_IVW_ENROLL2_FAILED: Integer;
    {class} function _GetERROR_IVW_ENROLL3_SUCESS: Integer;
    {class} function _GetERROR_IVW_ENROLL3_FAILED: Integer;
    {class} function _GetERROR_IVW_SPEECH_TOO_SHORT: Integer;
    {class} function _GetERROR_IVW_SPEECH_STOP: Integer;
    {class} function _GetERROR_AIMIC_BASE: Integer;
    {class} function _GetERROR_AIMIC_FILE_OPEN: Integer;
    {class} function _GetERROR_AIMIC_FILE_ACCESS: Integer;
    {class} function _GetERROR_AIMIC_LOCK: Integer;
    {class} function _GetERROR_AIMIC_OOM: Integer;
    {class} function _GetERROR_AIMIC_CREATE_HANDLE: Integer;
    {class} function _GetERROR_AIMIC_NULL_HANDLE: Integer;
    {class} function _GetERROR_AIMIC_QUEUE: Integer;
    {class} function _GetERROR_AIMIC_NOT_INIT: Integer;
    {class} function _GetERROR_AIMIC_STR_COPY: Integer;
    {class} function _GetERROR_AIMIC_INVALID_DATA: Integer;
    {class} function _GetERROR_AIMIC_NOT_ENOUGH_BUF: Integer;
    {class} function _GetERROR_AIMIC_INVALID_PARA_VALUE: Integer;
    {class} function _GetERROR_AIMIC_INVALID_PARA: Integer;
    {class} function _GetERROR_AIMIC_BUSY: Integer;
    {class} function _GetERROR_AIMIC_JNIENV: Integer;
    {class} function _GetERROR_AIMIC_UNSATISFIED_LINK: Integer;
    {class} function _GetERROR_AIMIC_INVALID_CALL: Integer;
    {class} function _GetERROR_AIMIC_MSG_UNHANDLED: Integer;
    {class} function _GetERROR_AIMIC_INVALID_RESULT: Integer;
    {class} function _GetERROR_AIMIC_UNKNOWN: Integer;

    { static Methods }
    {class} function init: JErrorCode; cdecl;

    { static Property }
    {class} property SUCCESS: Integer read _GetSUCCESS;
    {class} property MSP_ERROR_FAIL: Integer read _GetMSP_ERROR_FAIL;
    {class} property MSP_ERROR_EXCEPTION: Integer read _GetMSP_ERROR_EXCEPTION;
    {class} property MSP_ERROR_GENERAL: Integer read _GetMSP_ERROR_GENERAL;
    {class} property MSP_ERROR_OUT_OF_MEMORY: Integer read _GetMSP_ERROR_OUT_OF_MEMORY;
    {class} property MSP_ERROR_FILE_NOT_FOUND: Integer read _GetMSP_ERROR_FILE_NOT_FOUND;
    {class} property MSP_ERROR_NOT_SUPPORT: Integer read _GetMSP_ERROR_NOT_SUPPORT;
    {class} property MSP_ERROR_NOT_IMPLEMENT: Integer read _GetMSP_ERROR_NOT_IMPLEMENT;
    {class} property MSP_ERROR_ACCESS: Integer read _GetMSP_ERROR_ACCESS;
    {class} property MSP_ERROR_INVALID_PARA: Integer read _GetMSP_ERROR_INVALID_PARA;
    {class} property MSP_ERROR_INVALID_PARA_VALUE: Integer read _GetMSP_ERROR_INVALID_PARA_VALUE;
    {class} property MSP_ERROR_INVALID_HANDLE: Integer read _GetMSP_ERROR_INVALID_HANDLE;
    {class} property MSP_ERROR_INVALID_DATA: Integer read _GetMSP_ERROR_INVALID_DATA;
    {class} property MSP_ERROR_NO_LICENSE: Integer read _GetMSP_ERROR_NO_LICENSE;
    {class} property MSP_ERROR_NOT_INIT: Integer read _GetMSP_ERROR_NOT_INIT;
    {class} property MSP_ERROR_NULL_HANDLE: Integer read _GetMSP_ERROR_NULL_HANDLE;
    {class} property MSP_ERROR_OVERFLOW: Integer read _GetMSP_ERROR_OVERFLOW;
    {class} property MSP_ERROR_TIME_OUT: Integer read _GetMSP_ERROR_TIME_OUT;
    {class} property MSP_ERROR_OPEN_FILE: Integer read _GetMSP_ERROR_OPEN_FILE;
    {class} property MSP_ERROR_NOT_FOUND: Integer read _GetMSP_ERROR_NOT_FOUND;
    {class} property MSP_ERROR_NO_ENOUGH_BUFFER: Integer read _GetMSP_ERROR_NO_ENOUGH_BUFFER;
    {class} property MSP_ERROR_NO_DATA: Integer read _GetMSP_ERROR_NO_DATA;
    {class} property MSP_ERROR_NO_MORE_DATA: Integer read _GetMSP_ERROR_NO_MORE_DATA;
    {class} property MSP_ERROR_NO_RESPONSE_DATA: Integer read _GetMSP_ERROR_NO_RESPONSE_DATA;
    {class} property MSP_ERROR_ALREADY_EXIST: Integer read _GetMSP_ERROR_ALREADY_EXIST;
    {class} property MSP_ERROR_LOAD_MODULE: Integer read _GetMSP_ERROR_LOAD_MODULE;
    {class} property MSP_ERROR_BUSY: Integer read _GetMSP_ERROR_BUSY;
    {class} property MSP_ERROR_INVALID_CONFIG: Integer read _GetMSP_ERROR_INVALID_CONFIG;
    {class} property MSP_ERROR_VERSION_CHECK: Integer read _GetMSP_ERROR_VERSION_CHECK;
    {class} property MSP_ERROR_CANCELED: Integer read _GetMSP_ERROR_CANCELED;
    {class} property MSP_ERROR_INVALID_MEDIA_TYPE: Integer read _GetMSP_ERROR_INVALID_MEDIA_TYPE;
    {class} property MSP_ERROR_CONFIG_INITIALIZE: Integer read _GetMSP_ERROR_CONFIG_INITIALIZE;
    {class} property MSP_ERROR_CREATE_HANDLE: Integer read _GetMSP_ERROR_CREATE_HANDLE;
    {class} property MSP_ERROR_CODING_LIB_NOT_LOAD: Integer read _GetMSP_ERROR_CODING_LIB_NOT_LOAD;
    {class} property MSP_ERROR_USER_CANCELLED: Integer read _GetMSP_ERROR_USER_CANCELLED;
    {class} property MSP_ERROR_INVALID_OPERATION: Integer read _GetMSP_ERROR_INVALID_OPERATION;
    {class} property MSP_ERROR_MESSAGE_NOT_COMPLETE: Integer read _GetMSP_ERROR_MESSAGE_NOT_COMPLETE;
    {class} property MSP_ERROR_USER_ACTIVE_ABORT: Integer read _GetMSP_ERROR_USER_ACTIVE_ABORT;
    {class} property MSP_ERROR_BUSY_GRMBUILDING: Integer read _GetMSP_ERROR_BUSY_GRMBUILDING;
    {class} property MSP_ERROR_BUSY_LEXUPDATING: Integer read _GetMSP_ERROR_BUSY_LEXUPDATING;
    {class} property MSP_ERROR_BOS_TIMEOUT: Integer read _GetMSP_ERROR_BOS_TIMEOUT;
    {class} property MSP_ERROR_NET_GENERAL: Integer read _GetMSP_ERROR_NET_GENERAL;
    {class} property MSP_ERROR_NET_OPENSOCK: Integer read _GetMSP_ERROR_NET_OPENSOCK;
    {class} property MSP_ERROR_NET_CONNECTSOCK: Integer read _GetMSP_ERROR_NET_CONNECTSOCK;
    {class} property MSP_ERROR_NET_ACCEPTSOCK: Integer read _GetMSP_ERROR_NET_ACCEPTSOCK;
    {class} property MSP_ERROR_NET_SENDSOCK: Integer read _GetMSP_ERROR_NET_SENDSOCK;
    {class} property MSP_ERROR_NET_RECVSOCK: Integer read _GetMSP_ERROR_NET_RECVSOCK;
    {class} property MSP_ERROR_NET_INVALIDSOCK: Integer read _GetMSP_ERROR_NET_INVALIDSOCK;
    {class} property MSP_ERROR_NET_BADADDRESS: Integer read _GetMSP_ERROR_NET_BADADDRESS;
    {class} property MSP_ERROR_NET_BINDSEQUENCE: Integer read _GetMSP_ERROR_NET_BINDSEQUENCE;
    {class} property MSP_ERROR_NET_NOTOPENSOCK: Integer read _GetMSP_ERROR_NET_NOTOPENSOCK;
    {class} property MSP_ERROR_NET_NOTBIND: Integer read _GetMSP_ERROR_NET_NOTBIND;
    {class} property MSP_ERROR_NET_NOTLISTEN: Integer read _GetMSP_ERROR_NET_NOTLISTEN;
    {class} property MSP_ERROR_NET_CONNECTCLOSE: Integer read _GetMSP_ERROR_NET_CONNECTCLOSE;
    {class} property MSP_ERROR_NET_NOTDGRAMSOCK: Integer read _GetMSP_ERROR_NET_NOTDGRAMSOCK;
    {class} property MSP_ERROR_NET_DNS: Integer read _GetMSP_ERROR_NET_DNS;
    {class} property MSP_ERROR_NET_INIT: Integer read _GetMSP_ERROR_NET_INIT;
    {class} property MSP_ERROR_NFL_INNER_ERROR: Integer read _GetMSP_ERROR_NFL_INNER_ERROR;
    {class} property MSP_ERROR_MSS_TIME_OUT: Integer read _GetMSP_ERROR_MSS_TIME_OUT;
    {class} property MSP_ERROT_CLIENT_TIME_OUT: Integer read _GetMSP_ERROT_CLIENT_TIME_OUT;
    {class} property MSP_ERROR_CLIENT_CLOSE: Integer read _GetMSP_ERROR_CLIENT_CLOSE;
    {class} property MSP_ERROR_CLIENT_AREA_CHANGE: Integer read _GetMSP_ERROR_CLIENT_AREA_CHANGE;
    {class} property MSP_ERROR_NET_SSL_HANDSHAKE: Integer read _GetMSP_ERROR_NET_SSL_HANDSHAKE;
    {class} property MSP_ERROR_NET_INVALID_ROOT_CERT: Integer read _GetMSP_ERROR_NET_INVALID_ROOT_CERT;
    {class} property MSP_ERROR_NET_INVALID_CLIENT_CERT: Integer read _GetMSP_ERROR_NET_INVALID_CLIENT_CERT;
    {class} property MSP_ERROR_NET_INVALID_SERVER_CERT: Integer read _GetMSP_ERROR_NET_INVALID_SERVER_CERT;
    {class} property MSP_ERROR_NET_INVALID_KEY: Integer read _GetMSP_ERROR_NET_INVALID_KEY;
    {class} property MSP_ERROR_MSG_GENERAL: Integer read _GetMSP_ERROR_MSG_GENERAL;
    {class} property MSP_ERROR_MSG_PARSE_ERROR: Integer read _GetMSP_ERROR_MSG_PARSE_ERROR;
    {class} property MSP_ERROR_MSG_BUILD_ERROR: Integer read _GetMSP_ERROR_MSG_BUILD_ERROR;
    {class} property MSP_ERROR_MSG_PARAM_ERROR: Integer read _GetMSP_ERROR_MSG_PARAM_ERROR;
    {class} property MSP_ERROR_MSG_CONTENT_EMPTY: Integer read _GetMSP_ERROR_MSG_CONTENT_EMPTY;
    {class} property MSP_ERROR_MSG_INVALID_CONTENT_TYPE: Integer read _GetMSP_ERROR_MSG_INVALID_CONTENT_TYPE;
    {class} property MSP_ERROR_MSG_INVALID_CONTENT_LENGTH: Integer read _GetMSP_ERROR_MSG_INVALID_CONTENT_LENGTH;
    {class} property MSP_ERROR_MSG_INVALID_CONTENT_ENCODE: Integer read _GetMSP_ERROR_MSG_INVALID_CONTENT_ENCODE;
    {class} property MSP_ERROR_MSG_INVALID_KEY: Integer read _GetMSP_ERROR_MSG_INVALID_KEY;
    {class} property MSP_ERROR_MSG_KEY_EMPTY: Integer read _GetMSP_ERROR_MSG_KEY_EMPTY;
    {class} property MSP_ERROR_MSG_SESSION_ID_EMPTY: Integer read _GetMSP_ERROR_MSG_SESSION_ID_EMPTY;
    {class} property MSP_ERROR_MSG_LOGIN_ID_EMPTY: Integer read _GetMSP_ERROR_MSG_LOGIN_ID_EMPTY;
    {class} property MSP_ERROR_MSG_SYNC_ID_EMPTY: Integer read _GetMSP_ERROR_MSG_SYNC_ID_EMPTY;
    {class} property MSP_ERROR_MSG_APP_ID_EMPTY: Integer read _GetMSP_ERROR_MSG_APP_ID_EMPTY;
    {class} property MSP_ERROR_MSG_EXTERN_ID_EMPTY: Integer read _GetMSP_ERROR_MSG_EXTERN_ID_EMPTY;
    {class} property MSP_ERROR_MSG_INVALID_CMD: Integer read _GetMSP_ERROR_MSG_INVALID_CMD;
    {class} property MSP_ERROR_MSG_INVALID_SUBJECT: Integer read _GetMSP_ERROR_MSG_INVALID_SUBJECT;
    {class} property MSP_ERROR_MSG_INVALID_VERSION: Integer read _GetMSP_ERROR_MSG_INVALID_VERSION;
    {class} property MSP_ERROR_MSG_NO_CMD: Integer read _GetMSP_ERROR_MSG_NO_CMD;
    {class} property MSP_ERROR_MSG_NO_SUBJECT: Integer read _GetMSP_ERROR_MSG_NO_SUBJECT;
    {class} property MSP_ERROR_MSG_NO_VERSION: Integer read _GetMSP_ERROR_MSG_NO_VERSION;
    {class} property MSP_ERROR_MSG_MSSP_EMPTY: Integer read _GetMSP_ERROR_MSG_MSSP_EMPTY;
    {class} property MSP_ERROR_MSG_NEW_RESPONSE: Integer read _GetMSP_ERROR_MSG_NEW_RESPONSE;
    {class} property MSP_ERROR_MSG_NEW_CONTENT: Integer read _GetMSP_ERROR_MSG_NEW_CONTENT;
    {class} property MSP_ERROR_MSG_INVALID_SESSION_ID: Integer read _GetMSP_ERROR_MSG_INVALID_SESSION_ID;
    {class} property MSP_ERROR_MSG_INVALID_CONTENT: Integer read _GetMSP_ERROR_MSG_INVALID_CONTENT;
    {class} property MSP_ERROR_DB_GENERAL: Integer read _GetMSP_ERROR_DB_GENERAL;
    {class} property MSP_ERROR_DB_EXCEPTION: Integer read _GetMSP_ERROR_DB_EXCEPTION;
    {class} property MSP_ERROR_DB_NO_RESULT: Integer read _GetMSP_ERROR_DB_NO_RESULT;
    {class} property MSP_ERROR_DB_INVALID_USER: Integer read _GetMSP_ERROR_DB_INVALID_USER;
    {class} property MSP_ERROR_DB_INVALID_PWD: Integer read _GetMSP_ERROR_DB_INVALID_PWD;
    {class} property MSP_ERROR_DB_CONNECT: Integer read _GetMSP_ERROR_DB_CONNECT;
    {class} property MSP_ERROR_DB_INVALID_SQL: Integer read _GetMSP_ERROR_DB_INVALID_SQL;
    {class} property MSP_ERROR_DB_INVALID_APPID: Integer read _GetMSP_ERROR_DB_INVALID_APPID;
    {class} property MSP_ERROR_DB_NO_UID: Integer read _GetMSP_ERROR_DB_NO_UID;
    {class} property MSP_ERROR_RES_GENERAL: Integer read _GetMSP_ERROR_RES_GENERAL;
    {class} property MSP_ERROR_RES_LOAD: Integer read _GetMSP_ERROR_RES_LOAD;
    {class} property MSP_ERROR_RES_FREE: Integer read _GetMSP_ERROR_RES_FREE;
    {class} property MSP_ERROR_RES_MISSING: Integer read _GetMSP_ERROR_RES_MISSING;
    {class} property MSP_ERROR_RES_INVALID_NAME: Integer read _GetMSP_ERROR_RES_INVALID_NAME;
    {class} property MSP_ERROR_RES_INVALID_ID: Integer read _GetMSP_ERROR_RES_INVALID_ID;
    {class} property MSP_ERROR_RES_INVALID_IMG: Integer read _GetMSP_ERROR_RES_INVALID_IMG;
    {class} property MSP_ERROR_RES_WRITE: Integer read _GetMSP_ERROR_RES_WRITE;
    {class} property MSP_ERROR_RES_LEAK: Integer read _GetMSP_ERROR_RES_LEAK;
    {class} property MSP_ERROR_RES_HEAD: Integer read _GetMSP_ERROR_RES_HEAD;
    {class} property MSP_ERROR_RES_DATA: Integer read _GetMSP_ERROR_RES_DATA;
    {class} property MSP_ERROR_RES_SKIP: Integer read _GetMSP_ERROR_RES_SKIP;
    {class} property MSP_ERROR_TTS_GENERAL: Integer read _GetMSP_ERROR_TTS_GENERAL;
    {class} property MSP_ERROR_TTS_TEXTEND: Integer read _GetMSP_ERROR_TTS_TEXTEND;
    {class} property MSP_ERROR_TTS_TEXT_EMPTY: Integer read _GetMSP_ERROR_TTS_TEXT_EMPTY;
    {class} property MSP_ERROR_TTS_LTTS_ERROR: Integer read _GetMSP_ERROR_TTS_LTTS_ERROR;
    {class} property MSP_ERROR_REC_GENERAL: Integer read _GetMSP_ERROR_REC_GENERAL;
    {class} property MSP_ERROR_REC_INACTIVE: Integer read _GetMSP_ERROR_REC_INACTIVE;
    {class} property MSP_ERROR_REC_GRAMMAR_ERROR: Integer read _GetMSP_ERROR_REC_GRAMMAR_ERROR;
    {class} property MSP_ERROR_REC_NO_ACTIVE_GRAMMARS: Integer read _GetMSP_ERROR_REC_NO_ACTIVE_GRAMMARS;
    {class} property MSP_ERROR_REC_DUPLICATE_GRAMMAR: Integer read _GetMSP_ERROR_REC_DUPLICATE_GRAMMAR;
    {class} property MSP_ERROR_REC_INVALID_MEDIA_TYPE: Integer read _GetMSP_ERROR_REC_INVALID_MEDIA_TYPE;
    {class} property MSP_ERROR_REC_INVALID_LANGUAGE: Integer read _GetMSP_ERROR_REC_INVALID_LANGUAGE;
    {class} property MSP_ERROR_REC_URI_NOT_FOUND: Integer read _GetMSP_ERROR_REC_URI_NOT_FOUND;
    {class} property MSP_ERROR_REC_URI_TIMEOUT: Integer read _GetMSP_ERROR_REC_URI_TIMEOUT;
    {class} property MSP_ERROR_REC_URI_FETCH_ERROR: Integer read _GetMSP_ERROR_REC_URI_FETCH_ERROR;
    {class} property MSP_ERROR_REC_PROC_MOD: Integer read _GetMSP_ERROR_REC_PROC_MOD;
    {class} property MSP_ERROR_EP_GENERAL: Integer read _GetMSP_ERROR_EP_GENERAL;
    {class} property MSP_ERROR_EP_NO_SESSION_NAME: Integer read _GetMSP_ERROR_EP_NO_SESSION_NAME;
    {class} property MSP_ERROR_EP_INACTIVE: Integer read _GetMSP_ERROR_EP_INACTIVE;
    {class} property MSP_ERROR_EP_INITIALIZED: Integer read _GetMSP_ERROR_EP_INITIALIZED;
    {class} property MSP_ERROR_TUV_GENERAL: Integer read _GetMSP_ERROR_TUV_GENERAL;
    {class} property MSP_ERROR_TUV_GETHIDPARAM: Integer read _GetMSP_ERROR_TUV_GETHIDPARAM;
    {class} property MSP_ERROR_TUV_TOKEN: Integer read _GetMSP_ERROR_TUV_TOKEN;
    {class} property MSP_ERROR_TUV_CFGFILE: Integer read _GetMSP_ERROR_TUV_CFGFILE;
    {class} property MSP_ERROR_TUV_RECV_CONTENT: Integer read _GetMSP_ERROR_TUV_RECV_CONTENT;
    {class} property MSP_ERROR_TUV_VERFAIL: Integer read _GetMSP_ERROR_TUV_VERFAIL;
    {class} property MSP_ERROR_LOGIN_SUCCESS: Integer read _GetMSP_ERROR_LOGIN_SUCCESS;
    {class} property MSP_ERROR_LOGIN_NO_LICENSE: Integer read _GetMSP_ERROR_LOGIN_NO_LICENSE;
    {class} property MSP_ERROR_LOGIN_SESSIONID_INVALID: Integer read _GetMSP_ERROR_LOGIN_SESSIONID_INVALID;
    {class} property MSP_ERROR_LOGIN_SESSIONID_ERROR: Integer read _GetMSP_ERROR_LOGIN_SESSIONID_ERROR;
    {class} property MSP_ERROR_LOGIN_UNLOGIN: Integer read _GetMSP_ERROR_LOGIN_UNLOGIN;
    {class} property MSP_ERROR_LOGIN_INVALID_USER: Integer read _GetMSP_ERROR_LOGIN_INVALID_USER;
    {class} property MSP_ERROR_LOGIN_INVALID_PWD: Integer read _GetMSP_ERROR_LOGIN_INVALID_PWD;
    {class} property MSP_ERROR_LOGIN_SYSTEM_ERROR: Integer read _GetMSP_ERROR_LOGIN_SYSTEM_ERROR;
    {class} property MSP_ERROR_HCR_GENERAL: Integer read _GetMSP_ERROR_HCR_GENERAL;
    {class} property MSP_ERROR_HCR_RESOURCE_NOT_EXIST: Integer read _GetMSP_ERROR_HCR_RESOURCE_NOT_EXIST;
    {class} property MSP_ERROR_HCR_CREATE: Integer read _GetMSP_ERROR_HCR_CREATE;
    {class} property MSP_ERROR_HCR_DESTROY: Integer read _GetMSP_ERROR_HCR_DESTROY;
    {class} property MSP_ERROR_HCR_START: Integer read _GetMSP_ERROR_HCR_START;
    {class} property MSP_ERROR_HCR_APPEND_STROKES: Integer read _GetMSP_ERROR_HCR_APPEND_STROKES;
    {class} property MSP_ERROR_HCR_INIT: Integer read _GetMSP_ERROR_HCR_INIT;
    {class} property MSP_ERROR_HCR_POINT_DECODE: Integer read _GetMSP_ERROR_HCR_POINT_DECODE;
    {class} property MSP_ERROR_HCR_DISPATCH: Integer read _GetMSP_ERROR_HCR_DISPATCH;
    {class} property MSP_ERROR_HCR_GETRESULT: Integer read _GetMSP_ERROR_HCR_GETRESULT;
    {class} property MSP_ERROR_HCR_RESOURCE: Integer read _GetMSP_ERROR_HCR_RESOURCE;
    {class} property MSP_ERROR_AUTH_NO_LICENSE: Integer read _GetMSP_ERROR_AUTH_NO_LICENSE;
    {class} property MSP_ERROR_AUTH_NO_ENOUGH_LICENSE: Integer read _GetMSP_ERROR_AUTH_NO_ENOUGH_LICENSE;
    {class} property MSP_ERROR_AUTH_INVALID_LICENSE: Integer read _GetMSP_ERROR_AUTH_INVALID_LICENSE;
    {class} property MSP_ERROR_AUTH_LICENSE_EXPIRED: Integer read _GetMSP_ERROR_AUTH_LICENSE_EXPIRED;
    {class} property MSP_ERROR_AUTH_NEED_MORE_DATA: Integer read _GetMSP_ERROR_AUTH_NEED_MORE_DATA;
    {class} property MSP_ERROR_AUTH_LICENSE_TO_BE_EXPIRED: Integer read _GetMSP_ERROR_AUTH_LICENSE_TO_BE_EXPIRED;
    {class} property MSP_ERROR_AUTH_INVALID_MACHINE_ID: Integer read _GetMSP_ERROR_AUTH_INVALID_MACHINE_ID;
    {class} property MSP_ERROR_AUTH_LOCAL_ASR_FORBIDDEN: Integer read _GetMSP_ERROR_AUTH_LOCAL_ASR_FORBIDDEN;
    {class} property MSP_ERROR_AUTH_LOCAL_TTS_FORBIDDEN: Integer read _GetMSP_ERROR_AUTH_LOCAL_TTS_FORBIDDEN;
    {class} property MSP_ERROR_AUTH_LOCAL_IVW_FORBIDDEN: Integer read _GetMSP_ERROR_AUTH_LOCAL_IVW_FORBIDDEN;
    {class} property MSP_ERROR_AUTH_APPID_NOT_MATCH: Integer read _GetMSP_ERROR_AUTH_APPID_NOT_MATCH;
    {class} property MSP_ERROR_AUTH_UID_NOT_MATCH: Integer read _GetMSP_ERROR_AUTH_UID_NOT_MATCH;
    {class} property MSP_ERROR_AUTH_TRIAL_EXPIRED: Integer read _GetMSP_ERROR_AUTH_TRIAL_EXPIRED;
    {class} property MSP_ERROR_AUTH_ERROR_END: Integer read _GetMSP_ERROR_AUTH_ERROR_END;
    {class} property MSP_ERROR_AUTH_DVC_NO_LICENSE: Integer read _GetMSP_ERROR_AUTH_DVC_NO_LICENSE;
    {class} property MSP_ERROR_AUTH_DVC_NO_ENOUGH_LICENSE: Integer read _GetMSP_ERROR_AUTH_DVC_NO_ENOUGH_LICENSE;
    {class} property MSP_ERROR_AUTH_DVC_INVALID_LICENSE: Integer read _GetMSP_ERROR_AUTH_DVC_INVALID_LICENSE;
    {class} property MSP_ERROR_AUTH_DVC_LICENSE_EXPIRED: Integer read _GetMSP_ERROR_AUTH_DVC_LICENSE_EXPIRED;
    {class} property MSP_ERROR_AUTH_DVC_NEED_MORE_DATA: Integer read _GetMSP_ERROR_AUTH_DVC_NEED_MORE_DATA;
    {class} property MSP_ERROR_AUTH_DVC_LICENSE_TO_BE_EXPIRED: Integer read _GetMSP_ERROR_AUTH_DVC_LICENSE_TO_BE_EXPIRED;
    {class} property MSP_ERROR_AUTH_DVC_EXCEED_LICENSE: Integer read _GetMSP_ERROR_AUTH_DVC_EXCEED_LICENSE;
    {class} property MSP_ERROR_ASE_EXCEP_SILENCE: Integer read _GetMSP_ERROR_ASE_EXCEP_SILENCE;
    {class} property MSP_ERROR_ASE_EXCEP_SNRATIO: Integer read _GetMSP_ERROR_ASE_EXCEP_SNRATIO;
    {class} property MSP_ERROR_ASE_EXCEP_PAPERDATA: Integer read _GetMSP_ERROR_ASE_EXCEP_PAPERDATA;
    {class} property MSP_ERROR_ASE_EXCEP_PAPERCONTENTS: Integer read _GetMSP_ERROR_ASE_EXCEP_PAPERCONTENTS;
    {class} property MSP_ERROR_ASE_EXCEP_NOTMONO: Integer read _GetMSP_ERROR_ASE_EXCEP_NOTMONO;
    {class} property MSP_ERROR_ASE_EXCEP_OTHERS: Integer read _GetMSP_ERROR_ASE_EXCEP_OTHERS;
    {class} property MSP_ERROR_ASE_EXCEP_PAPERFMT: Integer read _GetMSP_ERROR_ASE_EXCEP_PAPERFMT;
    {class} property MSP_ERROR_ASE_EXCEP_ULISTWORD: Integer read _GetMSP_ERROR_ASE_EXCEP_ULISTWORD;
    {class} property MSP_ERROR_IVW_MODEL_TRAINING: Integer read _GetMSP_ERROR_IVW_MODEL_TRAINING;
    {class} property MSP_ERROR_IVW_MODEL_NO_FOUND: Integer read _GetMSP_ERROR_IVW_MODEL_NO_FOUND;
    {class} property MSP_ERROR_IVW_BUSY: Integer read _GetMSP_ERROR_IVW_BUSY;
    {class} property MSP_ERROR_IVP_GENERAL: Integer read _GetMSP_ERROR_IVP_GENERAL;
    {class} property MSP_ERROR_IVP_EXTRA_RGN_SOPPORT: Integer read _GetMSP_ERROR_IVP_EXTRA_RGN_SOPPORT;
    {class} property MSP_ERROR_IVP_TRUNCATED: Integer read _GetMSP_ERROR_IVP_TRUNCATED;
    {class} property MSP_ERROR_IVP_MUCH_NOISE: Integer read _GetMSP_ERROR_IVP_MUCH_NOISE;
    {class} property MSP_ERROR_IVP_TOO_LOW: Integer read _GetMSP_ERROR_IVP_TOO_LOW;
    {class} property MSP_ERROR_IVP_ZERO_AUDIO: Integer read _GetMSP_ERROR_IVP_ZERO_AUDIO;
    {class} property MSP_ERROR_IVP_UTTER_TOO_SHORT: Integer read _GetMSP_ERROR_IVP_UTTER_TOO_SHORT;
    {class} property MSP_ERROR_IVP_TEXT_NOT_MATCH: Integer read _GetMSP_ERROR_IVP_TEXT_NOT_MATCH;
    {class} property MSP_ERROR_IVP_NO_ENOUGH_AUDIO: Integer read _GetMSP_ERROR_IVP_NO_ENOUGH_AUDIO;
    {class} property MSP_ERROR_IVP_MODEL_NOT_FOUND_IN_HBASE: Integer read _GetMSP_ERROR_IVP_MODEL_NOT_FOUND_IN_HBASE;
    {class} property MSP_MODEL_NEED_UPDATE: Integer read _GetMSP_MODEL_NEED_UPDATE;
    {class} property MSP_ERROR_IFR_NOT_FACE_IMAGE: Integer read _GetMSP_ERROR_IFR_NOT_FACE_IMAGE;
    {class} property MSP_ERROR_FACE_IMAGE_FULL_LEFT: Integer read _GetMSP_ERROR_FACE_IMAGE_FULL_LEFT;
    {class} property MSP_ERROR_FACE_IMAGE_FULL_RIGHT: Integer read _GetMSP_ERROR_FACE_IMAGE_FULL_RIGHT;
    {class} property MSP_ERROR_IMAGE_CLOCKWISE_WHIRL: Integer read _GetMSP_ERROR_IMAGE_CLOCKWISE_WHIRL;
    {class} property MSP_ERROR_IMAGE_COUNTET_CLOCKWISE_WHIRL: Integer read _GetMSP_ERROR_IMAGE_COUNTET_CLOCKWISE_WHIRL;
    {class} property MSP_ERROR_VALID_IMAGE_SIZE: Integer read _GetMSP_ERROR_VALID_IMAGE_SIZE;
    {class} property MSP_ERROR_ILLUMINATION: Integer read _GetMSP_ERROR_ILLUMINATION;
    {class} property MSP_ERROR_FACE_OCCULTATION: Integer read _GetMSP_ERROR_FACE_OCCULTATION;
    {class} property MSP_ERROR_FACE_INVALID_MODEL: Integer read _GetMSP_ERROR_FACE_INVALID_MODEL;
    {class} property MSP_ERROR_FACE_MODEL_NOT_FOUND_IN_HBASE: Integer read _GetMSP_ERROR_FACE_MODEL_NOT_FOUND_IN_HBASE;
    {class} property MSP_ERROR_FUSION_INVALID_INPUT_TYPE: Integer read _GetMSP_ERROR_FUSION_INVALID_INPUT_TYPE;
    {class} property MSP_ERROR_FUSION_NO_ENOUGH_DATA: Integer read _GetMSP_ERROR_FUSION_NO_ENOUGH_DATA;
    {class} property MSP_ERROR_FUSION_ENOUGH_DATA: Integer read _GetMSP_ERROR_FUSION_ENOUGH_DATA;
    {class} property MSP_ERROR_NO_GROUP: Integer read _GetMSP_ERROR_NO_GROUP;
    {class} property MSP_ERROR_GROUP_EMPTY: Integer read _GetMSP_ERROR_GROUP_EMPTY;
    {class} property MSP_ERROR_NO_USER: Integer read _GetMSP_ERROR_NO_USER;
    {class} property MSP_ERROR_OVERFLOW_IN_GROUP: Integer read _GetMSP_ERROR_OVERFLOW_IN_GROUP;
    {class} property MSP_ERROR_HTTP_BASE: Integer read _GetMSP_ERROR_HTTP_BASE;
    {class} property MSP_ERROR_ISV_NO_USER: Integer read _GetMSP_ERROR_ISV_NO_USER;
    {class} property MSP_ERROR_LUA_BASE: Integer read _GetMSP_ERROR_LUA_BASE;
    {class} property MSP_ERROR_LUA_YIELD: Integer read _GetMSP_ERROR_LUA_YIELD;
    {class} property MSP_ERROR_LUA_ERRRUN: Integer read _GetMSP_ERROR_LUA_ERRRUN;
    {class} property MSP_ERROR_LUA_ERRSYNTAX: Integer read _GetMSP_ERROR_LUA_ERRSYNTAX;
    {class} property MSP_ERROR_LUA_ERRMEM: Integer read _GetMSP_ERROR_LUA_ERRMEM;
    {class} property MSP_ERROR_LUA_ERRERR: Integer read _GetMSP_ERROR_LUA_ERRERR;
    {class} property MSP_ERROR_LUA_INVALID_PARAM: Integer read _GetMSP_ERROR_LUA_INVALID_PARAM;
    {class} property MSP_ERROR_MMP_BASE: Integer read _GetMSP_ERROR_MMP_BASE;
    {class} property MSP_ERROR_MMP_MYSQL_INITFAIL: Integer read _GetMSP_ERROR_MMP_MYSQL_INITFAIL;
    {class} property MSP_ERROR_MMP_REDIS_INITFAIL: Integer read _GetMSP_ERROR_MMP_REDIS_INITFAIL;
    {class} property MSP_ERROR_MMP_NETDSS_INITFAIL: Integer read _GetMSP_ERROR_MMP_NETDSS_INITFAIL;
    {class} property MSP_ERROR_MMP_TAIR_INITFAIL: Integer read _GetMSP_ERROR_MMP_TAIR_INITFAIL;
    {class} property MSP_ERROR_MMP_MAIL_SESSION_FAIL: Integer read _GetMSP_ERROR_MMP_MAIL_SESSION_FAIL;
    {class} property MSP_ERROR_MMP_MAIL_LOGON_FAIL: Integer read _GetMSP_ERROR_MMP_MAIL_LOGON_FAIL;
    {class} property MSP_ERROR_MMP_MAIL_USER_ILLEGAL: Integer read _GetMSP_ERROR_MMP_MAIL_USER_ILLEGAL;
    {class} property MSP_ERROR_MMP_MAIL_PWD_ERR: Integer read _GetMSP_ERROR_MMP_MAIL_PWD_ERR;
    {class} property MSP_ERROR_MMP_MAIL_SOCKET_ERR: Integer read _GetMSP_ERROR_MMP_MAIL_SOCKET_ERR;
    {class} property MSP_ERROR_MMP_MAIL_INIT_FAIL: Integer read _GetMSP_ERROR_MMP_MAIL_INIT_FAIL;
    {class} property MSP_ERROR_MMP_STORE_MNR_NO_INIT: Integer read _GetMSP_ERROR_MMP_STORE_MNR_NO_INIT;
    {class} property MSP_ERROR_MMP_STORE_MNR_POOL_FULL: Integer read _GetMSP_ERROR_MMP_STORE_MNR_POOL_FULL;
    {class} property MSP_ERROR_MMP_STRATGY_PARAM_ILLEGAL: Integer read _GetMSP_ERROR_MMP_STRATGY_PARAM_ILLEGAL;
    {class} property MSP_ERROR_MMP_STRATGY_PARAM_TOOLOOG: Integer read _GetMSP_ERROR_MMP_STRATGY_PARAM_TOOLOOG;
    {class} property MSP_ERROR_MMP_PARAM_NULL: Integer read _GetMSP_ERROR_MMP_PARAM_NULL;
    {class} property MSP_ERROR_MMP_ERR_MORE_TOTAL: Integer read _GetMSP_ERROR_MMP_ERR_MORE_TOTAL;
    {class} property MSP_ERROR_MMP_PROC_THRESHOLD: Integer read _GetMSP_ERROR_MMP_PROC_THRESHOLD;
    {class} property MSP_ERROR_MMP_SERVER_THRESHOLD: Integer read _GetMSP_ERROR_MMP_SERVER_THRESHOLD;
    {class} property MSP_ERROR_MMP_PYTHON_NO_EXIST: Integer read _GetMSP_ERROR_MMP_PYTHON_NO_EXIST;
    {class} property MSP_ERROR_MMP_PYTHON_IMPORT_FAILED: Integer read _GetMSP_ERROR_MMP_PYTHON_IMPORT_FAILED;
    {class} property MSP_ERROR_MMP_PYTHON_BAD_FUNC: Integer read _GetMSP_ERROR_MMP_PYTHON_BAD_FUNC;
    {class} property MSP_ERROR_MMP_DB_DATA_ILLEGAL: Integer read _GetMSP_ERROR_MMP_DB_DATA_ILLEGAL;
    {class} property MSP_ERROR_MMP_REDIS_NOT_CONN: Integer read _GetMSP_ERROR_MMP_REDIS_NOT_CONN;
    {class} property MSP_ERROR_MMP_PMA_NOT_FOUND_STRATEGY: Integer read _GetMSP_ERROR_MMP_PMA_NOT_FOUND_STRATEGY;
    {class} property MSP_ERROR_MMP_TAIR_CONNECT: Integer read _GetMSP_ERROR_MMP_TAIR_CONNECT;
    {class} property MSP_ERROR_MMP_PMC_SERVINFO_INVALID: Integer read _GetMSP_ERROR_MMP_PMC_SERVINFO_INVALID;
    {class} property MSP_ERROR_MMP_ALARM_GROUP_NULL: Integer read _GetMSP_ERROR_MMP_ALARM_GROUP_NULL;
    {class} property MSP_ERROR_MMP_ALARM_CONTXT_NULL: Integer read _GetMSP_ERROR_MMP_ALARM_CONTXT_NULL;
    {class} property MSP_ERROR_LMOD_BASE: Integer read _GetMSP_ERROR_LMOD_BASE;
    {class} property MSP_ERROR_LMOD_NOT_FOUND: Integer read _GetMSP_ERROR_LMOD_NOT_FOUND;
    {class} property MSP_ERROR_LMOD_UNEXPECTED_BIN: Integer read _GetMSP_ERROR_LMOD_UNEXPECTED_BIN;
    {class} property MSP_ERROR_LMOD_LOADCODE: Integer read _GetMSP_ERROR_LMOD_LOADCODE;
    {class} property MSP_ERROR_LMOD_PRECALL: Integer read _GetMSP_ERROR_LMOD_PRECALL;
    {class} property MSP_ERROR_LMOD_RUNTIME_EXCEPTION: Integer read _GetMSP_ERROR_LMOD_RUNTIME_EXCEPTION;
    {class} property MSP_ERROR_LMOD_ALREADY_LOADED: Integer read _GetMSP_ERROR_LMOD_ALREADY_LOADED;
    {class} property MSP_ERROR_BIZ_BASE: Integer read _GetMSP_ERROR_BIZ_BASE;
    {class} property MSP_ERROR_NGX_LOG_MORE_TOTEL_SIZE: Integer read _GetMSP_ERROR_NGX_LOG_MORE_TOTEL_SIZE;
    {class} property ERROR_NO_NETWORK: Integer read _GetERROR_NO_NETWORK;
    {class} property ERROR_NETWORK_TIMEOUT: Integer read _GetERROR_NETWORK_TIMEOUT;
    {class} property ERROR_NET_EXCEPTION: Integer read _GetERROR_NET_EXCEPTION;
    {class} property ERROR_INVALID_RESULT: Integer read _GetERROR_INVALID_RESULT;
    {class} property ERROR_NO_MATCH: Integer read _GetERROR_NO_MATCH;
    {class} property ERROR_AUDIO_RECORD: Integer read _GetERROR_AUDIO_RECORD;
    {class} property ERROR_NO_SPEECH: Integer read _GetERROR_NO_SPEECH;
    {class} property ERROR_SPEECH_TIMEOUT: Integer read _GetERROR_SPEECH_TIMEOUT;
    {class} property ERROR_EMPTY_UTTERANCE: Integer read _GetERROR_EMPTY_UTTERANCE;
    {class} property ERROR_FILE_ACCESS: Integer read _GetERROR_FILE_ACCESS;
    {class} property ERROR_PLAY_MEDIA: Integer read _GetERROR_PLAY_MEDIA;
    {class} property ERROR_INVALID_PARAM: Integer read _GetERROR_INVALID_PARAM;
    {class} property ERROR_TEXT_OVERFLOW: Integer read _GetERROR_TEXT_OVERFLOW;
    {class} property ERROR_INVALID_DATA: Integer read _GetERROR_INVALID_DATA;
    {class} property ERROR_LOGIN: Integer read _GetERROR_LOGIN;
    {class} property ERROR_PERMISSION_DENIED: Integer read _GetERROR_PERMISSION_DENIED;
    {class} property ERROR_INTERRUPT: Integer read _GetERROR_INTERRUPT;
    {class} property ERROR_VERSION_LOWER: Integer read _GetERROR_VERSION_LOWER;
    {class} property ERROR_SYSTEM_PREINSTALL: Integer read _GetERROR_SYSTEM_PREINSTALL;
    {class} property ERROR_UNSATISFIED_LINK: Integer read _GetERROR_UNSATISFIED_LINK;
    {class} property ERROR_UNKNOWN: Integer read _GetERROR_UNKNOWN;
    {class} property ERROR_COMPONENT_NOT_INSTALLED: Integer read _GetERROR_COMPONENT_NOT_INSTALLED;
    {class} property ERROR_ENGINE_NOT_SUPPORTED: Integer read _GetERROR_ENGINE_NOT_SUPPORTED;
    {class} property ERROR_ENGINE_INIT_FAIL: Integer read _GetERROR_ENGINE_INIT_FAIL;
    {class} property ERROR_ENGINE_CALL_FAIL: Integer read _GetERROR_ENGINE_CALL_FAIL;
    {class} property ERROR_ENGINE_BUSY: Integer read _GetERROR_ENGINE_BUSY;
    {class} property ERROR_LOCAL_NO_INIT: Integer read _GetERROR_LOCAL_NO_INIT;
    {class} property ERROR_LOCAL_RESOURCE: Integer read _GetERROR_LOCAL_RESOURCE;
    {class} property ERROR_LOCAL_ENGINE: Integer read _GetERROR_LOCAL_ENGINE;
    {class} property ERROR_IVW_INTERRUPT: Integer read _GetERROR_IVW_INTERRUPT;
    {class} property ERROR_ASR_CLIENT: Integer read _GetERROR_ASR_CLIENT;
    {class} property ERROR_ASR_INVALID_PARA: Integer read _GetERROR_ASR_INVALID_PARA;
    {class} property ERROR_ASR_INVALID_PARA_VALUE: Integer read _GetERROR_ASR_INVALID_PARA_VALUE;
    {class} property ERROR_ASR_OUT_OF_MEMORY: Integer read _GetERROR_ASR_OUT_OF_MEMORY;
    {class} property ERROR_ASR_CREATE_HANDLE_FAILED: Integer read _GetERROR_ASR_CREATE_HANDLE_FAILED;
    {class} property ERROR_ASR_ENGINE_INIT_FAILED: Integer read _GetERROR_ASR_ENGINE_INIT_FAILED;
    {class} property ERROR_ASR_ENGINE_STARTED: Integer read _GetERROR_ASR_ENGINE_STARTED;
    {class} property ERROR_ASR_ENGINE_UNINIT: Integer read _GetERROR_ASR_ENGINE_UNINIT;
    {class} property ERROR_ASR_SPEECH_TIMEOUT: Integer read _GetERROR_ASR_SPEECH_TIMEOUT;
    {class} property ERROR_ASR_NO_RECOGNIZED_RESULT: Integer read _GetERROR_ASR_NO_RECOGNIZED_RESULT;
    {class} property ERROR_ASR_INVALID_HANDLE: Integer read _GetERROR_ASR_INVALID_HANDLE;
    {class} property ERROR_ASR_FILE_ACCESS: Integer read _GetERROR_ASR_FILE_ACCESS;
    {class} property ERROR_AITALK_FALSE: Integer read _GetERROR_AITALK_FALSE;
    {class} property ERROR_AITALK_PERMISSION_DENIED: Integer read _GetERROR_AITALK_PERMISSION_DENIED;
    {class} property ERROR_AITALK_INVALID_PARA: Integer read _GetERROR_AITALK_INVALID_PARA;
    {class} property ERROR_AITALK_BUFFER_OVERFLOW: Integer read _GetERROR_AITALK_BUFFER_OVERFLOW;
    {class} property ERROR_AITALK_FAILED: Integer read _GetERROR_AITALK_FAILED;
    {class} property ERROR_AITALK_NOT_SUPPORTED: Integer read _GetERROR_AITALK_NOT_SUPPORTED;
    {class} property ERROR_AITALK_OUT_OF_MEMORY: Integer read _GetERROR_AITALK_OUT_OF_MEMORY;
    {class} property ERROR_AITALK_INVALID_RESOURCE: Integer read _GetERROR_AITALK_INVALID_RESOURCE;
    {class} property ERROR_AITALK_NOT_FOUND: Integer read _GetERROR_AITALK_NOT_FOUND;
    {class} property ERROR_AITALK_INVALID_GRAMMAR: Integer read _GetERROR_AITALK_INVALID_GRAMMAR;
    {class} property ERROR_AITALK_INVALID_CALL: Integer read _GetERROR_AITALK_INVALID_CALL;
    {class} property ERROR_AITALK_SYNTAX_ERROR: Integer read _GetERROR_AITALK_SYNTAX_ERROR;
    {class} property ERROR_AITALK_RESET: Integer read _GetERROR_AITALK_RESET;
    {class} property ERROR_AITALK_ENDED: Integer read _GetERROR_AITALK_ENDED;
    {class} property ERROR_AITALK_IDLE: Integer read _GetERROR_AITALK_IDLE;
    {class} property ERROR_AITALK_CANNOT_SAVE_FILE: Integer read _GetERROR_AITALK_CANNOT_SAVE_FILE;
    {class} property ERROR_AITALK_INVALID_GRAMMAR_NAME: Integer read _GetERROR_AITALK_INVALID_GRAMMAR_NAME;
    {class} property ERROR_AITALK_BUFFER_EMPTY: Integer read _GetERROR_AITALK_BUFFER_EMPTY;
    {class} property ERROR_AITALK_GET_RESULT: Integer read _GetERROR_AITALK_GET_RESULT;
    {class} property ERROR_AITALK_REACT_OUT_TIME: Integer read _GetERROR_AITALK_REACT_OUT_TIME;
    {class} property ERROR_AITALK_SPEECH_OUT_TIME: Integer read _GetERROR_AITALK_SPEECH_OUT_TIME;
    {class} property ERROR_AITALK_AUDIO_CUT: Integer read _GetERROR_AITALK_AUDIO_CUT;
    {class} property ERROR_AITALK_AUDIO_LOWER: Integer read _GetERROR_AITALK_AUDIO_LOWER;
    {class} property ERROR_AITALK_INSUFFICIENT_PERMISSIONS: Integer read _GetERROR_AITALK_INSUFFICIENT_PERMISSIONS;
    {class} property ERROR_AITALK_RESULT_ERROR: Integer read _GetERROR_AITALK_RESULT_ERROR;
    {class} property ERROR_AITALK_SHORT_PAUSE: Integer read _GetERROR_AITALK_SHORT_PAUSE;
    {class} property ERROR_AITALK_BUSY: Integer read _GetERROR_AITALK_BUSY;
    {class} property ERROR_AITALK_GRM_NOT_UPDATE: Integer read _GetERROR_AITALK_GRM_NOT_UPDATE;
    {class} property ERROR_AITALK_STARTED: Integer read _GetERROR_AITALK_STARTED;
    {class} property ERROR_AITALK_STOPPED: Integer read _GetERROR_AITALK_STOPPED;
    {class} property ERROR_AITALK_ALREADY_STARTED: Integer read _GetERROR_AITALK_ALREADY_STARTED;
    {class} property ERROR_AITALK_ALREADY_STOPPED: Integer read _GetERROR_AITALK_ALREADY_STOPPED;
    {class} property ERROR_AITALK_TOO_MANY_COMMAND: Integer read _GetERROR_AITALK_TOO_MANY_COMMAND;
    {class} property ERROR_AITALK_WAIT: Integer read _GetERROR_AITALK_WAIT;
    {class} property ERROR_AITALK_MAE_RIGHT: Integer read _GetERROR_AITALK_MAE_RIGHT;
    {class} property ERROR_AITALK_MAE_WRONG: Integer read _GetERROR_AITALK_MAE_WRONG;
    {class} property ERROR_AITALK_GRM_ERR: Integer read _GetERROR_AITALK_GRM_ERR;
    {class} property ERROR_TTS_INVALID_PARA: Integer read _GetERROR_TTS_INVALID_PARA;
    {class} property ERROR_TTS_INVALID_PARA_VALUE: Integer read _GetERROR_TTS_INVALID_PARA_VALUE;
    {class} property ERROR_TTS_OUT_OF_MEMORY: Integer read _GetERROR_TTS_OUT_OF_MEMORY;
    {class} property ERROR_TTS_INVALID_HANDLE: Integer read _GetERROR_TTS_INVALID_HANDLE;
    {class} property ERROR_TTS_CREATE_HANDLE_FAILED: Integer read _GetERROR_TTS_CREATE_HANDLE_FAILED;
    {class} property ERROR_TTS_INVALID_RESOURCE: Integer read _GetERROR_TTS_INVALID_RESOURCE;
    {class} property ERROR_TTS_INVALID_VOICE_NAME: Integer read _GetERROR_TTS_INVALID_VOICE_NAME;
    {class} property ERROR_TTS_ENGINE_UNINIT: Integer read _GetERROR_TTS_ENGINE_UNINIT;
    {class} property ERROR_TTS_ENGINE_INIT_FAILED: Integer read _GetERROR_TTS_ENGINE_INIT_FAILED;
    {class} property ERROR_TTS_ENGINE_BUSY: Integer read _GetERROR_TTS_ENGINE_BUSY;
    {class} property ERROR_AISOUND_BASE: Integer read _GetERROR_AISOUND_BASE;
    {class} property ERROR_AISOUND_UNIMPEMENTED: Integer read _GetERROR_AISOUND_UNIMPEMENTED;
    {class} property ERROR_AISOUND_UNSUPPORTED: Integer read _GetERROR_AISOUND_UNSUPPORTED;
    {class} property ERROR_AISOUND_INVALID_HANDLE: Integer read _GetERROR_AISOUND_INVALID_HANDLE;
    {class} property ERROR_AISOUND_INVALID_PARA: Integer read _GetERROR_AISOUND_INVALID_PARA;
    {class} property ERROR_AISOUND_INSUFFICIENT_HEAP: Integer read _GetERROR_AISOUND_INSUFFICIENT_HEAP;
    {class} property ERROR_AISOUND_STATE_REFUSE: Integer read _GetERROR_AISOUND_STATE_REFUSE;
    {class} property ERROR_AISOUND_INVALID_PARA_ID: Integer read _GetERROR_AISOUND_INVALID_PARA_ID;
    {class} property ERROR_AISOUND_INVALID_PARA_VALUE: Integer read _GetERROR_AISOUND_INVALID_PARA_VALUE;
    {class} property ERROR_AISOUND_RESOURCE: Integer read _GetERROR_AISOUND_RESOURCE;
    {class} property ERROR_AISOUND_RESOURCE_READ: Integer read _GetERROR_AISOUND_RESOURCE_READ;
    {class} property ERROR_AISOUND_LBENDIAN: Integer read _GetERROR_AISOUND_LBENDIAN;
    {class} property ERROR_AISOUND_HEADFILE: Integer read _GetERROR_AISOUND_HEADFILE;
    {class} property ERROR_AISOUND_BUFFER_OVERFLOW: Integer read _GetERROR_AISOUND_BUFFER_OVERFLOW;
    {class} property ERROR_AISOUND_INVALID_ISAMPA: Integer read _GetERROR_AISOUND_INVALID_ISAMPA;
    {class} property ERROR_AISOUND_INVALID_CSSML: Integer read _GetERROR_AISOUND_INVALID_CSSML;
    {class} property ERROR_IVW_ENGINE_UNINI: Integer read _GetERROR_IVW_ENGINE_UNINI;
    {class} property ERROR_IVW_RESVER_NOMATCH: Integer read _GetERROR_IVW_RESVER_NOMATCH;
    {class} property SPEECH_ERROR_IVW_INVALID_RESTYPE: Integer read _GetSPEECH_ERROR_IVW_INVALID_RESTYPE;
    {class} property ERROR_IVW_INVALID_CALL: Integer read _GetERROR_IVW_INVALID_CALL;
    {class} property ERROR_IVW_INVALID_ARG: Integer read _GetERROR_IVW_INVALID_ARG;
    {class} property ERROR_IVW_TELL_SIZE: Integer read _GetERROR_IVW_TELL_SIZE;
    {class} property ERROR_IVW_OUT_OF_MEMORY: Integer read _GetERROR_IVW_OUT_OF_MEMORY;
    {class} property ERROR_IVW_OUT_BUFFER_FULL: Integer read _GetERROR_IVW_OUT_BUFFER_FULL;
    {class} property ERROR_IVW_OUT_BUFFER_EMPTY: Integer read _GetERROR_IVW_OUT_BUFFER_EMPTY;
    {class} property ERROR_IVW_INVALID_RESOURCE: Integer read _GetERROR_IVW_INVALID_RESOURCE;
    {class} property ERROR_IVW_REPETITIOPN_ENTER: Integer read _GetERROR_IVW_REPETITIOPN_ENTER;
    {class} property ERROR_IVW_NOT_SUPPORT: Integer read _GetERROR_IVW_NOT_SUPPORT;
    {class} property ERROR_IVW_NOT_FOUND: Integer read _GetERROR_IVW_NOT_FOUND;
    {class} property ERROR_IVW_INVALID_SN: Integer read _GetERROR_IVW_INVALID_SN;
    {class} property ERROR_IVW_LIMITTED: Integer read _GetERROR_IVW_LIMITTED;
    {class} property ERROR_IVW_TIME_OUT: Integer read _GetERROR_IVW_TIME_OUT;
    {class} property ERROR_IVW_ENROLL1_SUCESS: Integer read _GetERROR_IVW_ENROLL1_SUCESS;
    {class} property ERROR_IVW_ENROLL1_FAILED: Integer read _GetERROR_IVW_ENROLL1_FAILED;
    {class} property ERROR_IVW_ENROLL2_SUCESS: Integer read _GetERROR_IVW_ENROLL2_SUCESS;
    {class} property ERROR_IVW_ENROLL2_FAILED: Integer read _GetERROR_IVW_ENROLL2_FAILED;
    {class} property ERROR_IVW_ENROLL3_SUCESS: Integer read _GetERROR_IVW_ENROLL3_SUCESS;
    {class} property ERROR_IVW_ENROLL3_FAILED: Integer read _GetERROR_IVW_ENROLL3_FAILED;
    {class} property ERROR_IVW_SPEECH_TOO_SHORT: Integer read _GetERROR_IVW_SPEECH_TOO_SHORT;
    {class} property ERROR_IVW_SPEECH_STOP: Integer read _GetERROR_IVW_SPEECH_STOP;
    {class} property ERROR_AIMIC_BASE: Integer read _GetERROR_AIMIC_BASE;
    {class} property ERROR_AIMIC_FILE_OPEN: Integer read _GetERROR_AIMIC_FILE_OPEN;
    {class} property ERROR_AIMIC_FILE_ACCESS: Integer read _GetERROR_AIMIC_FILE_ACCESS;
    {class} property ERROR_AIMIC_LOCK: Integer read _GetERROR_AIMIC_LOCK;
    {class} property ERROR_AIMIC_OOM: Integer read _GetERROR_AIMIC_OOM;
    {class} property ERROR_AIMIC_CREATE_HANDLE: Integer read _GetERROR_AIMIC_CREATE_HANDLE;
    {class} property ERROR_AIMIC_NULL_HANDLE: Integer read _GetERROR_AIMIC_NULL_HANDLE;
    {class} property ERROR_AIMIC_QUEUE: Integer read _GetERROR_AIMIC_QUEUE;
    {class} property ERROR_AIMIC_NOT_INIT: Integer read _GetERROR_AIMIC_NOT_INIT;
    {class} property ERROR_AIMIC_STR_COPY: Integer read _GetERROR_AIMIC_STR_COPY;
    {class} property ERROR_AIMIC_INVALID_DATA: Integer read _GetERROR_AIMIC_INVALID_DATA;
    {class} property ERROR_AIMIC_NOT_ENOUGH_BUF: Integer read _GetERROR_AIMIC_NOT_ENOUGH_BUF;
    {class} property ERROR_AIMIC_INVALID_PARA_VALUE: Integer read _GetERROR_AIMIC_INVALID_PARA_VALUE;
    {class} property ERROR_AIMIC_INVALID_PARA: Integer read _GetERROR_AIMIC_INVALID_PARA;
    {class} property ERROR_AIMIC_BUSY: Integer read _GetERROR_AIMIC_BUSY;
    {class} property ERROR_AIMIC_JNIENV: Integer read _GetERROR_AIMIC_JNIENV;
    {class} property ERROR_AIMIC_UNSATISFIED_LINK: Integer read _GetERROR_AIMIC_UNSATISFIED_LINK;
    {class} property ERROR_AIMIC_INVALID_CALL: Integer read _GetERROR_AIMIC_INVALID_CALL;
    {class} property ERROR_AIMIC_MSG_UNHANDLED: Integer read _GetERROR_AIMIC_MSG_UNHANDLED;
    {class} property ERROR_AIMIC_INVALID_RESULT: Integer read _GetERROR_AIMIC_INVALID_RESULT;
    {class} property ERROR_AIMIC_UNKNOWN: Integer read _GetERROR_AIMIC_UNKNOWN;
  end;

  [JavaSignature('com/iflytek/cloud/ErrorCode')]
  JErrorCode = interface(JObject)
  ['{E42A323F-B189-450B-8621-875B18587D11}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJErrorCode = class(TJavaGenericImport<JErrorCodeClass, JErrorCode>) end;

  JEvaluatorListenerClass = interface(JObjectClass)
  ['{69037E82-A176-4A42-A97B-529F43A6B316}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/EvaluatorListener')]
  JEvaluatorListener = interface(IJavaInstance)
  ['{D55D7FCE-E56D-4033-97E1-8FB842BC6F59}']
    { Property Methods }

    { methods }
    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JEvaluatorResult; P2: Boolean); cdecl;
    procedure onError(P1: JSpeechError); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJEvaluatorListener = class(TJavaGenericImport<JEvaluatorListenerClass, JEvaluatorListener>) end;

//  JEvaluatorResult_1Class = interface(JObjectClass)
//  ['{62EE9C86-9414-4DF6-BD57-66416561CB13}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/EvaluatorResult$1')]
//  JEvaluatorResult_1 = interface(JObject)
//  ['{89CCA186-CD2C-4319-A108-9D0E57DBE0DC}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JParcel): JEvaluatorResult; cdecl; overload;
//    function a(P1: Integer): TJavaObjectArray<JEvaluatorResult>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl;
//    function createFromParcel(P1: JParcel): JObject; cdecl;
//
//    { Property }
//  end;

//  TJEvaluatorResult_1 = class(TJavaGenericImport<JEvaluatorResult_1Class, JEvaluatorResult_1>) end;

  JEvaluatorResultClass = interface(JObjectClass)
  ['{6CF88E90-200F-494B-8039-17542CB20113}']
    { static Property Methods }
    {class} function _GetCREATOR: JParcelable_Creator;

    { static Methods }
    {class} function init(P1: JString): JEvaluatorResult; cdecl;

    { static Property }
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/iflytek/cloud/EvaluatorResult')]
  JEvaluatorResult = interface(JObject)
  ['{34EFE239-E23C-4A73-9F49-F8A382409E1E}']
    { Property Methods }

    { methods }
    function getResultString: JString; cdecl;
    function describeContents: Integer; cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;

    { Property }
  end;

  TJEvaluatorResult = class(TJavaGenericImport<JEvaluatorResultClass, JEvaluatorResult>) end;

  JFaceDetectorClass = interface(JObjectClass)
  ['{941AF596-4865-4DB0-9C86-4031C5343032}']
    { static Property Methods }

    { static Methods }
    {class} function createDetector(P1: JContext; P2: JString): JFaceDetector; cdecl;
    {class} function getDetector: JFaceDetector; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/FaceDetector')]
  JFaceDetector = interface(JObject)
  ['{BE4703A1-A475-4CD0-A591-EABF94F019AB}']
    { Property Methods }

    { methods }
    function detectARGB(P1: JBitmap): JString; cdecl;
    function detectGray(P1: JBitmap): JString; cdecl;
    function trackNV21(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Integer; P5: Integer): JString; cdecl;
    function destroy: Boolean; cdecl;

    { Property }
  end;

  TJFaceDetector = class(TJavaGenericImport<JFaceDetectorClass, JFaceDetector>) end;

//  JFaceRequest_a_1Class = interface(JObjectClass)
//  ['{CC46545A-75FF-457F-9422-E018680C3B02}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/FaceRequest$a$1')]
//  JFaceRequest_a_1 = interface(JObject)
//  ['{4DAFE097-F075-4DE7-9795-55EA130E6BDB}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJFaceRequest_a_1 = class(TJavaGenericImport<JFaceRequest_a_1Class, JFaceRequest_a_1>) end;

//  JFaceRequest_aClass = interface(JObjectClass)
//  ['{313A7C13-AB20-447D-9F75-4328AC810B79}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JFaceRequest; P2: JRequestListener): JFaceRequest_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/FaceRequest$a')]
//  JFaceRequest_a = interface(JObject)
//  ['{CE14910E-E54B-4344-8C47-9504C100CFB8}']
//    { Property Methods }
//
//    { methods }
//    procedure onEvent(P1: Integer; P2: JBundle); cdecl;
//    procedure onCompleted(P1: JSpeechError); cdecl;
//    procedure onBufferReceived(P1: TJavaArray<Byte>); cdecl;
//
//    { Property }
//  end;

//  TJFaceRequest_a = class(TJavaGenericImport<JFaceRequest_aClass, JFaceRequest_a>) end;

  JFaceRequestClass = interface(JObjectClass)
  ['{3BB922FD-DDF3-4CE3-A912-50BBCF32071F}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext): JFaceRequest; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/FaceRequest')]
  JFaceRequest = interface(JObject)
  ['{2DB2999A-C9A1-42BC-8528-A7AEA471A86A}']
    { Property Methods }

    { methods }
    function sendRequest(P1: TJavaArray<Byte>; P2: JRequestListener): Integer; cdecl;
    procedure cancel; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destroy: Boolean; cdecl;

    { Property }
  end;

  TJFaceRequest = class(TJavaGenericImport<JFaceRequestClass, JFaceRequest>) end;

  JGrammarListenerClass = interface(JObjectClass)
  ['{2606DFDF-CEF2-4804-89CA-7AF54A26FF87}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/GrammarListener')]
  JGrammarListener = interface(IJavaInstance)
  ['{494B421D-54D1-4264-9E5E-531075871764}']
    { Property Methods }

    { methods }
    procedure onBuildFinish(P1: JString; P2: JSpeechError); cdecl;

    { Property }
  end;

  TJGrammarListener = class(TJavaGenericImport<JGrammarListenerClass, JGrammarListener>) end;

  JIdentityListenerClass = interface(JObjectClass)
  ['{6F382453-2817-4A8F-B31B-5994CD8CA6F9}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/IdentityListener')]
  JIdentityListener = interface(IJavaInstance)
  ['{A8047FC4-91D7-4AFD-B915-965FE0BB7DD6}']
    { Property Methods }

    { methods }
    procedure onResult(P1: JIdentityResult; P2: Boolean); cdecl;
    procedure onError(P1: JSpeechError); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJIdentityListener = class(TJavaGenericImport<JIdentityListenerClass, JIdentityListener>) end;

//  JIdentityResult_1Class = interface(JObjectClass)
//  ['{3B5C5F48-E85A-4860-B61D-D868ECE45F4F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/IdentityResult$1')]
//  JIdentityResult_1 = interface(JObject)
//  ['{4F0E1EC0-2799-4122-9A43-660811431345}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JParcel): JIdentityResult; cdecl; overload;
//    function a(P1: Integer): TJavaObjectArray<JIdentityResult>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl;
//    function createFromParcel(P1: JParcel): JObject; cdecl;
//
//    { Property }
//  end;

//  TJIdentityResult_1 = class(TJavaGenericImport<JIdentityResult_1Class, JIdentityResult_1>) end;

  JIdentityResultClass = interface(JObjectClass)
  ['{87406A12-5AD2-43CB-9BA7-2C2BAAF7CDDF}']
    { static Property Methods }
    {class} function _GetCREATOR: JParcelable_Creator;

    { static Methods }
    {class} function init(P1: JString): JIdentityResult; cdecl;

    { static Property }
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/iflytek/cloud/IdentityResult')]
  JIdentityResult = interface(JObject)
  ['{C74191A8-C62F-4116-AF4F-1392AA505FCE}']
    { Property Methods }

    { methods }
    function getResultString: JString; cdecl;
    function describeContents: Integer; cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;

    { Property }
  end;

  TJIdentityResult = class(TJavaGenericImport<JIdentityResultClass, JIdentityResult>) end;

//  JIdentityVerifier_1Class = interface(JObjectClass)
//  ['{6DBEC332-C1AD-4917-99D9-F4D4CF1A1542}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/IdentityVerifier$1')]
//  JIdentityVerifier_1 = interface(JObject)
//  ['{C61B1609-5BCB-46E5-8807-8E14F5B47A7F}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJIdentityVerifier_1 = class(TJavaGenericImport<JIdentityVerifier_1Class, JIdentityVerifier_1>) end;

  JIdentityVerifierClass = interface(JObjectClass)
  ['{B5EDBEC3-234F-45AE-9157-E664D8441310}']
    { static Property Methods }

    { static Methods }
    {class} function createVerifier(P1: JContext; P2: JInitListener): JIdentityVerifier; cdecl;
    {class} function getVerifier: JIdentityVerifier; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/IdentityVerifier')]
  JIdentityVerifier = interface(JObject)
  ['{0155C26C-34F8-42A7-BCEB-9E6ED3B883F7}']
    { Property Methods }

    { methods }
    function startWorking(P1: JIdentityListener): Integer; cdecl;
    function writeData(P1: JString; P2: JString; P3: TJavaArray<Byte>; P4: Integer; P5: Integer): Integer; cdecl;
    procedure stopWrite(P1: JString); cdecl;
    function execute(P1: JString; P2: JString; P3: JString; P4: JIdentityListener): Integer; cdecl;
    function isWorking: Boolean; cdecl;
    procedure cancel; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destroy: Boolean; cdecl;

    { Property }
  end;

  TJIdentityVerifier = class(TJavaGenericImport<JIdentityVerifierClass, JIdentityVerifier>) end;

  JInitListenerClass = interface(JObjectClass)
  ['{5BDC4DE8-CAC3-42BD-8FB0-CBB366145014}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/InitListener')]
  JInitListener = interface(IJavaInstance)
  ['{D519DFF7-7896-403E-BAD3-194499C8FA4A}']
    { Property Methods }

    { methods }
    procedure onInit(P1: Integer); cdecl;

    { Property }
  end;

  TJInitListener = class(TJavaGenericImport<JInitListenerClass, JInitListener>) end;

  JLexiconListenerClass = interface(JObjectClass)
  ['{6CE3CA0A-37FA-4531-899A-12DC38D030D7}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/LexiconListener')]
  JLexiconListener = interface(IJavaInstance)
  ['{0F991B58-0DCB-4810-8097-2908C1CD455F}']
    { Property Methods }

    { methods }
    procedure onLexiconUpdated(P1: JString; P2: JSpeechError); cdecl;

    { Property }
  end;

  TJLexiconListener = class(TJavaGenericImport<JLexiconListenerClass, JLexiconListener>) end;

  JRecognizerListenerClass = interface(JObjectClass)
  ['{9F79FEE7-0C76-4672-B834-58239D77F327}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/RecognizerListener')]
  JRecognizerListener = interface(IJavaInstance)
  ['{F766F30E-19C6-4BBB-A252-0474F5039BAD}']
    { Property Methods }

    { methods }
    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
    procedure onError(P1: JSpeechError); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJRecognizerListener = class(TJavaGenericImport<JRecognizerListenerClass, JRecognizerListener>) end;

//  JRecognizerResult_1Class = interface(JObjectClass)
//  ['{420A3AF5-02AF-40AC-8CE9-79E5EBA6BE4E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/RecognizerResult$1')]
//  JRecognizerResult_1 = interface(JObject)
//  ['{8F7CAB9C-D79F-4D24-AA94-C835B1FE6D44}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JParcel): JRecognizerResult; cdecl; overload;
//    function a(P1: Integer): TJavaObjectArray<JRecognizerResult>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl;
//    function createFromParcel(P1: JParcel): JObject; cdecl;
//
//    { Property }
//  end;

//  TJRecognizerResult_1 = class(TJavaGenericImport<JRecognizerResult_1Class, JRecognizerResult_1>) end;

  JRecognizerResultClass = interface(JObjectClass)
  ['{57BEB1BF-EE12-467D-AB26-FFEF220FFA40}']
    { static Property Methods }
    {class} function _GetCREATOR: JParcelable_Creator;

    { static Methods }
    {class} function init(P1: JParcel): JRecognizerResult; cdecl; overload;
    {class} function init(P1: JString): JRecognizerResult; cdecl; overload;

    { static Property }
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/iflytek/cloud/RecognizerResult')]
  JRecognizerResult = interface(JObject)
  ['{24C4F426-AAD1-4D42-8C31-8128E28AC8CF}']
    { Property Methods }

    { methods }
    function describeContents: Integer; cdecl;
    function getResultString: JString; cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;

    { Property }
  end;

  TJRecognizerResult = class(TJavaGenericImport<JRecognizerResultClass, JRecognizerResult>) end;

//  JaClass = interface(JObjectClass)
//  ['{5465AE11-B716-41EA-B114-A2A54748D628}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Integer; P2: Integer; P3: Integer; P4: JString): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/a')]
//  Ja = interface(JObject)
//  ['{FAF95609-6E18-42CA-8B38-972EDDD965B4}']
//    { Property Methods }
//
//    { methods }
//    procedure stopRecord(P1: Boolean); cdecl;
//    procedure startRecording(P1: JPcmRecorder_PcmRecordListener); cdecl;
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Jb_aClass = interface(JObjectClass)
//  ['{B9EFB26B-1253-4D9A-95B8-3FEC40B44942}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jb; P2: Int64; P3: Int64; P4: Integer; P5: Integer): Jb_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/b$a')]
//  Jb_a = interface(JObject)
//  ['{293FC230-7E02-4922-862E-49A99D7CE18C}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb_a = class(TJavaGenericImport<Jb_aClass, Jb_a>) end;

//  JbClass = interface(JObjectClass)
//  ['{669968AE-0838-438E-8803-7D209208956D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: Integer; P3: Integer; P4: JString; P5: Integer): Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/b')]
//  Jb = interface(JObject)
//  ['{CC359FEA-22D0-423B-B36D-E3E242EEBA24}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    procedure a(P1: JArrayList; P2: Integer; P3: Integer; P4: Integer); cdecl; overload;
//    function a(P1: JString): Boolean; cdecl; overload;
//    function a(P1: Integer): Boolean; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    procedure c; cdecl;
//    function d: Integer; cdecl;
//    function e: Jb_a; cdecl;
//    function f: Boolean; cdecl;
//    function g: Boolean; cdecl;
//    function b(P1: Integer): Boolean; cdecl; overload;
//    function h: Boolean; cdecl;
//    procedure a(P1: JAudioTrack; P2: Integer); cdecl; overload;
//    procedure b(P1: JAudioTrack; P2: Integer); cdecl; overload;
//    procedure i; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  Jc_1Class = interface(JObjectClass)
//  ['{AF3B6F45-E939-4DC3-BFB4-18AF3DA0F9C7}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/c$1')]
//  Jc_1 = interface(JObject)
//  ['{8D45E0A0-AD99-4379-9EED-A98D8F5A5B92}']
//    { Property Methods }
//
//    { methods }
//    procedure onAudioFocusChange(P1: Integer); cdecl;
//
//    { Property }
//  end;

//  TJc_1 = class(TJavaGenericImport<Jc_1Class, Jc_1>) end;

//  Jc_2Class = interface(JObjectClass)
//  ['{46F67859-DA7C-443D-B7E9-80F916F804B4}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/c$2')]
//  Jc_2 = interface(JObject)
//  ['{5845BFF4-01E1-493A-BDE8-F4847AD35E97}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJc_2 = class(TJavaGenericImport<Jc_2Class, Jc_2>) end;

//  Jc_aClass = interface(JObjectClass)
//  ['{40B6B708-7672-4576-BDC7-BEC6B4B663B6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/c$a')]
//  Jc_a = interface(IJavaInstance)
//  ['{0D128A9D-C2A4-4D17-9263-3A34C0DF299F}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JSpeechError); cdecl; overload;
//    procedure a; cdecl; overload;
//    procedure b; cdecl;
//    procedure a(P1: Integer; P2: Integer; P3: Integer); cdecl; overload;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJc_a = class(TJavaGenericImport<Jc_aClass, Jc_a>) end;

//  Jc_bClass = interface(JObjectClass)
//  ['{BBC43C78-636C-4D57-B122-E73A5A09E8A5}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/c$b')]
//  Jc_b = interface(JObject)
//  ['{885825E0-F253-452C-A2C3-527ED59FA23D}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJc_b = class(TJavaGenericImport<Jc_bClass, Jc_b>) end;

//  JcClass = interface(JObjectClass)
//  ['{AE175E3E-DBFB-4148-B268-CC8EA5C5F1A6}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: Integer; P3: Boolean; P4: Boolean): Jc; cdecl; overload;
//    {class} function init(P1: JContext): Jc; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/c')]
//  Jc = interface(JObject)
//  ['{AD21D161-0128-4969-95E6-BE9D4EC72EDE}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    procedure b; cdecl;
//    function c: Boolean; cdecl;
//    function a(P1: Jb; P2: Jc_a): Boolean; cdecl; overload;
//    function d: Boolean; cdecl;
//    procedure e; cdecl;
//    procedure f; cdecl;
//    procedure g; cdecl;
//    procedure h; cdecl;
//    procedure i; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{F47FFB29-0409-408D-BC6D-9EE71F7AF319}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JFile; P2: Integer): Jd; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/record/d')]
//  Jd = interface(JObject)
//  ['{EE3FA097-AE1A-4212-B1D2-9C1B824E3D3A}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString); cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: Word); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    procedure b; cdecl;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

  JPcmRecorder_PcmRecordListenerClass = interface(JObjectClass)
  ['{61719FE3-08A7-43DE-93E5-334C9DB64E0E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/record/PcmRecorder$PcmRecordListener')]
  JPcmRecorder_PcmRecordListener = interface(IJavaInstance)
  ['{84C30C4B-2C42-4F15-9AE2-8DB66A467934}']
    { Property Methods }

    { methods }
    procedure onRecordBuffer(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl;
    procedure onError(P1: JSpeechError); cdecl;
    procedure onRecordStarted(P1: Boolean); cdecl;
    procedure onRecordReleased; cdecl;

    { Property }
  end;

  TJPcmRecorder_PcmRecordListener = class(TJavaGenericImport<JPcmRecorder_PcmRecordListenerClass, JPcmRecorder_PcmRecordListener>) end;

  JPcmRecorderClass = interface(JObjectClass)
  ['{C2902580-D4A9-42D9-8B55-1DCF67B04B3A}']
    { static Property Methods }
    {class} function _GetRATE16K: Integer;
    {class} function _GetREAD_INTERVAL40MS: Integer;

    { static Methods }
    {class} function init(P1: Integer; P2: Integer): JPcmRecorder; cdecl; overload;
    {class} function init(P1: Integer; P2: Integer; P3: Integer): JPcmRecorder; cdecl; overload;

    { static Property }
    {class} property RATE16K: Integer read _GetRATE16K;
    {class} property READ_INTERVAL40MS: Integer read _GetREAD_INTERVAL40MS;
  end;

  [JavaSignature('com/iflytek/cloud/record/PcmRecorder')]
  JPcmRecorder = interface(JObject)
  ['{1ABDB31F-9FEC-48BA-9B93-AD9830B9991D}']
    { Property Methods }

    { methods }
    procedure stopRecord(P1: Boolean); cdecl;
    procedure startRecording(P1: JPcmRecorder_PcmRecordListener); cdecl;
    procedure run; cdecl;

    { Property }
  end;

  TJPcmRecorder = class(TJavaGenericImport<JPcmRecorderClass, JPcmRecorder>) end;

  JRequestListenerClass = interface(JObjectClass)
  ['{E456723E-8EF6-4B7B-AA26-1A3FC707A669}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/RequestListener')]
  JRequestListener = interface(IJavaInstance)
  ['{F97E2C64-2868-452D-AD77-E9134249D514}']
    { Property Methods }

    { methods }
    procedure onEvent(P1: Integer; P2: JBundle); cdecl;
    procedure onBufferReceived(P1: TJavaArray<Byte>); cdecl;
    procedure onCompleted(P1: JSpeechError); cdecl;

    { Property }
  end;

  TJRequestListener = class(TJavaGenericImport<JRequestListenerClass, JRequestListener>) end;

//  JaClass = interface(JObjectClass)
//  ['{21E01A06-7631-4DB1-BA9C-3DBEAAC07198}']
//    { static Property Methods }
//    {class} function _Geta: TJavaObjectArray<JString>;
//    {class} function _Getb: TJavaObjectArray<JString>;
//    {class} function _Getc: TJavaObjectArray<JString>;
//    {class} function _Getd: TJavaObjectArray<JString>;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: TJavaObjectArray<JString> read _Geta;
//    {class} property b: TJavaObjectArray<JString> read _Getb;
//    {class} property c: TJavaObjectArray<JString> read _Getc;
//    {class} property d: TJavaObjectArray<JString> read _Getd;
//  end;

//  [JavaSignature('com/iflytek/cloud/resource/a')]
//  Ja = interface(JObject)
//  ['{2194EF55-CAA2-49AA-8BD3-C274B18C3360}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{29135C42-6AD9-45ED-AF8D-785778781FCE}']
//    { static Property Methods }
//    {class} function _Geta: TJavaObjectArray<JString>;
//    {class} function _Getb: TJavaObjectArray<JString>;
//    {class} function _Getc: TJavaObjectArray<JString>;
//    {class} function _Getd: TJavaObjectArray<JString>;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: TJavaObjectArray<JString> read _Geta;
//    {class} property b: TJavaObjectArray<JString> read _Getb;
//    {class} property c: TJavaObjectArray<JString> read _Getc;
//    {class} property d: TJavaObjectArray<JString> read _Getd;
//  end;

//  [JavaSignature('com/iflytek/cloud/resource/b')]
//  Jb = interface(JObject)
//  ['{12C0FC28-8507-4FAA-8472-AA69881B430A}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{A61B59E6-CFB8-4619-B0EC-0DB372B150DC}']
//    { static Property Methods }
//    {class} function _Geta: TJavaObjectArray<JString>;
//    {class} function _Getb: TJavaObjectArray<JString>;
//    {class} function _Getc: TJavaObjectArray<JString>;
//    {class} function _Getd: TJavaObjectArray<JString>;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: TJavaObjectArray<JString> read _Geta;
//    {class} property b: TJavaObjectArray<JString> read _Getb;
//    {class} property c: TJavaObjectArray<JString> read _Getc;
//    {class} property d: TJavaObjectArray<JString> read _Getd;
//  end;

//  [JavaSignature('com/iflytek/cloud/resource/c')]
//  Jc = interface(JObject)
//  ['{736B83DC-77B5-4FAD-A95A-7055AFC5502F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

  JResourceClass = interface(JObjectClass)
  ['{0F31FFBA-AA5C-45F0-B626-D7D55400BA59}']
    { static Property Methods }
    {class} function _GetTEXT_POWER_LINK: Integer;
    {class} function _GetTEXT_HELP_LINK: Integer;
    {class} function _GetTEXT_KNOW: Integer;
    {class} function _GetTEXT_DETAIL: Integer;
    {class} function _GetTEXT_CANCEL: Integer;
    {class} function _GetTEXT_STOP: Integer;
    {class} function _GetTEXT_SET: Integer;
    {class} function _GetTEXT_MORE: Integer;
    {class} function _GetTEXT_RETRY: Integer;
    {class} function _GetTEXT_AGAIN: Integer;
    {class} function _GetTEXT_PLAYBACK: Integer;
    {class} function _GetTEXT_RETRIEVE: Integer;
    {class} function _GetTEXT_HELP_SMS: Integer;
    {class} function _GetTEXT_HELP_RECO: Integer;
    {class} function _GetTITLE_HELP: Integer;
    {class} function _GetTITLE_CONNECTING: Integer;
    {class} function _GetTITLE_RECORDING: Integer;
    {class} function _GetTITLE_RECOGNIZE_WAITING: Integer;
    {class} function _GetTITLE_AUDIO_REQUEST: Integer;
    {class} function _GetTITLE_ERROR: Integer;
    {class} function _GetTITLE_AUDIO_PLAYING: Integer;
    {class} function _GetTITLE_DATA_UPLOAD: Integer;
    {class} function _GetTAG_ERROR_CODE: Integer;
    {class} function _GetTAG_ERROR_UNKNOWN: Integer;

    { static Methods }
    {class} procedure setUILanguage(P1: JLocale); cdecl;
    {class} function getLanguage: JString; cdecl;
    {class} function matchLanguage(P1: JString): Boolean; cdecl;
    {class} procedure setTitle(P1: Integer; P2: JString); cdecl;
    {class} function getTitle(P1: Integer): JString; cdecl;
    {class} function getText(P1: Integer): JString; cdecl;
    {class} procedure setText(P1: Integer; P2: JString); cdecl;
    {class} function getErrorDescription(P1: Integer): JString; cdecl;
    {class} procedure setErrorDescription(P1: Integer; P2: JString); cdecl;
    {class} function getErrorTag(P1: Integer): JString; cdecl;

    { static Property }
    {class} property TEXT_POWER_LINK: Integer read _GetTEXT_POWER_LINK;
    {class} property TEXT_HELP_LINK: Integer read _GetTEXT_HELP_LINK;
    {class} property TEXT_KNOW: Integer read _GetTEXT_KNOW;
    {class} property TEXT_DETAIL: Integer read _GetTEXT_DETAIL;
    {class} property TEXT_CANCEL: Integer read _GetTEXT_CANCEL;
    {class} property TEXT_STOP: Integer read _GetTEXT_STOP;
    {class} property TEXT_SET: Integer read _GetTEXT_SET;
    {class} property TEXT_MORE: Integer read _GetTEXT_MORE;
    {class} property TEXT_RETRY: Integer read _GetTEXT_RETRY;
    {class} property TEXT_AGAIN: Integer read _GetTEXT_AGAIN;
    {class} property TEXT_PLAYBACK: Integer read _GetTEXT_PLAYBACK;
    {class} property TEXT_RETRIEVE: Integer read _GetTEXT_RETRIEVE;
    {class} property TEXT_HELP_SMS: Integer read _GetTEXT_HELP_SMS;
    {class} property TEXT_HELP_RECO: Integer read _GetTEXT_HELP_RECO;
    {class} property TITLE_HELP: Integer read _GetTITLE_HELP;
    {class} property TITLE_CONNECTING: Integer read _GetTITLE_CONNECTING;
    {class} property TITLE_RECORDING: Integer read _GetTITLE_RECORDING;
    {class} property TITLE_RECOGNIZE_WAITING: Integer read _GetTITLE_RECOGNIZE_WAITING;
    {class} property TITLE_AUDIO_REQUEST: Integer read _GetTITLE_AUDIO_REQUEST;
    {class} property TITLE_ERROR: Integer read _GetTITLE_ERROR;
    {class} property TITLE_AUDIO_PLAYING: Integer read _GetTITLE_AUDIO_PLAYING;
    {class} property TITLE_DATA_UPLOAD: Integer read _GetTITLE_DATA_UPLOAD;
    {class} property TAG_ERROR_CODE: Integer read _GetTAG_ERROR_CODE;
    {class} property TAG_ERROR_UNKNOWN: Integer read _GetTAG_ERROR_UNKNOWN;
  end;

  [JavaSignature('com/iflytek/cloud/resource/Resource')]
  JResource = interface(JObject)
  ['{F83E407F-1220-4351-AF02-05A192646CB1}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJResource = class(TJavaGenericImport<JResourceClass, JResource>) end;

  JSetting_LOG_LEVELClass = interface(JObjectClass)
  ['{F470F32F-E235-41FA-B7B3-A99E184ED9E0}']
    { static Property Methods }
    {class} function _Getall: JSetting_LOG_LEVEL;
    {class} function _Getdetail: JSetting_LOG_LEVEL;
    {class} function _Getnormal: JSetting_LOG_LEVEL;
    {class} function _Getlow: JSetting_LOG_LEVEL;
    {class} function _Getnone: JSetting_LOG_LEVEL;

    { static Methods }
    {class} function values: TJavaObjectArray<JSetting_LOG_LEVEL>; cdecl;
    {class} function valueOf(P1: JString): JSetting_LOG_LEVEL; cdecl;

    { static Property }
    {class} property all: JSetting_LOG_LEVEL read _Getall;
    {class} property detail: JSetting_LOG_LEVEL read _Getdetail;
    {class} property normal: JSetting_LOG_LEVEL read _Getnormal;
    {class} property low: JSetting_LOG_LEVEL read _Getlow;
    {class} property none: JSetting_LOG_LEVEL read _Getnone;
  end;

  [JavaSignature('com/iflytek/cloud/Setting$LOG_LEVEL')]
  JSetting_LOG_LEVEL = interface(JObject)
  ['{9BEB970E-1F05-49CF-9321-39A632065EC0}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSetting_LOG_LEVEL = class(TJavaGenericImport<JSetting_LOG_LEVELClass, JSetting_LOG_LEVEL>) end;

  JSettingClass = interface(JObjectClass)
  ['{915D37AB-2DE4-4C52-BDBB-401275E920B1}']
    { static Property Methods }
    {class} function _Geta: JString;

    { static Methods }
    {class} procedure setLogLevel(P1: JSetting_LOG_LEVEL); cdecl;
    {class} function getLogLevel: JSetting_LOG_LEVEL; cdecl;
    {class} procedure setLogPath(P1: JString); cdecl;
    {class} function getLogPath: JString; cdecl;
    {class} procedure setShowLog(P1: Boolean); cdecl;
    {class} function getShowLog: Boolean; cdecl;
    {class} procedure setSaveTestLog(P1: Boolean); cdecl;
    {class} function getSaveTestLog: Boolean; cdecl;
    {class} procedure setLocationEnable(P1: Boolean); cdecl;
    {class} function getLocationEnable: Boolean; cdecl;
    {class} procedure setLocale(P1: JLocale); cdecl;

    { static Property }
    {class} property a: JString read _Geta;
  end;

  [JavaSignature('com/iflytek/cloud/Setting')]
  JSetting = interface(JObject)
  ['{683B795B-F57E-416D-92F3-AC647DF59B3D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSetting = class(TJavaGenericImport<JSettingClass, JSetting>) end;

  JSpeakerVerifierClass = interface(JObjectClass)
  ['{2FA7D335-21C5-4967-8DD8-B68C5EF27B07}']
    { static Property Methods }

    { static Methods }
    {class} function createVerifier(P1: JContext; P2: JInitListener): JSpeakerVerifier; cdecl;
    {class} function getVerifier: JSpeakerVerifier; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/SpeakerVerifier')]
  JSpeakerVerifier = interface(JObject)
  ['{97629010-5640-4CE1-85DA-C14A31B0CEF6}']
    { Property Methods }

    { methods }
    procedure getPasswordList(P1: JSpeechListener); cdecl;
    function generatePassword(P1: Integer): JString; cdecl;
    function startListening(P1: JVerifierListener): Integer; cdecl;
    procedure stopListening; cdecl;
    function writeAudio(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
    function isListening: Boolean; cdecl;
    procedure cancel; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destroy: Boolean; cdecl;
    function sendRequest(P1: JString; P2: JString; P3: JSpeechListener): Integer; cdecl;

    { Property }
  end;

  TJSpeakerVerifier = class(TJavaGenericImport<JSpeakerVerifierClass, JSpeakerVerifier>) end;

  JSpeechConstantClass = interface(JObjectClass)
  ['{5F9CE4F9-C441-4F54-94F6-744B7A1E2B29}']
    { static Property Methods }
    {class} function _GetAPPID: JString;
    {class} function _GetNET_TYPE: JString;
    {class} function _GetFORCE_LOGIN: JString;
    {class} function _GetLIB_NAME: JString;
    {class} function _GetRESULT_TYPE: JString;
    {class} function _GetRESULT_LEVEL: JString;
    {class} function _GetLANGUAGE: JString;
    {class} function _GetACCENT: JString;
    {class} function _GetDOMAIN: JString;
    {class} function _GetVAD_ENABLE: JString;
    {class} function _GetVAD_BOS: JString;
    {class} function _GetVAD_EOS: JString;
    {class} function _GetSAMPLE_RATE: JString;
    {class} function _GetPARAMS: JString;
    {class} function _GetNET_CHECK: JString;
    {class} function _GetNET_TIMEOUT: JString;
    {class} function _GetKEY_SPEECH_TIMEOUT: JString;
    {class} function _GetENGINE_MODE: JString;
    {class} function _GetENGINE_TYPE: JString;
    {class} function _GetAUDIO_SOURCE: JString;
    {class} function _GetASR_SOURCE_PATH: JString;
    {class} function _GetFILTER_AUDIO_TIME: JString;
    {class} function _GetLOCAL_GRAMMAR: JString;
    {class} function _GetCLOUD_GRAMMAR: JString;
    {class} function _GetGRAMMAR_TYPE: JString;
    {class} function _GetGRAMMAR_NAME: JString;
    {class} function _GetGRAMMAR_LIST: JString;
    {class} function _GetLOCAL_GRAMMAR_PACKAGE: JString;
    {class} function _GetNOTIFY_RECORD_DATA: JString;
    {class} function _GetMIXED_THRESHOLD: JString;
    {class} function _GetMIXED_TYPE: JString;
    {class} function _GetMIXED_TIMEOUT: JString;
    {class} function _GetASR_THRESHOLD: JString;
    {class} function _GetLEXICON_TYPE: JString;
    {class} function _GetASR_NBEST: JString;
    {class} function _GetASR_WBEST: JString;
    {class} function _GetASR_PTT: JString;
    {class} function _GetASR_SCH: JString;
    {class} function _GetASR_DWA: JString;
    {class} function _GetNLP_VERSION: JString;
    {class} function _GetSCENE: JString;
    {class} function _GetTYPE_LOCAL: JString;
    {class} function _GetTYPE_CLOUD: JString;
    {class} function _GetTYPE_MIX: JString;
    {class} function _GetTYPE_DISTRIBUTED: JString;
    {class} function _GetTYPE_AUTO: JString;
    {class} function _GetISV_SST: JString;
    {class} function _GetISV_PWDT: JString;
    {class} function _GetISV_VID: JString;
    {class} function _GetISV_RGN: JString;
    {class} function _GetISV_PWD: JString;
    {class} function _GetISV_AUDIO_PATH: JString;
    {class} function _GetISV_CMD: JString;
    {class} function _GetISV_INTERRUPT_ERROR: JString;
    {class} function _GetWFR_SST: JString;
    {class} function _GetISE_USER_MODEL_ID: JString;
    {class} function _GetISE_CATEGORY: JString;
    {class} function _GetISE_PARSED: JString;
    {class} function _GetISE_AUTO_TRACKING: JString;
    {class} function _GetISE_TRACK_TYPE: JString;
    {class} function _GetISE_INTERRUPT_ERROR: JString;
    {class} function _GetISE_AUDIO_PATH: JString;
    {class} function _GetISE_SOURCE_PATH: JString;
    {class} function _GetIVW_SST: JString;
    {class} function _GetIVW_WORD_PATH: JString;
    {class} function _GetIVW_THRESHOLD: JString;
    {class} function _GetKEEP_ALIVE: JString;
    {class} function _GetIVW_SHOT_WORD: JString;
    {class} function _GetIVW_ENROLL_RES_PATH: JString;
    {class} function _GetIVW_ENROLL_DEST_PATH: JString;
    {class} function _GetIVW_ENROLL_TMIN: JString;
    {class} function _GetIVW_ENROLL_TMAX: JString;
    {class} function _GetIVW_VOL_CHECK: JString;
    {class} function _GetIVW_ENROLL_TIMES: JString;
    {class} function _GetIVW_RES_PATH: JString;
    {class} function _GetIVW_NET_MODE: JString;
    {class} function _GetIVW_CHANNEL_NUM: JString;
    {class} function _GetIVW_RESET_AIMIC: JString;
    {class} function _GetIVW_ALSA_CARD: JString;
    {class} function _GetIVW_ALSA_RATE: JString;
    {class} function _GetIVW_AUDIO_PATH: JString;
    {class} function _GetVOICE_NAME: JString;
    {class} function _GetEMOT: JString;
    {class} function _GetNEXT_TEXT: JString;
    {class} function _GetLOCAL_SPEAKERS: JString;
    {class} function _GetSPEED: JString;
    {class} function _GetPITCH: JString;
    {class} function _GetVOLUME: JString;
    {class} function _GetBACKGROUND_SOUND: JString;
    {class} function _GetTTS_BUFFER_TIME: JString;
    {class} function _GetTTS_PLAY_STATE: JString;
    {class} function _GetTTS_DATA_NOTIFY: JString;
    {class} function _GetTTS_INTERRUPT_ERROR: JString;
    {class} function _GetTTS_SPELL_INFO: JString;
    {class} function _GetAUDIO_FORMAT: JString;
    {class} function _GetSTREAM_TYPE: JString;
    {class} function _GetKEY_REQUEST_FOCUS: JString;
    {class} function _GetTTS_AUDIO_PATH: JString;
    {class} function _GetDATA_TYPE: JString;
    {class} function _GetSUBJECT: JString;
    {class} function _GetASR_AUDIO_PATH: JString;
    {class} function _GetASR_INTERRUPT_ERROR: JString;
    {class} function _GetASR_NOMATCH_ERROR: JString;
    {class} function _GetASR_NET_PERF: JString;
    {class} function _GetENG_ASR: JString;
    {class} function _GetENG_TTS: JString;
    {class} function _GetENG_NLU: JString;
    {class} function _GetENG_IVW: JString;
    {class} function _GetENG_IVP: JString;
    {class} function _GetENG_WFR: JString;
    {class} function _GetENG_EVA: JString;
    {class} function _GetMODE_MSC: JString;
    {class} function _GetMODE_PLUS: JString;
    {class} function _GetMODE_AUTO: JString;
    {class} function _GetTEXT_ENCODING: JString;
    {class} function _GetTEXT_BOM: JString;
    {class} function _GetAUTH_ID: JString;
    {class} function _GetMFV_SST: JString;
    {class} function _GetMFV_VCM: JString;
    {class} function _GetMFV_SCENES: JString;
    {class} function _GetMFV_AFC: JString;
    {class} function _GetMFV_DATA_PATH: JString;
    {class} function _GetMFV_INTERRUPT_ERROR: JString;
    {class} function _GetPROT_TYPE: JString;
    {class} function _GetPLUS_LOCAL_TTS: JString;
    {class} function _GetPLUS_LOCAL_ASR: JString;
    {class} function _GetPLUS_LOCAL_IVW: JString;
    {class} function _GetPLUS_LOCAL_ALL: JString;
    {class} function _GetIST_SESSION_ID: JString;
    {class} function _GetIST_SYNC_ID: JString;
    {class} function _GetIST_AUDIO_UPLOADED: JString;
    {class} function _GetIST_AUDIO_PATH: JString;
    {class} function _GetIST_SESSION_TRY: JString;

    { static Methods }

    { static Property }
    {class} property APPID: JString read _GetAPPID;
    {class} property NET_TYPE: JString read _GetNET_TYPE;
    {class} property FORCE_LOGIN: JString read _GetFORCE_LOGIN;
    {class} property LIB_NAME: JString read _GetLIB_NAME;
    {class} property RESULT_TYPE: JString read _GetRESULT_TYPE;
    {class} property RESULT_LEVEL: JString read _GetRESULT_LEVEL;
    {class} property LANGUAGE: JString read _GetLANGUAGE;
    {class} property ACCENT: JString read _GetACCENT;
    {class} property DOMAIN: JString read _GetDOMAIN;
    {class} property VAD_ENABLE: JString read _GetVAD_ENABLE;
    {class} property VAD_BOS: JString read _GetVAD_BOS;
    {class} property VAD_EOS: JString read _GetVAD_EOS;
    {class} property SAMPLE_RATE: JString read _GetSAMPLE_RATE;
    {class} property PARAMS: JString read _GetPARAMS;
    {class} property NET_CHECK: JString read _GetNET_CHECK;
    {class} property NET_TIMEOUT: JString read _GetNET_TIMEOUT;
    {class} property KEY_SPEECH_TIMEOUT: JString read _GetKEY_SPEECH_TIMEOUT;
    {class} property ENGINE_MODE: JString read _GetENGINE_MODE;
    {class} property ENGINE_TYPE: JString read _GetENGINE_TYPE;
    {class} property AUDIO_SOURCE: JString read _GetAUDIO_SOURCE;
    {class} property ASR_SOURCE_PATH: JString read _GetASR_SOURCE_PATH;
    {class} property FILTER_AUDIO_TIME: JString read _GetFILTER_AUDIO_TIME;
    {class} property LOCAL_GRAMMAR: JString read _GetLOCAL_GRAMMAR;
    {class} property CLOUD_GRAMMAR: JString read _GetCLOUD_GRAMMAR;
    {class} property GRAMMAR_TYPE: JString read _GetGRAMMAR_TYPE;
    {class} property GRAMMAR_NAME: JString read _GetGRAMMAR_NAME;
    {class} property GRAMMAR_LIST: JString read _GetGRAMMAR_LIST;
    {class} property LOCAL_GRAMMAR_PACKAGE: JString read _GetLOCAL_GRAMMAR_PACKAGE;
    {class} property NOTIFY_RECORD_DATA: JString read _GetNOTIFY_RECORD_DATA;
    {class} property MIXED_THRESHOLD: JString read _GetMIXED_THRESHOLD;
    {class} property MIXED_TYPE: JString read _GetMIXED_TYPE;
    {class} property MIXED_TIMEOUT: JString read _GetMIXED_TIMEOUT;
    {class} property ASR_THRESHOLD: JString read _GetASR_THRESHOLD;
    {class} property LEXICON_TYPE: JString read _GetLEXICON_TYPE;
    {class} property ASR_NBEST: JString read _GetASR_NBEST;
    {class} property ASR_WBEST: JString read _GetASR_WBEST;
    {class} property ASR_PTT: JString read _GetASR_PTT;
    {class} property ASR_SCH: JString read _GetASR_SCH;
    {class} property ASR_DWA: JString read _GetASR_DWA;
    {class} property NLP_VERSION: JString read _GetNLP_VERSION;
    {class} property SCENE: JString read _GetSCENE;
    {class} property TYPE_LOCAL: JString read _GetTYPE_LOCAL;
    {class} property TYPE_CLOUD: JString read _GetTYPE_CLOUD;
    {class} property TYPE_MIX: JString read _GetTYPE_MIX;
    {class} property TYPE_DISTRIBUTED: JString read _GetTYPE_DISTRIBUTED;
    {class} property TYPE_AUTO: JString read _GetTYPE_AUTO;
    {class} property ISV_SST: JString read _GetISV_SST;
    {class} property ISV_PWDT: JString read _GetISV_PWDT;
    {class} property ISV_VID: JString read _GetISV_VID;
    {class} property ISV_RGN: JString read _GetISV_RGN;
    {class} property ISV_PWD: JString read _GetISV_PWD;
    {class} property ISV_AUDIO_PATH: JString read _GetISV_AUDIO_PATH;
    {class} property ISV_CMD: JString read _GetISV_CMD;
    {class} property ISV_INTERRUPT_ERROR: JString read _GetISV_INTERRUPT_ERROR;
    {class} property WFR_SST: JString read _GetWFR_SST;
    {class} property ISE_USER_MODEL_ID: JString read _GetISE_USER_MODEL_ID;
    {class} property ISE_CATEGORY: JString read _GetISE_CATEGORY;
    {class} property ISE_PARSED: JString read _GetISE_PARSED;
    {class} property ISE_AUTO_TRACKING: JString read _GetISE_AUTO_TRACKING;
    {class} property ISE_TRACK_TYPE: JString read _GetISE_TRACK_TYPE;
    {class} property ISE_INTERRUPT_ERROR: JString read _GetISE_INTERRUPT_ERROR;
    {class} property ISE_AUDIO_PATH: JString read _GetISE_AUDIO_PATH;
    {class} property ISE_SOURCE_PATH: JString read _GetISE_SOURCE_PATH;
    {class} property IVW_SST: JString read _GetIVW_SST;
    {class} property IVW_WORD_PATH: JString read _GetIVW_WORD_PATH;
    {class} property IVW_THRESHOLD: JString read _GetIVW_THRESHOLD;
    {class} property KEEP_ALIVE: JString read _GetKEEP_ALIVE;
    {class} property IVW_SHOT_WORD: JString read _GetIVW_SHOT_WORD;
    {class} property IVW_ENROLL_RES_PATH: JString read _GetIVW_ENROLL_RES_PATH;
    {class} property IVW_ENROLL_DEST_PATH: JString read _GetIVW_ENROLL_DEST_PATH;
    {class} property IVW_ENROLL_TMIN: JString read _GetIVW_ENROLL_TMIN;
    {class} property IVW_ENROLL_TMAX: JString read _GetIVW_ENROLL_TMAX;
    {class} property IVW_VOL_CHECK: JString read _GetIVW_VOL_CHECK;
    {class} property IVW_ENROLL_TIMES: JString read _GetIVW_ENROLL_TIMES;
    {class} property IVW_RES_PATH: JString read _GetIVW_RES_PATH;
    {class} property IVW_NET_MODE: JString read _GetIVW_NET_MODE;
    {class} property IVW_CHANNEL_NUM: JString read _GetIVW_CHANNEL_NUM;
    {class} property IVW_RESET_AIMIC: JString read _GetIVW_RESET_AIMIC;
    {class} property IVW_ALSA_CARD: JString read _GetIVW_ALSA_CARD;
    {class} property IVW_ALSA_RATE: JString read _GetIVW_ALSA_RATE;
    {class} property IVW_AUDIO_PATH: JString read _GetIVW_AUDIO_PATH;
    {class} property VOICE_NAME: JString read _GetVOICE_NAME;
    {class} property EMOT: JString read _GetEMOT;
    {class} property NEXT_TEXT: JString read _GetNEXT_TEXT;
    {class} property LOCAL_SPEAKERS: JString read _GetLOCAL_SPEAKERS;
    {class} property SPEED: JString read _GetSPEED;
    {class} property PITCH: JString read _GetPITCH;
    {class} property VOLUME: JString read _GetVOLUME;
    {class} property BACKGROUND_SOUND: JString read _GetBACKGROUND_SOUND;
    {class} property TTS_BUFFER_TIME: JString read _GetTTS_BUFFER_TIME;
    {class} property TTS_PLAY_STATE: JString read _GetTTS_PLAY_STATE;
    {class} property TTS_DATA_NOTIFY: JString read _GetTTS_DATA_NOTIFY;
    {class} property TTS_INTERRUPT_ERROR: JString read _GetTTS_INTERRUPT_ERROR;
    {class} property TTS_SPELL_INFO: JString read _GetTTS_SPELL_INFO;
    {class} property AUDIO_FORMAT: JString read _GetAUDIO_FORMAT;
    {class} property STREAM_TYPE: JString read _GetSTREAM_TYPE;
    {class} property KEY_REQUEST_FOCUS: JString read _GetKEY_REQUEST_FOCUS;
    {class} property TTS_AUDIO_PATH: JString read _GetTTS_AUDIO_PATH;
    {class} property DATA_TYPE: JString read _GetDATA_TYPE;
    {class} property SUBJECT: JString read _GetSUBJECT;
    {class} property ASR_AUDIO_PATH: JString read _GetASR_AUDIO_PATH;
    {class} property ASR_INTERRUPT_ERROR: JString read _GetASR_INTERRUPT_ERROR;
    {class} property ASR_NOMATCH_ERROR: JString read _GetASR_NOMATCH_ERROR;
    {class} property ASR_NET_PERF: JString read _GetASR_NET_PERF;
    {class} property ENG_ASR: JString read _GetENG_ASR;
    {class} property ENG_TTS: JString read _GetENG_TTS;
    {class} property ENG_NLU: JString read _GetENG_NLU;
    {class} property ENG_IVW: JString read _GetENG_IVW;
    {class} property ENG_IVP: JString read _GetENG_IVP;
    {class} property ENG_WFR: JString read _GetENG_WFR;
    {class} property ENG_EVA: JString read _GetENG_EVA;
    {class} property MODE_MSC: JString read _GetMODE_MSC;
    {class} property MODE_PLUS: JString read _GetMODE_PLUS;
    {class} property MODE_AUTO: JString read _GetMODE_AUTO;
    {class} property TEXT_ENCODING: JString read _GetTEXT_ENCODING;
    {class} property TEXT_BOM: JString read _GetTEXT_BOM;
    {class} property AUTH_ID: JString read _GetAUTH_ID;
    {class} property MFV_SST: JString read _GetMFV_SST;
    {class} property MFV_VCM: JString read _GetMFV_VCM;
    {class} property MFV_SCENES: JString read _GetMFV_SCENES;
    {class} property MFV_AFC: JString read _GetMFV_AFC;
    {class} property MFV_DATA_PATH: JString read _GetMFV_DATA_PATH;
    {class} property MFV_INTERRUPT_ERROR: JString read _GetMFV_INTERRUPT_ERROR;
    {class} property PROT_TYPE: JString read _GetPROT_TYPE;
    {class} property PLUS_LOCAL_TTS: JString read _GetPLUS_LOCAL_TTS;
    {class} property PLUS_LOCAL_ASR: JString read _GetPLUS_LOCAL_ASR;
    {class} property PLUS_LOCAL_IVW: JString read _GetPLUS_LOCAL_IVW;
    {class} property PLUS_LOCAL_ALL: JString read _GetPLUS_LOCAL_ALL;
    {class} property IST_SESSION_ID: JString read _GetIST_SESSION_ID;
    {class} property IST_SYNC_ID: JString read _GetIST_SYNC_ID;
    {class} property IST_AUDIO_UPLOADED: JString read _GetIST_AUDIO_UPLOADED;
    {class} property IST_AUDIO_PATH: JString read _GetIST_AUDIO_PATH;
    {class} property IST_SESSION_TRY: JString read _GetIST_SESSION_TRY;
  end;

  [JavaSignature('com/iflytek/cloud/SpeechConstant')]
  JSpeechConstant = interface(JObject)
  ['{64E1CA27-D130-4354-AFBE-8CFD6051AA7D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSpeechConstant = class(TJavaGenericImport<JSpeechConstantClass, JSpeechConstant>) end;

  JSpeechErrorClass = interface(JObjectClass)
  ['{E70C3B8F-B984-4331-B9B9-52263DCC3074}']
    { static Property Methods }
    {class} function _GetTIP_ERROR_IVP_GENERAL: Integer;
    {class} function _GetTIP_ERROR_IVP_EXTRA_RGN_SOPPORT: Integer;
    {class} function _GetTIP_ERROR_IVP_TRUNCATED: Integer;
    {class} function _GetTIP_ERROR_IVP_MUCH_NOISE: Integer;
    {class} function _GetTIP_ERROR_IVP_TOO_LOW: Integer;
    {class} function _GetTIP_ERROR_IVP_ZERO_AUDIO: Integer;
    {class} function _GetTIP_ERROR_IVP_UTTER_TOO_SHORT: Integer;
    {class} function _GetTIP_ERROR_IVP_TEXT_NOT_MATCH: Integer;
    {class} function _GetTIP_ERROR_IVP_NO_ENOUGH_AUDIO: Integer;
    {class} function _GetTIP_ERROR_MODEL_NOT_FOUND: Integer;
    {class} function _GetTIP_ERROR_MODEL_IS_CREATING: Integer;
    {class} function _GetTIP_ERROR_ALREADY_EXIST: Integer;
    {class} function _GetTIP_ERROR_NO_GROUP: Integer;
    {class} function _GetTIP_ERROR_GROUP_EMPTY: Integer;
    {class} function _GetTIP_ERROR_NO_USER: Integer;
    {class} function _GetTIP_ERROR_OVERFLOW_IN_GROUP: Integer;

    { static Methods }
    {class} function init(P1: JException): JSpeechError; cdecl; overload;
    {class} function init(P1: JThrowable; P2: Integer): JSpeechError; cdecl; overload;
    {class} function init(P1: Integer; P2: JString): JSpeechError; cdecl; overload;
    {class} function init(P1: Integer): JSpeechError; cdecl; overload;

    { static Property }
    {class} property TIP_ERROR_IVP_GENERAL: Integer read _GetTIP_ERROR_IVP_GENERAL;
    {class} property TIP_ERROR_IVP_EXTRA_RGN_SOPPORT: Integer read _GetTIP_ERROR_IVP_EXTRA_RGN_SOPPORT;
    {class} property TIP_ERROR_IVP_TRUNCATED: Integer read _GetTIP_ERROR_IVP_TRUNCATED;
    {class} property TIP_ERROR_IVP_MUCH_NOISE: Integer read _GetTIP_ERROR_IVP_MUCH_NOISE;
    {class} property TIP_ERROR_IVP_TOO_LOW: Integer read _GetTIP_ERROR_IVP_TOO_LOW;
    {class} property TIP_ERROR_IVP_ZERO_AUDIO: Integer read _GetTIP_ERROR_IVP_ZERO_AUDIO;
    {class} property TIP_ERROR_IVP_UTTER_TOO_SHORT: Integer read _GetTIP_ERROR_IVP_UTTER_TOO_SHORT;
    {class} property TIP_ERROR_IVP_TEXT_NOT_MATCH: Integer read _GetTIP_ERROR_IVP_TEXT_NOT_MATCH;
    {class} property TIP_ERROR_IVP_NO_ENOUGH_AUDIO: Integer read _GetTIP_ERROR_IVP_NO_ENOUGH_AUDIO;
    {class} property TIP_ERROR_MODEL_NOT_FOUND: Integer read _GetTIP_ERROR_MODEL_NOT_FOUND;
    {class} property TIP_ERROR_MODEL_IS_CREATING: Integer read _GetTIP_ERROR_MODEL_IS_CREATING;
    {class} property TIP_ERROR_ALREADY_EXIST: Integer read _GetTIP_ERROR_ALREADY_EXIST;
    {class} property TIP_ERROR_NO_GROUP: Integer read _GetTIP_ERROR_NO_GROUP;
    {class} property TIP_ERROR_GROUP_EMPTY: Integer read _GetTIP_ERROR_GROUP_EMPTY;
    {class} property TIP_ERROR_NO_USER: Integer read _GetTIP_ERROR_NO_USER;
    {class} property TIP_ERROR_OVERFLOW_IN_GROUP: Integer read _GetTIP_ERROR_OVERFLOW_IN_GROUP;
  end;

  [JavaSignature('com/iflytek/cloud/SpeechError')]
  JSpeechError = interface(JObject)
  ['{581D97DB-86ED-43D9-9CEE-CF259F2EB78E}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl;
    function getErrorCode: Integer; cdecl;
    function getErrorDescription: JString; cdecl;
    function getHtmlDescription(P1: Boolean): JString; cdecl;
    function getPlainDescription(P1: Boolean): JString; cdecl;

    { Property }
  end;

  TJSpeechError = class(TJavaGenericImport<JSpeechErrorClass, JSpeechError>) end;

  JSpeechEvaluatorClass = interface(JObjectClass)
  ['{564D5862-E53F-44E3-B400-6F43DC03B48F}']
    { static Property Methods }

    { static Methods }
    {class} function createEvaluator(P1: JContext; P2: JInitListener): JSpeechEvaluator; cdecl;
    {class} function getEvaluator: JSpeechEvaluator; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/SpeechEvaluator')]
  JSpeechEvaluator = interface(JObject)
  ['{2BC8DC41-BD42-4E9B-B72A-DEDDF44B1B50}']
    { Property Methods }

    { methods }
    function startEvaluating(P1: JString; P2: JString; P3: JEvaluatorListener): Integer; cdecl; overload;
    function startEvaluating(P1: TJavaArray<Byte>; P2: JString; P3: JEvaluatorListener): Integer; cdecl; overload;
    function writeAudio(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Boolean; cdecl;
    function isEvaluating: Boolean; cdecl;
    procedure stopEvaluating; cdecl;
    procedure cancel; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destroy: Boolean; cdecl;

    { Property }
  end;

  TJSpeechEvaluator = class(TJavaGenericImport<JSpeechEvaluatorClass, JSpeechEvaluator>) end;

  JSpeechEventClass = interface(JObjectClass)
  ['{B2669714-2B1B-40F2-AB2C-743D62B1C48C}']
    { static Property Methods }
    {class} function _GetEVENT_NETPREF: Integer;
    {class} function _GetEVENT_SESSION_ID: Integer;
    {class} function _GetKEY_EVENT_SESSION_ID: JString;
    {class} function _GetEVENT_TTS_BUFFER: Integer;
    {class} function _GetKEY_EVENT_TTS_BUFFER: JString;
    {class} function _GetEVENT_TTS_CANCEL: Integer;
    {class} function _GetEVENT_RECORD_DATA: Integer;
    {class} function _GetKEY_EVENT_RECORD_DATA: JString;
    {class} function _GetEVENT_IVW_RESULT: Integer;
    {class} function _GetKEY_EVENT_IVW_RESULT: JString;
    {class} function _GetEVENT_SPEECH_START: Integer;
    {class} function _GetEVENT_RECORD_STOP: Integer;
    {class} function _GetEVENT_AUDIO_URL: Integer;
    {class} function _GetKEY_EVENT_AUDIO_URL: JString;
    {class} function _GetEVENT_IST_AUDIO_FILE: Integer;
    {class} function _GetEVENT_IST_UPLOAD_BYTES: Integer;
    {class} function _GetEVENT_IST_CACHE_LEFT: Integer;
    {class} function _GetKEY_EVENT_IST_UPLOAD_COMPLETE: JString;
    {class} function _GetEVENT_IST_RESULT_TIME: Integer;
    {class} function _GetEVENT_IST_SYNC_ID: Integer;
    {class} function _GetEVENT_SESSION_BEGIN: Integer;
    {class} function _GetEVENT_SESSION_END: Integer;
    {class} function _GetEVENT_VOLUME: Integer;
    {class} function _GetEVENT_VAD_EOS: Integer;

    { static Methods }
    {class} function init: JSpeechEvent; cdecl;

    { static Property }
    {class} property EVENT_NETPREF: Integer read _GetEVENT_NETPREF;
    {class} property EVENT_SESSION_ID: Integer read _GetEVENT_SESSION_ID;
    {class} property KEY_EVENT_SESSION_ID: JString read _GetKEY_EVENT_SESSION_ID;
    {class} property EVENT_TTS_BUFFER: Integer read _GetEVENT_TTS_BUFFER;
    {class} property KEY_EVENT_TTS_BUFFER: JString read _GetKEY_EVENT_TTS_BUFFER;
    {class} property EVENT_TTS_CANCEL: Integer read _GetEVENT_TTS_CANCEL;
    {class} property EVENT_RECORD_DATA: Integer read _GetEVENT_RECORD_DATA;
    {class} property KEY_EVENT_RECORD_DATA: JString read _GetKEY_EVENT_RECORD_DATA;
    {class} property EVENT_IVW_RESULT: Integer read _GetEVENT_IVW_RESULT;
    {class} property KEY_EVENT_IVW_RESULT: JString read _GetKEY_EVENT_IVW_RESULT;
    {class} property EVENT_SPEECH_START: Integer read _GetEVENT_SPEECH_START;
    {class} property EVENT_RECORD_STOP: Integer read _GetEVENT_RECORD_STOP;
    {class} property EVENT_AUDIO_URL: Integer read _GetEVENT_AUDIO_URL;
    {class} property KEY_EVENT_AUDIO_URL: JString read _GetKEY_EVENT_AUDIO_URL;
    {class} property EVENT_IST_AUDIO_FILE: Integer read _GetEVENT_IST_AUDIO_FILE;
    {class} property EVENT_IST_UPLOAD_BYTES: Integer read _GetEVENT_IST_UPLOAD_BYTES;
    {class} property EVENT_IST_CACHE_LEFT: Integer read _GetEVENT_IST_CACHE_LEFT;
    {class} property KEY_EVENT_IST_UPLOAD_COMPLETE: JString read _GetKEY_EVENT_IST_UPLOAD_COMPLETE;
    {class} property EVENT_IST_RESULT_TIME: Integer read _GetEVENT_IST_RESULT_TIME;
    {class} property EVENT_IST_SYNC_ID: Integer read _GetEVENT_IST_SYNC_ID;
    {class} property EVENT_SESSION_BEGIN: Integer read _GetEVENT_SESSION_BEGIN;
    {class} property EVENT_SESSION_END: Integer read _GetEVENT_SESSION_END;
    {class} property EVENT_VOLUME: Integer read _GetEVENT_VOLUME;
    {class} property EVENT_VAD_EOS: Integer read _GetEVENT_VAD_EOS;
  end;

  [JavaSignature('com/iflytek/cloud/SpeechEvent')]
  JSpeechEvent = interface(JObject)
  ['{4A958A59-B214-43B3-AAD2-419D37332099}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSpeechEvent = class(TJavaGenericImport<JSpeechEventClass, JSpeechEvent>) end;

  JSpeechListenerClass = interface(JObjectClass)
  ['{27B063A0-91F8-4E42-A784-BDC80EBFBFA3}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/SpeechListener')]
  JSpeechListener = interface(IJavaInstance)
  ['{6AAC9E92-5C97-44DC-8242-BF933CBE0148}']
    { Property Methods }

    { methods }
    procedure onEvent(P1: Integer; P2: JBundle); cdecl;
    procedure onBufferReceived(P1: TJavaArray<Byte>); cdecl;
    procedure onCompleted(P1: JSpeechError); cdecl;

    { Property }
  end;

  TJSpeechListener = class(TJavaGenericImport<JSpeechListenerClass, JSpeechListener>) end;

//  JSpeechRecognizer_1Class = interface(JObjectClass)
//  ['{A45DE508-1BD2-4937-8A89-E3AAB37CC051}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechRecognizer$1')]
//  JSpeechRecognizer_1 = interface(JObject)
//  ['{C0020102-6162-45FD-BAC0-AE7D6B272AB8}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJSpeechRecognizer_1 = class(TJavaGenericImport<JSpeechRecognizer_1Class, JSpeechRecognizer_1>) end;

//  JSpeechRecognizer_2Class = interface(JObjectClass)
//  ['{0A43A71C-F57D-495E-814D-FFA671EF4B89}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechRecognizer$2')]
//  JSpeechRecognizer_2 = interface(JObject)
//  ['{323FA3A6-81EC-481E-930C-13DDA7F072F3}']
//    { Property Methods }
//
//    { methods }
//    procedure onBuildFinish(P1: JString; P2: Integer); cdecl;
//
//    { Property }
//  end;

//  TJSpeechRecognizer_2 = class(TJavaGenericImport<JSpeechRecognizer_2Class, JSpeechRecognizer_2>) end;

//  JSpeechRecognizer_3Class = interface(JObjectClass)
//  ['{3FEC881E-2E5F-4A7E-87F2-2FE5561482C5}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechRecognizer$3')]
//  JSpeechRecognizer_3 = interface(JObject)
//  ['{0C269F56-CC8C-4A8D-992C-1D7D1366BEEE}']
//    { Property Methods }
//
//    { methods }
//    procedure onLexiconUpdated(P1: JString; P2: Integer); cdecl;
//
//    { Property }
//  end;

//  TJSpeechRecognizer_3 = class(TJavaGenericImport<JSpeechRecognizer_3Class, JSpeechRecognizer_3>) end;

//  JSpeechRecognizer_a_1Class = interface(JObjectClass)
//  ['{D82FCE27-C359-49E2-AB86-08B101E6C8FE}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechRecognizer$a$1')]
//  JSpeechRecognizer_a_1 = interface(JObject)
//  ['{94F6226B-C232-4994-8FA3-1CA2DA5F0694}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onError(P1: Integer); cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJSpeechRecognizer_a_1 = class(TJavaGenericImport<JSpeechRecognizer_a_1Class, JSpeechRecognizer_a_1>) end;

//  JSpeechRecognizer_a_2Class = interface(JObjectClass)
//  ['{4BC14B49-982C-435A-B464-5AA09F98FCC0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechRecognizer$a$2')]
//  JSpeechRecognizer_a_2 = interface(JObject)
//  ['{B7761EC4-6B54-4935-8B5C-4AA614AEE831}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJSpeechRecognizer_a_2 = class(TJavaGenericImport<JSpeechRecognizer_a_2Class, JSpeechRecognizer_a_2>) end;

//  JSpeechRecognizer_aClass = interface(JObjectClass)
//  ['{B10F9F59-E8E9-47DC-94A8-F4432B346C27}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JSpeechRecognizer; P2: JRecognizerListener): JSpeechRecognizer_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechRecognizer$a')]
//  JSpeechRecognizer_a = interface(JObject)
//  ['{987D7B5A-D7EB-4594-B63C-6C93DA13B646}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJSpeechRecognizer_a = class(TJavaGenericImport<JSpeechRecognizer_aClass, JSpeechRecognizer_a>) end;

  JSpeechRecognizerClass = interface(JObjectClass)
  ['{0D2AA35B-CF6A-45E7-BA79-0CF40334A051}']
    { static Property Methods }

    { static Methods }
    {class} function createRecognizer(P1: JContext; P2: JInitListener): JSpeechRecognizer; cdecl;
    {class} function getRecognizer: JSpeechRecognizer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/SpeechRecognizer')]
  JSpeechRecognizer = interface(JObject)
  ['{11BDC594-872C-4984-A09A-04C2C94E9EBA}']
    { Property Methods }

    { methods }
    function buildGrammar(P1: JString; P2: JString; P3: JGrammarListener): Integer; cdecl;
    function updateLexicon(P1: JString; P2: JString; P3: JLexiconListener): Integer; cdecl;
    function startListening(P1: JRecognizerListener): Integer; cdecl;
    function writeAudio(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
    procedure stopListening; cdecl;
    function isListening: Boolean; cdecl;
    procedure cancel; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destroy: Boolean; cdecl;

    { Property }
  end;

  TJSpeechRecognizer = class(TJavaGenericImport<JSpeechRecognizerClass, JSpeechRecognizer>) end;

//  JSpeechSynthesizer_1Class = interface(JObjectClass)
//  ['{A38FDE93-2857-426D-A428-1587B214759C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechSynthesizer$1')]
//  JSpeechSynthesizer_1 = interface(JObject)
//  ['{AAE7C1BE-3F03-4DC5-8AC1-201965713F6C}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJSpeechSynthesizer_1 = class(TJavaGenericImport<JSpeechSynthesizer_1Class, JSpeechSynthesizer_1>) end;

//  JSpeechSynthesizer_a_1Class = interface(JObjectClass)
//  ['{1CFC99B0-A00D-4FB6-B70D-E04E9E8F7A32}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechSynthesizer$a$1')]
//  JSpeechSynthesizer_a_1 = interface(JObject)
//  ['{0C10DE7E-BEE3-4E82-A8DD-475BEAD07F48}']
//    { Property Methods }
//
//    { methods }
//    procedure onSpeakResumed; cdecl;
//    procedure onSpeakProgress(P1: Integer; P2: Integer; P3: Integer); cdecl;
//    procedure onSpeakPaused; cdecl;
//    procedure onSpeakBegin; cdecl;
//    procedure onCompleted(P1: Integer); cdecl;
//    procedure onBufferProgress(P1: Integer; P2: Integer; P3: Integer; P4: JString); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJSpeechSynthesizer_a_1 = class(TJavaGenericImport<JSpeechSynthesizer_a_1Class, JSpeechSynthesizer_a_1>) end;

//  JSpeechSynthesizer_a_2Class = interface(JObjectClass)
//  ['{36F056B6-3E58-42A6-9AD5-DB70523DCA6F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechSynthesizer$a$2')]
//  JSpeechSynthesizer_a_2 = interface(JObject)
//  ['{4B006462-D3A2-401E-B85C-1463B7BA6B99}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJSpeechSynthesizer_a_2 = class(TJavaGenericImport<JSpeechSynthesizer_a_2Class, JSpeechSynthesizer_a_2>) end;

//  JSpeechSynthesizer_aClass = interface(JObjectClass)
//  ['{AC33784C-A09A-4FE9-98E0-91AC029A1744}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JSpeechSynthesizer; P2: JSynthesizerListener): JSpeechSynthesizer_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechSynthesizer$a')]
//  JSpeechSynthesizer_a = interface(JObject)
//  ['{AA307F85-4714-4811-AE9F-004E53320A49}']
//    { Property Methods }
//
//    { methods }
//    procedure onSpeakBegin; cdecl;
//    procedure onBufferProgress(P1: Integer; P2: Integer; P3: Integer; P4: JString); cdecl;
//    procedure onSpeakPaused; cdecl;
//    procedure onSpeakResumed; cdecl;
//    procedure onSpeakProgress(P1: Integer; P2: Integer; P3: Integer); cdecl;
//    procedure onCompleted(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJSpeechSynthesizer_a = class(TJavaGenericImport<JSpeechSynthesizer_aClass, JSpeechSynthesizer_a>) end;

  JSpeechSynthesizerClass = interface(JObjectClass)
  ['{BA1D7415-58FD-49C2-BAB1-595C19125DDF}']
    { static Property Methods }

    { static Methods }
    {class} function createSynthesizer(P1: JContext; P2: JInitListener): JSpeechSynthesizer; cdecl;
    {class} function getSynthesizer: JSpeechSynthesizer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/SpeechSynthesizer')]
  JSpeechSynthesizer = interface(JObject)
  ['{4317D9D2-2EC6-4B62-BC76-55F080211E44}']
    { Property Methods }

    { methods }
    function startSpeaking(P1: JString; P2: JSynthesizerListener): Integer; cdecl;
    function synthesizeToUri(P1: JString; P2: JString; P3: JSynthesizerListener): Integer; cdecl;
    procedure pauseSpeaking; cdecl;
    procedure resumeSpeaking; cdecl;
    procedure stopSpeaking; cdecl;
    function isSpeaking: Boolean; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destroy: Boolean; cdecl;

    { Property }
  end;

  TJSpeechSynthesizer = class(TJavaGenericImport<JSpeechSynthesizerClass, JSpeechSynthesizer>) end;

//  JSpeechUnderstander_1Class = interface(JObjectClass)
//  ['{86D602C1-C4CB-4327-80B0-DD1385210596}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechUnderstander$1')]
//  JSpeechUnderstander_1 = interface(JObject)
//  ['{09EFE5C3-FFC2-437B-8DB5-1F803B4045EE}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJSpeechUnderstander_1 = class(TJavaGenericImport<JSpeechUnderstander_1Class, JSpeechUnderstander_1>) end;

//  JSpeechUnderstander_a_1Class = interface(JObjectClass)
//  ['{D66740C4-1A01-4007-8CDB-2A0B294A2BBC}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechUnderstander$a$1')]
//  JSpeechUnderstander_a_1 = interface(JObject)
//  ['{C1251813-3DBD-4428-AFE4-4DDC587DE853}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onResult(P1: JUnderstanderResult); cdecl;
//    procedure onError(P1: Integer); cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJSpeechUnderstander_a_1 = class(TJavaGenericImport<JSpeechUnderstander_a_1Class, JSpeechUnderstander_a_1>) end;

//  JSpeechUnderstander_a_2Class = interface(JObjectClass)
//  ['{D0B67E19-3670-42FB-AE97-05231474DA92}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechUnderstander$a$2')]
//  JSpeechUnderstander_a_2 = interface(JObject)
//  ['{060A1BF1-3FD6-40A0-A63D-784B6402D029}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJSpeechUnderstander_a_2 = class(TJavaGenericImport<JSpeechUnderstander_a_2Class, JSpeechUnderstander_a_2>) end;

//  JSpeechUnderstander_aClass = interface(JObjectClass)
//  ['{97B2DCBD-D081-4690-A287-37D421529720}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JSpeechUnderstander; P2: JSpeechUnderstanderListener): JSpeechUnderstander_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechUnderstander$a')]
//  JSpeechUnderstander_a = interface(JObject)
//  ['{410335DE-79BC-45D6-9EB5-1894339AFE94}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onResult(P1: JUnderstanderResult); cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJSpeechUnderstander_a = class(TJavaGenericImport<JSpeechUnderstander_aClass, JSpeechUnderstander_a>) end;

  JSpeechUnderstanderClass = interface(JObjectClass)
  ['{57FAE2CE-A357-480F-9413-1D0D6BFE7529}']
    { static Property Methods }

    { static Methods }
    {class} function createUnderstander(P1: JContext; P2: JInitListener): JSpeechUnderstander; cdecl;
    {class} function getUnderstander: JSpeechUnderstander; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/SpeechUnderstander')]
  JSpeechUnderstander = interface(JObject)
  ['{E724E441-9F85-42CD-AC54-21A14C5DF2FB}']
    { Property Methods }

    { methods }
    function startUnderstanding(P1: JSpeechUnderstanderListener): Integer; cdecl;
    function isUnderstanding: Boolean; cdecl;
    function writeAudio(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
    procedure stopUnderstanding; cdecl;
    procedure cancel; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destroy: Boolean; cdecl;

    { Property }
  end;

  TJSpeechUnderstander = class(TJavaGenericImport<JSpeechUnderstanderClass, JSpeechUnderstander>) end;

  JSpeechUnderstanderListenerClass = interface(JObjectClass)
  ['{DAF5C351-FB39-4FCB-8DC7-951A73C0B0D1}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/SpeechUnderstanderListener')]
  JSpeechUnderstanderListener = interface(IJavaInstance)
  ['{FC664AF1-8066-4288-92FE-14674CE0B95F}']
    { Property Methods }

    { methods }
    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JUnderstanderResult); cdecl;
    procedure onError(P1: JSpeechError); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJSpeechUnderstanderListener = class(TJavaGenericImport<JSpeechUnderstanderListenerClass, JSpeechUnderstanderListener>) end;

//  JSpeechUtility_1Class = interface(JObjectClass)
//  ['{54918760-C763-44CF-B217-80E85D03B079}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechUtility$1')]
//  JSpeechUtility_1 = interface(JObject)
//  ['{F104E600-7724-43ED-A839-9FE073C837C5}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJSpeechUtility_1 = class(TJavaGenericImport<JSpeechUtility_1Class, JSpeechUtility_1>) end;

//  JSpeechUtility_aClass = interface(JObjectClass)
//  ['{47B92CDA-BEE9-4AF0-839C-E5A7C0336EA8}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/SpeechUtility$a')]
//  JSpeechUtility_a = interface(JObject)
//  ['{6488CC1C-ACEF-4176-8294-3D143F429E96}']
//    { Property Methods }
//
//    { methods }
//    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
//
//    { Property }
//  end;

//  TJSpeechUtility_a = class(TJavaGenericImport<JSpeechUtility_aClass, JSpeechUtility_a>) end;

  JSpeechUtilityClass = interface(JObjectClass)
  ['{9DD2566E-FDD4-4055-8425-50AC7713A018}']
    { static Property Methods }
//    {class} function _GetDEF_ENGINE_MODE: Jv_a;
    {class} function _GetTAG_RESOURCE_CONTENT: JString;
    {class} function _GetTAG_RESOURCE_RET: JString;
    {class} function _GetTAG_RESOURCE_RESULT: JString;

    { static Methods }
    {class} function createUtility(P1: JContext; P2: JString): JSpeechUtility; cdecl;
    {class} function getUtility: JSpeechUtility; cdecl;

    { static Property }
//    {class} property DEF_ENGINE_MODE: Jv_a read _GetDEF_ENGINE_MODE;
    {class} property TAG_RESOURCE_CONTENT: JString read _GetTAG_RESOURCE_CONTENT;
    {class} property TAG_RESOURCE_RET: JString read _GetTAG_RESOURCE_RET;
    {class} property TAG_RESOURCE_RESULT: JString read _GetTAG_RESOURCE_RESULT;
  end;

  [JavaSignature('com/iflytek/cloud/SpeechUtility')]
  JSpeechUtility = interface(JObject)
  ['{B63D9140-939E-405B-8BE4-CD7C91475F12}']
    { Property Methods }

    { methods }
    function destroy: Boolean; cdecl;
    function checkServiceInstalled: Boolean; cdecl;
    function queryAvailableEngines: TJavaObjectArray<JString>; cdecl;
    function openEngineSettings(P1: JString): Integer; cdecl;
    function getComponentUrl: JString; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function getPlusLocalInfo(P1: JString): JString; cdecl;
//    function getEngineMode: Jv_a; cdecl;
    function getServiceVersion: Integer; cdecl;

    { Property }
  end;

  TJSpeechUtility = class(TJavaGenericImport<JSpeechUtilityClass, JSpeechUtility>) end;

  JSynthesizerListenerClass = interface(JObjectClass)
  ['{1DEFAF25-615E-413A-91F3-2F1E438E475E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/SynthesizerListener')]
  JSynthesizerListener = interface(IJavaInstance)
  ['{66190BC9-4A5D-45E7-88CD-98C3B64820F0}']
    { Property Methods }

    { methods }
    procedure onSpeakBegin; cdecl;
    procedure onBufferProgress(P1: Integer; P2: Integer; P3: Integer; P4: JString); cdecl;
    procedure onSpeakPaused; cdecl;
    procedure onSpeakResumed; cdecl;
    procedure onSpeakProgress(P1: Integer; P2: Integer; P3: Integer); cdecl;
    procedure onCompleted(P1: JSpeechError); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJSynthesizerListener = class(TJavaGenericImport<JSynthesizerListenerClass, JSynthesizerListener>) end;

//  JTextUnderstander_1Class = interface(JObjectClass)
//  ['{E0DE461E-F23A-4239-8D9A-EEF2B55E14A9}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/TextUnderstander$1')]
//  JTextUnderstander_1 = interface(JObject)
//  ['{25926263-5A5A-406E-8F51-BDF88DF649B4}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJTextUnderstander_1 = class(TJavaGenericImport<JTextUnderstander_1Class, JTextUnderstander_1>) end;

//  JTextUnderstander_a_1Class = interface(JObjectClass)
//  ['{D0DAE751-6393-42C7-8B81-2ED19D8AE95D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/TextUnderstander$a$1')]
//  JTextUnderstander_a_1 = interface(JObject)
//  ['{4566F817-888A-4A3D-9440-A6F04809FCC4}']
//    { Property Methods }
//
//    { methods }
//    procedure onResult(P1: JUnderstanderResult); cdecl;
//    procedure onError(P1: Integer); cdecl;
//
//    { Property }
//  end;

//  TJTextUnderstander_a_1 = class(TJavaGenericImport<JTextUnderstander_a_1Class, JTextUnderstander_a_1>) end;

//  JTextUnderstander_a_2Class = interface(JObjectClass)
//  ['{C4DAD986-81EB-491F-A99B-A184DD060576}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/TextUnderstander$a$2')]
//  JTextUnderstander_a_2 = interface(JObject)
//  ['{566FD45F-8662-4508-800D-AA52C7AF505A}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJTextUnderstander_a_2 = class(TJavaGenericImport<JTextUnderstander_a_2Class, JTextUnderstander_a_2>) end;

//  JTextUnderstander_aClass = interface(JObjectClass)
//  ['{A41C49DE-3C78-4099-915D-C4A2FC860C3F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JTextUnderstander; P2: JTextUnderstanderListener): JTextUnderstander_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/TextUnderstander$a')]
//  JTextUnderstander_a = interface(JObject)
//  ['{56D64BF5-02FD-47D6-934E-BCC90B6E32A4}']
//    { Property Methods }
//
//    { methods }
//    procedure onResult(P1: JUnderstanderResult); cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//
//    { Property }
//  end;

//  TJTextUnderstander_a = class(TJavaGenericImport<JTextUnderstander_aClass, JTextUnderstander_a>) end;

  JTextUnderstanderClass = interface(JObjectClass)
  ['{ADFA9BB2-215F-420C-BF50-66339E4B2D17}']
    { static Property Methods }

    { static Methods }
    {class} function createTextUnderstander(P1: JContext; P2: JInitListener): JTextUnderstander; cdecl;
    {class} function getTextUnderstander: JTextUnderstander; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/TextUnderstander')]
  JTextUnderstander = interface(JObject)
  ['{EA151A3B-1ACE-4655-BCB8-50A51D75C45C}']
    { Property Methods }

    { methods }
    function understandText(P1: JString; P2: JTextUnderstanderListener): Integer; cdecl;
    function isUnderstanding: Boolean; cdecl;
    procedure cancel; cdecl;
    function setParameter(P1: JString; P2: JString): Boolean; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destroy: Boolean; cdecl;

    { Property }
  end;

  TJTextUnderstander = class(TJavaGenericImport<JTextUnderstanderClass, JTextUnderstander>) end;

  JTextUnderstanderListenerClass = interface(JObjectClass)
  ['{22480090-E11E-4E72-999A-39AA34CF9255}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/TextUnderstanderListener')]
  JTextUnderstanderListener = interface(IJavaInstance)
  ['{7C5A6BFA-0610-4E36-ABA1-3ED26AAD144A}']
    { Property Methods }

    { methods }
    procedure onResult(P1: JUnderstanderResult); cdecl;
    procedure onError(P1: JSpeechError); cdecl;

    { Property }
  end;

  TJTextUnderstanderListener = class(TJavaGenericImport<JTextUnderstanderListenerClass, JTextUnderstanderListener>) end;

//  JAClass = interface(JObjectClass)
//  ['{1A8BC64E-5729-417D-B2B6-39222D0DA898}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/A')]
//  JA = interface(IJavaInstance)
//  ['{4C0C6A46-A4F9-47A3-BD5E-5C69F2AB976E}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JArrayList; P2: Integer; P3: Integer; P4: Integer; P5: JString); cdecl; overload;
//    procedure a(P1: JSpeechError); cdecl; overload;
//
//    { Property }
//  end;

//  TJA = class(TJavaGenericImport<JAClass, JA>) end;

//  JaAClass = interface(JObjectClass)
//  ['{F241742A-4E05-4AD1-924C-9A65E31C2512}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aA')]
//  JaA = interface(JObject)
//  ['{797BE320-C4EB-40A6-A6A2-67310DD8B93E}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: Integer); cdecl;
//
//    { Property }
//  end;

//  TJaA = class(TJavaGenericImport<JaAClass, JaA>) end;

//  Jab_aClass = interface(JObjectClass)
//  ['{71A6D085-D12A-48FF-8548-05C9798F0352}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jab; P2: JSpeechUnderstanderListener): Jab_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ab$a')]
//  Jab_a = interface(JObject)
//  ['{01634CE0-85B8-4D11-959F-A3DB22776706}']
//    { Property Methods }
//
//    { methods }
//    procedure onEndOfSpeech; cdecl;
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
//
//    { Property }
//  end;

//  TJab_a = class(TJavaGenericImport<Jab_aClass, Jab_a>) end;

//  JaBClass = interface(JObjectClass)
//  ['{312CD4EC-DC1B-4DC7-8D6B-78A24CACC640}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aB')]
//  JaB = interface(IJavaInstance)
//  ['{3AB4CE8F-6EE3-43F9-9110-96CAB1063B5F}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JContext); cdecl; overload;
//    procedure a(P1: JContext; P2: JString; P3: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJaB = class(TJavaGenericImport<JaBClass, JaB>) end;

//  Jac_aClass = interface(JObjectClass)
//  ['{2B0BBC05-5E86-4905-BFE2-A256CB053385}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jac; P2: JTextUnderstanderListener): Jac_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ac$a')]
//  Jac_a = interface(JObject)
//  ['{C0207D44-0A1E-44F3-A831-EDD77017CF76}']
//    { Property Methods }
//
//    { methods }
//    procedure onBufferReceived(P1: TJavaArray<Byte>); cdecl;
//    procedure onCompleted(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJac_a = class(TJavaGenericImport<Jac_aClass, Jac_a>) end;

//  JaCClass = interface(JObjectClass)
//  ['{1DCF72F1-2423-4BEF-8E5F-E8A65BF4941D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): JaC; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aC')]
//  JaC = interface(JObject)
//  ['{0058E45C-0030-45D1-850F-D11D2431E4C6}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJaC = class(TJavaGenericImport<JaCClass, JaC>) end;

//  Jad_aClass = interface(JObjectClass)
//  ['{B4A18793-945A-408E-8E0B-CE52673B389F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ad$a')]
//  Jad_a = interface(IJavaInstance)
//  ['{5AEDD8D1-C838-4106-9D51-D3D570EE076B}']
//    { Property Methods }
//
//    { methods }
//    function g: JString; cdecl;
//    function A: JString; cdecl;
//    function B: JString; cdecl;
//
//    { Property }
//  end;

//  TJad_a = class(TJavaGenericImport<Jad_aClass, Jad_a>) end;

//  JaDClass = interface(JObjectClass)
//  ['{EC4BF582-B8B1-412C-A442-7DF093DC90C0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: TJavaArray<Byte>): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aD')]
//  JaD = interface(JObject)
//  ['{96B9CAB4-F385-45F8-A1E0-C211F4A8D317}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJaD = class(TJavaGenericImport<JaDClass, JaD>) end;

//  JaEClass = interface(JObjectClass)
//  ['{3341818B-E50E-4FBB-A682-D0AA6601B221}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: Boolean); cdecl; overload;
//    {class} function a(P1: JString; P2: JString): Integer; cdecl; overload;
//    {class} function a(P1: JString; P2: JString; P3: JThrowable): Integer; cdecl; overload;
//    {class} function b(P1: JString; P2: JString): Integer; cdecl; overload;
//    {class} function b(P1: JString; P2: JString; P3: JThrowable): Integer; cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString); cdecl; overload;
//    {class} function a(P1: Int64): JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aE')]
//  JaE = interface(JObject)
//  ['{963A9452-2CD2-4C23-BE0F-1B4F4BFFEC98}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJaE = class(TJavaGenericImport<JaEClass, JaE>) end;

//  JaFClass = interface(JObjectClass)
//  ['{CB0BA7AA-ABC1-4C1A-99AA-3924A1E0DFE8}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): JaF; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aF')]
//  JaF = interface(JObject)
//  ['{A3C364D7-56E6-4D76-A5CB-0E10DB2399B5}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: Int64); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    function b(P1: JString; P2: Int64): Int64; cdecl; overload;
//    function b(P1: JString; P2: JString): JString; cdecl; overload;
//
//    { Property }
//  end;

//  TJaF = class(TJavaGenericImport<JaFClass, JaF>) end;

//  JaGClass = interface(JObjectClass)
//  ['{A4FB9C29-646E-41E1-A888-546DC5259C07}']
//    { static Property Methods }
//    {class} function _Geta: JExecutorService;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: JExecutorService read _Geta;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aG')]
//  JaG = interface(JObject)
//  ['{F95E5D28-8106-4118-AEAC-DC7498666118}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJaG = class(TJavaGenericImport<JaGClass, JaG>) end;

//  Jah_1Class = interface(JObjectClass)
//  ['{32CCAC17-5D86-4462-9698-6F4408F815A2}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ah$1')]
//  Jah_1 = interface(JObject)
//  ['{432D40BE-7E4B-4A74-8124-9849404FDC12}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//
//    { Property }
//  end;

//  TJah_1 = class(TJavaGenericImport<Jah_1Class, Jah_1>) end;

//  Jah_aClass = interface(JObjectClass)
//  ['{A65E20F4-8281-46C3-955B-4BA1D9EB8BC1}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ah$a')]
//  Jah_a = interface(IJavaInstance)
//  ['{F495F884-6FAD-4C99-AC89-84B2D21930A5}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//
//    { Property }
//  end;

//  TJah_a = class(TJavaGenericImport<Jah_aClass, Jah_a>) end;

//  JaHClass = interface(JObjectClass)
//  ['{D9360F9C-DD04-4EC9-8E96-FF28B5CE563D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aH')]
//  JaH = interface(JObject)
//  ['{2C1E85C2-3205-4137-A3E7-4909EAC97432}']
//    { Property Methods }
//
//    { methods }
//    function newThread(P1: JRunnable): JThread; cdecl;
//
//    { Property }
//  end;

//  TJaH = class(TJavaGenericImport<JaHClass, JaH>) end;

//  JaiClass = interface(JObjectClass)
//  ['{1C22728D-0164-483B-A6FE-311CBA05C137}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jai; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ai')]
//  Jai = interface(JObject)
//  ['{C488F987-477A-412E-B383-0B7A38F6F93B}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jah_a); cdecl;
//    procedure f; cdecl;
//
//    { Property }
//  end;

//  TJai = class(TJavaGenericImport<JaiClass, Jai>) end;

//  JajClass = interface(JObjectClass)
//  ['{EB36A725-36C4-431D-A944-AE3ECC4A0B61}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jaj; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aj')]
//  Jaj = interface(JObject)
//  ['{0980D6F8-ECE1-47D6-B111-E40CCF0CE9BF}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Integer); cdecl;
//    procedure onDraw(P1: JCanvas); cdecl;
//    procedure finalize; cdecl;
//
//    { Property }
//  end;

//  TJaj = class(TJavaGenericImport<JajClass, Jaj>) end;

//  JakClass = interface(JObjectClass)
//  ['{F25D2BB5-EAC5-4733-A4F0-9FD0A3539107}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JString): Jak; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ak')]
//  Jak = interface(JObject)
//  ['{4E544FE3-223C-4D99-92E4-097A5E145156}']
//    { Property Methods }
//
//    { methods }
//    function destroy: Boolean; cdecl;
//    procedure reset; cdecl;
//    function detect(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Boolean): JAudioDetector_DetectorResult; cdecl;
//    procedure setParameter(P1: JString; P2: JString); cdecl;
//
//    { Property }
//  end;

//  TJak = class(TJavaGenericImport<JakClass, Jak>) end;

//  JalClass = interface(JObjectClass)
//  ['{FCFDAFA3-FDB8-40CA-86EB-202A10A22A23}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JString): Jal; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/al')]
//  Jal = interface(JObject)
//  ['{92EA6574-1E7D-42BC-853B-87BE28DBC5AE}']
//    { Property Methods }
//
//    { methods }
//    function destroy: Boolean; cdecl;
//    procedure reset; cdecl;
//    function detect(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Boolean): JAudioDetector_DetectorResult; cdecl;
//    procedure setParameter(P1: JString; P2: JString); cdecl;
//
//    { Property }
//  end;

//  TJal = class(TJavaGenericImport<JalClass, Jal>) end;

//  JamClass = interface(JObjectClass)
//  ['{AE672375-52EE-4193-A4F9-E0261484A735}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: Jat): Jam; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/am')]
//  Jam = interface(JObject)
//  ['{8F58248A-1816-483C-8AF1-73FC198242C6}']
//    { Property Methods }
//
//    { methods }
//    function a: TJavaObjectArray<JString>; cdecl;
//
//    { Property }
//  end;

//  TJam = class(TJavaGenericImport<JamClass, Jam>) end;

//  Jan_1Class = interface(JObjectClass)
//  ['{79038BD0-F24F-42F3-A741-46D46E8D9E6B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/an$1')]
//  Jan_1 = interface(JObject)
//  ['{BB5DA371-D33B-40D7-B9AA-0EB2F86346C7}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJan_1 = class(TJavaGenericImport<Jan_1Class, Jan_1>) end;

//  Jan_aClass = interface(JObjectClass)
//  ['{FE27577E-394E-4E22-A042-5D5FDE4FBB62}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jan; P2: JHandler): Jan_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/an$a')]
//  Jan_a = interface(JObject)
//  ['{1C6482FA-A9E4-48F7-B0E1-A02ADAB4456F}']
//    { Property Methods }
//
//    { methods }
//    procedure onChange(P1: Boolean); cdecl;
//
//    { Property }
//  end;

//  TJan_a = class(TJavaGenericImport<Jan_aClass, Jan_a>) end;

//  JanClass = interface(JObjectClass)
//  ['{D44FA1E3-646B-4B79-9982-A5EC1231BCEE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Jan; cdecl; overload;
//    {class} function a(P1: JContext; P2: JContactManager_ContactListener): Jan; cdecl; overload;
//    {class} procedure c; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/an')]
//  Jan = interface(JObject)
//  ['{E8CA1E2B-5F4C-4B9F-BC11-FAA79C7DD292}']
//    { Property Methods }
//
//    { methods }
//    function queryAllContactsName: JString; cdecl;
//    procedure asyncQueryAllContactsName; cdecl;
//    procedure b; cdecl;
//
//    { Property }
//  end;

//  TJan = class(TJavaGenericImport<JanClass, Jan>) end;

//  JaoClass = interface(JObjectClass)
//  ['{9644B116-4B15-47A5-B80C-D12EED0BD4D3}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString): JString; cdecl; overload;
//    {class} function a(P1: JString; P2: JString; P3: Boolean): Integer; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ao')]
//  Jao = interface(JObject)
//  ['{956060C9-8CB6-45C3-91C3-A8C81688D467}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJao = class(TJavaGenericImport<JaoClass, Jao>) end;

//  JapClass = interface(JObjectClass)
//  ['{D94D562C-9D66-4161-869B-6CDB5BD064C3}']
//    { static Property Methods }
//    {class} function _Geta: TJavaObjectArray<JString>;
//    {class} function _Getb: TJavaObjectArray<JString>;
//    {class} function _Getc: TJavaObjectArray<JString>;
//
//    { static Methods }
//    {class} function a(P1: JString): JString; cdecl; overload;
//    {class} function a(P1: TJavaObjectArray<JString>; P2: Char): JString; cdecl; overload;
//
//    { static Property }
//    {class} property a: TJavaObjectArray<JString> read _Geta;
//    {class} property b: TJavaObjectArray<JString> read _Getb;
//    {class} property c: TJavaObjectArray<JString> read _Getc;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ap')]
//  Jap = interface(JObject)
//  ['{ED039D36-4B6E-4674-86BB-1AD63B6C9A08}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJap = class(TJavaGenericImport<JapClass, Jap>) end;

//  Jaq_1Class = interface(JObjectClass)
//  ['{0CCF449C-FA4E-431E-85B9-9D3E83C41408}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aq$1')]
//  Jaq_1 = interface(JObject)
//  ['{E8EF8D7C-2CD0-425B-BFE6-06FFB7DAD5EA}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JParcel): Jaq; cdecl; overload;
//    function a(P1: Integer): TJavaObjectArray<Jaq>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl;
//    function createFromParcel(P1: JParcel): JObject; cdecl;
//
//    { Property }
//  end;

//  TJaq_1 = class(TJavaGenericImport<Jaq_1Class, Jaq_1>) end;

//  JaqClass = interface(JObjectClass)
//  ['{975BBE0C-8CA5-4D11-A163-5850D745FCBA}']
//    { static Property Methods }
//    {class} function _GetCREATOR: JParcelable_Creator;
//
//    { static Methods }
//    {class} function init: Jaq; cdecl; overload;
//    {class} function init(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString): Jaq; cdecl; overload;
//
//    { static Property }
//    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aq')]
//  Jaq = interface(JObject)
//  ['{CD1FFA4F-B016-45B5-AAEF-69640C36807E}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//    function b: JString; cdecl;
//    function c: JString; cdecl;
//    function describeContents: Integer; cdecl;
//    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;
//
//    { Property }
//  end;

//  TJaq = class(TJavaGenericImport<JaqClass, Jaq>) end;

//  JarClass = interface(JObjectClass)
//  ['{F1B00162-FE8A-4B4D-991B-CFA3C137C684}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jar; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ar')]
//  Jar = interface(JObject)
//  ['{89019EDD-1D90-4AA4-9D58-6A1C61415364}']
//    { Property Methods }
//
//    { methods }
//    function a: Jnet_Uri; cdecl;
//
//    { Property }
//  end;

//  TJar = class(TJavaGenericImport<JarClass, Jar>) end;

//  JasClass = interface(JObjectClass)
//  ['{38EA234E-D04B-444B-8B95-6441EB24AEE9}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jas; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/as')]
//  Jas = interface(JObject)
//  ['{4124BAF2-A9B2-4B0D-8897-AD863B4E727E}']
//    { Property Methods }
//
//    { methods }
//    function a: Jnet_Uri; cdecl;
//
//    { Property }
//  end;

//  TJas = class(TJavaGenericImport<JasClass, Jas>) end;

//  JatClass = interface(JObjectClass)
//  ['{EBDCF235-4072-4DDB-B514-552AF411794A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jat; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/at')]
//  Jat = interface(JObject)
//  ['{CB6B74B2-C68C-4865-BB7E-6B353D6BB8C2}']
//    { Property Methods }
//
//    { methods }
//    function d: JHashMap; cdecl;
//    function e: JList; cdecl;
//    function a: Jnet_Uri; cdecl;
//
//    { Property }
//  end;

//  TJat = class(TJavaGenericImport<JatClass, Jat>) end;

//  JauClass = interface(JObjectClass)
//  ['{1BD10A0D-0E8E-455C-81C5-F9C9239FE450}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: Jav): Jau; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/au')]
//  Jau = interface(JObject)
//  ['{D0CC7965-00A8-4FC9-95EF-16D98C09DF17}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJau = class(TJavaGenericImport<JauClass, Jau>) end;

//  JavClass = interface(JObjectClass)
//  ['{A98D0A9E-7126-462F-830F-EDD69B2D36FB}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/av')]
//  Jav = interface(IJavaInstance)
//  ['{52F7BCEA-688B-48BD-A639-7D70DDA6E558}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: Integer); cdecl;
//
//    { Property }
//  end;

//  TJav = class(TJavaGenericImport<JavClass, Jav>) end;

//  JawClass = interface(JObjectClass)
//  ['{5922CD15-AC6B-4078-84C0-5AD96538AD89}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: JString); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/aw')]
//  Jaw = interface(JObject)
//  ['{9180134C-D0B1-4251-8C05-8FC16B852BA2}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJaw = class(TJavaGenericImport<JawClass, Jaw>) end;

//  JaxClass = interface(JObjectClass)
//  ['{75083630-456A-448E-8F0A-9586C6E4BBF0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jax; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ax')]
//  Jax = interface(JObject)
//  ['{F5C5ACD5-AC54-4CB5-BC8F-A6FC77C8EC06}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure a(P1: Int64); cdecl; overload;
//    function b: Boolean; cdecl;
//    function a(P1: JString): Boolean; cdecl; overload;
//    function c: Int64; cdecl;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJax = class(TJavaGenericImport<JaxClass, Jax>) end;

//  JayClass = interface(JObjectClass)
//  ['{D58BAB78-E2CC-4A63-83C7-64FE123D18CB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JaF): Jay; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/ay')]
//  Jay = interface(JObject)
//  ['{01CFB17B-48A1-4AC8-B370-DA0F2D31E777}']
//    { Property Methods }
//
//    { methods }
//    function a: Int64; cdecl; overload;
//    function b: Int64; cdecl; overload;
//    function c: TJavaObjectArray<JString>; cdecl; overload;
//    function d: Int64; cdecl; overload;
//    function e: Int64; cdecl;
//    function f: JString; cdecl;
//    function g: JString; cdecl;
//    procedure a(P1: Int64); cdecl; overload;
//    procedure b(P1: Int64); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<JString>); cdecl; overload;
//    procedure c(P1: Int64); cdecl; overload;
//    procedure d(P1: Int64); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJay = class(TJavaGenericImport<JayClass, Jay>) end;

//  JazClass = interface(JObjectClass)
//  ['{912C53B5-DE40-4B57-8BF2-1ABB969E4DF3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/az')]
//  Jaz = interface(JObject)
//  ['{29BD0CAA-686A-46F4-AB3F-3F9515085FC6}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJaz = class(TJavaGenericImport<JazClass, Jaz>) end;

//  JB_1Class = interface(JObjectClass)
//  ['{F0434E23-3C15-45A3-A3B9-6BAF3E9ABE2D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/B$1')]
//  JB_1 = interface(JObject)
//  ['{8A2FAD60-45C2-4578-8E47-D2A02FCDCA9C}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JArrayList; P2: Integer; P3: Integer; P4: Integer; P5: JString); cdecl; overload;
//    procedure a(P1: JSpeechError); cdecl; overload;
//
//    { Property }
//  end;

//  TJB_1 = class(TJavaGenericImport<JB_1Class, JB_1>) end;

//  JB_2Class = interface(JObjectClass)
//  ['{45708189-E723-42D8-9C61-20C9EC763517}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/B$2')]
//  JB_2 = interface(JObject)
//  ['{69E0A648-94DA-4B89-998F-20976285447F}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure b; cdecl;
//    procedure a(P1: Integer; P2: Integer; P3: Integer); cdecl; overload;
//    procedure a(P1: JSpeechError); cdecl; overload;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJB_2 = class(TJavaGenericImport<JB_2Class, JB_2>) end;

//  JB_3Class = interface(JObjectClass)
//  ['{AF6765A7-FA0F-48EE-A75A-23F1FFE48EB6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/B$3')]
//  JB_3 = interface(JObject)
//  ['{DFB5A8C1-F7A4-4B24-943A-841ACA538878}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJB_3 = class(TJavaGenericImport<JB_3Class, JB_3>) end;

//  JB_4Class = interface(JObjectClass)
//  ['{72AD5701-53B0-49CC-8387-FD2BF3EC9DEE}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/B$4')]
//  JB_4 = interface(JObject)
//  ['{5BEBABEB-82BC-4991-A0B6-98C6935C2C34}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JSpeechError); cdecl; overload;
//    procedure a(P1: JArrayList; P2: Integer; P3: Integer; P4: Integer; P5: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJB_4 = class(TJavaGenericImport<JB_4Class, JB_4>) end;

//  JB_5Class = interface(JObjectClass)
//  ['{1DE4237A-2B81-4D38-B809-FFB4383E3641}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/B$5')]
//  JB_5 = interface(JObject)
//  ['{580214BD-30C8-4976-8F38-375B155E7328}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJB_5 = class(TJavaGenericImport<JB_5Class, JB_5>) end;

//  JB_aClass = interface(JObjectClass)
//  ['{EBB7AB81-7F6A-484D-AA0D-1EA33F920197}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/B$a')]
//  JB_a = interface(IJavaInstance)
//  ['{EABE7402-CBDB-4A68-966D-8D03C8C94A0D}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//
//    { Property }
//  end;

//  TJB_a = class(TJavaGenericImport<JB_aClass, JB_a>) end;

//  JBClass = interface(JObjectClass)
//  ['{13C8354B-54CF-4479-9D13-F3B9C1247BAE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): JB; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/B')]
//  JB = interface(JObject)
//  ['{510186DD-567F-4119-B560-1F11AFD79F26}']
//    { Property Methods }
//    function _Getg: Boolean;
//    procedure _Setg(ag: Boolean);
//    function _Geth: Boolean;
//    procedure _Seth(ah: Boolean);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JSpeechError;
//    procedure _Setj(aj: JSpeechError);
//
//    { methods }
//    procedure a(P1: JString; P2: JR); cdecl; overload;
//    procedure e; cdecl;
//    procedure a(P1: JB_a); cdecl; overload;
//    function a(P1: JString; P2: JR; P3: JSynthesizerListener; P4: Boolean; P5: JString): Integer; cdecl; overload;
//    procedure a(P1: JSynthesizerListener); cdecl; overload;
//    function f: Integer; cdecl;
//    procedure g; cdecl;
//    function h: Boolean; cdecl;
//    procedure i; cdecl;
//    procedure cancel(P1: Boolean); cdecl;
//    function destroy: Boolean; cdecl;
//    function a(P1: JString; P2: JString; P3: JR; P4: JSynthesizerListener): Integer; cdecl; overload;
//    function d: Boolean; cdecl;
//
//    { Property }
//    property g: Boolean read _Getg write _Setg;
//    property h: Boolean read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JSpeechError read _Getj write _Setj;
//  end;

//  TJB = class(TJavaGenericImport<JBClass, JB>) end;

//  JCClass = interface(JObjectClass)
//  ['{C67FC757-EFAD-4064-8F57-18616FC711A4}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: JC; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/C')]
//  JC = interface(JObject)
//  ['{2EC4AAA3-6082-4E5F-978C-1AD11DDB51C5}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JContext; P2: JString; P3: Js): Integer; cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//    function a: TJavaArray<Byte>; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function c: JString; cdecl; overload;
//    function b(P1: JString): Integer; cdecl; overload;
//    function c(P1: JString): JString; cdecl; overload;
//    function d: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJC = class(TJavaGenericImport<JCClass, JC>) end;

//  JDClass = interface(JObjectClass)
//  ['{216302A2-83F4-4305-8AD0-095361B6DD03}']
//    { static Property Methods }
//    {class} function _Geta: TJavaArray<TJavaObjectArray<JString>>;
//
//    { static Methods }
//    {class} function a(P1: JContext): JR; cdecl; overload;
//    {class} procedure a(P1: JR; P2: JContext); cdecl; overload;
//    {class} function b(P1: JContext): JR; cdecl;
//    {class} function c(P1: JContext): JString; cdecl;
//    {class} function d(P1: JContext): JString; cdecl;
//
//    { static Property }
//    {class} property a: TJavaArray<TJavaObjectArray<JString>> read _Geta;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/D')]
//  JD = interface(JObject)
//  ['{3ABF1204-AFCA-4836-ACA7-10F1077CA588}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJD = class(TJavaGenericImport<JDClass, JD>) end;

//  JEClass = interface(JObjectClass)
//  ['{04285C0D-192A-4EED-B2CC-27C2D2295CFA}']
//    { static Property Methods }
//    {class} function _Geta: JE;
//
//    { static Methods }
//    {class} function a(P1: JContext): JE; cdecl; overload;
//    {class} function b(P1: JContext): Boolean; cdecl;
//
//    { static Property }
//    {class} property a: JE read _Geta;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/E')]
//  JE = interface(JObject)
//  ['{7A049B3D-2919-4B88-8331-8FAFA837D1FA}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: Int64); cdecl; overload;
//    procedure a(P1: JLocation); cdecl; overload;
//    function a(P1: JString): Single; cdecl; overload;
//
//    { Property }
//  end;

//  TJE = class(TJavaGenericImport<JEClass, JE>) end;

//  JFClass = interface(JObjectClass)
//  ['{71FA6285-3B08-4E07-B573-D34C45D4ABFE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: JF; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/F')]
//  JF = interface(JObject)
//  ['{06935792-5917-4C68-8108-77330C5EEF48}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: TJavaArray<Byte>); cdecl; overload;
//    procedure a; cdecl; overload;
//
//    { Property }
//  end;

//  TJF = class(TJavaGenericImport<JFClass, JF>) end;

//  JGClass = interface(JObjectClass)
//  ['{25087C72-263B-4467-9575-ADE94C0A0189}']
//    { static Property Methods }
//    {class} function _Geta: JDisplayMetrics;
//
//    { static Methods }
//    {class} function a(P1: Int64): JString; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//    {class} function a(P1: JString): TJavaArray<Byte>; cdecl; overload;
//    {class} function a(P1: JString; P2: JString): TJavaArray<Byte>; cdecl; overload;
//
//    { static Property }
//    {class} property a: JDisplayMetrics read _Geta;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/G')]
//  JG = interface(JObject)
//  ['{2B61BB1B-2D50-43BF-B2FB-CE896DB8EE28}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJG = class(TJavaGenericImport<JGClass, JG>) end;

//  JHClass = interface(JObjectClass)
//  ['{B59502D1-620F-4083-A663-57FF69EC5A2C}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//    {class} function b(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
//    {class} function c(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
//    {class} function a(P1: JString): JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/H')]
//  JH = interface(JObject)
//  ['{EC641403-23FF-49EB-8BA6-8763F70078EE}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJH = class(TJavaGenericImport<JHClass, JH>) end;

//  JIClass = interface(JObjectClass)
//  ['{50654808-2724-46B1-A4B0-8DA5F00679AD}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): JString; cdecl; overload;
//    {class} procedure a(P1: JString); cdecl; overload;
//    {class} function a(P1: JMemoryFile; P2: Int64; P3: JString): Boolean; cdecl; overload;
//    {class} function a(P1: JConcurrentLinkedQueue; P2: JString): Boolean; cdecl; overload;
//    {class} function a(P1: JString; P2: Integer): Boolean; cdecl; overload;
//    {class} function a(P1: JString; P2: JString; P3: Integer): Boolean; cdecl; overload;
//    {class} procedure b(P1: JString); cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/I')]
//  JI = interface(JObject)
//  ['{BC6830A3-A27E-4A47-9A8B-F9FB43D3AA66}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJI = class(TJavaGenericImport<JIClass, JI>) end;

//  Jj_1Class = interface(JObjectClass)
//  ['{906A5577-1374-4739-8FF4-EDC14F93825C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/j$1')]
//  Jj_1 = interface(JObject)
//  ['{9F33E352-D975-495C-8D7E-AC738BDEEC95}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJj_1 = class(TJavaGenericImport<Jj_1Class, Jj_1>) end;

//  JJClass = interface(JObjectClass)
//  ['{75E9E320-3EC4-49B9-A16F-EB50D3A9D708}']
//    { static Property Methods }
//    {class} function _Geta: Integer;
//    {class} function _Getb: Integer;
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JBoolean; P3: JAudioManager_OnAudioFocusChangeListener): Boolean; cdecl; overload;
//    {class} function b(P1: JContext; P2: JBoolean; P3: JAudioManager_OnAudioFocusChangeListener): Boolean; cdecl;
//    {class} procedure a(P1: JView); cdecl; overload;
//
//    { static Property }
//    {class} property a: Integer read _Geta;
//    {class} property b: Integer read _Getb;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/J')]
//  JJ = interface(JObject)
//  ['{DF8C5D75-7410-4DC3-B0FC-32EEA5E45ABF}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJJ = class(TJavaGenericImport<JJClass, JJ>) end;

//  JKClass = interface(JObjectClass)
//  ['{51A2243E-550D-4461-8F13-996036F5270C}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JAudioManager_OnAudioFocusChangeListener): Boolean; cdecl; overload;
//    {class} function b(P1: JContext; P2: JAudioManager_OnAudioFocusChangeListener): Boolean; cdecl;
//    {class} procedure a(P1: JView); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/K')]
//  JK = interface(JObject)
//  ['{7DC1014B-7BDC-4C10-92E6-2FFE277A477A}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJK = class(TJavaGenericImport<JKClass, JK>) end;

//  JL_aClass = interface(JObjectClass)
//  ['{EA0A26F4-46EE-40F6-8D39-4EEBCCE0AA48}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/L$a')]
//  JL_a = interface(IJavaInstance)
//  ['{43AD6C70-57A1-4D08-9915-6EBBC7030B59}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JL; P2: TJavaArray<Byte>); cdecl; overload;
//    procedure a(P1: JSpeechError); cdecl; overload;
//
//    { Property }
//  end;

//  TJL_a = class(TJavaGenericImport<JL_aClass, JL_a>) end;

//  JLClass = interface(JObjectClass)
//  ['{83FBA0B5-8A12-4398-8853-91E3EDBB15C7}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: JL; cdecl;
//    {class} function a(P1: JString; P2: JString): JURL; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/L')]
//  JL = interface(JObject)
//  ['{6B047D67-9427-44A4-9785-B4F5BBB64A33}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: JString; P2: JString; P3: TJavaArray<Byte>); cdecl; overload;
//    procedure a(P1: JString; P2: JString; P3: TJavaArray<Byte>; P4: JString); cdecl; overload;
//    procedure b(P1: Integer); cdecl; overload;
//    procedure a(P1: JL_a); cdecl; overload;
//    procedure a; cdecl; overload;
//    procedure run; cdecl;
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//    procedure b; cdecl; overload;
//
//    { Property }
//  end;

//  TJL = class(TJavaGenericImport<JLClass, JL>) end;

//  JMClass = interface(JObjectClass)
//  ['{F740DF97-B92F-40BB-A1C4-1E0FE4F0E45F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl; overload;
//    {class} function a(P1: JNetworkInfo): JString; cdecl; overload;
//    {class} function b(P1: JNetworkInfo): JString; cdecl; overload;
//    {class} function b(P1: JContext): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/M')]
//  JM = interface(JObject)
//  ['{5C623770-E80B-416F-BA64-B37BD3841810}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJM = class(TJavaGenericImport<JMClass, JM>) end;

//  JN_1Class = interface(JObjectClass)
//  ['{FB63CD1F-BF88-459B-B1DA-F461D651A000}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/N$1')]
//  JN_1 = interface(JObject)
//  ['{979E158E-2479-4C4F-BF4F-06A9372B2F55}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJN_1 = class(TJavaGenericImport<JN_1Class, JN_1>) end;

//  JN_2Class = interface(JObjectClass)
//  ['{101F5E1D-9CB1-4050-B1DC-18B4B3A48C99}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/N$2')]
//  JN_2 = interface(JObject)
//  ['{B7FD0056-BC55-4083-93E4-8D4C133BDE94}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJN_2 = class(TJavaGenericImport<JN_2Class, JN_2>) end;

//  JN_3Class = interface(JObjectClass)
//  ['{3F2973BD-20B7-495E-BE3D-05302AC6DF8B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/N$3')]
//  JN_3 = interface(JObject)
//  ['{FB55596D-8253-4EEC-9DE1-D82391CCC5FD}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJN_3 = class(TJavaGenericImport<JN_3Class, JN_3>) end;

//  Jn_a_1Class = interface(JObjectClass)
//  ['{7C5817F4-7969-4803-B627-9EBB5EAB0494}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/n$a$1')]
//  Jn_a_1 = interface(JObject)
//  ['{15DC0400-1A18-411F-9B7B-008EA4CA6327}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJn_a_1 = class(TJavaGenericImport<Jn_a_1Class, Jn_a_1>) end;

//  Jn_aClass = interface(JObjectClass)
//  ['{3A6C2FD4-52CE-4C43-9433-535182D3B0DF}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JSpeechListener): Jn_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/n$a')]
//  Jn_a = interface(JObject)
//  ['{75EA6DB2-113E-4E6D-A209-5F2814D8AFC3}']
//    { Property Methods }
//
//    { methods }
//    procedure onEvent(P1: Integer; P2: JBundle); cdecl;
//    procedure onBufferReceived(P1: TJavaArray<Byte>); cdecl;
//    procedure onCompleted(P1: JSpeechError); cdecl;
//
//    { Property }
//  end;

//  TJn_a = class(TJavaGenericImport<Jn_aClass, Jn_a>) end;

//  JNClass = interface(JObjectClass)
//  ['{D8A62D04-E7A3-4E1F-BE94-98659C8EA790}']
//    { static Property Methods }
//    {class} function _Geta: Boolean;
//
//    { static Methods }
//    {class} function a(P1: JContext): JString; cdecl;
//
//    { static Property }
//    {class} property a: Boolean read _Geta;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/N')]
//  JN = interface(JObject)
//  ['{9FE76AED-F873-448C-9ABA-6147B296B53F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJN = class(TJavaGenericImport<JNClass, JN>) end;

//  Jo_1Class = interface(JObjectClass)
//  ['{B1A446EE-31E0-4FB6-8B4D-9962F49D6165}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/o$1')]
//  Jo_1 = interface(JObject)
//  ['{97852CD4-5A60-4B5E-921F-72FCD61F6925}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJo_1 = class(TJavaGenericImport<Jo_1Class, Jo_1>) end;

//  JO_aClass = interface(JObjectClass)
//  ['{182F3E81-8D85-402C-98C8-842E381DA46A}']
//    { static Property Methods }
//    {class} function _Geta: JO_a;
//    {class} function _Getb: JO_a;
//    {class} function _Getc: JO_a;
//    {class} function _Getd: JO_a;
//    {class} function _Gete: JO_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<JO_a>; cdecl;
//    {class} function valueOf(P1: JString): JO_a; cdecl;
//
//    { static Property }
//    {class} property a: JO_a read _Geta;
//    {class} property b: JO_a read _Getb;
//    {class} property c: JO_a read _Getc;
//    {class} property d: JO_a read _Getd;
//    {class} property e: JO_a read _Gete;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/O$a')]
//  JO_a = interface(JObject)
//  ['{07400793-DFC6-484A-845C-C9828E8F9BF4}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJO_a = class(TJavaGenericImport<JO_aClass, JO_a>) end;

//  JOClass = interface(JObjectClass)
//  ['{F0E38D39-839C-45C0-BA07-D87590B16D14}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JString; P2: JString); cdecl; overload;
//    {class} procedure a(P1: JString); cdecl; overload;
//    {class} procedure b(P1: JString; P2: JString); cdecl; overload;
//    {class} procedure b(P1: JString); cdecl; overload;
//    {class} procedure c(P1: JString); cdecl; overload;
//    {class} procedure c(P1: JString; P2: JString); cdecl; overload;
//    {class} procedure a(P1: JThrowable); cdecl; overload;
//    {class} procedure d(P1: JString); cdecl; overload;
//    {class} procedure d(P1: JString; P2: JString); cdecl; overload;
//    {class} procedure b(P1: JThrowable); cdecl; overload;
//    {class} function a: Boolean; cdecl; overload;
//    {class} procedure a(P1: Boolean); cdecl; overload;
//    {class} function b: JO_a; cdecl; overload;
//    {class} procedure a(P1: JO_a); cdecl; overload;
//    {class} procedure c; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/O')]
//  JO = interface(JObject)
//  ['{69B6F543-64E3-4D09-A24E-06F65FB5D892}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJO = class(TJavaGenericImport<JOClass, JO>) end;

//  JPClass = interface(JObjectClass)
//  ['{42569E76-8ECF-4B29-9C11-15703734669B}']
//    { static Property Methods }
//    {class} function _Geta: JLinkedHashMap;
//
//    { static Methods }
//    {class} procedure a(P1: JString; P2: JString); cdecl;
//
//    { static Property }
//    {class} property a: JLinkedHashMap read _Geta;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/P')]
//  JP = interface(JObject)
//  ['{D6418C96-CEFD-4663-80AF-9A21837BF282}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJP = class(TJavaGenericImport<JPClass, JP>) end;

//  JQ_1Class = interface(JObjectClass)
//  ['{E149BF59-229A-4CAF-964E-9F44C0B49F35}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Q$1')]
//  JQ_1 = interface(JObject)
//  ['{32C8A082-5F81-43A5-A924-712FC37326EE}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJQ_1 = class(TJavaGenericImport<JQ_1Class, JQ_1>) end;

//  JQ_2Class = interface(JObjectClass)
//  ['{105B0FF6-5F1B-41FC-944A-605B887ED81E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Q$2')]
//  JQ_2 = interface(JObject)
//  ['{E9FD746F-6BB4-4C3A-AD69-A1521B2F406C}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJQ_2 = class(TJavaGenericImport<JQ_2Class, JQ_2>) end;

//  JQ_3Class = interface(JObjectClass)
//  ['{03B2B77C-B6D1-4C97-BEE3-3ACAAC7AD643}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Q$3')]
//  JQ_3 = interface(JObject)
//  ['{F0821D6F-C660-4521-8F99-96ACB9C9C0CE}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JL; P2: TJavaArray<Byte>); cdecl; overload;
//    procedure a(P1: JSpeechError); cdecl; overload;
//
//    { Property }
//  end;

//  TJQ_3 = class(TJavaGenericImport<JQ_3Class, JQ_3>) end;

//  JQ_4Class = interface(JObjectClass)
//  ['{167A63D3-A99F-4451-8161-6650E4F7627D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Q$4')]
//  JQ_4 = interface(JObject)
//  ['{0EB06898-3DD1-49D9-86FA-C0BDAE866C2B}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JL; P2: TJavaArray<Byte>); cdecl; overload;
//    procedure a(P1: JSpeechError); cdecl; overload;
//
//    { Property }
//  end;

//  TJQ_4 = class(TJavaGenericImport<JQ_4Class, JQ_4>) end;

//  JQClass = interface(JObjectClass)
//  ['{8F345C0F-614B-446F-97A4-5A775D62405C}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): JQ; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Q')]
//  JQ = interface(JObject)
//  ['{C5237AF8-C0FB-439F-B27C-0BE1F99ED105}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure b; cdecl;
//
//    { Property }
//  end;

//  TJQ = class(TJavaGenericImport<JQClass, JQ>) end;

//  JRClass = interface(JObjectClass)
//  ['{AADC8904-D832-4A33-863D-2688DC663EC4}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: JR; cdecl; overload;
//    {class} function init(P1: JString; P2: TJavaObjectArray<JString>): JR; cdecl; overload;
//    {class} function f(P1: JString): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/R')]
//  JR = interface(JObject)
//  ['{3D388FEC-8173-4BEF-8F36-4760171FAF41}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    procedure b(P1: JString); cdecl; overload;
//    function b: JR; cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure a(P1: JR; P2: JString); cdecl; overload;
//    function c: JHashMap; cdecl; overload;
//    procedure a(P1: JR); cdecl; overload;
//    procedure a(P1: JString; P2: JString; P3: Boolean); cdecl; overload;
//    function c(P1: JString): JBoolean; cdecl; overload;
//    function d(P1: JString): JString; cdecl; overload;
//    function toString: JString; cdecl;
//    function e(P1: JString): JString; cdecl;
//    function b(P1: JString; P2: JString): JString; cdecl; overload;
//    function a(P1: JString; P2: Integer): Integer; cdecl; overload;
//    function a(P1: JString; P2: Boolean): Boolean; cdecl; overload;
//    procedure a(P1: TJavaObjectArray<JString>); cdecl; overload;
//    procedure d; cdecl; overload;
//    function g(P1: JString): Boolean; cdecl;
//    function clone: JObject; cdecl;
//
//    { Property }
//  end;

//  TJR = class(TJavaGenericImport<JRClass, JR>) end;

//  Js_aClass = interface(JObjectClass)
//  ['{27F8EE7A-BE6B-4BF8-B5DA-5C427F0FDA88}']
//    { static Property Methods }
//    {class} function _Geta: Js_a;
//    {class} function _Getb: Js_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Js_a>; cdecl;
//    {class} function valueOf(P1: JString): Js_a; cdecl;
//
//    { static Property }
//    {class} property a: Js_a read _Geta;
//    {class} property b: Js_a read _Getb;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/s$a')]
//  Js_a = interface(JObject)
//  ['{FA7969FC-3979-4737-AD86-74A33DBBDED6}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJs_a = class(TJavaGenericImport<Js_aClass, Js_a>) end;

//  Js_bClass = interface(JObjectClass)
//  ['{70D65242-C874-41FA-A39D-86831743E4B4}']
//    { static Property Methods }
//    {class} function _Geta: Js_b;
//    {class} function _Getb: Js_b;
//    {class} function _Getc: Js_b;
//    {class} function _Getd: Js_b;
//    {class} function _Gete: Js_b;
//    {class} function _Getf: Js_b;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Js_b>; cdecl;
//    {class} function valueOf(P1: JString): Js_b; cdecl;
//
//    { static Property }
//    {class} property a: Js_b read _Geta;
//    {class} property b: Js_b read _Getb;
//    {class} property c: Js_b read _Getc;
//    {class} property d: Js_b read _Getd;
//    {class} property e: Js_b read _Gete;
//    {class} property f: Js_b read _Getf;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/s$b')]
//  Js_b = interface(JObject)
//  ['{3F8D58EF-9E41-46F6-A4D0-09B3F9DA0D0F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJs_b = class(TJavaGenericImport<Js_bClass, Js_b>) end;

//  JSClass = interface(JObjectClass)
//  ['{D699BE62-2804-4BFF-BB24-61380A7080A2}']
//    { static Property Methods }
//    {class} function _Geta: JString;
//    {class} function _Getb: JString;
//    {class} function _Getc: TJavaArray<TJavaObjectArray<JString>>;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: JString read _Geta;
//    {class} property b: JString read _Getb;
//    {class} property c: TJavaArray<TJavaObjectArray<JString>> read _Getc;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/S')]
//  JS = interface(JObject)
//  ['{FCC89873-6BDD-4600-9003-8728968F3A17}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJS = class(TJavaGenericImport<JSClass, JS>) end;

//  Jt_aClass = interface(JObjectClass)
//  ['{A6470579-2AE2-4E9B-849D-85B4F85AC0CB}']
//    { static Property Methods }
//    {class} function _Geta: Jt_a;
//    {class} function _Getb: Jt_a;
//    {class} function _Getc: Jt_a;
//    {class} function _Getd: Jt_a;
//    {class} function _Gete: Jt_a;
//    {class} function _Getf: Jt_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jt_a>; cdecl;
//    {class} function valueOf(P1: JString): Jt_a; cdecl;
//
//    { static Property }
//    {class} property a: Jt_a read _Geta;
//    {class} property b: Jt_a read _Getb;
//    {class} property c: Jt_a read _Getc;
//    {class} property d: Jt_a read _Getd;
//    {class} property e: Jt_a read _Gete;
//    {class} property f: Jt_a read _Getf;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/t$a')]
//  Jt_a = interface(JObject)
//  ['{6ED32249-EB30-45A1-A8DC-6B9345D61AA5}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJt_a = class(TJavaGenericImport<Jt_aClass, Jt_a>) end;

//  JTClass = interface(JObjectClass)
//  ['{499C16C4-F420-4492-A001-8DD812A56C86}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: Js): JString; cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JR); cdecl; overload;
//    {class} procedure b(P1: JContext; P2: JR); cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: Js): JString; cdecl; overload;
//    {class} function b(P1: JContext; P2: Js): JString; cdecl; overload;
//    {class} function c(P1: JContext; P2: JR): JString; cdecl; overload;
//    {class} function b(P1: JContext; P2: JString; P3: Js): JString; cdecl; overload;
//    {class} function c(P1: JContext; P2: Js): JString; cdecl; overload;
//    {class} function d(P1: JContext; P2: Js): JString; cdecl;
//    {class} function e(P1: JContext; P2: Js): JString; cdecl;
//    {class} function a(P1: JContext): JString; cdecl; overload;
//    {class} function a: JString; cdecl; overload;
//    {class} function a(P1: JString): Boolean; cdecl; overload;
//    {class} function a(P1: Js): Integer; cdecl; overload;
//    {class} function b(P1: Js): Integer; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/T')]
//  JT = interface(JObject)
//  ['{24CC72AF-8517-45BD-8EF1-73C8FCF83B67}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJT = class(TJavaGenericImport<JTClass, JT>) end;

//  JUClass = interface(JObjectClass)
//  ['{8AB0C716-26F7-4C9E-BBB1-3D029EFE21F2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JString): JU; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/U')]
//  JU = interface(JObject)
//  ['{6CFA5531-4EAE-48AD-94AE-B34BDEF3BD58}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JBitmap): JString; cdecl; overload;
//    function b(P1: JBitmap): JString; cdecl;
//    function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Integer; P5: Integer): JString; cdecl; overload;
//    procedure a; cdecl; overload;
//
//    { Property }
//  end;

//  TJU = class(TJavaGenericImport<JUClass, JU>) end;

//  JV_1Class = interface(JObjectClass)
//  ['{EB284B9E-3626-45E7-9D36-3C84514C226E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/V$1')]
//  JV_1 = interface(JObject)
//  ['{59AE541E-59B1-4394-A749-92FBD515B616}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JSpeechError); cdecl; overload;
//    procedure a(P1: JL; P2: TJavaArray<Byte>); cdecl; overload;
//
//    { Property }
//  end;

//  TJV_1 = class(TJavaGenericImport<JV_1Class, JV_1>) end;

//  Jv_aClass = interface(JObjectClass)
//  ['{228F4F21-E787-4302-B286-E5D4252DCA20}']
//    { static Property Methods }
//    {class} function _Geta: Jv_a;
//    {class} function _Getb: Jv_a;
//    {class} function _Getc: Jv_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jv_a>; cdecl;
//    {class} function valueOf(P1: JString): Jv_a; cdecl;
//
//    { static Property }
//    {class} property a: Jv_a read _Geta;
//    {class} property b: Jv_a read _Getb;
//    {class} property c: Jv_a read _Getc;
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/v$a')]
//  Jv_a = interface(JObject)
//  ['{738C457D-5D48-4749-969A-3E39EF806CA5}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJv_a = class(TJavaGenericImport<Jv_aClass, Jv_a>) end;

//  JVClass = interface(JObjectClass)
//  ['{E37C2670-139C-4540-8721-A54DA61B29FC}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JR): JV; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/V')]
//  JV = interface(JObject)
//  ['{EBC1E640-7AD2-4747-A57B-C7EF8FE00482}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: TJavaArray<Byte>; P2: JRequestListener): Integer; cdecl; overload;
//    procedure a; cdecl; overload;
//    function destroy: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJV = class(TJavaGenericImport<JVClass, JV>) end;

//  JW_a_1Class = interface(JObjectClass)
//  ['{44949849-3F2F-4EE1-96CF-FF6D35D42B2C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/W$a$1')]
//  JW_a_1 = interface(JObject)
//  ['{65B5F451-6DBC-40D9-9AE6-9441FD268C3C}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJW_a_1 = class(TJavaGenericImport<JW_a_1Class, JW_a_1>) end;

//  JW_aClass = interface(JObjectClass)
//  ['{D516BC90-3B7D-4128-A878-4740160E2E77}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JW; P2: JIdentityListener): JW_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/W$a')]
//  JW_a = interface(JObject)
//  ['{5A7EF191-F0A6-44C2-95D6-56A364AC3F96}']
//    { Property Methods }
//
//    { methods }
//    procedure onResult(P1: JIdentityResult; P2: Boolean); cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJW_a = class(TJavaGenericImport<JW_aClass, JW_a>) end;

//  JWClass = interface(JObjectClass)
//  ['{17631C80-8E91-4EDB-BA75-6304A804762E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): JW; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/W')]
//  JW = interface(JObject)
//  ['{15AAD9BD-ACAF-48C3-B9F6-95400D3CB22A}']
//    { Property Methods }
//
//    { methods }
//    procedure b(P1: JString); cdecl;
//    function a(P1: JIdentityListener): Integer; cdecl; overload;
//    function a(P1: JString; P2: JString; P3: TJavaArray<Byte>; P4: Integer; P5: Integer): Integer; cdecl; overload;
//    procedure c(P1: JString); cdecl;
//    function a(P1: JString; P2: JString; P3: JString; P4: JIdentityListener): Integer; cdecl; overload;
//    procedure cancel(P1: Boolean); cdecl;
//    function e: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJW = class(TJavaGenericImport<JWClass, JW>) end;

//  JX_a_1Class = interface(JObjectClass)
//  ['{A98B85F7-6FA6-430F-B199-3062219F5C1E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/X$a$1')]
//  JX_a_1 = interface(JObject)
//  ['{7286D182-5066-40AE-ABAF-A2E2AA9287C8}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJX_a_1 = class(TJavaGenericImport<JX_a_1Class, JX_a_1>) end;

//  JX_aClass = interface(JObjectClass)
//  ['{83EE2EBB-BA62-4AF9-A107-5165257B5DDB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JX; P2: JVerifierListener): JX_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/X$a')]
//  JX_a = interface(JObject)
//  ['{89B0B649-FF18-4B53-B726-6F71567E86B9}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onResult(P1: JVerifierResult); cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJX_a = class(TJavaGenericImport<JX_aClass, JX_a>) end;

//  JXClass = interface(JObjectClass)
//  ['{68803824-0E29-49E5-9929-E8844BD7C22A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): JX; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/X')]
//  JX = interface(JObject)
//  ['{55EB4F10-C251-4525-B2B3-58C447123E14}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JVerifierListener): Integer; cdecl; overload;
//    procedure e; cdecl;
//    procedure a(P1: JSpeechListener); cdecl; overload;
//    function a(P1: Integer): JString; cdecl; overload;
//    function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl; overload;
//    function f: Boolean; cdecl;
//    function a(P1: JString; P2: JString; P3: JSpeechListener): Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJX = class(TJavaGenericImport<JXClass, JX>) end;

//  JY_a_1Class = interface(JObjectClass)
//  ['{C6D2B9F1-076E-4D85-A02E-C2A152FFC6F0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Y$a$1')]
//  JY_a_1 = interface(JObject)
//  ['{9B3CE4F7-51F9-48D4-9EB2-EEFB00BB4C40}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJY_a_1 = class(TJavaGenericImport<JY_a_1Class, JY_a_1>) end;

//  JY_aClass = interface(JObjectClass)
//  ['{464142DB-C5DC-4998-ACEE-53599921A5EE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JY; P2: JEvaluatorListener): JY_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Y$a')]
//  JY_a = interface(JObject)
//  ['{657C4EC8-9F2A-4537-B06E-7ECB5D47E7FE}']
//    { Property Methods }
//
//    { methods }
//    procedure onEndOfSpeech; cdecl;
//    procedure onResult(P1: JEvaluatorResult; P2: Boolean); cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJY_a = class(TJavaGenericImport<JY_aClass, JY_a>) end;

//  JYClass = interface(JObjectClass)
//  ['{E445D342-5032-4148-81E8-2FCC91C2319B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): JY; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Y')]
//  JY = interface(JObject)
//  ['{B6C157CC-F86B-41D3-A266-3087D9C3A264}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JString; P2: JString; P3: JEvaluatorListener): Integer; cdecl; overload;
//    function a(P1: TJavaArray<Byte>; P2: JString; P3: JEvaluatorListener): Integer; cdecl; overload;
//    function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Boolean; cdecl; overload;
//    procedure e; cdecl;
//    procedure cancel(P1: Boolean); cdecl;
//    function g: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJY = class(TJavaGenericImport<JYClass, JY>) end;

//  JZ_a_1Class = interface(JObjectClass)
//  ['{208573BA-2278-48FD-B7A5-413A94FC1B85}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Z$a$1')]
//  JZ_a_1 = interface(JObject)
//  ['{AA02394A-B6A4-4CB1-8001-BEE8C72CBCBA}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJZ_a_1 = class(TJavaGenericImport<JZ_a_1Class, JZ_a_1>) end;

//  JZ_aClass = interface(JObjectClass)
//  ['{B8177E31-FA88-47FB-A00B-C58362B25DAB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JZ; P2: JGrammarListener): JZ_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Z$a')]
//  JZ_a = interface(JObject)
//  ['{288B6094-4C6A-418F-9227-ADE72307C54B}']
//    { Property Methods }
//
//    { methods }
//    procedure onBuildFinish(P1: JString; P2: JSpeechError); cdecl;
//
//    { Property }
//  end;

//  TJZ_a = class(TJavaGenericImport<JZ_aClass, JZ_a>) end;

//  JZ_b_1Class = interface(JObjectClass)
//  ['{B5DC97C6-9756-4941-BD29-BD2C07BBB200}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Z$b$1')]
//  JZ_b_1 = interface(JObject)
//  ['{6280A254-C972-4CA5-981E-039703483347}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJZ_b_1 = class(TJavaGenericImport<JZ_b_1Class, JZ_b_1>) end;

//  JZ_bClass = interface(JObjectClass)
//  ['{A58F1645-1A95-4236-9B31-6A50DB4E93CD}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JZ; P2: JLexiconListener): JZ_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Z$b')]
//  JZ_b = interface(JObject)
//  ['{2A9E89BE-5A36-4E75-A39C-6D662541BDA2}']
//    { Property Methods }
//
//    { methods }
//    procedure onLexiconUpdated(P1: JString; P2: JSpeechError); cdecl;
//
//    { Property }
//  end;

//  TJZ_b = class(TJavaGenericImport<JZ_bClass, JZ_b>) end;

//  JZ_c_1Class = interface(JObjectClass)
//  ['{D9F56ADD-E1FB-4F71-829C-6F398AF08F87}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Z$c$1')]
//  JZ_c_1 = interface(JObject)
//  ['{B47CFB4C-58BD-4F6F-87C1-DDE26878D5BB}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJZ_c_1 = class(TJavaGenericImport<JZ_c_1Class, JZ_c_1>) end;

//  JZ_cClass = interface(JObjectClass)
//  ['{2692F596-C440-49C9-BEAC-64EEE4B52F26}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JZ; P2: JRecognizerListener): JZ_c; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Z$c')]
//  JZ_c = interface(JObject)
//  ['{4B476478-A215-4D37-B30F-453D7C352C03}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJZ_c = class(TJavaGenericImport<JZ_cClass, JZ_c>) end;

//  JZClass = interface(JObjectClass)
//  ['{91AF398A-E337-49A1-83AC-90E9C2698964}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): JZ; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/thirdparty/Z')]
//  JZ = interface(JObject)
//  ['{3C20BCA1-7274-4E71-9D33-2B063F9E9ADA}']
//    { Property Methods }
//
//    { methods }
//    procedure b(P1: JString); cdecl;
//    function a(P1: JRecognizerListener): Integer; cdecl; overload;
//    function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl; overload;
//    procedure e; cdecl;
//    procedure cancel(P1: Boolean); cdecl;
//    function g: Boolean; cdecl;
//    function a(P1: JString; P2: JString; P3: JGrammarListener): Integer; cdecl; overload;
//    function a(P1: JString; P2: JString; P3: JLexiconListener): Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJZ = class(TJavaGenericImport<JZClass, JZ>) end;

//  Ja_1Class = interface(JObjectClass)
//  ['{79D6FFDA-6CAF-4AAB-8227-DC75247558DB}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/ui/a$1')]
//  Ja_1 = interface(JObject)
//  ['{BC776901-96D4-4B0D-8B92-BD652F3EB3C3}']
//    { Property Methods }
//
//    { methods }
//    procedure onBeginOfSpeech; cdecl;
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
//    procedure onError(P1: JSpeechError); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;

//  TJa_1 = class(TJavaGenericImport<Ja_1Class, Ja_1>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{5522EA81-FB3F-4245-AF57-09D438F231B2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Ja; P2: JString): Ja_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/ui/a$a')]
//  Ja_a = interface(JObject)
//  ['{1D45196E-4E4F-4B55-9C44-0B39F4190D9C}']
//    { Property Methods }
//
//    { methods }
//    procedure onClick(P1: JView); cdecl;
//    procedure updateDrawState(P1: JTextPaint); cdecl;
//
//    { Property }
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{E1120A50-733E-42FB-A919-DDAE7053012E}']
//    { static Property Methods }
//    {class} function _Geta: Integer;
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JInitListener): Ja; cdecl;
//
//    { static Property }
//    {class} property a: Integer read _Geta;
//  end;

//  [JavaSignature('com/iflytek/cloud/ui/a')]
//  Ja = interface(JObject)
//  ['{D7CE625D-9931-44FC-9098-5EED5878EDB5}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure a(P1: JRecognizerDialogListener); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure a(P1: JTextView; P2: JSpeechError); cdecl; overload;
//    procedure onClick(P1: JView); cdecl;
//    procedure b; cdecl;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

  JRecognizerDialogClass = interface(JObjectClass)
  ['{480EC504-2F7A-4DCB-B064-6260743511A2}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext; P2: JInitListener): JRecognizerDialog; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/ui/RecognizerDialog')]
  JRecognizerDialog = interface(JObject)
  ['{45E791F7-6A75-4E09-884F-143CC13C9554}']
    { Property Methods }

    { methods }
    procedure setListener(P1: JRecognizerDialogListener); cdecl;
    procedure setParameter(P1: JString; P2: JString); cdecl;
    procedure setUILanguage(P1: JLocale); cdecl;
    procedure show; cdecl;
    procedure dismiss; cdecl;

    { Property }
  end;

  TJRecognizerDialog = class(TJavaGenericImport<JRecognizerDialogClass, JRecognizerDialog>) end;

  JRecognizerDialogListenerClass = interface(JObjectClass)
  ['{9CD6E4B1-7349-4C34-AB3C-E4126970065F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/ui/RecognizerDialogListener')]
  JRecognizerDialogListener = interface(IJavaInstance)
  ['{7BBDFC1E-AF6F-4CD2-8831-5A61CE84C69C}']
    { Property Methods }

    { methods }
    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
    procedure onError(P1: JSpeechError); cdecl;

    { Property }
  end;

  TJRecognizerDialogListener = class(TJavaGenericImport<JRecognizerDialogListenerClass, JRecognizerDialogListener>) end;

//  JUnderstanderResult_1Class = interface(JObjectClass)
//  ['{059F85A9-56FC-447C-82C2-EAA4030962F5}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/UnderstanderResult$1')]
//  JUnderstanderResult_1 = interface(JObject)
//  ['{52319512-F58D-48A1-94D4-69CC0ED8B668}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JParcel): JUnderstanderResult; cdecl; overload;
//    function a(P1: Integer): TJavaObjectArray<JUnderstanderResult>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl;
//    function createFromParcel(P1: JParcel): JObject; cdecl;
//
//    { Property }
//  end;

//  TJUnderstanderResult_1 = class(TJavaGenericImport<JUnderstanderResult_1Class, JUnderstanderResult_1>) end;

  JUnderstanderResultClass = interface(JObjectClass)
  ['{174C6920-3674-48F0-8883-DFC4C83371A4}']
    { static Property Methods }
    {class} function _GetCREATOR: JParcelable_Creator;

    { static Methods }
    {class} function init(P1: JParcel): JUnderstanderResult; cdecl; overload;
    {class} function init(P1: JString): JUnderstanderResult; cdecl; overload;

    { static Property }
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/iflytek/cloud/UnderstanderResult')]
  JUnderstanderResult = interface(JObject)
  ['{3F289E2F-DAE9-4AA4-BADA-261F81F1D637}']
    { Property Methods }

    { methods }
    function getResultString: JString; cdecl;
    function describeContents: Integer; cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;

    { Property }
  end;

  TJUnderstanderResult = class(TJavaGenericImport<JUnderstanderResultClass, JUnderstanderResult>) end;

//  JAccelerometer_1Class = interface(JObjectClass)
//  ['{C06A1925-8E16-4071-807B-2C3F7449F853}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/cloud/util/Accelerometer$1')]
//  JAccelerometer_1 = interface(JObject)
//  ['{11DF68A3-12B7-4F2C-982E-B968A5F08662}']
//    { Property Methods }
//
//    { methods }
//    procedure onAccuracyChanged(P1: JSensor; P2: Integer); cdecl;
//    procedure onSensorChanged(P1: JSensorEvent); cdecl;
//
//    { Property }
//  end;

//  TJAccelerometer_1 = class(TJavaGenericImport<JAccelerometer_1Class, JAccelerometer_1>) end;

  JAccelerometer_CLOCKWISE_ANGLEClass = interface(JObjectClass)
  ['{21EB866B-B3C5-46EA-820F-16E86AEDB0DC}']
    { static Property Methods }
    {class} function _GetDeg0: JAccelerometer_CLOCKWISE_ANGLE;
    {class} function _GetDeg90: JAccelerometer_CLOCKWISE_ANGLE;
    {class} function _GetDeg180: JAccelerometer_CLOCKWISE_ANGLE;
    {class} function _GetDeg270: JAccelerometer_CLOCKWISE_ANGLE;

    { static Methods }
    {class} function values: TJavaObjectArray<JAccelerometer_CLOCKWISE_ANGLE>; cdecl;
    {class} function valueOf(P1: JString): JAccelerometer_CLOCKWISE_ANGLE; cdecl;

    { static Property }
    {class} property Deg0: JAccelerometer_CLOCKWISE_ANGLE read _GetDeg0;
    {class} property Deg90: JAccelerometer_CLOCKWISE_ANGLE read _GetDeg90;
    {class} property Deg180: JAccelerometer_CLOCKWISE_ANGLE read _GetDeg180;
    {class} property Deg270: JAccelerometer_CLOCKWISE_ANGLE read _GetDeg270;
  end;

  [JavaSignature('com/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE')]
  JAccelerometer_CLOCKWISE_ANGLE = interface(JObject)
  ['{C7619E9C-3943-49DD-8941-3B6FCEE71E56}']
    { Property Methods }

    { methods }
    function getValue: Integer; cdecl;

    { Property }
  end;

  TJAccelerometer_CLOCKWISE_ANGLE = class(TJavaGenericImport<JAccelerometer_CLOCKWISE_ANGLEClass, JAccelerometer_CLOCKWISE_ANGLE>) end;

  JAccelerometerClass = interface(JObjectClass)
  ['{4D3C09D2-4D88-4A99-B0FC-98EBFC681A94}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext): JAccelerometer; cdecl;
    {class} function getDirection: Integer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/util/Accelerometer')]
  JAccelerometer = interface(JObject)
  ['{C57D1361-6C36-4F24-AC5E-06961676D0F5}']
    { Property Methods }

    { methods }
    procedure start; cdecl;
    procedure stop; cdecl;

    { Property }
  end;

  TJAccelerometer = class(TJavaGenericImport<JAccelerometerClass, JAccelerometer>) end;

  JAudioDetector_DetectorResultClass = interface(JObjectClass)
  ['{DE93A67A-7CDF-4AD7-8320-B5475E3F1E36}']
    { static Property Methods }
    {class} function _GetSTATUS_OK: Integer;
    {class} function _GetSTATUS_START: Integer;
    {class} function _GetSTATUS_EOS: Integer;
    {class} function _GetSTATUS_BOS: Integer;
    {class} function _GetSTATUS_TIMEOUT: Integer;
    {class} function _GetSUB_OK: Integer;
    {class} function _GetSUB_START: Integer;
    {class} function _GetSUB_END: Integer;
    {class} function _GetSUB_STARTEND: Integer;

    { static Methods }
    {class} function init: JAudioDetector_DetectorResult; cdecl;

    { static Property }
    {class} property STATUS_OK: Integer read _GetSTATUS_OK;
    {class} property STATUS_START: Integer read _GetSTATUS_START;
    {class} property STATUS_EOS: Integer read _GetSTATUS_EOS;
    {class} property STATUS_BOS: Integer read _GetSTATUS_BOS;
    {class} property STATUS_TIMEOUT: Integer read _GetSTATUS_TIMEOUT;
    {class} property SUB_OK: Integer read _GetSUB_OK;
    {class} property SUB_START: Integer read _GetSUB_START;
    {class} property SUB_END: Integer read _GetSUB_END;
    {class} property SUB_STARTEND: Integer read _GetSUB_STARTEND;
  end;

  [JavaSignature('com/iflytek/cloud/util/AudioDetector$DetectorResult')]
  JAudioDetector_DetectorResult = interface(JObject)
  ['{8BDC1E97-255D-4877-A372-DB03613E8860}']
    { Property Methods }
    function _Getbuffer: TJavaArray<Byte>;
    procedure _Setbuffer(abuffer: TJavaArray<Byte>);
    function _Getoffset: Integer;
    procedure _Setoffset(aoffset: Integer);
    function _Getlength: Integer;
    procedure _Setlength(alength: Integer);
    function _Getstatus: Integer;
    procedure _Setstatus(astatus: Integer);
    function _Getsub: Integer;
    procedure _Setsub(asub: Integer);
//    function _Getsubs: JLinkedHashMap;
//    procedure _Setsubs(asubs: JLinkedHashMap);
    function _Getvolume: Integer;
    procedure _Setvolume(avolume: Integer);
    function _Getvoice: Boolean;
    procedure _Setvoice(avoice: Boolean);
    function _Getquality: Integer;
    procedure _Setquality(aquality: Integer);
    function _Getstart: Integer;
    procedure _Setstart(astart: Integer);
    function _Getend: Integer;
    procedure _Setend(aend: Integer);
    function _Geterror: Integer;
    procedure _Seterror(aerror: Integer);
    function _Getconfidence: Single;
    procedure _Setconfidence(aconfidence: Single);

    { methods }

    { Property }
    property buffer: TJavaArray<Byte> read _Getbuffer write _Setbuffer;
    property offset: Integer read _Getoffset write _Setoffset;
    property length: Integer read _Getlength write _Setlength;
    property status: Integer read _Getstatus write _Setstatus;
    property sub: Integer read _Getsub write _Setsub;
//    property subs: JLinkedHashMap read _Getsubs write _Setsubs;
    property volume: Integer read _Getvolume write _Setvolume;
    property voice: Boolean read _Getvoice write _Setvoice;
    property quality: Integer read _Getquality write _Setquality;
    property start: Integer read _Getstart write _Setstart;
    property &end: Integer read _Getend write _Setend;
    property error: Integer read _Geterror write _Seterror;
    property confidence: Single read _Getconfidence write _Setconfidence;
  end;

  TJAudioDetector_DetectorResult = class(TJavaGenericImport<JAudioDetector_DetectorResultClass, JAudioDetector_DetectorResult>) end;

  JAudioDetectorClass = interface(JObjectClass)
  ['{8C8FAA1E-E310-4225-8AF1-94A4F455A525}']
    { static Property Methods }
    {class} function _GetEARLY_START: JString;
    {class} function _GetSUB_TIMEOUT: JString;
    {class} function _GetVAD_ENGINE: JString;
    {class} function _GetRES_PATH: JString;
    {class} function _GetTHRESHOLD: JString;
    {class} function _GetREDUCE_FLOW: JString;
    {class} function _GetRESET_SENTENCE: JString;
    {class} function _GetMAX_BUF_LEN: Integer;
    {class} function _GetTYPE_FIXFRONT: JString;
    {class} function _GetTYPE_META: JString;
    {class} function _GetDEF_ENGINE_TYPE: JString;
    {class} function _GetDEF_RATE: Integer;
    {class} function _GetDEF_BOS: Integer;
    {class} function _GetDEF_EOS: Integer;

    { static Methods }
    {class} function createDetector(P1: JContext; P2: JString): JAudioDetector; cdecl;
    {class} function getDetector: JAudioDetector; cdecl;

    { static Property }
    {class} property EARLY_START: JString read _GetEARLY_START;
    {class} property SUB_TIMEOUT: JString read _GetSUB_TIMEOUT;
    {class} property VAD_ENGINE: JString read _GetVAD_ENGINE;
    {class} property RES_PATH: JString read _GetRES_PATH;
    {class} property THRESHOLD: JString read _GetTHRESHOLD;
    {class} property REDUCE_FLOW: JString read _GetREDUCE_FLOW;
    {class} property RESET_SENTENCE: JString read _GetRESET_SENTENCE;
    {class} property MAX_BUF_LEN: Integer read _GetMAX_BUF_LEN;
    {class} property TYPE_FIXFRONT: JString read _GetTYPE_FIXFRONT;
    {class} property TYPE_META: JString read _GetTYPE_META;
    {class} property DEF_ENGINE_TYPE: JString read _GetDEF_ENGINE_TYPE;
    {class} property DEF_RATE: Integer read _GetDEF_RATE;
    {class} property DEF_BOS: Integer read _GetDEF_BOS;
    {class} property DEF_EOS: Integer read _GetDEF_EOS;
  end;

  [JavaSignature('com/iflytek/cloud/util/AudioDetector')]
  JAudioDetector = interface(JObject)
  ['{970E291B-A19F-4641-9579-D394D445F9C2}']
    { Property Methods }

    { methods }
    function destroy: Boolean; cdecl;
    procedure reset; cdecl;
    function detect(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Boolean): JAudioDetector_DetectorResult; cdecl;
    procedure setParameter(P1: JString; P2: JString); cdecl;

    { Property }
  end;

  TJAudioDetector = class(TJavaGenericImport<JAudioDetectorClass, JAudioDetector>) end;

  JContactManager_ContactListenerClass = interface(JObjectClass)
  ['{7B7567C0-0E23-4C77-9C9A-9F93CF4ECAD2}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/util/ContactManager$ContactListener')]
  JContactManager_ContactListener = interface(IJavaInstance)
  ['{7F356C03-ECEE-4BFB-BC78-9ADD13B61300}']
    { Property Methods }

    { methods }
    procedure onContactQueryFinish(P1: JString; P2: Boolean); cdecl;

    { Property }
  end;

  TJContactManager_ContactListener = class(TJavaGenericImport<JContactManager_ContactListenerClass, JContactManager_ContactListener>) end;

  JContactManagerClass = interface(JObjectClass)
  ['{054D761F-6599-4BA4-8BBA-3B90D88EBD8B}']
    { static Property Methods }

    { static Methods }
    {class} function getManager: JContactManager; cdecl;
    {class} function createManager(P1: JContext; P2: JContactManager_ContactListener): JContactManager; cdecl;
    {class} procedure destroy; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/util/ContactManager')]
  JContactManager = interface(JObject)
  ['{BDF57638-A439-4AB3-837C-804E6B814A44}']
    { Property Methods }

    { methods }
    function queryAllContactsName: JString; cdecl;
    procedure asyncQueryAllContactsName; cdecl;

    { Property }
  end;

  TJContactManager = class(TJavaGenericImport<JContactManagerClass, JContactManager>) end;

  JResourceUtil_RESOURCE_TYPEClass = interface(JObjectClass)
  ['{7BC26871-774D-42B6-9EF4-C14857307D0D}']
    { static Property Methods }
    {class} function _Getassets: JResourceUtil_RESOURCE_TYPE;
    {class} function _Getres: JResourceUtil_RESOURCE_TYPE;
    {class} function _Getpath: JResourceUtil_RESOURCE_TYPE;

    { static Methods }
    {class} function values: TJavaObjectArray<JResourceUtil_RESOURCE_TYPE>; cdecl;
    {class} function valueOf(P1: JString): JResourceUtil_RESOURCE_TYPE; cdecl;

    { static Property }
    {class} property assets: JResourceUtil_RESOURCE_TYPE read _Getassets;
    {class} property res: JResourceUtil_RESOURCE_TYPE read _Getres;
    {class} property path: JResourceUtil_RESOURCE_TYPE read _Getpath;
  end;

  [JavaSignature('com/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE')]
  JResourceUtil_RESOURCE_TYPE = interface(JObject)
  ['{C86A2A06-3BC3-4A67-8E51-F158E364DA2D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJResourceUtil_RESOURCE_TYPE = class(TJavaGenericImport<JResourceUtil_RESOURCE_TYPEClass, JResourceUtil_RESOURCE_TYPE>) end;

  JResourceUtilClass = interface(JObjectClass)
  ['{1553B3E6-35E1-4D70-890E-84D0CDE3E22B}']
    { static Property Methods }
    {class} function _GetENGINE_START: JString;
    {class} function _GetENGINE_DESTROY: JString;
    {class} function _GetASR_RES_PATH: JString;
    {class} function _GetGRM_BUILD_PATH: JString;
    {class} function _GetTTS_RES_PATH: JString;
    {class} function _GetIVW_RES_PATH: JString;

    { static Methods }
    {class} function init: JResourceUtil; cdecl;
    {class} function generateResourcePath(P1: JContext; P2: JResourceUtil_RESOURCE_TYPE; P3: JString): JString; cdecl;

    { static Property }
    {class} property ENGINE_START: JString read _GetENGINE_START;
    {class} property ENGINE_DESTROY: JString read _GetENGINE_DESTROY;
    {class} property ASR_RES_PATH: JString read _GetASR_RES_PATH;
    {class} property GRM_BUILD_PATH: JString read _GetGRM_BUILD_PATH;
    {class} property TTS_RES_PATH: JString read _GetTTS_RES_PATH;
    {class} property IVW_RES_PATH: JString read _GetIVW_RES_PATH;
  end;

  [JavaSignature('com/iflytek/cloud/util/ResourceUtil')]
  JResourceUtil = interface(JObject)
  ['{EFF4B631-91B9-4A62-86F4-6CE892D40432}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJResourceUtil = class(TJavaGenericImport<JResourceUtilClass, JResourceUtil>) end;

  JUserWordsClass = interface(JObjectClass)
  ['{55E627A7-1BD4-4361-B4AE-87B3C4CF9EA6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUserWords; cdecl; overload;
    {class} function init(P1: JString): JUserWords; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/util/UserWords')]
  JUserWords = interface(JObject)
  ['{4C4677D2-D24B-4794-ABB1-E65670CC3DA1}']
    { Property Methods }

    { methods }
    function hasKey(P1: JString): Boolean; cdecl;
    function putWord(P1: JString): Boolean; cdecl; overload;
    function putWord(P1: JString; P2: JString): Boolean; cdecl; overload;
    function putWords(P1: JArrayList): Boolean; cdecl; overload;
    function putWords(P1: JString; P2: JArrayList): Boolean; cdecl; overload;
    function getWords: JArrayList; cdecl; overload;
    function getKeys: JArrayList; cdecl;
    function getWords(P1: JString): JArrayList; cdecl; overload;
    function toString: JString; cdecl;

    { Property }
  end;

  TJUserWords = class(TJavaGenericImport<JUserWordsClass, JUserWords>) end;

  JVerifierUtilClass = interface(JObjectClass)
  ['{EB7D689F-01C3-447F-9449-A8F0A240B90C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVerifierUtil; cdecl;
    {class} function generateNumberPassword(P1: Integer): JString; cdecl;
    {class} function ARGB2Gray(P1: JBitmap): JBitmap; cdecl;
    {class} function getBitmapsize(P1: JBitmap): Integer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/util/VerifierUtil')]
  JVerifierUtil = interface(JObject)
  ['{67406C1D-E71B-44EC-BD0B-28F6F914732A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVerifierUtil = class(TJavaGenericImport<JVerifierUtilClass, JVerifierUtil>) end;

  JVolumeUtilClass = interface(JObjectClass)
  ['{ABDB2B5F-270E-49DB-A0D0-187AC0AC6E86}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVolumeUtil; cdecl;
    {class} function computeVolume(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/util/VolumeUtil')]
  JVolumeUtil = interface(JObject)
  ['{EA9391F3-04FF-429F-8C51-FAE868EF22D5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVolumeUtil = class(TJavaGenericImport<JVolumeUtilClass, JVolumeUtil>) end;

  JVerifierListenerClass = interface(JObjectClass)
  ['{D81169F6-31EE-4936-93D6-2E913A77DB1E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/VerifierListener')]
  JVerifierListener = interface(IJavaInstance)
  ['{37BFD0F9-3DD3-4C4A-ACCE-D1DF79C120F0}']
    { Property Methods }

    { methods }
    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JVerifierResult); cdecl;
    procedure onError(P1: JSpeechError); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJVerifierListener = class(TJavaGenericImport<JVerifierListenerClass, JVerifierListener>) end;

  JVerifierResultClass = interface(JObjectClass)
  ['{8C93A1AE-F1B3-4C14-BCB5-B21C8A56DD2F}']
    { static Property Methods }
    {class} function _GetTAG: JString;
    {class} function _GetMSS_ERROR_IVP_GENERAL: Integer;
    {class} function _GetMSS_ERROR_IVP_EXTRA_RGN_SOPPORT: Integer;
    {class} function _GetMSS_ERROR_IVP_TRUNCATED: Integer;
    {class} function _GetMSS_ERROR_IVP_MUCH_NOISE: Integer;
    {class} function _GetMSS_ERROR_IVP_TOO_LOW: Integer;
    {class} function _GetMSS_ERROR_IVP_ZERO_AUDIO: Integer;
    {class} function _GetMSS_ERROR_IVP_UTTER_TOO_SHORT: Integer;
    {class} function _GetMSS_ERROR_IVP_TEXT_NOT_MATCH: Integer;
    {class} function _GetMSS_ERROR_IVP_NO_ENOUGH_AUDIO: Integer;

    { static Methods }
    {class} function init(P1: JString): JVerifierResult; cdecl;

    { static Property }
    {class} property TAG: JString read _GetTAG;
    {class} property MSS_ERROR_IVP_GENERAL: Integer read _GetMSS_ERROR_IVP_GENERAL;
    {class} property MSS_ERROR_IVP_EXTRA_RGN_SOPPORT: Integer read _GetMSS_ERROR_IVP_EXTRA_RGN_SOPPORT;
    {class} property MSS_ERROR_IVP_TRUNCATED: Integer read _GetMSS_ERROR_IVP_TRUNCATED;
    {class} property MSS_ERROR_IVP_MUCH_NOISE: Integer read _GetMSS_ERROR_IVP_MUCH_NOISE;
    {class} property MSS_ERROR_IVP_TOO_LOW: Integer read _GetMSS_ERROR_IVP_TOO_LOW;
    {class} property MSS_ERROR_IVP_ZERO_AUDIO: Integer read _GetMSS_ERROR_IVP_ZERO_AUDIO;
    {class} property MSS_ERROR_IVP_UTTER_TOO_SHORT: Integer read _GetMSS_ERROR_IVP_UTTER_TOO_SHORT;
    {class} property MSS_ERROR_IVP_TEXT_NOT_MATCH: Integer read _GetMSS_ERROR_IVP_TEXT_NOT_MATCH;
    {class} property MSS_ERROR_IVP_NO_ENOUGH_AUDIO: Integer read _GetMSS_ERROR_IVP_NO_ENOUGH_AUDIO;
  end;

  [JavaSignature('com/iflytek/cloud/VerifierResult')]
  JVerifierResult = interface(JObject)
  ['{EB978E58-5390-4AA7-AA14-BCA871E26128}']
    { Property Methods }
    function _Getsst: JString;
    procedure _Setsst(asst: JString);
    function _Getret: Integer;
    procedure _Setret(aret: Integer);
    function _Getdcs: JString;
    procedure _Setdcs(adcs: JString);
    function _Getscore: JDouble;
    procedure _Setscore(ascore: JDouble);
    function _Getscore_raw: JDouble;
    procedure _Setscore_raw(ascore_raw: JDouble);
    function _Getvid: JString;
    procedure _Setvid(avid: JString);
    function _Getsuc: Integer;
    procedure _Setsuc(asuc: Integer);
    function _Getrgn: Integer;
    procedure _Setrgn(argn: Integer);
    function _Gettrs: JString;
    procedure _Settrs(atrs: JString);
    function _Geterr: Integer;
    procedure _Seterr(aerr: Integer);
    function _Getsource: JString;
    procedure _Setsource(asource: JString);

    { methods }

    { Property }
    property sst: JString read _Getsst write _Setsst;
    property ret: Integer read _Getret write _Setret;
    property dcs: JString read _Getdcs write _Setdcs;
    property score: JDouble read _Getscore write _Setscore;
    property score_raw: JDouble read _Getscore_raw write _Setscore_raw;
    property vid: JString read _Getvid write _Setvid;
    property suc: Integer read _Getsuc write _Setsuc;
    property rgn: Integer read _Getrgn write _Setrgn;
    property trs: JString read _Gettrs write _Settrs;
    property err: Integer read _Geterr write _Seterr;
    property source: JString read _Getsource write _Setsource;
  end;

  TJVerifierResult = class(TJavaGenericImport<JVerifierResultClass, JVerifierResult>) end;

  JVersionClass = interface(JObjectClass)
  ['{B91939CB-AB53-4C1B-B96B-C12B0BCAF6EF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVersion; cdecl;
    {class} function getVersion: JString; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/cloud/Version')]
  JVersion = interface(JObject)
  ['{FCE8F01A-B748-48F9-951A-E8F8175040F1}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVersion = class(TJavaGenericImport<JVersionClass, JVersion>) end;

//  JaClass = interface(JObjectClass)
//  ['{2BCF10F9-D697-4B02-812C-EF6669F6C0F8}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: JString); cdecl; overload;
//    {class} procedure a(P1: Boolean); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/common/a')]
//  Ja = interface(JObject)
//  ['{D58BF9F0-6ED8-4BE1-912B-BD020FFADA26}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{CC1C115F-E243-4D50-BE5C-E2748C817928}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/common/b')]
//  Jb = interface(JObject)
//  ['{06C0DBAE-01E4-461C-8204-515A0B6EA3EB}']
//    { Property Methods }
//
//    { methods }
//    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{CF8D7B47-ECB4-4321-9EFB-6EEDA1BA2C7B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/common/c')]
//  Jc = interface(JObject)
//  ['{12BE4735-2DA6-43D2-AAC8-71BD340B7735}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

  JLaunchServiceClass = interface(JObjectClass)
  ['{A0F253A6-1750-4E90-A0E6-B890E864F1C9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLaunchService; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/common/LaunchService')]
  JLaunchService = interface(JObject)
  ['{74AF665C-CBB3-4A8C-A1B2-DFBB31C01136}']
    { Property Methods }

    { methods }
    function onBind(P1: JIntent): JIBinder; cdecl;
    procedure onStart(P1: JIntent; P2: Integer); cdecl;
    procedure onCreate; cdecl;
    procedure onDestroy; cdecl;

    { Property }
  end;

  TJLaunchService = class(TJavaGenericImport<JLaunchServiceClass, JLaunchService>) end;

  JMetaVAD_InstanceClass = interface(JObjectClass)
  ['{66E1BFC8-E256-4B58-8C6D-FE6338BADF5E}']
    { static Property Methods }
    {class} function _GetINVALID_HANDLE: Int64;
    {class} function _GetSEG_NONE: Byte;
    {class} function _GetSEG_FIRST: Byte;
    {class} function _GetSEG: Byte;
    {class} function _GetSEG_LAST: Byte;

    { static Methods }
    {class} function init: JMetaVAD_Instance; cdecl;

    { static Property }
    {class} property INVALID_HANDLE: Int64 read _GetINVALID_HANDLE;
    {class} property SEG_NONE: Byte read _GetSEG_NONE;
    {class} property SEG_FIRST: Byte read _GetSEG_FIRST;
    {class} property SEG: Byte read _GetSEG;
    {class} property SEG_LAST: Byte read _GetSEG_LAST;
  end;

  [JavaSignature('com/iflytek/msc/MetaVAD$Instance')]
  JMetaVAD_Instance = interface(JObject)
  ['{520A467C-269F-42D5-B4B5-E32EAB3AB789}']
    { Property Methods }
    function _Gethandle: Int64;
    procedure _Sethandle(ahandle: Int64);
    function _Getrate: Integer;
    procedure _Setrate(arate: Integer);
    function _Getbegin: Integer;
    procedure _Setbegin(abegin: Integer);
    function _Getend: Integer;
    procedure _Setend(aend: Integer);
    function _Getseg: Integer;
    procedure _Setseg(aseg: Integer);
    function _Getvolume: Integer;
    procedure _Setvolume(avolume: Integer);

    { methods }
    procedure a; cdecl;

    { Property }
    property handle: Int64 read _Gethandle write _Sethandle;
    property rate: Integer read _Getrate write _Setrate;
    property &begin: Integer read _Getbegin write _Setbegin;
    property &end: Integer read _Getend write _Setend;
    property seg: Integer read _Getseg write _Setseg;
    property volume: Integer read _Getvolume write _Setvolume;
  end;

  TJMetaVAD_Instance = class(TJavaGenericImport<JMetaVAD_InstanceClass, JMetaVAD_Instance>) end;

  JMetaVADClass = interface(JObjectClass)
  ['{B8C54677-B427-4C39-BD9E-981ABFE0872A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMetaVAD; cdecl;
    {class} function VADInitialize(P1: TJavaArray<Byte>): Integer; cdecl;
    {class} function VADUninitialize: Integer; cdecl;
    {class} function VADLoadResource(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function VADDelResource(P1: Integer): Integer; cdecl;
    {class} function VADCreateSession(P1: JMetaVAD_Instance): Integer; cdecl;
    {class} function VADDestroySession(P1: JMetaVAD_Instance): Integer; cdecl;
    {class} function VADResetSession(P1: JMetaVAD_Instance): Integer; cdecl;
    {class} function VADAppendPCM(P1: JMetaVAD_Instance; P2: TJavaArray<Byte>; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl;
    {class} function VADGetSeg(P1: JMetaVAD_Instance): Integer; cdecl;
    {class} function VADSetParam(P1: JMetaVAD_Instance; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function VADGetSentConfidence(P1: JMetaVAD_Instance): Single; cdecl;
    {class} function VADResetSentence(P1: JMetaVAD_Instance): Integer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/msc/MetaVAD')]
  JMetaVAD = interface(JObject)
  ['{329D69EA-D518-4C5C-A057-949A0E8C51AB}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMetaVAD = class(TJavaGenericImport<JMetaVADClass, JMetaVAD>) end;

  JMSCClass = interface(JObjectClass)
  ['{F499418B-D527-497E-B00B-E263D9D63FA5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMSC; cdecl;
    {class} function isIflyVersion: Boolean; cdecl;
    {class} function loadLibrary(P1: JString): Boolean; cdecl;
    {class} function isLoaded: Boolean; cdecl;
    {class} function DebugLog(P1: Boolean): Integer; cdecl;
    {class} function SetLogLevel(P1: Integer): Integer; cdecl;
    {class} function QTTSInit(P1: TJavaArray<Byte>): Integer; cdecl;
    {class} function QTTSSessionBegin(P1: TJavaArray<Byte>; P2: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function QTTSTextPut(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QTTSAudioGet(P1: TJavaArray<Char>; P2: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QTTSGetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): Integer; cdecl;
    {class} function QTTSAudioInfo(P1: TJavaArray<Char>): TJavaArray<Char>; cdecl;
    {class} function QTTSSessionEnd(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QTTSFini: Integer; cdecl;
    {class} function QISRInit(P1: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISRSessionBegin(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function QISRRegisterNotify(P1: TJavaArray<Char>; P2: JString; P3: JString; P4: JString; P5: JObject): Integer; cdecl;
    {class} function QISRBuildGrammar(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: Integer; P4: TJavaArray<Byte>; P5: JString; P6: JObject): Integer; cdecl;
    {class} function QISRUpdateLexicon(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: Integer; P4: TJavaArray<Byte>; P5: JString; P6: JObject): Integer; cdecl;
    {class} function QISRGrammarActivate(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISRGetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): Integer; cdecl;
    {class} function QISRSetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISRAudioWrite(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: Integer; P4: Integer; P5: JMSCSessionInfo): Integer; cdecl;
    {class} function QISRUploadData(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: Integer; P5: TJavaArray<Byte>; P6: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QISRGetResult(P1: TJavaArray<Char>; P2: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QISRLogEvent(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISRSessionEnd(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISRFini: Integer; cdecl;
    {class} function QHCRInit(P1: TJavaArray<Byte>): Integer; cdecl;
    {class} function QHCRSessionBegin(P1: TJavaArray<Byte>; P2: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function QHCRDataWrite(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: Integer; P5: Integer): Integer; cdecl;
    {class} function QHCRGetResult(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QHCRLogEvent(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function QHCRSessionEnd(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QHCRFini: Integer; cdecl;
    {class} function QISVInit(P1: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISVSessionBegin(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function QISVAudioWrite(P1: TJavaArray<Char>; P2: TJavaArray<Char>; P3: TJavaArray<Byte>; P4: Integer; P5: Integer; P6: JMSCSessionInfo): Integer; cdecl;
    {class} function QISVGetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): Integer; cdecl;
    {class} function QISVGetResult(P1: TJavaArray<Char>; P2: TJavaArray<Char>; P3: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QISVSessionEnd(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISVQueDelModel(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function QISVQueDelModelRelease(P1: TJavaArray<Char>): Integer; cdecl;
    {class} function QISVFini: Integer; cdecl;
    {class} function QMFVSessionBegin(P1: TJavaArray<Byte>; P2: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function QMFVDataWrite(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: Integer; P5: JMSCSessionInfo): Integer; cdecl;
    {class} function QMFVGetResult(P1: TJavaArray<Char>; P2: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QMFVGetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): Integer; cdecl;
    {class} function QMFVSetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function QMFVSessionEnd(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QMFVRegisterNotify(P1: TJavaArray<Char>; P2: JString; P3: JString; P4: JString; P5: JObject): Integer; cdecl;
    {class} function QMSPLogin(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function UMSPLogin(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: JObject): Integer; cdecl;
    {class} function QMSPSetParam(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QMSPGetParam(P1: TJavaArray<Byte>; P2: JMSCSessionInfo): Integer; cdecl;
    {class} function QMSPUploadData(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: Integer; P4: TJavaArray<Byte>; P5: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QMSPDownloadData(P1: TJavaArray<Byte>; P2: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QMSPDownload(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: JObject): Integer; cdecl;
    {class} function QMSPSearch(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QMSPLogOut: Integer; cdecl;
    {class} function QMSPRegisterNotify(P1: JString; P2: JString): Integer; cdecl;
    {class} function QMSPGetVersion(P1: TJavaArray<Byte>; P2: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QISEInit(P1: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISESessionBegin(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function QISETextPut(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISEAudioWrite(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: Integer; P4: Integer; P5: JMSCSessionInfo): Integer; cdecl;
    {class} function QISEGetResult(P1: TJavaArray<Char>; P2: JMSCSessionInfo): TJavaArray<Byte>; cdecl;
    {class} function QISEGetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): Integer; cdecl;
    {class} function QISESessionEnd(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QISEFini: Integer; cdecl;
    {class} function QIVWSessionBegin(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function QIVWRegisterNotify(P1: TJavaArray<Char>; P2: JString; P3: JObject): Integer; cdecl;
    {class} function QIVWAudioWrite(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: Integer; P4: Integer; P5: JMSCSessionInfo): Integer; cdecl;
    {class} function QIVWSessionEnd(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function QIVWResMerge(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function QIVWGetResInfo(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): Integer; cdecl;
    {class} function getFileDescriptorFD(P1: JFileDescriptor): Integer; cdecl;
    {class} procedure QIFDInit(P1: TJavaArray<Byte>; P2: JObject); cdecl;
    {class} function QIFDFacedetect(P1: JBitmap; P2: Integer; P3: JObject): TJavaArray<Byte>; cdecl;
    {class} function QIFDMultitracker(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: JObject): TJavaArray<Byte>; cdecl;
    {class} function QIFDFini: Integer; cdecl;
    {class} function doARGB2Gray(P1: JBitmap; P2: JBitmap): Boolean; cdecl;
    {class} function AIUISessionBegin(P1: TJavaArray<Byte>; P2: JMSCSessionInfo): TJavaArray<Char>; cdecl;
    {class} function AIUIDataWrite(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: TJavaArray<Byte>; P5: Integer; P6: JMSCSessionInfo): Integer; cdecl;
    {class} function AIUISendLog(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: Integer; P5: JMSCSessionInfo): Integer; cdecl;
    {class} function AIUISyncData(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: Integer; P5: Integer; P6: JMSCSessionInfo): Integer; cdecl;
    {class} function AIUIGetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: JMSCSessionInfo): Integer; cdecl;
    {class} function AIUISetParam(P1: TJavaArray<Char>; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    {class} function AIUISessionEnd(P1: TJavaArray<Char>; P2: TJavaArray<Byte>): Integer; cdecl;
    {class} function AIUIRegisterNotify(P1: TJavaArray<Char>; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JObject): Integer; cdecl;
    {class} function AIUIClear(P1: TJavaArray<Char>): Integer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/msc/MSC')]
  JMSC = interface(JObject)
  ['{8FA98AEE-2E77-4E0D-AE4E-1F7013B88545}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMSC = class(TJavaGenericImport<JMSCClass, JMSC>) end;

  JMSCSessionInfoClass = interface(JObjectClass)
  ['{0BEC43C5-C994-4613-B4B4-2954C68AD9F7}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMSCSessionInfo; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/msc/MSCSessionInfo')]
  JMSCSessionInfo = interface(JObject)
  ['{8329581C-55BA-4C1B-9E7E-740652E651F6}']
    { Property Methods }
    function _Geterrorcode: Integer;
    procedure _Seterrorcode(aerrorcode: Integer);
    function _Getepstatues: Integer;
    procedure _Setepstatues(aepstatues: Integer);
    function _Getrsltstatus: Integer;
    procedure _Setrsltstatus(arsltstatus: Integer);
    function _Getsesstatus: Integer;
    procedure _Setsesstatus(asesstatus: Integer);
    function _Getbuffer: TJavaArray<Byte>;
    procedure _Setbuffer(abuffer: TJavaArray<Byte>);
    function _Getbuflen: Integer;
    procedure _Setbuflen(abuflen: Integer);

    { methods }

    { Property }
    property errorcode: Integer read _Geterrorcode write _Seterrorcode;
    property epstatues: Integer read _Getepstatues write _Setepstatues;
    property rsltstatus: Integer read _Getrsltstatus write _Setrsltstatus;
    property sesstatus: Integer read _Getsesstatus write _Setsesstatus;
    property buffer: TJavaArray<Byte> read _Getbuffer write _Setbuffer;
    property buflen: Integer read _Getbuflen write _Setbuflen;
  end;

  TJMSCSessionInfo = class(TJavaGenericImport<JMSCSessionInfoClass, JMSCSessionInfo>) end;

  JVAD_VadDataClass = interface(JObjectClass)
  ['{89FA0610-05D4-4FC5-ADCA-883158702AF8}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVAD_VadData; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/msc/VAD$VadData')]
  JVAD_VadData = interface(JObject)
  ['{ED1C36A3-24A8-4B3D-9956-F71A3FD63368}']
    { Property Methods }
    function _GetstartByte: Integer;
    procedure _SetstartByte(astartByte: Integer);
    function _GetendByte: Integer;
    procedure _SetendByte(aendByte: Integer);
    function _Getstatus: Integer;
    procedure _Setstatus(astatus: Integer);
    function _GetvolumeLevel: Integer;
    procedure _SetvolumeLevel(avolumeLevel: Integer);
    function _GetwaitPauseOrEnd: Integer;
    procedure _SetwaitPauseOrEnd(awaitPauseOrEnd: Integer);
    function _GetendRemainFrameNum: Integer;
    procedure _SetendRemainFrameNum(aendRemainFrameNum: Integer);
    function _GetwaitStart: Integer;
    procedure _SetwaitStart(awaitStart: Integer);
    function _GetstartRemainFrameNum: Integer;
    procedure _SetstartRemainFrameNum(astartRemainFrameNum: Integer);
    function _GetwavData: TJavaArray<Byte>;
    procedure _SetwavData(awavData: TJavaArray<Byte>);
    function _GetwavDataSize: Integer;
    procedure _SetwavDataSize(awavDataSize: Integer);
    function _GetinSpeech: Integer;
    procedure _SetinSpeech(ainSpeech: Integer);
    function _GetaudioQuality: Integer;
    procedure _SetaudioQuality(aaudioQuality: Integer);
    function _GetfirstOutByte: Integer;
    procedure _SetfirstOutByte(afirstOutByte: Integer);

    { methods }

    { Property }
    property startByte: Integer read _GetstartByte write _SetstartByte;
    property endByte: Integer read _GetendByte write _SetendByte;
    property status: Integer read _Getstatus write _Setstatus;
    property volumeLevel: Integer read _GetvolumeLevel write _SetvolumeLevel;
    property waitPauseOrEnd: Integer read _GetwaitPauseOrEnd write _SetwaitPauseOrEnd;
    property endRemainFrameNum: Integer read _GetendRemainFrameNum write _SetendRemainFrameNum;
    property waitStart: Integer read _GetwaitStart write _SetwaitStart;
    property startRemainFrameNum: Integer read _GetstartRemainFrameNum write _SetstartRemainFrameNum;
    property wavData: TJavaArray<Byte> read _GetwavData write _SetwavData;
    property wavDataSize: Integer read _GetwavDataSize write _SetwavDataSize;
    property inSpeech: Integer read _GetinSpeech write _SetinSpeech;
    property audioQuality: Integer read _GetaudioQuality write _SetaudioQuality;
    property firstOutByte: Integer read _GetfirstOutByte write _SetfirstOutByte;
  end;

  TJVAD_VadData = class(TJavaGenericImport<JVAD_VadDataClass, JVAD_VadData>) end;

  JVADClass = interface(JObjectClass)
  ['{3196465D-A5F9-4CA7-A28B-E0D889A66D6C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVAD; cdecl;
    {class} function Initialize(P1: Integer): Int64; cdecl;
    {class} procedure Uninitialize(P1: Int64); cdecl;
    {class} procedure Reset(P1: Int64); cdecl;
    {class} function AppendData(P1: Int64; P2: TJavaArray<Byte>; P3: Integer): Integer; cdecl;
    {class} function SetParam(P1: Int64; P2: Integer; P3: Integer): Integer; cdecl;
    {class} function EndAudioData(P1: Int64): Integer; cdecl;
    {class} function CalcVolumLevel(P1: Int64; P2: TJavaArray<Byte>; P3: Integer; P4: JVAD_VadData): Integer; cdecl;
    {class} function FetchData(P1: Int64; P2: JVAD_VadData): Integer; cdecl;
    {class} function GetLastSpeechPos(P1: Int64; P2: JVAD_VadData): Integer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/msc/VAD')]
  JVAD = interface(JObject)
  ['{4A5D3C6B-8964-4617-AFEC-DBECF747D229}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVAD = class(TJavaGenericImport<JVADClass, JVAD>) end;

  JISpeakerVerifier_Stub_ProxyClass = interface(JObjectClass)
  ['{A8D89686-C43B-46BE-99C6-34EA857EDA0F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeakerVerifier$Stub$Proxy')]
  JISpeakerVerifier_Stub_Proxy = interface(JObject)
  ['{80566765-9895-4C34-AABC-54E013167D71}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function verify(P1: JString; P2: JString; P3: JVerifierListener): Integer; cdecl;
    function &register(P1: JString; P2: JString; P3: JVerifierListener): Integer; cdecl;
    procedure endSpeak; cdecl;
    procedure stopSpeak; cdecl;
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;

    { Property }
  end;

  TJISpeakerVerifier_Stub_Proxy = class(TJavaGenericImport<JISpeakerVerifier_Stub_ProxyClass, JISpeakerVerifier_Stub_Proxy>) end;

  JISpeakerVerifier_StubClass = interface(JObjectClass)
  ['{4A76F481-7448-4462-A0F6-66512C136A40}']
    { static Property Methods }

    { static Methods }
    {class} function init: JISpeakerVerifier_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JISpeakerVerifier; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeakerVerifier$Stub')]
  JISpeakerVerifier_Stub = interface(JObject)
  ['{3C0EE47A-36C1-4CE8-B8D8-64FBCBF3D729}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJISpeakerVerifier_Stub = class(TJavaGenericImport<JISpeakerVerifier_StubClass, JISpeakerVerifier_Stub>) end;

  JISpeakerVerifierClass = interface(JObjectClass)
  ['{BDC64D42-758B-4EC9-A521-9F60DB367C6D}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeakerVerifier')]
  JISpeakerVerifier = interface(IJavaInstance)
  ['{81F8FB98-415C-48A3-B1A7-750B27B00789}']
    { Property Methods }

    { methods }
    function verify(P1: JString; P2: JString; P3: JVerifierListener): Integer; cdecl;
    function &register(P1: JString; P2: JString; P3: JVerifierListener): Integer; cdecl;
    procedure endSpeak; cdecl;
    procedure stopSpeak; cdecl;
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;

    { Property }
  end;

  TJISpeakerVerifier = class(TJavaGenericImport<JISpeakerVerifierClass, JISpeakerVerifier>) end;

  JISpeechRecognizer_Stub_ProxyClass = interface(JObjectClass)
  ['{4FDDB5A1-9321-4C4A-A046-1FA31B62E8BB}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy')]
  JISpeechRecognizer_Stub_Proxy = interface(JObject)
  ['{931875EF-33C9-4B5F-8F14-CA1B21CD5397}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure startListening(P1: JIntent; P2: JRecognizerListener); cdecl;
    procedure stopListening(P1: JRecognizerListener); cdecl;
    procedure cancel(P1: JRecognizerListener); cdecl;
    function isListening: Boolean; cdecl;
    procedure buildGrammar(P1: JIntent; P2: JGrammarListener); cdecl;
    procedure updateLexicon(P1: JIntent; P2: JLexiconListener); cdecl;
    procedure writeAudio(P1: JIntent; P2: TJavaArray<Byte>; P3: Integer; P4: Integer); cdecl;

    { Property }
  end;

  TJISpeechRecognizer_Stub_Proxy = class(TJavaGenericImport<JISpeechRecognizer_Stub_ProxyClass, JISpeechRecognizer_Stub_Proxy>) end;

  JISpeechRecognizer_StubClass = interface(JObjectClass)
  ['{4170BD7B-309B-4889-AC05-B812EBBAC021}']
    { static Property Methods }

    { static Methods }
    {class} function init: JISpeechRecognizer_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JISpeechRecognizer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechRecognizer$Stub')]
  JISpeechRecognizer_Stub = interface(JObject)
  ['{E7C1F712-2811-4602-A373-F2B5D01B5405}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJISpeechRecognizer_Stub = class(TJavaGenericImport<JISpeechRecognizer_StubClass, JISpeechRecognizer_Stub>) end;

  JISpeechRecognizerClass = interface(JObjectClass)
  ['{D5F41B9C-0395-44D2-AACE-824EBA80063E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechRecognizer')]
  JISpeechRecognizer = interface(IJavaInstance)
  ['{3956113A-1CA9-4386-8668-DCC4AB3FFB6B}']
    { Property Methods }

    { methods }
    procedure startListening(P1: JIntent; P2: JRecognizerListener); cdecl;
    procedure stopListening(P1: JRecognizerListener); cdecl;
    procedure cancel(P1: JRecognizerListener); cdecl;
    function isListening: Boolean; cdecl;
    procedure buildGrammar(P1: JIntent; P2: JGrammarListener); cdecl;
    procedure updateLexicon(P1: JIntent; P2: JLexiconListener); cdecl;
    procedure writeAudio(P1: JIntent; P2: TJavaArray<Byte>; P3: Integer; P4: Integer); cdecl;

    { Property }
  end;

  TJISpeechRecognizer = class(TJavaGenericImport<JISpeechRecognizerClass, JISpeechRecognizer>) end;

  JISpeechSynthesizer_Stub_ProxyClass = interface(JObjectClass)
  ['{EE4F93A1-37FA-40AB-A49A-B103FA1DE689}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechSynthesizer$Stub$Proxy')]
  JISpeechSynthesizer_Stub_Proxy = interface(JObject)
  ['{B0EBE7C0-2028-4D81-A04B-0E43D659BE30}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function synthesizeToUrl(P1: JIntent; P2: JSynthesizerListener): Integer; cdecl;
    function startSpeaking(P1: JIntent; P2: JSynthesizerListener): Integer; cdecl;
    function pauseSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function resumeSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function stopSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function isSpeaking: Boolean; cdecl;
    function getLocalSpeakerList: JString; cdecl;

    { Property }
  end;

  TJISpeechSynthesizer_Stub_Proxy = class(TJavaGenericImport<JISpeechSynthesizer_Stub_ProxyClass, JISpeechSynthesizer_Stub_Proxy>) end;

  JISpeechSynthesizer_StubClass = interface(JObjectClass)
  ['{8BF0B50D-18A1-492E-8D27-F5CD5A6FA54A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JISpeechSynthesizer_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JISpeechSynthesizer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechSynthesizer$Stub')]
  JISpeechSynthesizer_Stub = interface(JObject)
  ['{5D1C5F94-75C8-4A0C-B1C9-BCF38D2EF46E}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJISpeechSynthesizer_Stub = class(TJavaGenericImport<JISpeechSynthesizer_StubClass, JISpeechSynthesizer_Stub>) end;

  JISpeechSynthesizerClass = interface(JObjectClass)
  ['{920F9C27-CF73-49FC-8519-EC3A0FFF4A52}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechSynthesizer')]
  JISpeechSynthesizer = interface(IJavaInstance)
  ['{A2F20503-E5D3-4835-AB19-AA0238630F95}']
    { Property Methods }

    { methods }
    function synthesizeToUrl(P1: JIntent; P2: JSynthesizerListener): Integer; cdecl;
    function startSpeaking(P1: JIntent; P2: JSynthesizerListener): Integer; cdecl;
    function pauseSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function resumeSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function stopSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function isSpeaking: Boolean; cdecl;
    function getLocalSpeakerList: JString; cdecl;

    { Property }
  end;

  TJISpeechSynthesizer = class(TJavaGenericImport<JISpeechSynthesizerClass, JISpeechSynthesizer>) end;

  JISpeechUnderstander_Stub_ProxyClass = interface(JObjectClass)
  ['{106D90C4-07CC-456C-B651-255189B5E7BE}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechUnderstander$Stub$Proxy')]
  JISpeechUnderstander_Stub_Proxy = interface(JObject)
  ['{0E008240-7C88-4950-8B4D-C3E8C8DD5A07}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure startUnderstanding(P1: JIntent; P2: JSpeechUnderstanderListener); cdecl;
    procedure stopUnderstanding(P1: JSpeechUnderstanderListener); cdecl;
    procedure cancel(P1: JSpeechUnderstanderListener); cdecl;
    function isUnderstanding: Boolean; cdecl;
    procedure writeAudio(P1: JIntent; P2: TJavaArray<Byte>; P3: Integer; P4: Integer); cdecl;

    { Property }
  end;

  TJISpeechUnderstander_Stub_Proxy = class(TJavaGenericImport<JISpeechUnderstander_Stub_ProxyClass, JISpeechUnderstander_Stub_Proxy>) end;

  JISpeechUnderstander_StubClass = interface(JObjectClass)
  ['{DE7B2D38-2657-4072-84B1-A91C5CE6FF82}']
    { static Property Methods }

    { static Methods }
    {class} function init: JISpeechUnderstander_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JISpeechUnderstander; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechUnderstander$Stub')]
  JISpeechUnderstander_Stub = interface(JObject)
  ['{4AD730DE-2204-4949-A090-57053926C259}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJISpeechUnderstander_Stub = class(TJavaGenericImport<JISpeechUnderstander_StubClass, JISpeechUnderstander_Stub>) end;

  JISpeechUnderstanderClass = interface(JObjectClass)
  ['{5A43471B-9AE1-4536-A55E-14BC0278A308}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ISpeechUnderstander')]
  JISpeechUnderstander = interface(IJavaInstance)
  ['{398FC260-55AF-40D6-9036-5CD7C1979A3B}']
    { Property Methods }

    { methods }
    procedure startUnderstanding(P1: JIntent; P2: JSpeechUnderstanderListener); cdecl;
    procedure stopUnderstanding(P1: JSpeechUnderstanderListener); cdecl;
    procedure cancel(P1: JSpeechUnderstanderListener); cdecl;
    function isUnderstanding: Boolean; cdecl;
    procedure writeAudio(P1: JIntent; P2: TJavaArray<Byte>; P3: Integer; P4: Integer); cdecl;

    { Property }
  end;

  TJISpeechUnderstander = class(TJavaGenericImport<JISpeechUnderstanderClass, JISpeechUnderstander>) end;

  JITextUnderstander_Stub_ProxyClass = interface(JObjectClass)
  ['{C0353010-4A63-4504-8B87-DFD75F183F43}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ITextUnderstander$Stub$Proxy')]
  JITextUnderstander_Stub_Proxy = interface(JObject)
  ['{482681D0-8F8D-46BF-83E2-95F6BFD0CEE2}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure understandText(P1: JIntent; P2: JTextUnderstanderListener); cdecl;
    procedure cancel(P1: JTextUnderstanderListener); cdecl;
    function isUnderstanding: Boolean; cdecl;

    { Property }
  end;

  TJITextUnderstander_Stub_Proxy = class(TJavaGenericImport<JITextUnderstander_Stub_ProxyClass, JITextUnderstander_Stub_Proxy>) end;

  JITextUnderstander_StubClass = interface(JObjectClass)
  ['{17D7608D-FE94-4271-94BA-3DD26DCCF953}']
    { static Property Methods }

    { static Methods }
    {class} function init: JITextUnderstander_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JITextUnderstander; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ITextUnderstander$Stub')]
  JITextUnderstander_Stub = interface(JObject)
  ['{A3BEB776-E723-4569-BE7D-33A46E7B2C1C}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJITextUnderstander_Stub = class(TJavaGenericImport<JITextUnderstander_StubClass, JITextUnderstander_Stub>) end;

  JITextUnderstanderClass = interface(JObjectClass)
  ['{897EC8EF-D5E5-4B00-A489-4B39DCC7DAD5}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/ITextUnderstander')]
  JITextUnderstander = interface(IJavaInstance)
  ['{FBE46450-73B0-4590-A589-91EF5122221C}']
    { Property Methods }

    { methods }
    procedure understandText(P1: JIntent; P2: JTextUnderstanderListener); cdecl;
    procedure cancel(P1: JTextUnderstanderListener); cdecl;
    function isUnderstanding: Boolean; cdecl;

    { Property }
  end;

  TJITextUnderstander = class(TJavaGenericImport<JITextUnderstanderClass, JITextUnderstander>) end;

  JIWakeuper_Stub_ProxyClass = interface(JObjectClass)
  ['{43A6D6E3-7942-46AA-9A8B-B8F295619725}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/IWakeuper$Stub$Proxy')]
  JIWakeuper_Stub_Proxy = interface(JObject)
  ['{A6C613B5-695D-4272-8506-B16692E33415}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure startListening(P1: JIntent; P2: JWakeuperListener); cdecl;
    procedure stopListening(P1: JWakeuperListener); cdecl;
    procedure cancel(P1: JWakeuperListener); cdecl;
    function isListening: Boolean; cdecl;
    procedure destroy; cdecl;

    { Property }
  end;

  TJIWakeuper_Stub_Proxy = class(TJavaGenericImport<JIWakeuper_Stub_ProxyClass, JIWakeuper_Stub_Proxy>) end;

  JIWakeuper_StubClass = interface(JObjectClass)
  ['{B5EC0E93-4DA9-43DD-BED1-F6AD01B3E87D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JIWakeuper_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JIWakeuper; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/IWakeuper$Stub')]
  JIWakeuper_Stub = interface(JObject)
  ['{B94FCE9C-72E2-408F-BF4C-485986F5478C}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJIWakeuper_Stub = class(TJavaGenericImport<JIWakeuper_StubClass, JIWakeuper_Stub>) end;

  JIWakeuperClass = interface(JObjectClass)
  ['{5C82A81A-0E14-43F7-ABB9-1A7EC7CE0558}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/aidl/IWakeuper')]
  JIWakeuper = interface(IJavaInstance)
  ['{A39CF695-E4B8-4601-8814-8934D27D4ED0}']
    { Property Methods }

    { methods }
    procedure startListening(P1: JIntent; P2: JWakeuperListener); cdecl;
    procedure stopListening(P1: JWakeuperListener); cdecl;
    procedure cancel(P1: JWakeuperListener); cdecl;
    function isListening: Boolean; cdecl;
    procedure destroy; cdecl;

    { Property }
  end;

  TJIWakeuper = class(TJavaGenericImport<JIWakeuperClass, JIWakeuper>) end;

  JGrammarListener_Stub_ProxyClass = interface(JObjectClass)
  ['{D84DFB84-F4A3-46DE-98B7-FEEE6333B77B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/GrammarListener$Stub$Proxy')]
  JGrammarListener_Stub_Proxy = interface(JObject)
  ['{2FA91067-C631-47D8-B943-87545C7650F5}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onBuildFinish(P1: JString; P2: Integer); cdecl;

    { Property }
  end;

  TJGrammarListener_Stub_Proxy = class(TJavaGenericImport<JGrammarListener_Stub_ProxyClass, JGrammarListener_Stub_Proxy>) end;

  JGrammarListener_StubClass = interface(JObjectClass)
  ['{F88D2398-F177-4ED5-A438-189C72B164BC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGrammarListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JGrammarListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/GrammarListener$Stub')]
  JGrammarListener_Stub = interface(JObject)
  ['{30B39FFB-02BF-4368-87FE-40DBAA064DAC}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJGrammarListener_Stub = class(TJavaGenericImport<JGrammarListener_StubClass, JGrammarListener_Stub>) end;

//  JGrammarListenerClass = interface(JObjectClass)
//  ['{2A37B78C-0BE3-43DA-92B3-58BF39ACB1A9}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/iflytek/speech/GrammarListener')]
//  JGrammarListener = interface(IJavaInstance)
//  ['{C0293B33-6544-41E0-8619-625DDF18ABF7}']
//    { Property Methods }
//
//    { methods }
//    procedure onBuildFinish(P1: JString; P2: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJGrammarListener = class(TJavaGenericImport<JGrammarListenerClass, JGrammarListener>) end;

  JISpeechModuleClass = interface(JObjectClass)
  ['{A6AFBD2F-1F2A-4378-8988-064875ACF76E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/ISpeechModule')]
  JISpeechModule = interface(IJavaInstance)
  ['{2047BB57-74C0-4563-B454-5FE642DC1BDB}']
    { Property Methods }

    { methods }
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function getIntent: JIntent; cdecl;
    function destory: Boolean; cdecl;
    function isAvailable: Boolean; cdecl;

    { Property }
  end;

  TJISpeechModule = class(TJavaGenericImport<JISpeechModuleClass, JISpeechModule>) end;

  JLexiconListener_Stub_ProxyClass = interface(JObjectClass)
  ['{3CCBE7B6-24F9-499D-8678-FB9F031C477D}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/LexiconListener$Stub$Proxy')]
  JLexiconListener_Stub_Proxy = interface(JObject)
  ['{DAE2E9C3-47D7-4716-97F2-EB6D58C822CB}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onLexiconUpdated(P1: JString; P2: Integer); cdecl;

    { Property }
  end;

  TJLexiconListener_Stub_Proxy = class(TJavaGenericImport<JLexiconListener_Stub_ProxyClass, JLexiconListener_Stub_Proxy>) end;

  JLexiconListener_StubClass = interface(JObjectClass)
  ['{634EB086-A30F-4869-BBD1-2485A99C1FE0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLexiconListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JLexiconListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/LexiconListener$Stub')]
  JLexiconListener_Stub = interface(JObject)
  ['{FD1F5F92-B8A3-4633-A204-5487D532071B}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJLexiconListener_Stub = class(TJavaGenericImport<JLexiconListener_StubClass, JLexiconListener_Stub>) end;

//  JLexiconListenerClass = interface(JObjectClass)
//  ['{62E7A65E-97EC-40FB-B6A5-FF9DE5D0D3DD}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/iflytek/speech/LexiconListener')]
//  JLexiconListener = interface(IJavaInstance)
//  ['{4249DAC7-FD51-4DE2-8D9D-C0DC43C2C2F6}']
//    { Property Methods }
//
//    { methods }
//    procedure onLexiconUpdated(P1: JString; P2: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJLexiconListener = class(TJavaGenericImport<JLexiconListenerClass, JLexiconListener>) end;

  JRecognizerListener_Stub_ProxyClass = interface(JObjectClass)
  ['{13E5E3DC-BBA7-41E4-ACED-0C99A0092204}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/RecognizerListener$Stub$Proxy')]
  JRecognizerListener_Stub_Proxy = interface(JObject)
  ['{F754863A-EBE2-49CB-B127-E3F03DC00D8E}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
    procedure onError(P1: Integer); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJRecognizerListener_Stub_Proxy = class(TJavaGenericImport<JRecognizerListener_Stub_ProxyClass, JRecognizerListener_Stub_Proxy>) end;

  JRecognizerListener_StubClass = interface(JObjectClass)
  ['{18F39ADF-F805-49EE-91CE-A7BE1D9768A0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRecognizerListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JRecognizerListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/RecognizerListener$Stub')]
  JRecognizerListener_Stub = interface(JObject)
  ['{EEF576FC-7C1F-4E26-9F40-979A2118D5C7}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJRecognizerListener_Stub = class(TJavaGenericImport<JRecognizerListener_StubClass, JRecognizerListener_Stub>) end;

//  JRecognizerListenerClass = interface(JObjectClass)
//  ['{4D17129B-431B-4BA4-8DDF-D1C7C35DE670}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/iflytek/speech/RecognizerListener')]
//  JRecognizerListener = interface(IJavaInstance)
//  ['{553A4397-B911-422A-A02D-F368CB91DF29}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
//    procedure onError(P1: Integer); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;
//
//  TJRecognizerListener = class(TJavaGenericImport<JRecognizerListenerClass, JRecognizerListener>) end;

//  JRecognizerResult_1Class = interface(JObjectClass)
//  ['{DFFDF8CC-3978-414C-8C4F-66D8A7E3AD88}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/speech/RecognizerResult$1')]
//  JRecognizerResult_1 = interface(JObject)
//  ['{193C4EC8-0CD3-4953-AFEC-8E862F018C0F}']
//    { Property Methods }
//
//    { methods }
//    function createFromParcel(P1: JParcel): JRecognizerResult; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JRecognizerResult>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl; overload;
//    function createFromParcel(P1: JParcel): JObject; cdecl; overload;
//
//    { Property }
//  end;

//  TJRecognizerResult_1 = class(TJavaGenericImport<JRecognizerResult_1Class, JRecognizerResult_1>) end;

//  JRecognizerResultClass = interface(JObjectClass)
//  ['{07BDB49A-9C9B-42AA-AE97-13DC6C59A31D}']
//    { static Property Methods }
//    {class} function _GetCREATOR: JParcelable_Creator;
//
//    { static Methods }
//    {class} function init(P1: JParcel): JRecognizerResult; cdecl; overload;
//    {class} function init(P1: JString): JRecognizerResult; cdecl; overload;
//
//    { static Property }
//    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
//  end;
//
//  [JavaSignature('com/iflytek/speech/RecognizerResult')]
//  JRecognizerResult = interface(JObject)
//  ['{8EFDC38C-6654-4116-A97D-E1B1712B212D}']
//    { Property Methods }
//
//    { methods }
//    function describeContents: Integer; cdecl;
//    function getResultString: JString; cdecl;
//    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJRecognizerResult = class(TJavaGenericImport<JRecognizerResultClass, JRecognizerResult>) end;

  JSpeakerVerifierAidl_DownloadListenerClass = interface(JObjectClass)
  ['{CBA38722-68C5-4D65-A705-7056840A2CE4}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeakerVerifierAidl$DownloadListener')]
  JSpeakerVerifierAidl_DownloadListener = interface(IJavaInstance)
  ['{72D327E0-A6FF-4369-978D-32086FA5EC0D}']
    { Property Methods }

    { methods }
    procedure onData(P1: JArrayList); cdecl;
    procedure onError(P1: Integer); cdecl;

    { Property }
  end;

  TJSpeakerVerifierAidl_DownloadListener = class(TJavaGenericImport<JSpeakerVerifierAidl_DownloadListenerClass, JSpeakerVerifierAidl_DownloadListener>) end;

  JSpeakerVerifierAidl_PassWordClass = interface(JObjectClass)
  ['{FEC5CA01-4313-4A50-814D-490247E9DC03}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JSpeakerVerifierAidl): JSpeakerVerifierAidl_PassWord; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeakerVerifierAidl$PassWord')]
  JSpeakerVerifierAidl_PassWord = interface(JObject)
  ['{A709A96C-906C-4231-A159-A9B92A5D5A85}']
    { Property Methods }
    function _Getpwdt: JString;
    procedure _Setpwdt(apwdt: JString);
    function _Getpwid: JString;
    procedure _Setpwid(apwid: JString);
    function _Getpwtext: JString;
    procedure _Setpwtext(apwtext: JString);

    { methods }

    { Property }
    property pwdt: JString read _Getpwdt write _Setpwdt;
    property pwid: JString read _Getpwid write _Setpwid;
    property pwtext: JString read _Getpwtext write _Setpwtext;
  end;

  TJSpeakerVerifierAidl_PassWord = class(TJavaGenericImport<JSpeakerVerifierAidl_PassWordClass, JSpeakerVerifierAidl_PassWord>) end;

  JSpeakerVerifierAidlClass = interface(JObjectClass)
  ['{40F4D077-F2C2-4F5C-8B41-CC081F926EF1}']
    { static Property Methods }
    {class} function _GetUSER_NAME: JString;
    {class} function _GetIVP_SENTENCE_CNT: JString;
    {class} function _GetVID: JString;
    {class} function _GetIVP_PARAM_CONSISTTHRESHOLD: JString;
    {class} function _GetIVP_PARAM_DTW_CHECK_THRESHOLD: JString;

    { static Methods }
    {class} function init(P1: JContext; P2: JInitListener): JSpeakerVerifierAidl; cdecl;

    { static Property }
    {class} property USER_NAME: JString read _GetUSER_NAME;
    {class} property IVP_SENTENCE_CNT: JString read _GetIVP_SENTENCE_CNT;
    {class} property VID: JString read _GetVID;
    {class} property IVP_PARAM_CONSISTTHRESHOLD: JString read _GetIVP_PARAM_CONSISTTHRESHOLD;
    {class} property IVP_PARAM_DTW_CHECK_THRESHOLD: JString read _GetIVP_PARAM_DTW_CHECK_THRESHOLD;
  end;

  [JavaSignature('com/iflytek/speech/SpeakerVerifierAidl')]
  JSpeakerVerifierAidl = interface(JObject)
  ['{444F1A36-17C1-491B-B2EE-5021F0868888}']
    { Property Methods }

    { methods }
    function &register(P1: JString; P2: JString; P3: JVerifierListener): Integer; cdecl;
    function verify(P1: JString; P2: JString; P3: JVerifierListener): Integer; cdecl;
    function identify(P1: JString; P2: JString; P3: JVerifierListener): Integer; cdecl;
    function getPasswordList(P1: JContext; P2: JSpeakerVerifierAidl_DownloadListener; P3: JString): Integer; cdecl;
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    procedure endSpeak; cdecl;
    procedure stopSpeak; cdecl;
    function destory: Boolean; cdecl;
    function isActionInstalled(P1: JContext; P2: JString): Boolean; cdecl;
    function getIntent: JIntent; cdecl;
    function isAvailable: Boolean; cdecl;

    { Property }
  end;

  TJSpeakerVerifierAidl = class(TJavaGenericImport<JSpeakerVerifierAidlClass, JSpeakerVerifierAidl>) end;

  JSpeechComponentClass = interface(JObjectClass)
  ['{491C93A4-DDAD-4D0A-A078-D2FA44FE011F}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString): JSpeechComponent; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeechComponent')]
  JSpeechComponent = interface(JObject)
  ['{0C7A52DC-5F0F-46E8-91D9-ADE68BBDCCBC}']
    { Property Methods }

    { methods }
    function getPackageName: JString; cdecl;
    function getEngines: JArrayList; cdecl;
    procedure addEngine(P1: JString); cdecl;
    function isEngineAvaible(P1: JString): Boolean; cdecl;

    { Property }
  end;

  TJSpeechComponent = class(TJavaGenericImport<JSpeechComponentClass, JSpeechComponent>) end;

//  JSpeechModuleAidl_1Class = interface(JObjectClass)
//  ['{24E31D20-19D2-4F2C-8F6A-E439BCE16325}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/speech/SpeechModuleAidl$1')]
//  JSpeechModuleAidl_1 = interface(JObject)
//  ['{C26DAD08-093F-4505-8BEA-76DCD09BFAB4}']
//    { Property Methods }
//
//    { methods }
//    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;
//    procedure onServiceDisconnected(P1: JComponentName); cdecl;
//
//    { Property }
//  end;

//  TJSpeechModuleAidl_1 = class(TJavaGenericImport<JSpeechModuleAidl_1Class, JSpeechModuleAidl_1>) end;

//  JSpeechModuleAidl_2Class = interface(JObjectClass)
//  ['{A94CE666-E4BC-4EBB-B58A-6B43016224D1}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/speech/SpeechModuleAidl$2')]
//  JSpeechModuleAidl_2 = interface(JObject)
//  ['{31E79834-16EA-42DC-A7CB-C51F7EE21A38}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJSpeechModuleAidl_2 = class(TJavaGenericImport<JSpeechModuleAidl_2Class, JSpeechModuleAidl_2>) end;

  JSpeechModuleAidlClass = interface(JObjectClass)
  ['{8BFDC547-8E04-4E2F-92B4-E7C28A35F51A}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext; P2: JInitListener; P3: JString): JSpeechModuleAidl; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeechModuleAidl')]
  JSpeechModuleAidl = interface(JObject)
  ['{8BDA1A73-5136-47B8-A54C-42090CCB46BD}']
    { Property Methods }

    { methods }
    function isAvailable: Boolean; cdecl;
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function getIntent: JIntent; cdecl;
    function isActionInstalled(P1: JContext; P2: JString): Boolean; cdecl;
    function destory: Boolean; cdecl;

    { Property }
  end;

  TJSpeechModuleAidl = class(TJavaGenericImport<JSpeechModuleAidlClass, JSpeechModuleAidl>) end;

  JSpeechRecognizerAidlClass = interface(JObjectClass)
  ['{8814BDF8-B2BF-4250-9F8F-788451F9BC1F}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext; P2: JInitListener): JSpeechRecognizerAidl; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeechRecognizerAidl')]
  JSpeechRecognizerAidl = interface(JObject)
  ['{3216B73E-D853-4350-8B0D-1629F1C31FFF}']
    { Property Methods }

    { methods }
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function startListening(P1: JRecognizerListener): Integer; cdecl;
    function stopListening(P1: JRecognizerListener): Integer; cdecl;
    function cancel(P1: JRecognizerListener): Integer; cdecl;
    function destory: Boolean; cdecl;
    function isListening: Boolean; cdecl;
    function buildGrammar(P1: JString; P2: JString; P3: JGrammarListener): Integer; cdecl;
    function updateLexicon(P1: JString; P2: JString; P3: JLexiconListener): Integer; cdecl;
    function writeAudio(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
    function isActionInstalled(P1: JContext; P2: JString): Boolean; cdecl;
    function getIntent: JIntent; cdecl;
    function isAvailable: Boolean; cdecl;

    { Property }
  end;

  TJSpeechRecognizerAidl = class(TJavaGenericImport<JSpeechRecognizerAidlClass, JSpeechRecognizerAidl>) end;

  JSpeechSynthesizerAidlClass = interface(JObjectClass)
  ['{90D13559-D61C-49BB-9C11-216394335514}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext; P2: JInitListener): JSpeechSynthesizerAidl; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeechSynthesizerAidl')]
  JSpeechSynthesizerAidl = interface(JObject)
  ['{D4A71AE2-B65C-460A-A861-16EFBD4A17F1}']
    { Property Methods }

    { methods }
    function synthesizeToUrl(P1: JString; P2: JSynthesizerListener): Integer; cdecl;
    function startSpeaking(P1: JString; P2: JSynthesizerListener): Integer; cdecl;
    function pauseSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function resumeSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function stopSpeaking(P1: JSynthesizerListener): Integer; cdecl;
    function isSpeaking: Boolean; cdecl;
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destory: Boolean; cdecl;
    function isActionInstalled(P1: JContext; P2: JString): Boolean; cdecl;
    function getIntent: JIntent; cdecl;
    function isAvailable: Boolean; cdecl;

    { Property }
  end;

  TJSpeechSynthesizerAidl = class(TJavaGenericImport<JSpeechSynthesizerAidlClass, JSpeechSynthesizerAidl>) end;

  JSpeechUnderstanderAidlClass = interface(JObjectClass)
  ['{6ABFE500-AD60-4A8E-98F1-14E58362177B}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext; P2: JInitListener): JSpeechUnderstanderAidl; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeechUnderstanderAidl')]
  JSpeechUnderstanderAidl = interface(JObject)
  ['{FB567F83-17CA-4571-AF13-A7B9317AA53A}']
    { Property Methods }

    { methods }
    function startUnderstanding(P1: JSpeechUnderstanderListener): Integer; cdecl;
    function stopUnderstanding(P1: JSpeechUnderstanderListener): Integer; cdecl;
    function isUnderstanding: Boolean; cdecl;
    function cancel(P1: JSpeechUnderstanderListener): Integer; cdecl;
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function writeAudio(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
    function destory: Boolean; cdecl;
    function isActionInstalled(P1: JContext; P2: JString): Boolean; cdecl;
    function getIntent: JIntent; cdecl;
    function isAvailable: Boolean; cdecl;

    { Property }
  end;

  TJSpeechUnderstanderAidl = class(TJavaGenericImport<JSpeechUnderstanderAidlClass, JSpeechUnderstanderAidl>) end;

  JSpeechUnderstanderListener_Stub_ProxyClass = interface(JObjectClass)
  ['{335EAB1F-6024-4CDE-B3AD-39FA414135C9}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeechUnderstanderListener$Stub$Proxy')]
  JSpeechUnderstanderListener_Stub_Proxy = interface(JObject)
  ['{98D81C8F-9327-4D9B-8ECD-C72A598BBA44}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JUnderstanderResult); cdecl;
    procedure onError(P1: Integer); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJSpeechUnderstanderListener_Stub_Proxy = class(TJavaGenericImport<JSpeechUnderstanderListener_Stub_ProxyClass, JSpeechUnderstanderListener_Stub_Proxy>) end;

  JSpeechUnderstanderListener_StubClass = interface(JObjectClass)
  ['{1242ABD6-CDBC-4ED3-982C-C32B19DD9217}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSpeechUnderstanderListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JSpeechUnderstanderListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SpeechUnderstanderListener$Stub')]
  JSpeechUnderstanderListener_Stub = interface(JObject)
  ['{FAADC295-03FA-461B-B4F0-2184707B031D}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJSpeechUnderstanderListener_Stub = class(TJavaGenericImport<JSpeechUnderstanderListener_StubClass, JSpeechUnderstanderListener_Stub>) end;

//  JSpeechUnderstanderListenerClass = interface(JObjectClass)
//  ['{39DFC08C-CD1C-4C15-A4B7-09F08C801D51}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/iflytek/speech/SpeechUnderstanderListener')]
//  JSpeechUnderstanderListener = interface(IJavaInstance)
//  ['{3C42EBFA-7E07-455F-AFF6-BB1E659C5D3B}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onResult(P1: JUnderstanderResult); cdecl;
//    procedure onError(P1: Integer); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;
//
//  TJSpeechUnderstanderListener = class(TJavaGenericImport<JSpeechUnderstanderListenerClass, JSpeechUnderstanderListener>) end;

  JSynthesizerListener_Stub_ProxyClass = interface(JObjectClass)
  ['{D14E23D0-FED6-43E2-BC90-07F25C5D8AA4}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SynthesizerListener$Stub$Proxy')]
  JSynthesizerListener_Stub_Proxy = interface(JObject)
  ['{BBE63F83-7D63-42A3-9001-8137725D83A2}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onSpeakBegin; cdecl;
    procedure onSpeakPaused; cdecl;
    procedure onSpeakResumed; cdecl;
    procedure onCompleted(P1: Integer); cdecl;
    procedure onSpeakProgress(P1: Integer; P2: Integer; P3: Integer); cdecl;
    procedure onBufferProgress(P1: Integer; P2: Integer; P3: Integer; P4: JString); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;

    { Property }
  end;

  TJSynthesizerListener_Stub_Proxy = class(TJavaGenericImport<JSynthesizerListener_Stub_ProxyClass, JSynthesizerListener_Stub_Proxy>) end;

  JSynthesizerListener_StubClass = interface(JObjectClass)
  ['{C102D059-A5E3-4F2F-8938-CABD8F8B8775}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSynthesizerListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JSynthesizerListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SynthesizerListener$Stub')]
  JSynthesizerListener_Stub = interface(JObject)
  ['{1027B415-4496-4479-836D-0E67B4BC8058}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJSynthesizerListener_Stub = class(TJavaGenericImport<JSynthesizerListener_StubClass, JSynthesizerListener_Stub>) end;

//  JSynthesizerListenerClass = interface(JObjectClass)
//  ['{48605C8D-D1EC-4B25-97CE-0AAA178425D4}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/iflytek/speech/SynthesizerListener')]
//  JSynthesizerListener = interface(IJavaInstance)
//  ['{7407BBF6-E47F-4A36-B2A6-20C32A753EB6}']
//    { Property Methods }
//
//    { methods }
//    procedure onSpeakBegin; cdecl;
//    procedure onSpeakPaused; cdecl;
//    procedure onSpeakResumed; cdecl;
//    procedure onCompleted(P1: Integer); cdecl;
//    procedure onSpeakProgress(P1: Integer; P2: Integer; P3: Integer); cdecl;
//    procedure onBufferProgress(P1: Integer; P2: Integer; P3: Integer; P4: JString); cdecl;
//    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
//
//    { Property }
//  end;
//
//  TJSynthesizerListener = class(TJavaGenericImport<JSynthesizerListenerClass, JSynthesizerListener>) end;

  JSynthesizeToUrlListener_Stub_ProxyClass = interface(JObjectClass)
  ['{A3F51C4F-7E81-46FE-999F-09C4ABCAD00D}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SynthesizeToUrlListener$Stub$Proxy')]
  JSynthesizeToUrlListener_Stub_Proxy = interface(JObject)
  ['{606EF437-944D-454F-9809-2F6EFEED5095}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onSynthesizeCompleted(P1: JString; P2: Integer); cdecl;

    { Property }
  end;

  TJSynthesizeToUrlListener_Stub_Proxy = class(TJavaGenericImport<JSynthesizeToUrlListener_Stub_ProxyClass, JSynthesizeToUrlListener_Stub_Proxy>) end;

  JSynthesizeToUrlListener_StubClass = interface(JObjectClass)
  ['{EA6BA184-BDC2-46A9-BE9D-FEFD9CD3CFCA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSynthesizeToUrlListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JSynthesizeToUrlListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SynthesizeToUrlListener$Stub')]
  JSynthesizeToUrlListener_Stub = interface(JObject)
  ['{51493BBF-C296-4C86-8BD3-69EC23B3E881}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJSynthesizeToUrlListener_Stub = class(TJavaGenericImport<JSynthesizeToUrlListener_StubClass, JSynthesizeToUrlListener_Stub>) end;

  JSynthesizeToUrlListenerClass = interface(JObjectClass)
  ['{3A290D07-59AD-4B0E-8D72-286DADADAD5F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/SynthesizeToUrlListener')]
  JSynthesizeToUrlListener = interface(IJavaInstance)
  ['{310BB98F-D6B8-4268-8A69-6EFB0DBFB11B}']
    { Property Methods }

    { methods }
    procedure onSynthesizeCompleted(P1: JString; P2: Integer); cdecl;

    { Property }
  end;

  TJSynthesizeToUrlListener = class(TJavaGenericImport<JSynthesizeToUrlListenerClass, JSynthesizeToUrlListener>) end;

  JTextUnderstanderAidlClass = interface(JObjectClass)
  ['{A4A389D1-C40A-4544-8E9E-262AC103229E}']
    { static Property Methods }
    {class} function _GetSCENE: JString;

    { static Methods }
    {class} function init(P1: JContext; P2: JInitListener): JTextUnderstanderAidl; cdecl;

    { static Property }
    {class} property SCENE: JString read _GetSCENE;
  end;

  [JavaSignature('com/iflytek/speech/TextUnderstanderAidl')]
  JTextUnderstanderAidl = interface(JObject)
  ['{B14B5ED4-30B2-42E4-A045-3087FD49F902}']
    { Property Methods }

    { methods }
    function isUnderstanding: Boolean; cdecl;
    function cancel(P1: JTextUnderstanderListener): Integer; cdecl;
    function understandText(P1: JString; P2: JTextUnderstanderListener): Integer; cdecl;
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destory: Boolean; cdecl;
    function isActionInstalled(P1: JContext; P2: JString): Boolean; cdecl;
    function getIntent: JIntent; cdecl;
    function isAvailable: Boolean; cdecl;

    { Property }
  end;

  TJTextUnderstanderAidl = class(TJavaGenericImport<JTextUnderstanderAidlClass, JTextUnderstanderAidl>) end;

  JTextUnderstanderListener_Stub_ProxyClass = interface(JObjectClass)
  ['{7118E86D-1FA7-4AB9-9A84-08BA00B58F7B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/TextUnderstanderListener$Stub$Proxy')]
  JTextUnderstanderListener_Stub_Proxy = interface(JObject)
  ['{2B98499F-A76F-44A2-A19D-41DF6A0C6285}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onResult(P1: JUnderstanderResult); cdecl;
    procedure onError(P1: Integer); cdecl;

    { Property }
  end;

  TJTextUnderstanderListener_Stub_Proxy = class(TJavaGenericImport<JTextUnderstanderListener_Stub_ProxyClass, JTextUnderstanderListener_Stub_Proxy>) end;

  JTextUnderstanderListener_StubClass = interface(JObjectClass)
  ['{6EA1923F-2738-4C7F-9BC9-4C3615DB6A8C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTextUnderstanderListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JTextUnderstanderListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/TextUnderstanderListener$Stub')]
  JTextUnderstanderListener_Stub = interface(JObject)
  ['{ED3EF6B2-F726-4278-A9D3-7B30422CA57C}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJTextUnderstanderListener_Stub = class(TJavaGenericImport<JTextUnderstanderListener_StubClass, JTextUnderstanderListener_Stub>) end;

//  JTextUnderstanderListenerClass = interface(JObjectClass)
//  ['{D1437BBF-965E-4A4E-9AED-0B2F08E5D148}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/iflytek/speech/TextUnderstanderListener')]
//  JTextUnderstanderListener = interface(IJavaInstance)
//  ['{4DC864E4-1FA2-4FC7-931E-70C83B72F08C}']
//    { Property Methods }
//
//    { methods }
//    procedure onResult(P1: JUnderstanderResult); cdecl;
//    procedure onError(P1: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJTextUnderstanderListener = class(TJavaGenericImport<JTextUnderstanderListenerClass, JTextUnderstanderListener>) end;

//  JUnderstanderResult_1Class = interface(JObjectClass)
//  ['{397D4D8F-CA9C-4B66-AF0B-409DC352278F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/speech/UnderstanderResult$1')]
//  JUnderstanderResult_1 = interface(JObject)
//  ['{F8E2D7E5-D36A-4EFB-8B02-5776CCDCCF9C}']
//    { Property Methods }
//
//    { methods }
//    function createFromParcel(P1: JParcel): JUnderstanderResult; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JUnderstanderResult>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl; overload;
//    function createFromParcel(P1: JParcel): JObject; cdecl; overload;
//
//    { Property }
//  end;

//  TJUnderstanderResult_1 = class(TJavaGenericImport<JUnderstanderResult_1Class, JUnderstanderResult_1>) end;

//  JUnderstanderResultClass = interface(JObjectClass)
//  ['{7321A41B-C32C-4A74-BD06-F89BD88E22AB}']
//    { static Property Methods }
//    {class} function _GetCREATOR: JParcelable_Creator;
//
//    { static Methods }
//    {class} function init(P1: JParcel): JUnderstanderResult; cdecl; overload;
//    {class} function init(P1: JString): JUnderstanderResult; cdecl; overload;
//
//    { static Property }
//    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
//  end;
//
//  [JavaSignature('com/iflytek/speech/UnderstanderResult')]
//  JUnderstanderResult = interface(JObject)
//  ['{AB29B04B-0F6F-4E3E-B692-4285999190E3}']
//    { Property Methods }
//
//    { methods }
//    function getResultString: JString; cdecl;
//    function describeContents: Integer; cdecl;
//    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJUnderstanderResult = class(TJavaGenericImport<JUnderstanderResultClass, JUnderstanderResult>) end;

  JUtilityConfigClass = interface(JObjectClass)
  ['{B382907A-55A8-4C74-A5B8-B494C4B1492C}']
    { static Property Methods }
    {class} function _GetCOMPONENT_URL: JString;
    {class} function _GetCOMPONENT_PKG: JString;
    {class} function _GetCHANNEL_ID: JString;
    {class} function _GetCHANNEL_NAME: JString;
    {class} function _GetSETTINGS_ACTION_MAIN: JString;
    {class} function _GetSETTINGS_ACTION_TTS: JString;
    {class} function _GetSETTINGS_ACTION_ASR: JString;
    {class} function _GetACTION_SPEECH_RECOGNIZER: JString;
    {class} function _GetACTION_SPEECH_SYNTHESIZER: JString;
    {class} function _GetACTION_SPEECH_UNDERSTANDER: JString;
    {class} function _GetACTION_TEXT_UNDERSTANDER: JString;
    {class} function _GetACTION_SPEECH_WAKEUP: JString;
    {class} function _GetACTION_SPEAKER_VERIFIER: JString;
    {class} function _GetKEY_CALLER_APPID: JString;
    {class} function _GetKEY_CALLER_NAME: JString;
    {class} function _GetKEY_CALLER_PKG_NAME: JString;
    {class} function _GetKEY_CALLER_VER_NAME: JString;
    {class} function _GetKEY_CALLER_VER_CODE: JString;
    {class} function _GetSDK_VER_NAME: JString;
    {class} function _GetKEY_DEVICE_INFO: JString;
    {class} function _GetMETADATA_KEY_ENGINE_TYPE: JString;
    {class} function _GetKEY_REQUEST_PACKAGE: JString;
    {class} function _GetKEY_CHANNEL_ID: JString;
    {class} function _GetKEY_CHANNEL_NAME: JString;

    { static Methods }
    {class} function init: JUtilityConfig; cdecl;
    {class} function getCallerInfo(P1: JContext; P2: JString): JString; cdecl;
    {class} function getComponentUrlParam(P1: JContext): JString; cdecl;
    {class} procedure appendHttpParam(P1: JStringBuffer; P2: JString; P3: JString); cdecl;

    { static Property }
    {class} property COMPONENT_URL: JString read _GetCOMPONENT_URL;
    {class} property COMPONENT_PKG: JString read _GetCOMPONENT_PKG;
    {class} property CHANNEL_ID: JString read _GetCHANNEL_ID;
    {class} property CHANNEL_NAME: JString read _GetCHANNEL_NAME;
    {class} property SETTINGS_ACTION_MAIN: JString read _GetSETTINGS_ACTION_MAIN;
    {class} property SETTINGS_ACTION_TTS: JString read _GetSETTINGS_ACTION_TTS;
    {class} property SETTINGS_ACTION_ASR: JString read _GetSETTINGS_ACTION_ASR;
    {class} property ACTION_SPEECH_RECOGNIZER: JString read _GetACTION_SPEECH_RECOGNIZER;
    {class} property ACTION_SPEECH_SYNTHESIZER: JString read _GetACTION_SPEECH_SYNTHESIZER;
    {class} property ACTION_SPEECH_UNDERSTANDER: JString read _GetACTION_SPEECH_UNDERSTANDER;
    {class} property ACTION_TEXT_UNDERSTANDER: JString read _GetACTION_TEXT_UNDERSTANDER;
    {class} property ACTION_SPEECH_WAKEUP: JString read _GetACTION_SPEECH_WAKEUP;
    {class} property ACTION_SPEAKER_VERIFIER: JString read _GetACTION_SPEAKER_VERIFIER;
    {class} property KEY_CALLER_APPID: JString read _GetKEY_CALLER_APPID;
    {class} property KEY_CALLER_NAME: JString read _GetKEY_CALLER_NAME;
    {class} property KEY_CALLER_PKG_NAME: JString read _GetKEY_CALLER_PKG_NAME;
    {class} property KEY_CALLER_VER_NAME: JString read _GetKEY_CALLER_VER_NAME;
    {class} property KEY_CALLER_VER_CODE: JString read _GetKEY_CALLER_VER_CODE;
    {class} property SDK_VER_NAME: JString read _GetSDK_VER_NAME;
    {class} property KEY_DEVICE_INFO: JString read _GetKEY_DEVICE_INFO;
    {class} property METADATA_KEY_ENGINE_TYPE: JString read _GetMETADATA_KEY_ENGINE_TYPE;
    {class} property KEY_REQUEST_PACKAGE: JString read _GetKEY_REQUEST_PACKAGE;
    {class} property KEY_CHANNEL_ID: JString read _GetKEY_CHANNEL_ID;
    {class} property KEY_CHANNEL_NAME: JString read _GetKEY_CHANNEL_NAME;
  end;

  [JavaSignature('com/iflytek/speech/UtilityConfig')]
  JUtilityConfig = interface(JObject)
  ['{830B6C5A-8CF8-4A6D-9049-43FFB545EDC1}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJUtilityConfig = class(TJavaGenericImport<JUtilityConfigClass, JUtilityConfig>) end;

  JVerifierListener_Stub_ProxyClass = interface(JObjectClass)
  ['{CCBB7811-C327-4DEC-B878-C034393C699D}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/VerifierListener$Stub$Proxy')]
  JVerifierListener_Stub_Proxy = interface(JObject)
  ['{65C9F854-A700-49E7-930E-F775118D998B}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onVolumeChanged(P1: Integer); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onRegister(P1: JVerifierResult); cdecl;
    procedure onEnd(P1: JVerifierResult; P2: Integer); cdecl;
    procedure onCancel; cdecl;
    procedure onError(P1: Integer); cdecl;

    { Property }
  end;

  TJVerifierListener_Stub_Proxy = class(TJavaGenericImport<JVerifierListener_Stub_ProxyClass, JVerifierListener_Stub_Proxy>) end;

  JVerifierListener_StubClass = interface(JObjectClass)
  ['{8AD94DF6-8457-4B2A-96C0-5D4A8B814A93}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVerifierListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JVerifierListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/VerifierListener$Stub')]
  JVerifierListener_Stub = interface(JObject)
  ['{2D9912A3-EE1F-4F2D-A663-BFF515106E85}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJVerifierListener_Stub = class(TJavaGenericImport<JVerifierListener_StubClass, JVerifierListener_Stub>) end;

//  JVerifierListenerClass = interface(JObjectClass)
//  ['{A373F8A3-99A8-447A-BC9E-14C658F23A0E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/iflytek/speech/VerifierListener')]
//  JVerifierListener = interface(IJavaInstance)
//  ['{4893FCA7-56F2-4E50-AA64-E3D79686DED3}']
//    { Property Methods }
//
//    { methods }
//    procedure onVolumeChanged(P1: Integer); cdecl;
//    procedure onBeginOfSpeech; cdecl;
//    procedure onEndOfSpeech; cdecl;
//    procedure onRegister(P1: JVerifierResult); cdecl;
//    procedure onEnd(P1: JVerifierResult; P2: Integer); cdecl;
//    procedure onCancel; cdecl;
//    procedure onError(P1: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJVerifierListener = class(TJavaGenericImport<JVerifierListenerClass, JVerifierListener>) end;

//  JVerifierResult_1Class = interface(JObjectClass)
//  ['{B9A02FEA-EF2B-4017-900B-79252885B0E4}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/speech/VerifierResult$1')]
//  JVerifierResult_1 = interface(JObject)
//  ['{F02374B8-6394-432F-AC80-2206793FF3D8}']
//    { Property Methods }
//
//    { methods }
//    function createFromParcel(P1: JParcel): JVerifierResult; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JVerifierResult>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl; overload;
//    function createFromParcel(P1: JParcel): JObject; cdecl; overload;
//
//    { Property }
//  end;

//  TJVerifierResult_1 = class(TJavaGenericImport<JVerifierResult_1Class, JVerifierResult_1>) end;

//  JVerifierResultClass = interface(JObjectClass)
//  ['{922BF5F7-28B4-4C8D-AD35-8D9BA5820EF1}']
//    { static Property Methods }
//    {class} function _GetCREATOR: JParcelable_Creator;
//
//    { static Methods }
//    {class} function init(P1: JParcel): JVerifierResult; cdecl; overload;
//    {class} function init(P1: JString): JVerifierResult; cdecl; overload;
//
//    { static Property }
//    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
//  end;
//
//  [JavaSignature('com/iflytek/speech/VerifierResult')]
//  JVerifierResult = interface(JObject)
//  ['{3A66D5A3-DBC7-44AD-AF7F-D9ACF92297E7}']
//    { Property Methods }
//    function _Getsst: JString;
//    procedure _Setsst(asst: JString);
//    function _Getret: Boolean;
//    procedure _Setret(aret: Boolean);
//    function _Getdcs: JString;
//    procedure _Setdcs(adcs: JString);
//    function _Getvid: JString;
//    procedure _Setvid(avid: JString);
//    function _Getsuc: Integer;
//    procedure _Setsuc(asuc: Integer);
//    function _Getrgn: Integer;
//    procedure _Setrgn(argn: Integer);
//    function _Gettrs: JString;
//    procedure _Settrs(atrs: JString);
//    function _Getsource: JString;
//    procedure _Setsource(asource: JString);
//
//    { methods }
//    function getResultString: JString; cdecl;
//    function describeContents: Integer; cdecl;
//    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;
//
//    { Property }
//    property sst: JString read _Getsst write _Setsst;
//    property ret: Boolean read _Getret write _Setret;
//    property dcs: JString read _Getdcs write _Setdcs;
//    property vid: JString read _Getvid write _Setvid;
//    property suc: Integer read _Getsuc write _Setsuc;
//    property rgn: Integer read _Getrgn write _Setrgn;
//    property trs: JString read _Gettrs write _Settrs;
//    property source: JString read _Getsource write _Setsource;
//  end;
//
//  TJVerifierResult = class(TJavaGenericImport<JVerifierResultClass, JVerifierResult>) end;
//
//  JVersionClass = interface(JObjectClass)
//  ['{8D1B9E52-F765-4384-A55F-E15DF4AE560C}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: JVersion; cdecl;
//    {class} function getVersionName: JString; cdecl;
//    {class} function getVersionCode: JString; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/iflytek/speech/Version')]
//  JVersion = interface(JObject)
//  ['{26957567-616B-4C09-83EC-B21D39F44A7A}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJVersion = class(TJavaGenericImport<JVersionClass, JVersion>) end;

  JVoiceWakeuperAidlClass = interface(JObjectClass)
  ['{3A4CE128-B509-43C9-9131-719AA71EFACF}']
    { static Property Methods }
    {class} function _GetIVW_THRESHOLD: JString;
    {class} function _GetIVW_WORD_ID: JString;
    {class} function _GetIVW_FILES: JString;
    {class} function _GetPROVIDER_NAME: JString;
    {class} function _GetARG_RES_PROVIDER_AUTHORITY: JString;
    {class} function _GetPARAMS_SEPARATE: JString;
    {class} function _GetIVP_USER_NAME: JString;
    {class} function _GetIVP_RES_ID: JString;
    {class} function _GetIVW_AND_IVP: JString;
    {class} function _GetWAKEUP_RESULT_ID: JString;
    {class} function _GetWAKEUP_RESULT_SCORE: JString;
    {class} function _GetARG_RES_TYPE: JString;
    {class} function _GetRES_FROM_ASSETS: Integer;
    {class} function _GetRES_SPECIFIED: Integer;
    {class} function _GetRES_FROM_CLIENT: Integer;

    { static Methods }
    {class} function init(P1: JContext; P2: JInitListener): JVoiceWakeuperAidl; cdecl;

    { static Property }
    {class} property IVW_THRESHOLD: JString read _GetIVW_THRESHOLD;
    {class} property IVW_WORD_ID: JString read _GetIVW_WORD_ID;
    {class} property IVW_FILES: JString read _GetIVW_FILES;
    {class} property PROVIDER_NAME: JString read _GetPROVIDER_NAME;
    {class} property ARG_RES_PROVIDER_AUTHORITY: JString read _GetARG_RES_PROVIDER_AUTHORITY;
    {class} property PARAMS_SEPARATE: JString read _GetPARAMS_SEPARATE;
    {class} property IVP_USER_NAME: JString read _GetIVP_USER_NAME;
    {class} property IVP_RES_ID: JString read _GetIVP_RES_ID;
    {class} property IVW_AND_IVP: JString read _GetIVW_AND_IVP;
    {class} property WAKEUP_RESULT_ID: JString read _GetWAKEUP_RESULT_ID;
    {class} property WAKEUP_RESULT_SCORE: JString read _GetWAKEUP_RESULT_SCORE;
    {class} property ARG_RES_TYPE: JString read _GetARG_RES_TYPE;
    {class} property RES_FROM_ASSETS: Integer read _GetRES_FROM_ASSETS;
    {class} property RES_SPECIFIED: Integer read _GetRES_SPECIFIED;
    {class} property RES_FROM_CLIENT: Integer read _GetRES_FROM_CLIENT;
  end;

  [JavaSignature('com/iflytek/speech/VoiceWakeuperAidl')]
  JVoiceWakeuperAidl = interface(JObject)
  ['{344265D5-0F10-4293-967F-525ED9390566}']
    { Property Methods }

    { methods }
    function startListening(P1: JWakeuperListener): Integer; cdecl;
    function cancel(P1: JWakeuperListener): Integer; cdecl;
    function destroy: Boolean; cdecl;
    function isListening: Boolean; cdecl;
    function setParameter(P1: JString; P2: JString): Integer; cdecl;
    function getParameter(P1: JString): JString; cdecl;
    function destory: Boolean; cdecl;
    function isActionInstalled(P1: JContext; P2: JString): Boolean; cdecl;
    function getIntent: JIntent; cdecl;
    function isAvailable: Boolean; cdecl;

    { Property }
  end;

  TJVoiceWakeuperAidl = class(TJavaGenericImport<JVoiceWakeuperAidlClass, JVoiceWakeuperAidl>) end;

  JWakeuperListener_Stub_ProxyClass = interface(JObjectClass)
  ['{D8F51684-A686-47A2-B4FF-FEEBBB481D0E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/WakeuperListener$Stub$Proxy')]
  JWakeuperListener_Stub_Proxy = interface(JObject)
  ['{2DE7FD49-58CE-40F8-A371-BC205D76F784}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onVolumeChanged(P1: Integer); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JWakeuperResult); cdecl;
    procedure onError(P1: Integer); cdecl;

    { Property }
  end;

  TJWakeuperListener_Stub_Proxy = class(TJavaGenericImport<JWakeuperListener_Stub_ProxyClass, JWakeuperListener_Stub_Proxy>) end;

  JWakeuperListener_StubClass = interface(JObjectClass)
  ['{0F57B033-2011-4C06-B8D0-1C1EEB5B266A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JWakeuperListener_Stub; cdecl;
    {class} function asInterface(P1: JIBinder): JWakeuperListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/WakeuperListener$Stub')]
  JWakeuperListener_Stub = interface(JObject)
  ['{50948252-D976-4170-84E6-D87C2FE8B61F}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;

    { Property }
  end;

  TJWakeuperListener_Stub = class(TJavaGenericImport<JWakeuperListener_StubClass, JWakeuperListener_Stub>) end;

  JWakeuperListenerClass = interface(JObjectClass)
  ['{0F9D4E2D-A1B1-42EE-96E8-576FFAF54DE3}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/iflytek/speech/WakeuperListener')]
  JWakeuperListener = interface(IJavaInstance)
  ['{668D7894-CA74-4707-B6E0-768298EBC4C4}']
    { Property Methods }

    { methods }
    procedure onVolumeChanged(P1: Integer); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JWakeuperResult); cdecl;
    procedure onError(P1: Integer); cdecl;

    { Property }
  end;

  TJWakeuperListener = class(TJavaGenericImport<JWakeuperListenerClass, JWakeuperListener>) end;

//  JWakeuperResult_1Class = interface(JObjectClass)
//  ['{D53D6D67-49FE-4C0F-BB77-B07E17E7AE75}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/iflytek/speech/WakeuperResult$1')]
//  JWakeuperResult_1 = interface(JObject)
//  ['{26F9740C-A36D-49D0-A65A-C8B21A08137F}']
//    { Property Methods }
//
//    { methods }
//    function createFromParcel(P1: JParcel): JWakeuperResult; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JWakeuperResult>; cdecl; overload;
//    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl; overload;
//    function createFromParcel(P1: JParcel): JObject; cdecl; overload;
//
//    { Property }
//  end;

//  TJWakeuperResult_1 = class(TJavaGenericImport<JWakeuperResult_1Class, JWakeuperResult_1>) end;

  JWakeuperResultClass = interface(JObjectClass)
  ['{B7EC22E5-F287-4F5F-AEC5-E36FA9A71DDE}']
    { static Property Methods }
    {class} function _GetCREATOR: JParcelable_Creator;

    { static Methods }
    {class} function init(P1: JParcel): JWakeuperResult; cdecl; overload;
    {class} function init(P1: JString): JWakeuperResult; cdecl; overload;

    { static Property }
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/iflytek/speech/WakeuperResult')]
  JWakeuperResult = interface(JObject)
  ['{A4CE243C-5B68-4A3A-B64F-F0900F8B7F05}']
    { Property Methods }

    { methods }
    function getResultString: JString; cdecl;
    function describeContents: Integer; cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;

    { Property }
  end;

  TJWakeuperResult = class(TJavaGenericImport<JWakeuperResultClass, JWakeuperResult>) end;

{$ENDIF}
implementation
{$IFDEF ANDROID}


procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JDataDownloader',
    TypeInfo(Androidapi.JNI.Msc.JDataDownloader));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JDataUploader',
    TypeInfo(Androidapi.JNI.Msc.JDataUploader));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JErrorCode',
    TypeInfo(Androidapi.JNI.Msc.JErrorCode));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JEvaluatorListener',
    TypeInfo(Androidapi.JNI.Msc.JEvaluatorListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JEvaluatorResult_1',
//    TypeInfo(Androidapi.JNI.Msc.JEvaluatorResult_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JEvaluatorResult',
    TypeInfo(Androidapi.JNI.Msc.JEvaluatorResult));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JFaceDetector',
    TypeInfo(Androidapi.JNI.Msc.JFaceDetector));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JFaceRequest_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JFaceRequest_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JFaceRequest_a',
//    TypeInfo(Androidapi.JNI.Msc.JFaceRequest_a));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JFaceRequest',
    TypeInfo(Androidapi.JNI.Msc.JFaceRequest));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JGrammarListener',
    TypeInfo(Androidapi.JNI.Msc.JGrammarListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JIdentityListener',
    TypeInfo(Androidapi.JNI.Msc.JIdentityListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JIdentityResult_1',
//    TypeInfo(Androidapi.JNI.Msc.JIdentityResult_1));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JIdentityResult',
    TypeInfo(Androidapi.JNI.Msc.JIdentityResult));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JIdentityVerifier_1',
//    TypeInfo(Androidapi.JNI.Msc.JIdentityVerifier_1));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JIdentityVerifier',
    TypeInfo(Androidapi.JNI.Msc.JIdentityVerifier));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JInitListener',
    TypeInfo(Androidapi.JNI.Msc.JInitListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JLexiconListener',
    TypeInfo(Androidapi.JNI.Msc.JLexiconListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerListener',
    TypeInfo(Androidapi.JNI.Msc.JRecognizerListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerResult_1',
//    TypeInfo(Androidapi.JNI.Msc.JRecognizerResult_1));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerResult',
    TypeInfo(Androidapi.JNI.Msc.JRecognizerResult));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Ja',
//    TypeInfo(Androidapi.JNI.Msc.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jb_a',
//    TypeInfo(Androidapi.JNI.Msc.Jb_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jb',
//    TypeInfo(Androidapi.JNI.Msc.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jc_1',
//    TypeInfo(Androidapi.JNI.Msc.Jc_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jc_2',
//    TypeInfo(Androidapi.JNI.Msc.Jc_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jc_a',
//    TypeInfo(Androidapi.JNI.Msc.Jc_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jc_b',
//    TypeInfo(Androidapi.JNI.Msc.Jc_b));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jc',
//    TypeInfo(Androidapi.JNI.Msc.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jd',
//    TypeInfo(Androidapi.JNI.Msc.Jd));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JPcmRecorder_PcmRecordListener',
    TypeInfo(Androidapi.JNI.Msc.JPcmRecorder_PcmRecordListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JPcmRecorder',
    TypeInfo(Androidapi.JNI.Msc.JPcmRecorder));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRequestListener',
    TypeInfo(Androidapi.JNI.Msc.JRequestListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Ja',
//    TypeInfo(Androidapi.JNI.Msc.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jb',
//    TypeInfo(Androidapi.JNI.Msc.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jc',
//    TypeInfo(Androidapi.JNI.Msc.Jc));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JResource',
    TypeInfo(Androidapi.JNI.Msc.JResource));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSetting_LOG_LEVEL',
    TypeInfo(Androidapi.JNI.Msc.JSetting_LOG_LEVEL));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSetting',
    TypeInfo(Androidapi.JNI.Msc.JSetting));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeakerVerifier',
    TypeInfo(Androidapi.JNI.Msc.JSpeakerVerifier));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechConstant',
    TypeInfo(Androidapi.JNI.Msc.JSpeechConstant));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechError',
    TypeInfo(Androidapi.JNI.Msc.JSpeechError));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechEvaluator',
    TypeInfo(Androidapi.JNI.Msc.JSpeechEvaluator));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechEvent',
    TypeInfo(Androidapi.JNI.Msc.JSpeechEvent));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechListener',
    TypeInfo(Androidapi.JNI.Msc.JSpeechListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechRecognizer_1',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechRecognizer_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechRecognizer_2',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechRecognizer_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechRecognizer_3',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechRecognizer_3));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechRecognizer_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechRecognizer_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechRecognizer_a_2',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechRecognizer_a_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechRecognizer_a',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechRecognizer_a));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechRecognizer',
    TypeInfo(Androidapi.JNI.Msc.JSpeechRecognizer));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechSynthesizer_1',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechSynthesizer_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechSynthesizer_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechSynthesizer_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechSynthesizer_a_2',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechSynthesizer_a_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechSynthesizer_a',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechSynthesizer_a));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechSynthesizer',
    TypeInfo(Androidapi.JNI.Msc.JSpeechSynthesizer));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstander_1',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstander_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstander_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstander_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstander_a_2',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstander_a_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstander_a',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstander_a));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstander',
    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstander));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstanderListener',
    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstanderListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUtility_1',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechUtility_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUtility_a',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechUtility_a));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUtility',
    TypeInfo(Androidapi.JNI.Msc.JSpeechUtility));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSynthesizerListener',
    TypeInfo(Androidapi.JNI.Msc.JSynthesizerListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstander_1',
//    TypeInfo(Androidapi.JNI.Msc.JTextUnderstander_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstander_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JTextUnderstander_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstander_a_2',
//    TypeInfo(Androidapi.JNI.Msc.JTextUnderstander_a_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstander_a',
//    TypeInfo(Androidapi.JNI.Msc.JTextUnderstander_a));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstander',
    TypeInfo(Androidapi.JNI.Msc.JTextUnderstander));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstanderListener',
    TypeInfo(Androidapi.JNI.Msc.JTextUnderstanderListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JA',
//    TypeInfo(Androidapi.JNI.Msc.JA));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JaA',
//    TypeInfo(Androidapi.JNI.Msc.JaA));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jab_a',
//    TypeInfo(Androidapi.JNI.Msc.Jab_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JaB',
//    TypeInfo(Androidapi.JNI.Msc.JaB));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jac_a',
//    TypeInfo(Androidapi.JNI.Msc.Jac_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JaC',
//    TypeInfo(Androidapi.JNI.Msc.JaC));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jad_a',
//    TypeInfo(Androidapi.JNI.Msc.Jad_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JaD',
//    TypeInfo(Androidapi.JNI.Msc.JaD));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JaE',
//    TypeInfo(Androidapi.JNI.Msc.JaE));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JaF',
//    TypeInfo(Androidapi.JNI.Msc.JaF));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JaG',
//    TypeInfo(Androidapi.JNI.Msc.JaG));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jah_1',
//    TypeInfo(Androidapi.JNI.Msc.Jah_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jah_a',
//    TypeInfo(Androidapi.JNI.Msc.Jah_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JaH',
//    TypeInfo(Androidapi.JNI.Msc.JaH));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jai',
//    TypeInfo(Androidapi.JNI.Msc.Jai));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jaj',
//    TypeInfo(Androidapi.JNI.Msc.Jaj));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jak',
//    TypeInfo(Androidapi.JNI.Msc.Jak));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jal',
//    TypeInfo(Androidapi.JNI.Msc.Jal));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jam',
//    TypeInfo(Androidapi.JNI.Msc.Jam));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jan_1',
//    TypeInfo(Androidapi.JNI.Msc.Jan_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jan_a',
//    TypeInfo(Androidapi.JNI.Msc.Jan_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jan',
//    TypeInfo(Androidapi.JNI.Msc.Jan));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jao',
//    TypeInfo(Androidapi.JNI.Msc.Jao));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jap',
//    TypeInfo(Androidapi.JNI.Msc.Jap));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jaq_1',
//    TypeInfo(Androidapi.JNI.Msc.Jaq_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jaq',
//    TypeInfo(Androidapi.JNI.Msc.Jaq));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jar',
//    TypeInfo(Androidapi.JNI.Msc.Jar));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jas',
//    TypeInfo(Androidapi.JNI.Msc.Jas));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jat',
//    TypeInfo(Androidapi.JNI.Msc.Jat));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jau',
//    TypeInfo(Androidapi.JNI.Msc.Jau));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jav',
//    TypeInfo(Androidapi.JNI.Msc.Jav));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jaw',
//    TypeInfo(Androidapi.JNI.Msc.Jaw));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jax',
//    TypeInfo(Androidapi.JNI.Msc.Jax));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jay',
//    TypeInfo(Androidapi.JNI.Msc.Jay));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jaz',
//    TypeInfo(Androidapi.JNI.Msc.Jaz));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JB_1',
//    TypeInfo(Androidapi.JNI.Msc.JB_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JB_2',
//    TypeInfo(Androidapi.JNI.Msc.JB_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JB_3',
//    TypeInfo(Androidapi.JNI.Msc.JB_3));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JB_4',
//    TypeInfo(Androidapi.JNI.Msc.JB_4));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JB_5',
//    TypeInfo(Androidapi.JNI.Msc.JB_5));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JB_a',
//    TypeInfo(Androidapi.JNI.Msc.JB_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JB',
//    TypeInfo(Androidapi.JNI.Msc.JB));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JC',
//    TypeInfo(Androidapi.JNI.Msc.JC));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JD',
//    TypeInfo(Androidapi.JNI.Msc.JD));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JE',
//    TypeInfo(Androidapi.JNI.Msc.JE));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JF',
//    TypeInfo(Androidapi.JNI.Msc.JF));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JG',
//    TypeInfo(Androidapi.JNI.Msc.JG));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JH',
//    TypeInfo(Androidapi.JNI.Msc.JH));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JI',
//    TypeInfo(Androidapi.JNI.Msc.JI));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jj_1',
//    TypeInfo(Androidapi.JNI.Msc.Jj_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JJ',
//    TypeInfo(Androidapi.JNI.Msc.JJ));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JK',
//    TypeInfo(Androidapi.JNI.Msc.JK));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JL_a',
//    TypeInfo(Androidapi.JNI.Msc.JL_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JL',
//    TypeInfo(Androidapi.JNI.Msc.JL));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JM',
//    TypeInfo(Androidapi.JNI.Msc.JM));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JN_1',
//    TypeInfo(Androidapi.JNI.Msc.JN_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JN_2',
//    TypeInfo(Androidapi.JNI.Msc.JN_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JN_3',
//    TypeInfo(Androidapi.JNI.Msc.JN_3));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jn_a_1',
//    TypeInfo(Androidapi.JNI.Msc.Jn_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jn_a',
//    TypeInfo(Androidapi.JNI.Msc.Jn_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JN',
//    TypeInfo(Androidapi.JNI.Msc.JN));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jo_1',
//    TypeInfo(Androidapi.JNI.Msc.Jo_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JO_a',
//    TypeInfo(Androidapi.JNI.Msc.JO_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JO',
//    TypeInfo(Androidapi.JNI.Msc.JO));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JP',
//    TypeInfo(Androidapi.JNI.Msc.JP));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JQ_1',
//    TypeInfo(Androidapi.JNI.Msc.JQ_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JQ_2',
//    TypeInfo(Androidapi.JNI.Msc.JQ_2));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JQ_3',
//    TypeInfo(Androidapi.JNI.Msc.JQ_3));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JQ_4',
//    TypeInfo(Androidapi.JNI.Msc.JQ_4));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JQ',
//    TypeInfo(Androidapi.JNI.Msc.JQ));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JR',
//    TypeInfo(Androidapi.JNI.Msc.JR));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Js_a',
//    TypeInfo(Androidapi.JNI.Msc.Js_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Js_b',
//    TypeInfo(Androidapi.JNI.Msc.Js_b));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JS',
//    TypeInfo(Androidapi.JNI.Msc.JS));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jt_a',
//    TypeInfo(Androidapi.JNI.Msc.Jt_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JT',
//    TypeInfo(Androidapi.JNI.Msc.JT));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JU',
//    TypeInfo(Androidapi.JNI.Msc.JU));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JV_1',
//    TypeInfo(Androidapi.JNI.Msc.JV_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jv_a',
//    TypeInfo(Androidapi.JNI.Msc.Jv_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JV',
//    TypeInfo(Androidapi.JNI.Msc.JV));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JW_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JW_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JW_a',
//    TypeInfo(Androidapi.JNI.Msc.JW_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JW',
//    TypeInfo(Androidapi.JNI.Msc.JW));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JX_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JX_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JX_a',
//    TypeInfo(Androidapi.JNI.Msc.JX_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JX',
//    TypeInfo(Androidapi.JNI.Msc.JX));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JY_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JY_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JY_a',
//    TypeInfo(Androidapi.JNI.Msc.JY_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JY',
//    TypeInfo(Androidapi.JNI.Msc.JY));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JZ_a_1',
//    TypeInfo(Androidapi.JNI.Msc.JZ_a_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JZ_a',
//    TypeInfo(Androidapi.JNI.Msc.JZ_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JZ_b_1',
//    TypeInfo(Androidapi.JNI.Msc.JZ_b_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JZ_b',
//    TypeInfo(Androidapi.JNI.Msc.JZ_b));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JZ_c_1',
//    TypeInfo(Androidapi.JNI.Msc.JZ_c_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JZ_c',
//    TypeInfo(Androidapi.JNI.Msc.JZ_c));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JZ',
//    TypeInfo(Androidapi.JNI.Msc.JZ));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Ja_1',
//    TypeInfo(Androidapi.JNI.Msc.Ja_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Ja_a',
//    TypeInfo(Androidapi.JNI.Msc.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Ja',
//    TypeInfo(Androidapi.JNI.Msc.Ja));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerDialog',
    TypeInfo(Androidapi.JNI.Msc.JRecognizerDialog));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerDialogListener',
    TypeInfo(Androidapi.JNI.Msc.JRecognizerDialogListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JUnderstanderResult_1',
//    TypeInfo(Androidapi.JNI.Msc.JUnderstanderResult_1));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JUnderstanderResult',
    TypeInfo(Androidapi.JNI.Msc.JUnderstanderResult));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JAccelerometer_1',
//    TypeInfo(Androidapi.JNI.Msc.JAccelerometer_1));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JAccelerometer_CLOCKWISE_ANGLE',
    TypeInfo(Androidapi.JNI.Msc.JAccelerometer_CLOCKWISE_ANGLE));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JAccelerometer',
    TypeInfo(Androidapi.JNI.Msc.JAccelerometer));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JAudioDetector_DetectorResult',
    TypeInfo(Androidapi.JNI.Msc.JAudioDetector_DetectorResult));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JAudioDetector',
    TypeInfo(Androidapi.JNI.Msc.JAudioDetector));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JContactManager_ContactListener',
    TypeInfo(Androidapi.JNI.Msc.JContactManager_ContactListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JContactManager',
    TypeInfo(Androidapi.JNI.Msc.JContactManager));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JResourceUtil_RESOURCE_TYPE',
    TypeInfo(Androidapi.JNI.Msc.JResourceUtil_RESOURCE_TYPE));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JResourceUtil',
    TypeInfo(Androidapi.JNI.Msc.JResourceUtil));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JUserWords',
    TypeInfo(Androidapi.JNI.Msc.JUserWords));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVerifierUtil',
    TypeInfo(Androidapi.JNI.Msc.JVerifierUtil));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVolumeUtil',
    TypeInfo(Androidapi.JNI.Msc.JVolumeUtil));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVerifierListener',
    TypeInfo(Androidapi.JNI.Msc.JVerifierListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVerifierResult',
    TypeInfo(Androidapi.JNI.Msc.JVerifierResult));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVersion',
    TypeInfo(Androidapi.JNI.Msc.JVersion));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Ja',
//    TypeInfo(Androidapi.JNI.Msc.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jb',
//    TypeInfo(Androidapi.JNI.Msc.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.Jc',
//    TypeInfo(Androidapi.JNI.Msc.Jc));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JLaunchService',
    TypeInfo(Androidapi.JNI.Msc.JLaunchService));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JMetaVAD_Instance',
    TypeInfo(Androidapi.JNI.Msc.JMetaVAD_Instance));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JMetaVAD',
    TypeInfo(Androidapi.JNI.Msc.JMetaVAD));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JMSC',
    TypeInfo(Androidapi.JNI.Msc.JMSC));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JMSCSessionInfo',
    TypeInfo(Androidapi.JNI.Msc.JMSCSessionInfo));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVAD_VadData',
    TypeInfo(Androidapi.JNI.Msc.JVAD_VadData));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVAD',
    TypeInfo(Androidapi.JNI.Msc.JVAD));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeakerVerifier_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JISpeakerVerifier_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeakerVerifier_Stub',
    TypeInfo(Androidapi.JNI.Msc.JISpeakerVerifier_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeakerVerifier',
    TypeInfo(Androidapi.JNI.Msc.JISpeakerVerifier));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechRecognizer_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JISpeechRecognizer_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechRecognizer_Stub',
    TypeInfo(Androidapi.JNI.Msc.JISpeechRecognizer_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechRecognizer',
    TypeInfo(Androidapi.JNI.Msc.JISpeechRecognizer));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechSynthesizer_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JISpeechSynthesizer_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechSynthesizer_Stub',
    TypeInfo(Androidapi.JNI.Msc.JISpeechSynthesizer_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechSynthesizer',
    TypeInfo(Androidapi.JNI.Msc.JISpeechSynthesizer));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechUnderstander_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JISpeechUnderstander_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechUnderstander_Stub',
    TypeInfo(Androidapi.JNI.Msc.JISpeechUnderstander_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechUnderstander',
    TypeInfo(Androidapi.JNI.Msc.JISpeechUnderstander));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JITextUnderstander_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JITextUnderstander_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JITextUnderstander_Stub',
    TypeInfo(Androidapi.JNI.Msc.JITextUnderstander_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JITextUnderstander',
    TypeInfo(Androidapi.JNI.Msc.JITextUnderstander));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JIWakeuper_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JIWakeuper_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JIWakeuper_Stub',
    TypeInfo(Androidapi.JNI.Msc.JIWakeuper_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JIWakeuper',
    TypeInfo(Androidapi.JNI.Msc.JIWakeuper));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JGrammarListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JGrammarListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JGrammarListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JGrammarListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JGrammarListener',
    TypeInfo(Androidapi.JNI.Msc.JGrammarListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JISpeechModule',
    TypeInfo(Androidapi.JNI.Msc.JISpeechModule));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JLexiconListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JLexiconListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JLexiconListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JLexiconListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JLexiconListener',
    TypeInfo(Androidapi.JNI.Msc.JLexiconListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JRecognizerListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JRecognizerListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerListener',
    TypeInfo(Androidapi.JNI.Msc.JRecognizerListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerResult_1',
//    TypeInfo(Androidapi.JNI.Msc.JRecognizerResult_1));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JRecognizerResult',
    TypeInfo(Androidapi.JNI.Msc.JRecognizerResult));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeakerVerifierAidl_DownloadListener',
    TypeInfo(Androidapi.JNI.Msc.JSpeakerVerifierAidl_DownloadListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeakerVerifierAidl_PassWord',
    TypeInfo(Androidapi.JNI.Msc.JSpeakerVerifierAidl_PassWord));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeakerVerifierAidl',
    TypeInfo(Androidapi.JNI.Msc.JSpeakerVerifierAidl));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechComponent',
    TypeInfo(Androidapi.JNI.Msc.JSpeechComponent));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechModuleAidl_1',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechModuleAidl_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechModuleAidl_2',
//    TypeInfo(Androidapi.JNI.Msc.JSpeechModuleAidl_2));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechModuleAidl',
    TypeInfo(Androidapi.JNI.Msc.JSpeechModuleAidl));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechRecognizerAidl',
    TypeInfo(Androidapi.JNI.Msc.JSpeechRecognizerAidl));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechSynthesizerAidl',
    TypeInfo(Androidapi.JNI.Msc.JSpeechSynthesizerAidl));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstanderAidl',
    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstanderAidl));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstanderListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstanderListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstanderListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstanderListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSpeechUnderstanderListener',
    TypeInfo(Androidapi.JNI.Msc.JSpeechUnderstanderListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSynthesizerListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JSynthesizerListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSynthesizerListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JSynthesizerListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSynthesizerListener',
    TypeInfo(Androidapi.JNI.Msc.JSynthesizerListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSynthesizeToUrlListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JSynthesizeToUrlListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSynthesizeToUrlListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JSynthesizeToUrlListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JSynthesizeToUrlListener',
    TypeInfo(Androidapi.JNI.Msc.JSynthesizeToUrlListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstanderAidl',
    TypeInfo(Androidapi.JNI.Msc.JTextUnderstanderAidl));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstanderListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JTextUnderstanderListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstanderListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JTextUnderstanderListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JTextUnderstanderListener',
    TypeInfo(Androidapi.JNI.Msc.JTextUnderstanderListener));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JUnderstanderResult_1',
//    TypeInfo(Androidapi.JNI.Msc.JUnderstanderResult_1));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JUnderstanderResult',
    TypeInfo(Androidapi.JNI.Msc.JUnderstanderResult));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JUtilityConfig',
    TypeInfo(Androidapi.JNI.Msc.JUtilityConfig));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVerifierListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JVerifierListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVerifierListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JVerifierListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVerifierListener',
    TypeInfo(Androidapi.JNI.Msc.JVerifierListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVerifierResult_1',
//    TypeInfo(Androidapi.JNI.Msc.JVerifierResult_1));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVerifierResult',
    TypeInfo(Androidapi.JNI.Msc.JVerifierResult));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVersion',
    TypeInfo(Androidapi.JNI.Msc.JVersion));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JVoiceWakeuperAidl',
    TypeInfo(Androidapi.JNI.Msc.JVoiceWakeuperAidl));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JWakeuperListener_Stub_Proxy',
    TypeInfo(Androidapi.JNI.Msc.JWakeuperListener_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JWakeuperListener_Stub',
    TypeInfo(Androidapi.JNI.Msc.JWakeuperListener_Stub));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JWakeuperListener',
    TypeInfo(Androidapi.JNI.Msc.JWakeuperListener));
//  TRegTypes.RegisterType('Androidapi.JNI.Msc.JWakeuperResult_1',
//    TypeInfo(Androidapi.JNI.Msc.JWakeuperResult_1));
  TRegTypes.RegisterType('Androidapi.JNI.Msc.JWakeuperResult',
    TypeInfo(Androidapi.JNI.Msc.JWakeuperResult));
end;


initialization
  RegisterTypes;

{$ENDIF}

end.

