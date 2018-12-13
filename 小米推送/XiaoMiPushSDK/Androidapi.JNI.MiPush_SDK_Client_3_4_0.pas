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
//  生成时间：2017-06-13 22:41:44
//  工具版本：1.0.2015.5.11
//
//====================================================
unit Androidapi.JNI.MiPush_SDK_Client_3_4_0;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
//  Androidapi.JNI.android.accounts.Account,
  Androidapi.JNI.os,
//  Androidapi.JNI.java.net.URL,
//  Androidapi.JNI.java.net.HttpURLConnection,
  Androidapi.JNI.Net,
  Androidapi.JNI.App,
//  Androidapi.JNI.org.json.JSONObject,
//  Androidapi.JNI.java.net.InetSocketAddress,
//  Androidapi.JNI.org.xmlpull.v1.XmlPullParser,
  Androidapi.JNI.Dalvik;
//  ,
//  Androidapi.JNI.java.net.Socket,
//  Androidapi.JNI.java.text.DateFormat,
//  Androidapi.JNI.java.nio.ByteBuffer;


type
// ===== Forward declarations =====

//  Ja = interface; //com.google.protobuf.micro.a
//  Jb = interface; //com.google.protobuf.micro.b
//  Jc_a = interface; //com.google.protobuf.micro.c$a
//  Jc = interface; //com.google.protobuf.micro.c
//  Jd = interface; //com.google.protobuf.micro.d
//  Je = interface; //com.google.protobuf.micro.e
//  Jf = interface; //com.google.protobuf.micro.f
//  Ja = interface; //com.xiaomi.channel.commonutils.android.a
//  Jb_a = interface; //com.xiaomi.channel.commonutils.android.b$a
//  Jb = interface; //com.xiaomi.channel.commonutils.android.b
//  Jc = interface; //com.xiaomi.channel.commonutils.android.c
//  Jd = interface; //com.xiaomi.channel.commonutils.android.d
//  Je = interface; //com.xiaomi.channel.commonutils.android.e
//  Jf = interface; //com.xiaomi.channel.commonutils.android.f
//  Jg = interface; //com.xiaomi.channel.commonutils.android.g
//  Jh = interface; //com.xiaomi.channel.commonutils.android.h
//  Ji = interface; //com.xiaomi.channel.commonutils.android.i
//  Jj = interface; //com.xiaomi.channel.commonutils.android.j
//  Ja = interface; //com.xiaomi.channel.commonutils.file.a
//  Jb = interface; //com.xiaomi.channel.commonutils.file.b
//  Jc = interface; //com.xiaomi.channel.commonutils.file.c
//  Ja = interface; //com.xiaomi.channel.commonutils.logger.a
//  Jb = interface; //com.xiaomi.channel.commonutils.logger.b
  JLoggerInterface = interface; //com.xiaomi.channel.commonutils.logger.LoggerInterface
//  Ja = interface; //com.xiaomi.channel.commonutils.misc.a
//  Jb = interface; //com.xiaomi.channel.commonutils.misc.b
//  Jc = interface; //com.xiaomi.channel.commonutils.misc.c
//  Jd = interface; //com.xiaomi.channel.commonutils.misc.d
//  Je = interface; //com.xiaomi.channel.commonutils.misc.e
//  Jf = interface; //com.xiaomi.channel.commonutils.misc.f
//  Jg_a = interface; //com.xiaomi.channel.commonutils.misc.g$a
//  Jg_b = interface; //com.xiaomi.channel.commonutils.misc.g$b
//  Jg = interface; //com.xiaomi.channel.commonutils.misc.g
//  Jh = interface; //com.xiaomi.channel.commonutils.misc.h
//  Ji_a = interface; //com.xiaomi.channel.commonutils.misc.i$a
//  Ji_b = interface; //com.xiaomi.channel.commonutils.misc.i$b
//  Ji = interface; //com.xiaomi.channel.commonutils.misc.i
//  Jj = interface; //com.xiaomi.channel.commonutils.misc.j
//  Jk = interface; //com.xiaomi.channel.commonutils.misc.k
//  Jl = interface; //com.xiaomi.channel.commonutils.misc.l
//  Ja = interface; //com.xiaomi.channel.commonutils.network.a
//  Jb = interface; //com.xiaomi.channel.commonutils.network.b
//  Jc = interface; //com.xiaomi.channel.commonutils.network.c
//  Jd_a = interface; //com.xiaomi.channel.commonutils.network.d$a
//  Jd_b = interface; //com.xiaomi.channel.commonutils.network.d$b
//  Jd = interface; //com.xiaomi.channel.commonutils.network.d
//  Ja_a = interface; //com.xiaomi.channel.commonutils.reflect.a$a
//  Ja = interface; //com.xiaomi.channel.commonutils.reflect.a
//  Ja_a = interface; //com.xiaomi.channel.commonutils.stats.a$a
//  Ja = interface; //com.xiaomi.channel.commonutils.stats.a
//  Ja = interface; //com.xiaomi.channel.commonutils.string.a
//  Jb = interface; //com.xiaomi.channel.commonutils.string.b
//  Jc = interface; //com.xiaomi.channel.commonutils.string.c
//  Jd = interface; //com.xiaomi.channel.commonutils.string.d
//  Ja_a = interface; //com.xiaomi.measite.smack.a$a
//  Ja = interface; //com.xiaomi.measite.smack.a
//  Jb = interface; //com.xiaomi.measite.smack.b
//  Ja_a = interface; //com.xiaomi.metoknlp.geofencing.a$a
//  Ja_b = interface; //com.xiaomi.metoknlp.geofencing.a$b
//  Ja = interface; //com.xiaomi.metoknlp.geofencing.a
//  Jb = interface; //com.xiaomi.metoknlp.geofencing.b
//  Jc_a_a = interface; //com.xiaomi.metoknlp.geofencing.c$a$a
//  Jc_a = interface; //com.xiaomi.metoknlp.geofencing.c$a
//  Jc = interface; //com.xiaomi.metoknlp.geofencing.c
//  Ja = interface; //com.xiaomi.mipush.sdk.a
//  Jaa = interface; //com.xiaomi.mipush.sdk.aa
//  Jab = interface; //com.xiaomi.mipush.sdk.ab
//  Jac = interface; //com.xiaomi.mipush.sdk.ac
//  Jad = interface; //com.xiaomi.mipush.sdk.ad
//  Jae = interface; //com.xiaomi.mipush.sdk.ae
//  Jaf = interface; //com.xiaomi.mipush.sdk.af
//  Jag = interface; //com.xiaomi.mipush.sdk.ag
//  Jb = interface; //com.xiaomi.mipush.sdk.b
//  Jc_a = interface; //com.xiaomi.mipush.sdk.c$a
//  Jc = interface; //com.xiaomi.mipush.sdk.c
  JConstants = interface; //com.xiaomi.mipush.sdk.Constants
//  Jd = interface; //com.xiaomi.mipush.sdk.d
//  Je = interface; //com.xiaomi.mipush.sdk.e
  JErrorCode = interface; //com.xiaomi.mipush.sdk.ErrorCode
//  Jf = interface; //com.xiaomi.mipush.sdk.f
//  Jg = interface; //com.xiaomi.mipush.sdk.g
//  Jh = interface; //com.xiaomi.mipush.sdk.h
//  Ji_a = interface; //com.xiaomi.mipush.sdk.i$a
//  Ji_b = interface; //com.xiaomi.mipush.sdk.i$b
//  Ji = interface; //com.xiaomi.mipush.sdk.i
//  Jj = interface; //com.xiaomi.mipush.sdk.j
//  Jk = interface; //com.xiaomi.mipush.sdk.k
//  Jl = interface; //com.xiaomi.mipush.sdk.l
  JLogger = interface; //com.xiaomi.mipush.sdk.Logger
//  Jm = interface; //com.xiaomi.mipush.sdk.m
//  JMessageHandleService_a = interface; //com.xiaomi.mipush.sdk.MessageHandleService$a
//  JMessageHandleService = interface; //com.xiaomi.mipush.sdk.MessageHandleService
  JMiPushClient_MiPushClientCallback = interface; //com.xiaomi.mipush.sdk.MiPushClient$MiPushClientCallback
  JMiPushClient = interface; //com.xiaomi.mipush.sdk.MiPushClient
  JMiPushCommandMessage = interface; //com.xiaomi.mipush.sdk.MiPushCommandMessage
  JMiPushMessage = interface; //com.xiaomi.mipush.sdk.MiPushMessage
//  JMiTinyDataClient_a_a = interface; //com.xiaomi.mipush.sdk.MiTinyDataClient$a$a
//  JMiTinyDataClient_a = interface; //com.xiaomi.mipush.sdk.MiTinyDataClient$a
//  JMiTinyDataClient = interface; //com.xiaomi.mipush.sdk.MiTinyDataClient
//  Jn = interface; //com.xiaomi.mipush.sdk.n
//  Jo = interface; //com.xiaomi.mipush.sdk.o
//  Jp = interface; //com.xiaomi.mipush.sdk.p
//  JPushMessageHandler_a = interface; //com.xiaomi.mipush.sdk.PushMessageHandler$a
//  JPushMessageHandler = interface; //com.xiaomi.mipush.sdk.PushMessageHandler
  JPushMessageHelper = interface; //com.xiaomi.mipush.sdk.PushMessageHelper
  JPushMessageReceiver = interface; //com.xiaomi.mipush.sdk.PushMessageReceiver
  JPushServiceReceiver = interface; //com.xiaomi.mipush.sdk.PushServiceReceiver
//  Jq = interface; //com.xiaomi.mipush.sdk.q
//  Jr = interface; //com.xiaomi.mipush.sdk.r
//  Js = interface; //com.xiaomi.mipush.sdk.s
//  Jt = interface; //com.xiaomi.mipush.sdk.t
//  Ju = interface; //com.xiaomi.mipush.sdk.u
//  Jv = interface; //com.xiaomi.mipush.sdk.v
//  Jw = interface; //com.xiaomi.mipush.sdk.w
//  Jx = interface; //com.xiaomi.mipush.sdk.x
//  Jy = interface; //com.xiaomi.mipush.sdk.y
//  Jz_a = interface; //com.xiaomi.mipush.sdk.z$a
//  Jz = interface; //com.xiaomi.mipush.sdk.z
//  Ja = interface; //com.xiaomi.network.a
  JAccessHistory = interface; //com.xiaomi.network.AccessHistory
//  Jb = interface; //com.xiaomi.network.b
//  Jc = interface; //com.xiaomi.network.c
  JFallback = interface; //com.xiaomi.network.Fallback
  JFallbacks = interface; //com.xiaomi.network.Fallbacks
  JHost = interface; //com.xiaomi.network.Host
  JHostFilter = interface; //com.xiaomi.network.HostFilter
  JHostManager_HostManagerFactory = interface; //com.xiaomi.network.HostManager$HostManagerFactory
  JHostManager_HttpGet = interface; //com.xiaomi.network.HostManager$HttpGet
  JHostManager = interface; //com.xiaomi.network.HostManager
  JHostRefreshService = interface; //com.xiaomi.network.HostRefreshService
  JHttpProcessor = interface; //com.xiaomi.network.HttpProcessor
  JHttpUtils_DefaultHttpGetProcessor = interface; //com.xiaomi.network.HttpUtils$DefaultHttpGetProcessor
  JHttpUtils = interface; //com.xiaomi.network.HttpUtils
  JNetworkStatusChangeReceiver = interface; //com.xiaomi.network.NetworkStatusChangeReceiver
  JHostManagerDemo = interface; //com.xiaomi.network.usagedemo.HostManagerDemo
//  Ja = interface; //com.xiaomi.push.log.a
//  Jb_a = interface; //com.xiaomi.push.log.b$a
//  Jb_b = interface; //com.xiaomi.push.log.b$b
//  Jb_c = interface; //com.xiaomi.push.log.b$c
//  Jb = interface; //com.xiaomi.push.log.b
//  Jc = interface; //com.xiaomi.push.log.c
//  Jd = interface; //com.xiaomi.push.log.d
//  Je = interface; //com.xiaomi.push.log.e
//  Jf = interface; //com.xiaomi.push.log.f
//  Jg = interface; //com.xiaomi.push.log.g
//  Ja_a = interface; //com.xiaomi.push.protobuf.a$a
//  Ja = interface; //com.xiaomi.push.protobuf.a
//  Jb_a = interface; //com.xiaomi.push.protobuf.b$a
//  Jb_b = interface; //com.xiaomi.push.protobuf.b$b
//  Jb_c = interface; //com.xiaomi.push.protobuf.b$c
//  Jb_d = interface; //com.xiaomi.push.protobuf.b$d
//  Jb_e = interface; //com.xiaomi.push.protobuf.b$e
//  Jb_f = interface; //com.xiaomi.push.protobuf.b$f
//  Jb_g = interface; //com.xiaomi.push.protobuf.b$g
//  Jb_h = interface; //com.xiaomi.push.protobuf.b$h
//  Jb_i = interface; //com.xiaomi.push.protobuf.b$i
//  Jb_j = interface; //com.xiaomi.push.protobuf.b$j
//  Jb_k = interface; //com.xiaomi.push.protobuf.b$k
//  Jb = interface; //com.xiaomi.push.protobuf.b
//  Ja = interface; //com.xiaomi.push.providers.a
//  Ja = interface; //com.xiaomi.push.service.a
//  Jaa = interface; //com.xiaomi.push.service.aa
//  Jab = interface; //com.xiaomi.push.service.ab
//  Jac = interface; //com.xiaomi.push.service.ac
//  Jad = interface; //com.xiaomi.push.service.ad
//  Jae_a = interface; //com.xiaomi.push.service.ae$a
//  Jae_b = interface; //com.xiaomi.push.service.ae$b
//  Jae = interface; //com.xiaomi.push.service.ae
//  Jaf = interface; //com.xiaomi.push.service.af
//  Jag = interface; //com.xiaomi.push.service.ag
//  Jah = interface; //com.xiaomi.push.service.ah
//  Jai_a = interface; //com.xiaomi.push.service.ai$a
//  Jai_b = interface; //com.xiaomi.push.service.ai$b
//  Jai = interface; //com.xiaomi.push.service.ai
//  Jaj = interface; //com.xiaomi.push.service.aj
//  Jak = interface; //com.xiaomi.push.service.ak
//  Jal = interface; //com.xiaomi.push.service.al
//  Jam_a = interface; //com.xiaomi.push.service.am$a
//  Jam_b_a = interface; //com.xiaomi.push.service.am$b$a
//  Jam_b = interface; //com.xiaomi.push.service.am$b
//  Jam_c = interface; //com.xiaomi.push.service.am$c
//  Jam = interface; //com.xiaomi.push.service.am
//  Jan = interface; //com.xiaomi.push.service.an
//  Jao = interface; //com.xiaomi.push.service.ao
//  Jap_a = interface; //com.xiaomi.push.service.ap$a
//  Jap_b = interface; //com.xiaomi.push.service.ap$b
//  Jap = interface; //com.xiaomi.push.service.ap
//  Jaq = interface; //com.xiaomi.push.service.aq
//  Jar = interface; //com.xiaomi.push.service.ar
//  Jas = interface; //com.xiaomi.push.service.as
//  Jat = interface; //com.xiaomi.push.service.at
//  Jau = interface; //com.xiaomi.push.service.au
//  Jav_a = interface; //com.xiaomi.push.service.av$a
//  Jav = interface; //com.xiaomi.push.service.av
//  Jaw = interface; //com.xiaomi.push.service.aw
//  Jax = interface; //com.xiaomi.push.service.ax
//  Jay = interface; //com.xiaomi.push.service.ay
//  Jaz = interface; //com.xiaomi.push.service.az
//  Jb = interface; //com.xiaomi.push.service.b
//  Jba = interface; //com.xiaomi.push.service.ba
//  Jbb = interface; //com.xiaomi.push.service.bb
//  Jbc = interface; //com.xiaomi.push.service.bc
//  Jbd = interface; //com.xiaomi.push.service.bd
//  Jbe = interface; //com.xiaomi.push.service.be
//  Jbf = interface; //com.xiaomi.push.service.bf
//  Jbg = interface; //com.xiaomi.push.service.bg
//  Jbh = interface; //com.xiaomi.push.service.bh
//  Jbi = interface; //com.xiaomi.push.service.bi
//  Jbj = interface; //com.xiaomi.push.service.bj
//  Jbk = interface; //com.xiaomi.push.service.bk
//  Jbl = interface; //com.xiaomi.push.service.bl
//  Jbm = interface; //com.xiaomi.push.service.bm
//  Jc = interface; //com.xiaomi.push.service.c
//  Jd = interface; //com.xiaomi.push.service.d
//  Je = interface; //com.xiaomi.push.service.e
//  Jf = interface; //com.xiaomi.push.service.f
//  Jg = interface; //com.xiaomi.push.service.g
//  Jh = interface; //com.xiaomi.push.service.h
//  Ji_a = interface; //com.xiaomi.push.service.i$a
//  Ji_b = interface; //com.xiaomi.push.service.i$b
//  Ji_c_a = interface; //com.xiaomi.push.service.i$c$a
//  Ji_c = interface; //com.xiaomi.push.service.i$c
//  Ji_d = interface; //com.xiaomi.push.service.i$d
//  Ji = interface; //com.xiaomi.push.service.i
//  Jj = interface; //com.xiaomi.push.service.j
//  Jk = interface; //com.xiaomi.push.service.k
//  Jl = interface; //com.xiaomi.push.service.l
//  Jm_a = interface; //com.xiaomi.push.service.m$a
//  Jm = interface; //com.xiaomi.push.service.m
//  Ja = interface; //com.xiaomi.push.service.module.a
//  Jb = interface; //com.xiaomi.push.service.module.b
//  Jc = interface; //com.xiaomi.push.service.module.c
//  Jd_a = interface; //com.xiaomi.push.service.module.d$a
//  Jd_b = interface; //com.xiaomi.push.service.module.d$b
//  Jd = interface; //com.xiaomi.push.service.module.d
//  Je = interface; //com.xiaomi.push.service.module.e
//  Jf = interface; //com.xiaomi.push.service.module.f
//  Jn = interface; //com.xiaomi.push.service.n
//  Jo = interface; //com.xiaomi.push.service.o
//  Jp = interface; //com.xiaomi.push.service.p
//  JPacketSync_PacketReceiveHandler = interface; //com.xiaomi.push.service.PacketSync$PacketReceiveHandler
//  JPacketSync = interface; //com.xiaomi.push.service.PacketSync
//  Jq_a = interface; //com.xiaomi.push.service.q$a
//  Jq = interface; //com.xiaomi.push.service.q
//  Jr = interface; //com.xiaomi.push.service.r
//  Ja = interface; //com.xiaomi.push.service.receivers.a
  JNetworkStatusReceiver = interface; //com.xiaomi.push.service.receivers.NetworkStatusReceiver
  JPingReceiver = interface; //com.xiaomi.push.service.receivers.PingReceiver
  JPkgUninstallReceiver = interface; //com.xiaomi.push.service.receivers.PkgUninstallReceiver
//  Js = interface; //com.xiaomi.push.service.s
//  Jt = interface; //com.xiaomi.push.service.t
//  Ja_a = interface; //com.xiaomi.push.service.timers.a$a
//  Ja = interface; //com.xiaomi.push.service.timers.a
//  Jb = interface; //com.xiaomi.push.service.timers.b
//  Jc = interface; //com.xiaomi.push.service.timers.c
//  Ju = interface; //com.xiaomi.push.service.u
//  Jv = interface; //com.xiaomi.push.service.v
//  Jw = interface; //com.xiaomi.push.service.w
//  Jx = interface; //com.xiaomi.push.service.x
//  JXMJobService_a_a = interface; //com.xiaomi.push.service.XMJobService$a$a
//  JXMJobService_a = interface; //com.xiaomi.push.service.XMJobService$a
  JXMJobService = interface; //com.xiaomi.push.service.XMJobService
//  JXMPushService_a = interface; //com.xiaomi.push.service.XMPushService$a
//  JXMPushService_b = interface; //com.xiaomi.push.service.XMPushService$b
//  JXMPushService_c = interface; //com.xiaomi.push.service.XMPushService$c
//  JXMPushService_d = interface; //com.xiaomi.push.service.XMPushService$d
//  JXMPushService_e = interface; //com.xiaomi.push.service.XMPushService$e
//  JXMPushService_f = interface; //com.xiaomi.push.service.XMPushService$f
//  JXMPushService_g = interface; //com.xiaomi.push.service.XMPushService$g
//  JXMPushService_h = interface; //com.xiaomi.push.service.XMPushService$h
//  JXMPushService_i = interface; //com.xiaomi.push.service.XMPushService$i
//  JXMPushService_j = interface; //com.xiaomi.push.service.XMPushService$j
//  JXMPushService_k = interface; //com.xiaomi.push.service.XMPushService$k
//  JXMPushService_l = interface; //com.xiaomi.push.service.XMPushService$l
//  JXMPushService_m = interface; //com.xiaomi.push.service.XMPushService$m
//  JXMPushService_n = interface; //com.xiaomi.push.service.XMPushService$n
  JXMPushService = interface; //com.xiaomi.push.service.XMPushService
//  Jy = interface; //com.xiaomi.push.service.y
//  Jz = interface; //com.xiaomi.push.service.z
//  Ja = interface; //com.xiaomi.push.thrift.a
//  Jb_a = interface; //com.xiaomi.push.thrift.b$a
//  Jb = interface; //com.xiaomi.push.thrift.b
//  Jc_a = interface; //com.xiaomi.push.thrift.c$a
//  Jc = interface; //com.xiaomi.push.thrift.c
//  Ja = interface; //com.xiaomi.slim.a
//  Jb = interface; //com.xiaomi.slim.b
//  Jc = interface; //com.xiaomi.slim.c
//  Jd = interface; //com.xiaomi.slim.d
//  Je = interface; //com.xiaomi.slim.e
//  Jf = interface; //com.xiaomi.slim.f
//  Jg = interface; //com.xiaomi.slim.g
//  Ja_a = interface; //com.xiaomi.smack.a$a
//  Ja = interface; //com.xiaomi.smack.a
//  Jb = interface; //com.xiaomi.smack.b
//  Jc = interface; //com.xiaomi.smack.c
//  Jd = interface; //com.xiaomi.smack.d
//  Ja = interface; //com.xiaomi.smack.debugger.a
//  Je = interface; //com.xiaomi.smack.e
//  Jf = interface; //com.xiaomi.smack.f
//  Ja = interface; //com.xiaomi.smack.filter.a
//  Jg = interface; //com.xiaomi.smack.g
//  Jh = interface; //com.xiaomi.smack.h
//  Ji = interface; //com.xiaomi.smack.i
//  Jj = interface; //com.xiaomi.smack.j
//  Jk = interface; //com.xiaomi.smack.k
//  Jl = interface; //com.xiaomi.smack.l
//  Ja = interface; //com.xiaomi.smack.packet.a
//  Jb_a = interface; //com.xiaomi.smack.packet.b$a
//  Jb = interface; //com.xiaomi.smack.packet.b
//  Jc = interface; //com.xiaomi.smack.packet.c
//  Jd = interface; //com.xiaomi.smack.packet.d
//  Je = interface; //com.xiaomi.smack.packet.e
//  Jf_a = interface; //com.xiaomi.smack.packet.f$a
//  Jf_b = interface; //com.xiaomi.smack.packet.f$b
//  Jf = interface; //com.xiaomi.smack.packet.f
//  Jg = interface; //com.xiaomi.smack.packet.g
//  Jh_a = interface; //com.xiaomi.smack.packet.h$a
//  Jh = interface; //com.xiaomi.smack.packet.h
//  Ja = interface; //com.xiaomi.smack.provider.a
//  Jb = interface; //com.xiaomi.smack.provider.b
//  Jc = interface; //com.xiaomi.smack.provider.c
//  Ja = interface; //com.xiaomi.smack.util.a
//  Jb = interface; //com.xiaomi.smack.util.b
//  Jc = interface; //com.xiaomi.smack.util.c
//  Jd = interface; //com.xiaomi.smack.util.d
//  Je = interface; //com.xiaomi.smack.util.e
//  Jf = interface; //com.xiaomi.smack.util.f
//  Jg_a = interface; //com.xiaomi.smack.util.g$a
//  Jg = interface; //com.xiaomi.smack.util.g
//  Jh = interface; //com.xiaomi.smack.util.h
//  Ja = interface; //com.xiaomi.stats.a
//  Jb = interface; //com.xiaomi.stats.b
//  Jc = interface; //com.xiaomi.stats.c
//  Jd_a = interface; //com.xiaomi.stats.d$a
//  Jd = interface; //com.xiaomi.stats.d
//  Je = interface; //com.xiaomi.stats.e
//  Jf_a = interface; //com.xiaomi.stats.f$a
//  Jf = interface; //com.xiaomi.stats.f
//  Jg = interface; //com.xiaomi.stats.g
//  Jh_a = interface; //com.xiaomi.stats.h$a
//  Jh = interface; //com.xiaomi.stats.h
//  Ja = interface; //com.xiaomi.tinyData.a
//  Jb = interface; //com.xiaomi.tinyData.b
//  Jc = interface; //com.xiaomi.tinyData.c
//  Jd = interface; //com.xiaomi.tinyData.d
//  Je = interface; //com.xiaomi.tinyData.e
//  Ja = interface; //com.xiaomi.xmpush.thrift.a
//  Jaa_a = interface; //com.xiaomi.xmpush.thrift.aa$a
//  Jaa = interface; //com.xiaomi.xmpush.thrift.aa
//  Jab_a = interface; //com.xiaomi.xmpush.thrift.ab$a
//  Jab = interface; //com.xiaomi.xmpush.thrift.ab
//  Jac_a = interface; //com.xiaomi.xmpush.thrift.ac$a
//  Jac = interface; //com.xiaomi.xmpush.thrift.ac
//  Jad_a = interface; //com.xiaomi.xmpush.thrift.ad$a
//  Jad = interface; //com.xiaomi.xmpush.thrift.ad
////  Jae_a = interface; //com.xiaomi.xmpush.thrift.ae$a
//  Jae = interface; //com.xiaomi.xmpush.thrift.ae
////  Jaf_a = interface; //com.xiaomi.xmpush.thrift.af$a
//  Jaf = interface; //com.xiaomi.xmpush.thrift.af
////  Jag_a = interface; //com.xiaomi.xmpush.thrift.ag$a
//  Jag = interface; //com.xiaomi.xmpush.thrift.ag
////  Jah_a = interface; //com.xiaomi.xmpush.thrift.ah$a
//  Jah = interface; //com.xiaomi.xmpush.thrift.ah
////  Jai_a = interface; //com.xiaomi.xmpush.thrift.ai$a
//  Jai = interface; //com.xiaomi.xmpush.thrift.ai
////  Jaj_a = interface; //com.xiaomi.xmpush.thrift.aj$a
//  Jaj = interface; //com.xiaomi.xmpush.thrift.aj
////  Jak_a = interface; //com.xiaomi.xmpush.thrift.ak$a
//  Jak = interface; //com.xiaomi.xmpush.thrift.ak
////  Jal_a = interface; //com.xiaomi.xmpush.thrift.al$a
//  Jal = interface; //com.xiaomi.xmpush.thrift.al
////  Jam_a = interface; //com.xiaomi.xmpush.thrift.am$a
//  Jam = interface; //com.xiaomi.xmpush.thrift.am
////  Jan_a = interface; //com.xiaomi.xmpush.thrift.an$a
//  Jan = interface; //com.xiaomi.xmpush.thrift.an
////  Jao_a = interface; //com.xiaomi.xmpush.thrift.ao$a
//  Jao = interface; //com.xiaomi.xmpush.thrift.ao
////  Jap_a = interface; //com.xiaomi.xmpush.thrift.ap$a
//  Jap = interface; //com.xiaomi.xmpush.thrift.ap
////  Jaq_a = interface; //com.xiaomi.xmpush.thrift.aq$a
//  Jaq = interface; //com.xiaomi.xmpush.thrift.aq
//  Jar = interface; //com.xiaomi.xmpush.thrift.ar
//  Jb = interface; //com.xiaomi.xmpush.thrift.b
//  Jc_a = interface; //com.xiaomi.xmpush.thrift.c$a
//  Jc = interface; //com.xiaomi.xmpush.thrift.c
//  Jd_a = interface; //com.xiaomi.xmpush.thrift.d$a
//  Jd = interface; //com.xiaomi.xmpush.thrift.d
//  Je_a = interface; //com.xiaomi.xmpush.thrift.e$a
//  Je = interface; //com.xiaomi.xmpush.thrift.e
//  Jf = interface; //com.xiaomi.xmpush.thrift.f
//  Jg = interface; //com.xiaomi.xmpush.thrift.g
//  Jh = interface; //com.xiaomi.xmpush.thrift.h
//  Ji = interface; //com.xiaomi.xmpush.thrift.i
//  Jj_a = interface; //com.xiaomi.xmpush.thrift.j$a
//  Jj = interface; //com.xiaomi.xmpush.thrift.j
//  Jk_a = interface; //com.xiaomi.xmpush.thrift.k$a
//  Jk = interface; //com.xiaomi.xmpush.thrift.k
//  Jl = interface; //com.xiaomi.xmpush.thrift.l
//  Jm_a = interface; //com.xiaomi.xmpush.thrift.m$a
//  Jm = interface; //com.xiaomi.xmpush.thrift.m
//  Jn_a = interface; //com.xiaomi.xmpush.thrift.n$a
//  Jn = interface; //com.xiaomi.xmpush.thrift.n
//  Jo_a = interface; //com.xiaomi.xmpush.thrift.o$a
//  Jo = interface; //com.xiaomi.xmpush.thrift.o
//  Jp = interface; //com.xiaomi.xmpush.thrift.p
//  Jq_a = interface; //com.xiaomi.xmpush.thrift.q$a
//  Jq = interface; //com.xiaomi.xmpush.thrift.q
//  Jr_a = interface; //com.xiaomi.xmpush.thrift.r$a
//  Jr = interface; //com.xiaomi.xmpush.thrift.r
//  Js_a = interface; //com.xiaomi.xmpush.thrift.s$a
//  Js = interface; //com.xiaomi.xmpush.thrift.s
//  Jt_a = interface; //com.xiaomi.xmpush.thrift.t$a
//  Jt = interface; //com.xiaomi.xmpush.thrift.t
//  Ju = interface; //com.xiaomi.xmpush.thrift.u
//  Jv_a = interface; //com.xiaomi.xmpush.thrift.v$a
//  Jv = interface; //com.xiaomi.xmpush.thrift.v
//  Jw_a = interface; //com.xiaomi.xmpush.thrift.w$a
//  Jw = interface; //com.xiaomi.xmpush.thrift.w
//  Jx_a = interface; //com.xiaomi.xmpush.thrift.x$a
//  Jx = interface; //com.xiaomi.xmpush.thrift.x
//  Jy_a = interface; //com.xiaomi.xmpush.thrift.y$a
//  Jy = interface; //com.xiaomi.xmpush.thrift.y
//  Jz_a = interface; //com.xiaomi.xmpush.thrift.z$a
//  Jz = interface; //com.xiaomi.xmpush.thrift.z
//  Ja = interface; //org.apache.thrift.a
//  Jb_a = interface; //org.apache.thrift.b$a
//  Jb = interface; //org.apache.thrift.b
//  Jc = interface; //org.apache.thrift.c
//  Jd = interface; //org.apache.thrift.d
//  Je = interface; //org.apache.thrift.e
//  Jf = interface; //org.apache.thrift.f
//  Jg = interface; //org.apache.thrift.g
//  Ja = interface; //org.apache.thrift.meta_data.a
//  Jb = interface; //org.apache.thrift.meta_data.b
//  Jc = interface; //org.apache.thrift.meta_data.c
//  Jd = interface; //org.apache.thrift.meta_data.d
//  Je = interface; //org.apache.thrift.meta_data.e
//  Jf = interface; //org.apache.thrift.meta_data.f
//  Jg = interface; //org.apache.thrift.meta_data.g
//  Ja_a = interface; //org.apache.thrift.protocol.a$a
//  Ja = interface; //org.apache.thrift.protocol.a
//  Jb = interface; //org.apache.thrift.protocol.b
//  Jc = interface; //org.apache.thrift.protocol.c
//  Jd = interface; //org.apache.thrift.protocol.d
//  Je = interface; //org.apache.thrift.protocol.e
//  Jf = interface; //org.apache.thrift.protocol.f
//  Jg = interface; //org.apache.thrift.protocol.g
//  Jh = interface; //org.apache.thrift.protocol.h
//  Ji = interface; //org.apache.thrift.protocol.i
//  Jj = interface; //org.apache.thrift.protocol.j
//  Jk_a = interface; //org.apache.thrift.protocol.k$a
//  Jk = interface; //org.apache.thrift.protocol.k
//  Ja = interface; //org.apache.thrift.transport.a
//  Jb = interface; //org.apache.thrift.transport.b
//  Jc = interface; //org.apache.thrift.transport.c
//  Jd = interface; //org.apache.thrift.transport.d
//  Je = interface; //org.apache.thrift.transport.e

// ===== Interface declarations =====

//  JaClass = interface(JObjectClass)
//  ['{3F91F7B9-05CE-47E9-95AB-BDAAF0608E59}']
//    { static Property Methods }
//    {class} function _Geta: Ja;
//
//    { static Methods }
//    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Ja; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>): Ja; cdecl; overload;
//
//    { static Property }
//    {class} property a: Ja read _Geta;
//  end;

//  [JavaSignature('com/google/protobuf/micro/a')]
//  Ja = interface(JObject)
//  ['{2902521D-E3EF-44BD-A23F-90DF1C6F1A4A}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    function b: TJavaArray<Byte>; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function hashCode: Integer; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{953F3358-3586-4481-8419-AF2BCE4E0C9D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JInputStream): Jb; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Jb; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/google/protobuf/micro/b')]
//  Jb = interface(JObject)
//  ['{DD0D297A-70A5-4DB4-B18A-37AEF4A1D282}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    function b(P1: Integer): Boolean; cdecl; overload;
//    procedure b; cdecl; overload;
//    function c: Int64; cdecl; overload;
//    function d: Int64; cdecl; overload;
//    function e: Integer; cdecl; overload;
//    function f: Boolean; cdecl; overload;
//    function g: JString; cdecl;
//    procedure a(P1: Je); cdecl; overload;
//    function h: Ja; cdecl;
//    function i: Integer; cdecl;
//    function j: Integer; cdecl;
//    function k: Int64; cdecl;
//    function l: Integer; cdecl;
//    function m: Int64; cdecl;
//    function c(P1: Integer): Integer; cdecl; overload;
//    procedure d(P1: Integer); cdecl; overload;
//    function n: Boolean; cdecl;
//    function o: Byte; cdecl;
//    function e(P1: Integer): TJavaArray<Byte>; cdecl; overload;
//    procedure f(P1: Integer); cdecl; overload;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  Jc_aClass = interface(JObjectClass)
//  ['{9AD0AF10-8D23-4B6F-84E5-B3C8DDEDE496}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/google/protobuf/micro/c$a')]
//  Jc_a = interface(JObject)
//  ['{08DEEB0C-C5F6-48F5-9F55-C0003EB65BE6}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc_a = class(TJavaGenericImport<Jc_aClass, Jc_a>) end;

//  JcClass = interface(JObjectClass)
//  ['{1C034234-B963-47DA-9B06-F96F6ABB3B0B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JOutputStream): Jc; cdecl; overload;
//    {class} function a(P1: JOutputStream; P2: Integer): Jc; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Jc; cdecl; overload;
//    {class} function c(P1: Integer; P2: Int64): Integer; cdecl; overload;
//    {class} function d(P1: Integer; P2: Int64): Integer; cdecl; overload;
//    {class} function c(P1: Integer; P2: Integer): Integer; cdecl; overload;
//    {class} function b(P1: Integer; P2: Boolean): Integer; cdecl; overload;
//    {class} function b(P1: Integer; P2: JString): Integer; cdecl; overload;
//    {class} function b(P1: Integer; P2: Je): Integer; cdecl; overload;
//    {class} function b(P1: Integer; P2: Ja): Integer; cdecl; overload;
//    {class} function d(P1: Integer; P2: Integer): Integer; cdecl; overload;
//    {class} function c(P1: Int64): Integer; cdecl; overload;
//    {class} function d(P1: Int64): Integer; cdecl; overload;
//    {class} function c(P1: Integer): Integer; cdecl; overload;
//    {class} function b(P1: Boolean): Integer; cdecl; overload;
//    {class} function b(P1: JString): Integer; cdecl; overload;
//    {class} function b(P1: Je): Integer; cdecl; overload;
//    {class} function b(P1: Ja): Integer; cdecl; overload;
//    {class} function d(P1: Integer): Integer; cdecl; overload;
//    {class} function f(P1: Integer): Integer; cdecl; overload;
//    {class} function h(P1: Integer): Integer; cdecl;
//    {class} function f(P1: Int64): Integer; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/google/protobuf/micro/c')]
//  Jc = interface(JObject)
//  ['{B4532998-BDD8-4DE3-8B58-74EC6DEABF80}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Integer; P2: Int64); cdecl; overload;
//    procedure b(P1: Integer; P2: Int64); cdecl; overload;
//    procedure a(P1: Integer; P2: Integer); cdecl; overload;
//    procedure a(P1: Integer; P2: Boolean); cdecl; overload;
//    procedure a(P1: Integer; P2: JString); cdecl; overload;
//    procedure a(P1: Integer; P2: Je); cdecl; overload;
//    procedure a(P1: Integer; P2: Ja); cdecl; overload;
//    procedure b(P1: Integer; P2: Integer); cdecl; overload;
//    procedure a(P1: Int64); cdecl; overload;
//    procedure b(P1: Int64); cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure a(P1: Ja); cdecl; overload;
//    procedure b(P1: Integer); cdecl; overload;
//    procedure a; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    procedure c; cdecl; overload;
//    procedure a(P1: Byte); cdecl; overload;
//    procedure e(P1: Integer); cdecl; overload;
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//    procedure b(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl; overload;
//    procedure e(P1: Integer; P2: Integer); cdecl; overload;
//    procedure g(P1: Integer); cdecl;
//    procedure e(P1: Int64); cdecl; overload;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{61410F17-5819-46A9-8461-6038CAB6B0CF}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString): Jd; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/google/protobuf/micro/d')]
//  Jd = interface(JObject)
//  ['{834F0AC3-6571-4714-8CE2-4293EC53D85B}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{073C3018-55A2-4D8A-9317-D19962299C47}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Je; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/google/protobuf/micro/e')]
//  Je = interface(JObject)
//  ['{89FB499B-98AA-4DC7-8BB1-BB438E6A2A56}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//    function c: TJavaArray<Byte>; cdecl;
//    procedure a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl; overload;
//    function a(P1: TJavaArray<Byte>): Je; cdecl; overload;
//    function b(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{A82DC80E-5932-426A-9EA3-C799E4CC8EE0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function b(P1: Integer): Integer; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/google/protobuf/micro/f')]
//  Jf = interface(JObject)
//  ['{70158222-36FB-4C63-B90C-A386199C6B82}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JaClass = interface(JObjectClass)
//  ['{ED0D76E9-747B-4D25-877D-C43E015BAA2F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext; P2: JString; P3: JString); cdecl; overload;
//    {class} function a(P1: JContext): JList; cdecl; overload;
//    {class} function b(P1: JContext): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/a')]
//  Ja = interface(JObject)
//  ['{52834FF6-7D9B-4128-BB30-00E92C8473C9}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Jb_aClass = interface(JObjectClass)
//  ['{7656DE09-BD84-4A28-8EB2-9608AF65AE7A}']
//    { static Property Methods }
//    {class} function _Geta: Jb_a;
//    {class} function _Getb: Jb_a;
//    {class} function _Getc: Jb_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jb_a>; cdecl;
//    {class} function valueOf(P1: JString): Jb_a; cdecl;
//
//    { static Property }
//    {class} property a: Jb_a read _Geta;
//    {class} property b: Jb_a read _Getb;
//    {class} property c: Jb_a read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/b$a')]
//  Jb_a = interface(JObject)
//  ['{0A7BF4F3-187C-4142-92E4-ABFC909A133F}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl;
//
//    { Property }
//  end;

//  TJb_a = class(TJavaGenericImport<Jb_aClass, Jb_a>) end;

//  JbClass = interface(JObjectClass)
//  ['{F47FAFD3-EF88-470C-A2D0-677C075D1295}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString): JString; cdecl; overload;
//    {class} function b(P1: JContext; P2: JString): Integer; cdecl; overload;
//    {class} function c(P1: JContext; P2: JString): Integer; cdecl; overload;
//    {class} function d(P1: JContext; P2: JString): Jb_a; cdecl;
//    {class} function a(P1: JContext): JString; cdecl; overload;
//    {class} function b(P1: JContext): Boolean; cdecl; overload;
//    {class} function e(P1: JContext; P2: JString): TJavaObjectArray<JSignature>; cdecl;
//    {class} function c(P1: JContext): JString; cdecl; overload;
//    {class} function f(P1: JContext; P2: JString): Boolean; cdecl;
//    {class} function g(P1: JContext; P2: JString): Boolean; cdecl;
//    {class} function h(P1: JContext; P2: JString): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/b')]
//  Jb = interface(JObject)
//  ['{99E49AB2-15FF-4B06-9597-7749A89981D3}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{2A05C8AB-A4DE-41CD-BB6F-C5A4A161CCAC}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString; P3: JString): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/c')]
//  Jc = interface(JObject)
//  ['{8519FDC8-2DF1-45BA-8323-5EFC4C7C2DD0}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{3A3EFD33-F49D-4EFF-AB4D-E7A0073C70C2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: TJavaObjectArray<JSignature>; P2: TJavaObjectArray<JSignature>): Integer; cdecl; overload;
//    {class} function a(P1: TJavaObjectArray<JSignature>): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/d')]
//  Jd = interface(JObject)
//  ['{02A89B15-4528-4D0C-9137-4C5FC90FAAB4}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{6F72C524-AEBD-4ED1-ADC8-F482042D26E1}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): JString; cdecl; overload;
//    {class} function a: JString; cdecl; overload;
//    {class} function b(P1: JContext): JString; cdecl; overload;
//    {class} function c(P1: JContext): JString; cdecl;
//    {class} function d(P1: JContext): JString; cdecl;
//    {class} function e(P1: JContext): JString; cdecl;
//    {class} function f(P1: JContext): JString; cdecl;
//    {class} function g(P1: JContext): JString; cdecl;
//    {class} function h(P1: JContext): JString; cdecl;
//    {class} function i(P1: JContext): JString; cdecl;
//    {class} function b: Integer; cdecl; overload;
//    {class} function j(P1: JContext): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/e')]
//  Je = interface(JObject)
//  ['{44EF5D4C-E580-41E1-9525-1796308ED3E8}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{B5B7F1E6-0004-4B49-883E-C1A5E5BF337F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): JAccount; cdecl;
//    {class} function b(P1: JContext): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/f')]
//  Jf = interface(JObject)
//  ['{632A7F59-1077-490A-8C92-8030415B260C}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{5D5FC4D4-E22D-4BD1-8018-F806B71445B0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Boolean; cdecl;
//    {class} function b: Boolean; cdecl;
//    {class} function c: Integer; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/g')]
//  Jg = interface(JObject)
//  ['{FA9D967C-28BA-421A-9DC7-5A28F6C4AF50}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{F5D510FA-B98F-44EE-AC35-24D480F0D865}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString; P3: Boolean): Boolean; cdecl; overload;
//    {class} procedure b(P1: JContext; P2: JString; P3: Boolean); cdecl;
//    {class} procedure a(P1: JContext); cdecl; overload;
//    {class} procedure a(P1: JMap; P2: JString; P3: JString); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/h')]
//  Jh = interface(JObject)
//  ['{48F0BFC2-9C65-414F-B849-10CA7C465157}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JiClass = interface(JObjectClass)
//  ['{7059DD86-76B8-4AE0-8401-A21ACDBA95C5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString; P2: JString): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/i')]
//  Ji = interface(JObject)
//  ['{65F6D504-F9CE-4298-BB2A-F6BC8275A599}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{9DE7E33C-C4DD-4D70-AFDE-05B9D45BA115}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl; overload;
//    {class} function a: JContext; cdecl; overload;
//    {class} function b: JString; cdecl; overload;
//    {class} function c: Integer; cdecl;
//    {class} function b(P1: JContext): Boolean; cdecl; overload;
//    {class} function d: Boolean; cdecl;
//    {class} function e: Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/android/j')]
//  Jj = interface(JObject)
//  ['{19402424-A870-463C-86A1-D94AB8C9A40F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  JaClass = interface(JObjectClass)
//  ['{5B873C27-F0BD-4688-A44D-B81E1AADA0A2}']
//    { static Property Methods }
//    {class} function _Geta: TJavaObjectArray<JString>;
//
//    { static Methods }
//    {class} procedure a(P1: JFile; P2: JFile); cdecl; overload;
//    {class} procedure a(P1: JZipOutputStream; P2: JFile; P3: JString; P4: JFileFilter); cdecl; overload;
//    {class} procedure a(P1: JRandomAccessFile); cdecl; overload;
//    {class} procedure a(P1: JReader); cdecl; overload;
//    {class} procedure a(P1: JWriter); cdecl; overload;
//    {class} procedure a(P1: JInputStream); cdecl; overload;
//    {class} procedure a(P1: JOutputStream); cdecl; overload;
//    {class} procedure a(P1: JParcelFileDescriptor); cdecl; overload;
//    {class} function b(P1: JInputStream): TJavaArray<Byte>; cdecl;
//    {class} function a(P1: JFile): Boolean; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//
//    { static Property }
//    {class} property a: TJavaObjectArray<JString> read _Geta;
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/file/a')]
//  Ja = interface(JObject)
//  ['{51113F76-F83F-4036-B37C-DFDC6AEB9C8D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{8DB1D6B8-5EEF-47D6-8832-68F2FA404C89}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/file/b')]
//  Jb = interface(JObject)
//  ['{7E0D0DFC-1996-4F4F-B38D-4069C7A855CD}']
//    { Property Methods }
//
//    { methods }
//    function accept(P1: JFile): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{F89ED781-10A4-4CBF-BBD4-2A70C8B3833B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Boolean; cdecl;
//    {class} function b: Boolean; cdecl;
//    {class} function c: Boolean; cdecl;
//    {class} function d: Boolean; cdecl;
//    {class} function e: Int64; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/file/c')]
//  Jc = interface(JObject)
//  ['{ABE15663-6541-452A-B70A-21D28A8A3B7F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JaClass = interface(JObjectClass)
//  ['{17336F4A-F279-465B-947B-436FBE9D9A15}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/logger/a')]
//  Ja = interface(JObject)
//  ['{54C90A39-3D5E-4EFA-95F1-004F10C0C12E}']
//    { Property Methods }
//
//    { methods }
//    procedure setTag(P1: JString); cdecl;
//    procedure log(P1: JString); cdecl; overload;
//    procedure log(P1: JString; P2: JThrowable); cdecl; overload;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{1DD81D95-F6EA-4979-90F2-134A736C8018}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JLoggerInterface); cdecl; overload;
//    {class} procedure a(P1: JString); cdecl; overload;
//    {class} procedure b(P1: JString); cdecl;
//    {class} procedure c(P1: JString); cdecl;
//    {class} procedure a(P1: JString; P2: JThrowable); cdecl; overload;
//    {class} procedure a(P1: JThrowable); cdecl; overload;
//    {class} procedure d(P1: JString); cdecl;
//    {class} function e(P1: JString): JInteger; cdecl;
//    {class} procedure a(P1: JInteger); cdecl; overload;
//    {class} procedure a(P1: Integer; P2: JString); cdecl; overload;
//    {class} procedure a(P1: Integer; P2: JThrowable); cdecl; overload;
//    {class} procedure a(P1: Integer; P2: JString; P3: JThrowable); cdecl; overload;
//    {class} function a: Integer; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/logger/b')]
//  Jb = interface(JObject)
//  ['{505AC4B0-2572-4C86-BE05-A8DA788D933B}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

  JLoggerInterfaceClass = interface(JObjectClass)
  ['{A9945B13-419F-40DB-8ED4-477174B6194A}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/xiaomi/channel/commonutils/logger/LoggerInterface')]
  JLoggerInterface = interface(IJavaInstance)
  ['{DF0B81E8-ADDC-4F38-8DDA-AC5F2FD5DD5F}']
    { Property Methods }

    { methods }
    procedure setTag(P1: JString); cdecl;
    procedure log(P1: JString); cdecl; overload;
    procedure log(P1: JString; P2: JThrowable); cdecl; overload;

    { Property }
  end;

  TJLoggerInterface = class(TJavaGenericImport<JLoggerInterfaceClass, JLoggerInterface>) end;

//  JaClass = interface(JObjectClass)
//  ['{52AC2B0A-1A17-4B9A-BF06-058F10B94248}']
//    { static Property Methods }
//    {class} function _Geta: JString;
//    {class} function _Getb: Boolean;
//    {class} function _Getc: Boolean;
//    {class} function _Getd: Boolean;
//    {class} function _Gete: Boolean;
//    {class} function _Getf: Boolean;
//    {class} function _Getg: Boolean;
//    {class} function _Geth: Boolean;
//
//    { static Methods }
//    {class} function a: Boolean; cdecl; overload;
//    {class} function b: Boolean; cdecl;
//    {class} function c: Integer; cdecl;
//    {class} procedure a(P1: Integer); cdecl; overload;
//
//    { static Property }
//    {class} property a: JString read _Geta;
//    {class} property b: Boolean read _Getb;
//    {class} property c: Boolean read _Getc;
//    {class} property d: Boolean read _Getd;
//    {class} property e: Boolean read _Gete;
//    {class} property f: Boolean read _Getf;
//    {class} property g: Boolean read _Getg;
//    {class} property h: Boolean read _Geth;
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/a')]
//  Ja = interface(JObject)
//  ['{D4123F53-F725-4580-8B6E-A9FF64F38E46}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{D84D5F87-AA3B-42D2-8406-D09D417D8FF0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JCollection): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/b')]
//  Jb = interface(JObject)
//  ['{730E36A4-CB1E-4FCF-926B-B1C3F5850F0B}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{C5770C4E-6FF7-4F21-97A9-A41DC8B491C9}']
//    { static Property Methods }
//    {class} function _Geta: Boolean;
//    {class} function _Getb: JString;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: Boolean read _Geta;
//    {class} property b: JString read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/c')]
//  Jc = interface(JObject)
//  ['{1E31E119-15AE-4ABD-95C4-4B2B54428912}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{D936937F-9170-424F-B201-00EF4F4DA54C}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/d')]
//  Jd = interface(JObject)
//  ['{AFDE4B19-0903-4045-818D-7A2AF0041350}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{2E3C117A-4C2C-4536-B995-7A2F99CF6624}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString; P3: Int64): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/e')]
//  Je = interface(JObject)
//  ['{147C0709-5E36-4CA9-82D5-0076448CEC24}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{2A1CD156-6E39-4BA4-BE76-C2303FE70E67}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Boolean; cdecl;
//    {class} function b(P1: JContext): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/f')]
//  Jf = interface(JObject)
//  ['{CA69DCF7-2228-4CA9-9AA3-974810AF5CAD}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  Jg_aClass = interface(JObjectClass)
//  ['{D3C1CE02-57AB-483D-BB2A-DAC8180841FC}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jg_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/g$a')]
//  Jg_a = interface(JObject)
//  ['{DE595F79-9D32-4D6A-8F28-322F304E460E}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl;
//
//    { Property }
//  end;

//  TJg_a = class(TJavaGenericImport<Jg_aClass, Jg_a>) end;

//  Jg_bClass = interface(JObjectClass)
//  ['{EF06A914-D017-42BC-9094-E13EEC961BC5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jg_a): Jg_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/g$b')]
//  Jg_b = interface(JObject)
//  ['{427DDD4C-313A-4E28-9C6B-427647601579}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJg_b = class(TJavaGenericImport<Jg_bClass, Jg_b>) end;

//  JgClass = interface(JObjectClass)
//  ['{A5410C61-BC4B-4D60-AEE1-8A059831B821}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jg; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/g')]
//  Jg = interface(JObject)
//  ['{430427FD-334D-4D37-B8E6-F07D7DC9A9D8}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jg_a; P2: Integer): Boolean; cdecl; overload;
//    function a(P1: Jg_a; P2: Integer; P3: Integer): Boolean; cdecl; overload;
//    procedure a(P1: JRunnable); cdecl; overload;
//    procedure a(P1: JRunnable; P2: Integer); cdecl; overload;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{D2E48759-89E2-45CC-9295-0429CCADB721}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/h')]
//  Jh = interface(JObject)
//  ['{A69EA7B9-C828-45F9-8F6C-99C2D2740D20}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  Ji_aClass = interface(JObjectClass)
//  ['{6E325D9E-59F7-43DB-809A-4AB47787BD5F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Ji): Ji_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/i$a')]
//  Ji_a = interface(JObject)
//  ['{32709376-7ED4-478B-A4C3-ECAF22AF6DC8}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Ji_b); cdecl;
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJi_a = class(TJavaGenericImport<Ji_aClass, Ji_a>) end;

//  Ji_bClass = interface(JObjectClass)
//  ['{578490EC-CC99-4B9C-B8D1-144A777CBDC1}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ji_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/i$b')]
//  Ji_b = interface(JObject)
//  ['{5FEE3C0A-2693-47B9-AEB2-C114044C812D}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    procedure b; cdecl;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJi_b = class(TJavaGenericImport<Ji_bClass, Ji_b>) end;

//  JiClass = interface(JObjectClass)
//  ['{267A99D3-4C7A-4D8E-9CDB-56139427AD5B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ji; cdecl; overload;
//    {class} function init(P1: Boolean): Ji; cdecl; overload;
//    {class} function init(P1: Boolean; P2: Integer): Ji; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/i')]
//  Ji = interface(JObject)
//  ['{A200766E-892E-4AD2-8A1C-ED423B8CF0AD}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Ji_b); cdecl; overload;
//    procedure a(P1: Ji_b; P2: Int64); cdecl; overload;
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{58115EDF-233A-49F0-8A21-02709FE2ADF0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/j')]
//  Jj = interface(JObject)
//  ['{D1FCE3B9-001C-4378-9BEE-64FAAB9A8088}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  JkClass = interface(JObjectClass)
//  ['{F69E2413-53D7-4762-A25B-3F0E6C4E0C4D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/k')]
//  Jk = interface(JObject)
//  ['{8A550335-E67D-4DFE-B3D4-9B57960ECB73}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

//  JlClass = interface(JObjectClass)
//  ['{51C528A2-9643-4054-90CB-D0951A3A1299}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a; cdecl; overload;
//    {class} procedure a(P1: Boolean); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/misc/l')]
//  Jl = interface(JObject)
//  ['{7C3D15F3-9090-496D-A3C5-84E206D953C9}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJl = class(TJavaGenericImport<JlClass, Jl>) end;

//  JaClass = interface(JObjectClass)
//  ['{B537E6F1-4131-4194-86CA-F9D59527DAD9}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: JString): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/network/a')]
//  Ja = interface(JObject)
//  ['{E5347C61-254B-4178-942F-61E6A46E5B73}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{CD3158E3-9618-4B6D-888C-101B99C2EBB9}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/network/b')]
//  Jb = interface(JObject)
//  ['{F98F6040-48D7-440F-A202-ED2C59C9AB94}']
//    { Property Methods }
//    function _Geta: Integer;
//    procedure _Seta(aa: Integer);
//    function _Getb: JMap;
//    procedure _Setb(ab: JMap);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//
//    { methods }
//    function toString: JString; cdecl;
//    function a: JString; cdecl;
//
//    { Property }
//    property a: Integer read _Geta write _Seta;
//    property b: JMap read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{B4984E39-F92A-4568-9011-33E42A33E463}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/network/c')]
//  Jc = interface(IJavaInstance)
//  ['{CEEEC1C8-54D9-4AFC-A1DC-5B7329B2A468}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  Jd_aClass = interface(JObjectClass)
//  ['{FA0059EA-E832-4FE1-A44E-669DD9271448}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JInputStream): Jd_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/network/d$a')]
//  Jd_a = interface(JObject)
//  ['{FEC2AA72-6E15-4D3D-A5B9-B3677964C3E3}']
//    { Property Methods }
//
//    { methods }
//    function read(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
//
//    { Property }
//  end;

//  TJd_a = class(TJavaGenericImport<Jd_aClass, Jd_a>) end;

//  Jd_bClass = interface(JObjectClass)
//  ['{0FE77EB3-7941-490F-ACE7-A8F4A4B5409D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/network/d$b')]
//  Jd_b = interface(JObject)
//  ['{020D9483-9DBE-44C6-976C-AA20A3A874E1}']
//    { Property Methods }
//    function _Geta: Integer;
//    procedure _Seta(aa: Integer);
//    function _Getb: JMap;
//    procedure _Setb(ab: JMap);
//
//    { methods }
//    function toString: JString; cdecl;
//
//    { Property }
//    property a: Integer read _Geta write _Seta;
//    property b: JMap read _Getb write _Setb;
//  end;

//  TJd_b = class(TJavaGenericImport<Jd_bClass, Jd_b>) end;

//  JdClass = interface(JObjectClass)
//  ['{0D725CA6-1593-4143-B70C-5421BAF472D7}']
//    { static Property Methods }
//    {class} function _Geta: JPattern;
//    {class} function _Getb: JPattern;
//    {class} function _Getc: JPattern;
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JURL; P3: Boolean; P4: JString; P5: JString): JInputStream; cdecl; overload;
//    {class} function a(P1: JContext; P2: JURL; P3: Boolean; P4: JString; P5: JString; P6: JMap; P7: Jd_b): JInputStream; cdecl; overload;
//    {class} function a(P1: JContext; P2: JURL): JString; cdecl; overload;
//    {class} function a(P1: JContext; P2: JURL; P3: Boolean; P4: JString; P5: JString; P6: JString): JString; cdecl; overload;
//    {class} function a(P1: JString): JString; cdecl; overload;
//    {class} function a(P1: JString; P2: JMap; P3: JFile; P4: JString): JString; cdecl; overload;
//    {class} function a(P1: JContext): Integer; cdecl; overload;
//    {class} function b(P1: JContext): Boolean; cdecl; overload;
//    {class} function c(P1: JContext): Boolean; cdecl;
//    {class} function b(P1: JContext; P2: JURL): JHttpURLConnection; cdecl; overload;
//    {class} function a(P1: JURL): JString; cdecl; overload;
//    {class} function d(P1: JContext): Boolean; cdecl;
//    {class} function e(P1: JContext): Boolean; cdecl;
//    {class} function f(P1: JContext): Boolean; cdecl;
//    {class} function g(P1: JContext): Boolean; cdecl;
//    {class} function h(P1: JContext): Boolean; cdecl;
//    {class} function i(P1: JContext): Boolean; cdecl;
//    {class} function j(P1: JContext): Boolean; cdecl;
//    {class} function k(P1: JContext): JNetworkInfo; cdecl;
//    {class} function l(P1: JContext): JString; cdecl;
//    {class} function a(P1: JContext; P2: JString; P3: JMap): Jb; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: JString; P4: JMap; P5: JString): Jb; cdecl; overload;
//    {class} function a(P1: JMap): JString; cdecl; overload;
//
//    { static Property }
//    {class} property a: JPattern read _Geta;
//    {class} property b: JPattern read _Getb;
//    {class} property c: JPattern read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/network/d')]
//  Jd = interface(JObject)
//  ['{D2A4C539-EC2D-4032-8737-1E7E8F1400D5}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{5D0D27DA-7F43-499A-8833-367088DBDA73}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/reflect/a$a')]
//  Ja_a = interface(JObject)
//  ['{8688F747-6321-440D-8C58-31B2AA333638}']
//    { Property Methods }
//    function _Geta: JClass;
//    procedure _Seta(aa: JClass);
//    function _Getb: JObject;
//    procedure _Setb(ab: JObject);
//
//    { methods }
//
//    { Property }
//    property a: JClass read _Geta write _Seta;
//    property b: JObject read _Getb write _Setb;
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{BDE5D0EF-7448-409A-9F61-AAAAC992C9BF}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JObject; P2: JString): JObject; cdecl; overload;
//    {class} function a(P1: JClass; P2: JString): JObject; cdecl; overload;
//    {class} function a(P1: JClass; P2: JObject; P3: JString): JObject; cdecl; overload;
//    {class} function a(P1: JObject; P2: JString; P3: TJavaObjectArray<JObject>): JObject; cdecl; overload;
//    {class} function b(P1: JObject; P2: JString; P3: TJavaObjectArray<JObject>): JObject; cdecl;
//    {class} function a(P1: JString; P2: JString; P3: TJavaObjectArray<JObject>): JObject; cdecl; overload;
//    {class} function a(P1: JClass; P2: JString; P3: TJavaObjectArray<JObject>): JObject; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/reflect/a')]
//  Ja = interface(JObject)
//  ['{EED5CFA1-8AE0-48D2-AB44-09EBF60C41AF}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{C2E3B702-8267-4A66-9A05-4FE29200436D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/stats/a$a')]
//  Ja_a = interface(JObject)
//  ['{4460B2BF-B267-47DD-B2E7-EEB77162FEBD}']
//    { Property Methods }
//    function _Geta: Integer;
//    procedure _Seta(aa: Integer);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JObject;
//    procedure _Setc(ac: JObject);
//
//    { methods }
//
//    { Property }
//    property a: Integer read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JObject read _Getc write _Setc;
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{E2A11098-0153-44FC-BF53-B6E888F7A4FA}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ja; cdecl;
//    {class} function a: Ja; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/stats/a')]
//  Ja = interface(JObject)
//  ['{A6874881-593D-4C24-80C5-99C503ED3EA0}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JObject); cdecl; overload;
//    function b: Integer; cdecl;
//    function c: JLinkedList; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JaClass = interface(JObjectClass)
//  ['{B220974C-AF4E-462A-B1B7-9ACA606BD749}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: TJavaArray<Byte>): TJavaArray<Char>; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): TJavaArray<Char>; cdecl; overload;
//    {class} function a(P1: JString): TJavaArray<Byte>; cdecl; overload;
//    {class} function a(P1: TJavaArray<Char>): TJavaArray<Byte>; cdecl; overload;
//    {class} function a(P1: TJavaArray<Char>; P2: Integer; P3: Integer): TJavaArray<Byte>; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/string/a')]
//  Ja = interface(JObject)
//  ['{ECFB1C3D-5A41-4A54-8F14-E20AEDF885E9}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{2B6D4D36-81E7-4D89-8ED1-E075FB763515}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString): JString; cdecl; overload;
//    {class} function a(P1: JString; P2: JString; P3: JMap; P4: JString): JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/string/b')]
//  Jb = interface(JObject)
//  ['{29E010A7-5740-417A-9086-38F7B2F58E4B}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{AA619773-595C-42DC-91B4-8EA1A78F79B0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString): JString; cdecl;
//    {class} function b(P1: JString): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/string/c')]
//  Jc = interface(JObject)
//  ['{86F01A5F-6518-48A5-B6D1-2839F61436AE}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{C43F2519-A3C0-4AB9-85F6-023DACB8335D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: TJavaObjectArray<JObject>; P2: JString): JString; cdecl; overload;
//    {class} function a(P1: TJavaObjectArray<JObject>; P2: JString; P3: Integer; P4: Integer): JString; cdecl; overload;
//    {class} function a(P1: JIterator; P2: JString): JString; cdecl; overload;
//    {class} function a(P1: JCollection; P2: JString): JString; cdecl; overload;
//    {class} function a(P1: Integer): JString; cdecl; overload;
//    {class} function a(P1: JString): JString; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>): JString; cdecl; overload;
//    {class} function b(P1: JString): JString; cdecl;
//    {class} function c(P1: JString): TJavaArray<Byte>; cdecl;
//    {class} function d(P1: JString): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/channel/commonutils/string/d')]
//  Jd = interface(JObject)
//  ['{273EEC9D-BC03-459F-81D8-0B459723FBAA}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{F7946CEB-BE25-4921-A387-0BC3B91BB859}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/measite/smack/a$a')]
//  Ja_a = interface(JObject)
//  ['{DB5D9236-8394-4227-BEF4-2EDBF17D508E}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jd): Boolean; cdecl; overload;
//    procedure b(P1: Jd); cdecl;
//    procedure a(P1: Jb); cdecl; overload;
//
//    { Property }
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{ADFC9DA9-110C-4F4B-AB6F-2E4F776AF53A}']
//    { static Property Methods }
//    {class} function _Geta: Boolean;
//
//    { static Methods }
//    {class} function init(P1: Ja): Ja; cdecl;
//
//    { static Property }
//    {class} property a: Boolean read _Geta;
//  end;

//  [JavaSignature('com/xiaomi/measite/smack/a')]
//  Ja = interface(JObject)
//  ['{0519EF45-B7BD-45AD-83C8-AD5B87C82D1A}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{BC9D3BD4-7D24-4994-9DD6-102527FD83CE}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/measite/smack/b')]
//  Jb = interface(JObject)
//  ['{0F9F08FB-13FA-480D-9B7B-B3C01E44462A}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Ja; P2: Integer; P3: JException); cdecl; overload;
//    procedure a(P1: Ja; P2: JException); cdecl; overload;
//    procedure a(P1: Ja); cdecl; overload;
//    procedure b(P1: Ja); cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{5BF35A64-9D98-4DD0-8A9C-01051A0775B3}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Ja; P2: JLooper): Ja_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/metoknlp/geofencing/a$a')]
//  Ja_a = interface(JObject)
//  ['{500B545E-4648-41EC-85FC-201C98A7723E}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  Ja_bClass = interface(JObjectClass)
//  ['{013DE89E-1378-4F39-8972-A4D1FFB37F3A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Ja; P2: Double; P3: Double; P4: Single; P5: Int64; P6: JString; P7: JString; P8: JString): Ja_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/metoknlp/geofencing/a$b')]
//  Ja_b = interface(JObject)
//  ['{9D4AF421-3C56-45EA-82E1-393E6C673E9B}']
//    { Property Methods }
//    function _Geta: Double;
//    procedure _Seta(aa: Double);
//    function _Getb: Double;
//    procedure _Setb(ab: Double);
//    function _Getc: Single;
//    procedure _Setc(ac: Single);
//    function _Getd: Int64;
//    procedure _Setd(ad: Int64);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//
//    { methods }
//
//    { Property }
//    property a: Double read _Geta write _Seta;
//    property b: Double read _Getb write _Setb;
//    property c: Single read _Getc write _Setc;
//    property d: Int64 read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//  end;

//  TJa_b = class(TJavaGenericImport<Ja_bClass, Ja_b>) end;

//  JaClass = interface(JObjectClass)
//  ['{B4CD0BB1-5C12-487D-9F91-29097CD49F4B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/metoknlp/geofencing/a')]
//  Ja = interface(JObject)
//  ['{70A1773F-A873-46F6-8B81-0C629A9273FE}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JContext; P2: Double; P3: Double; P4: Single; P5: Int64; P6: JString; P7: JString; P8: JString); cdecl; overload;
//    procedure a(P1: JContext; P2: JString; P3: JString); cdecl; overload;
//    procedure a(P1: JContext); cdecl; overload;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{3B5AB61C-2D69-424E-B4E0-34328F607AC6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/metoknlp/geofencing/b')]
//  Jb = interface(JObject)
//  ['{153B0939-16CD-4BAE-B58F-DA5E12BC8006}']
//    { Property Methods }
//
//    { methods }
//    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;
//    procedure onServiceDisconnected(P1: JComponentName); cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  Jc_a_aClass = interface(JObjectClass)
//  ['{5A0059EA-227B-43D5-852F-2059D86F611F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/metoknlp/geofencing/c$a$a')]
//  Jc_a_a = interface(JObject)
//  ['{8D4144FC-C580-4FC5-8190-64851DD9EB43}']
//    { Property Methods }
//
//    { methods }
//    function asBinder: JIBinder; cdecl;
//    procedure a(P1: JList; P2: JString); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function a: JString; cdecl; overload;
//    function b(P1: JString): JList; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    procedure a(P1: Double; P2: Double; P3: Single; P4: Int64; P5: JString; P6: JString; P7: JString); cdecl; overload;
//    procedure a(P1: Double; P2: Double; P3: Single; P4: Int64; P5: JPendingIntent; P6: JString; P7: JString); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure a(P1: JPendingIntent); cdecl; overload;
//
//    { Property }
//  end;

//  TJc_a_a = class(TJavaGenericImport<Jc_a_aClass, Jc_a_a>) end;

//  Jc_aClass = interface(JObjectClass)
//  ['{89ACC4ED-83E6-44D1-90A4-1411C6490F4B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JIBinder): Jc; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/metoknlp/geofencing/c$a')]
//  Jc_a = interface(JObject)
//  ['{17919B53-B83E-4955-B07E-BE9E1ADFBAF3}']
//    { Property Methods }
//
//    { methods }
//    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJc_a = class(TJavaGenericImport<Jc_aClass, Jc_a>) end;

//  JcClass = interface(JObjectClass)
//  ['{0F9D1C12-FA84-4963-ABC1-F61D1E72CEEF}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/metoknlp/geofencing/c')]
//  Jc = interface(IJavaInstance)
//  ['{4DD18019-A86A-4A21-BC08-AB5F91F744C6}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JList; P2: JString); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function a: JString; cdecl; overload;
//    function b(P1: JString): JList; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    procedure a(P1: Double; P2: Double; P3: Single; P4: Int64; P5: JString; P6: JString; P7: JString); cdecl; overload;
//    procedure a(P1: Double; P2: Double; P3: Single; P4: Int64; P5: JPendingIntent; P6: JString; P7: JString); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure a(P1: JPendingIntent); cdecl; overload;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JaClass = interface(JObjectClass)
//  ['{901F8732-B312-45D0-B39C-B6F4787D25C1}']
//    { static Property Methods }
//    {class} function _Geta: TJavaObjectArray<JStackTraceElement>;
//
//    { static Methods }
//    {class} procedure a; cdecl; overload;
//    {class} procedure a(P1: JContext); cdecl; overload;
//
//    { static Property }
//    {class} property a: TJavaObjectArray<JStackTraceElement> read _Geta;
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/a')]
//  Ja = interface(JObject)
//  ['{DFBC1715-61C0-40C3-B881-B6CFC7AF2E1E}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;
//
//  JaaClass = interface(JObjectClass)
//  ['{BAC9A676-F199-4702-AE78-343F435E14B7}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/aa')]
//  Jaa = interface(JObject)
//  ['{0963BE54-DAE2-4EDA-A530-DD5288EB4BAC}']
//    { Property Methods }
//
//    { methods }
//    procedure dispatchMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;
//
//  TJaa = class(TJavaGenericImport<JaaClass, Jaa>) end;
//
//  JabClass = interface(JObjectClass)
//  ['{084226EC-4164-48A3-9DF7-4B5C03BD37A3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/ab')]
//  Jab = interface(JObject)
//  ['{359C6064-E94B-4801-830D-04CBD31CE306}']
//    { Property Methods }
//
//    { methods }
//    procedure onChange(P1: Boolean); cdecl;
//
//    { Property }
//  end;
//
//  TJab = class(TJavaGenericImport<JabClass, Jab>) end;
//
//  JacClass = interface(JObjectClass)
//  ['{6218678C-546D-488E-8A54-5CDFD4410BBD}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/ac')]
//  Jac = interface(JObject)
//  ['{1BA5D5DB-1934-4E9D-B771-AAF87F76D637}']
//    { Property Methods }
//
//    { methods }
//    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;
//    procedure onServiceDisconnected(P1: JComponentName); cdecl;
//
//    { Property }
//  end;
//
//  TJac = class(TJavaGenericImport<JacClass, Jac>) end;
//
//  JadClass = interface(JObjectClass)
//  ['{0A108E0E-D3B7-4389-981F-A66D27416699}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: Boolean); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: Jaf); cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/ad')]
//  Jad = interface(JObject)
//  ['{B84322E6-0170-4726-A9C7-A67F357E33F7}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJad = class(TJavaGenericImport<JadClass, Jad>) end;
//
//  JaeClass = interface(JObjectClass)
//  ['{EDAA9B62-3950-4781-AF10-F9EA92D1C548}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/ae')]
//  Jae = interface(JObject)
//  ['{3380E705-E599-459E-9DAF-142A60FE8513}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;
//
//  TJae = class(TJavaGenericImport<JaeClass, Jae>) end;
//
//  JafClass = interface(JObjectClass)
//  ['{06879B6C-6322-434E-B0B1-01A0D84650B9}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jaf; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/af')]
//  Jaf = interface(JObject)
//  ['{6E7779C3-FE38-4CD4-9651-89A8DCE66DFA}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JContext); cdecl; overload;
//    procedure a(P1: JString; P2: JContext); cdecl; overload;
//
//    { Property }
//  end;
//
//  TJaf = class(TJavaGenericImport<JafClass, Jaf>) end;
//
//  JagClass = interface(JObjectClass)
//  ['{91400D2E-2BB1-447F-875C-5FB69223C06E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jag; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/ag')]
//  Jag = interface(JObject)
//  ['{AA51FA58-7843-44F1-8B63-15ED3FB4D6BF}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl;
//    procedure run; cdecl;
//
//    { Property }
//  end;
//
//  TJag = class(TJavaGenericImport<JagClass, Jag>) end;
//
//  JbClass = interface(JObjectClass)
//  ['{90C8CCCC-3A05-48F1-BDB8-0BC7028674E2}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/b')]
//  Jb = interface(JObject)
//  ['{C580D281-893E-4B60-9335-159DD7EE6E29}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  Jc_aClass = interface(JObjectClass)
//  ['{C73BBAC4-89C0-405F-87A6-A76275751957}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jc_a; cdecl;
//    {class} function a(P1: Jc_a): JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/c$a')]
//  Jc_a = interface(JObject)
//  ['{682A055E-0D71-4B98-BA28-B348830FF2BE}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: Boolean;
//    procedure _Seth(ah: Boolean);
//    function _Geti: Boolean;
//    procedure _Seti(ai: Boolean);
//    function _Getj: Integer;
//    procedure _Setj(aj: Integer);
//
//    { methods }
//    procedure a(P1: JString; P2: JString; P3: JString); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure b(P1: JString; P2: JString); cdecl; overload;
//    function c(P1: JString; P2: JString): Boolean; cdecl; overload;
//    function a: Boolean; cdecl; overload;
//    procedure b; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure c; cdecl; overload;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: Boolean read _Geth write _Seth;
//    property i: Boolean read _Geti write _Seti;
//    property j: Integer read _Getj write _Setj;
//  end;

//  TJc_a = class(TJavaGenericImport<Jc_aClass, Jc_a>) end;

//  JcClass = interface(JObjectClass)
//  ['{E8270E48-92AB-4530-814E-8495A46B8673}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jc; cdecl; overload;
//    {class} function b(P1: JContext): JSharedPreferences; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/c')]
//  Jc = interface(JObject)
//  ['{E970EC96-CE00-409F-96F4-FCBF1E8B8199}']
//    { Property Methods }
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: JString; cdecl;
//    function d: JString; cdecl;
//    function e: JString; cdecl;
//    function f: JString; cdecl;
//    function g: JString; cdecl;
//    function a(P1: JString; P2: JString): Boolean; cdecl; overload;
//    procedure a(P1: JString; P2: JString; P3: JString); cdecl; overload;
//    procedure b(P1: JString; P2: JString); cdecl; overload;
//    procedure h; cdecl;
//    function i: Boolean; cdecl;
//    procedure a(P1: JString; P2: Jc_a); cdecl; overload;
//    procedure j; cdecl;
//    function k: Boolean; cdecl;
//    function l: Integer; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    function m: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

  JConstantsClass = interface(JObjectClass)
  ['{3FD8D99D-756C-4437-8FA7-7C142E0E6E76}']
    { static Property Methods }
    {class} function _GetUPLOAD_JOB_ID: Integer;
    {class} function _GetOC_VERSION_CHECK_JOB_ID: Integer;
    {class} function _GetDEVICE_INFO_COLLECTION_JOB_ID: Integer;
    {class} function _GetAPP_LIST_COLLECTION_JOB_ID: Integer;
    {class} function _GetAPP_ACTIVE_COLLECTION_JOB_ID: Integer;
    {class} function _GetBLUETOOTH_COLLECTION_JOB_ID: Integer;
    {class} function _GetLOCATION_COLLECTION_JOB_ID: Integer;
    {class} function _GetACCOUNT_COLLECTION_JOB_ID: Integer;
    {class} function _GetWIFI_COLLECTION_JOB_ID: Integer;
    {class} function _GetCELLULAR_COLLECTION_JOB_ID: Integer;
    {class} function _GetTOP_APP_COLLECTION_JOB_ID: Integer;
    {class} function _GetUPLOAD_NOTIFICATION_INFO_JOB_ID: Integer;
    {class} function _GetSYNC_MIID_JOB_ID: Integer;
    {class} function _GetGEO_UPDATE_LOC_JOB_ID: Integer;
    {class} function _GetGEO_DB_CLEANER_JOB_ID: Integer;
    {class} function _GetBROADCACT_ACTION_JOB_ID: Integer;
    {class} function _GetAPP_PERMISSION_JOB_ID: Integer;
    {class} function _GetSP_KEY_LAST_REINITIALIZE: JString;
    {class} function _GetEXTRA_KEY_APP_VERSION: JString;
    {class} function _GetEXTRA_KEY_APP_VERSION_CODE: JString;
    {class} function _GetEXTRA_KEY_IMEI_MD5: JString;
    {class} function _GetEXTRA_KEY_SUB_IMEI_MD5: JString;
    {class} function _GetEXTRA_KEY_TOKEN: JString;
    {class} function _GetEXTRA_KEY_REG_ID: JString;
    {class} function _GetEXTRA_KEY_REG_SECRET: JString;
    {class} function _GetEXTRA_KEY_ACCEPT_TIME: JString;
    {class} function _GetEXTRA_KEY_ALIASES_MD5: JString;
    {class} function _GetEXTRA_KEY_ALIASES: JString;
    {class} function _GetEXTRA_KEY_TOPICS_MD5: JString;
    {class} function _GetEXTRA_KEY_TOPICS: JString;
    {class} function _GetEXTRA_KEY_ACCOUNTS_MD5: JString;
    {class} function _GetEXTRA_KEY_ACCOUNTS: JString;
    {class} function _GetEXTRA_KEY_MIID: JString;
    {class} function _GetEXTRA_KEY_BOOT_SERVICE_MODE: JString;
    {class} function _GetEXTRA_KEY_INITIAL_WIFI_UPLOAD: JString;
    {class} function _GetEXTRA_KEY_XMSF_GEO_IS_WORK: JString;
    {class} function _GetACCEPT_TIME_SEPARATOR_SP: JString;
    {class} function _GetACCEPT_TIME_SEPARATOR_SERVER: JString;
    {class} function _GetGEO_NEED_REFRESHED: JString;

    { static Methods }
    {class} function init: JConstants; cdecl;

    { static Property }
    {class} property UPLOAD_JOB_ID: Integer read _GetUPLOAD_JOB_ID;
    {class} property OC_VERSION_CHECK_JOB_ID: Integer read _GetOC_VERSION_CHECK_JOB_ID;
    {class} property DEVICE_INFO_COLLECTION_JOB_ID: Integer read _GetDEVICE_INFO_COLLECTION_JOB_ID;
    {class} property APP_LIST_COLLECTION_JOB_ID: Integer read _GetAPP_LIST_COLLECTION_JOB_ID;
    {class} property APP_ACTIVE_COLLECTION_JOB_ID: Integer read _GetAPP_ACTIVE_COLLECTION_JOB_ID;
    {class} property BLUETOOTH_COLLECTION_JOB_ID: Integer read _GetBLUETOOTH_COLLECTION_JOB_ID;
    {class} property LOCATION_COLLECTION_JOB_ID: Integer read _GetLOCATION_COLLECTION_JOB_ID;
    {class} property ACCOUNT_COLLECTION_JOB_ID: Integer read _GetACCOUNT_COLLECTION_JOB_ID;
    {class} property WIFI_COLLECTION_JOB_ID: Integer read _GetWIFI_COLLECTION_JOB_ID;
    {class} property CELLULAR_COLLECTION_JOB_ID: Integer read _GetCELLULAR_COLLECTION_JOB_ID;
    {class} property TOP_APP_COLLECTION_JOB_ID: Integer read _GetTOP_APP_COLLECTION_JOB_ID;
    {class} property UPLOAD_NOTIFICATION_INFO_JOB_ID: Integer read _GetUPLOAD_NOTIFICATION_INFO_JOB_ID;
    {class} property SYNC_MIID_JOB_ID: Integer read _GetSYNC_MIID_JOB_ID;
    {class} property GEO_UPDATE_LOC_JOB_ID: Integer read _GetGEO_UPDATE_LOC_JOB_ID;
    {class} property GEO_DB_CLEANER_JOB_ID: Integer read _GetGEO_DB_CLEANER_JOB_ID;
    {class} property BROADCACT_ACTION_JOB_ID: Integer read _GetBROADCACT_ACTION_JOB_ID;
    {class} property APP_PERMISSION_JOB_ID: Integer read _GetAPP_PERMISSION_JOB_ID;
    {class} property SP_KEY_LAST_REINITIALIZE: JString read _GetSP_KEY_LAST_REINITIALIZE;
    {class} property EXTRA_KEY_APP_VERSION: JString read _GetEXTRA_KEY_APP_VERSION;
    {class} property EXTRA_KEY_APP_VERSION_CODE: JString read _GetEXTRA_KEY_APP_VERSION_CODE;
    {class} property EXTRA_KEY_IMEI_MD5: JString read _GetEXTRA_KEY_IMEI_MD5;
    {class} property EXTRA_KEY_SUB_IMEI_MD5: JString read _GetEXTRA_KEY_SUB_IMEI_MD5;
    {class} property EXTRA_KEY_TOKEN: JString read _GetEXTRA_KEY_TOKEN;
    {class} property EXTRA_KEY_REG_ID: JString read _GetEXTRA_KEY_REG_ID;
    {class} property EXTRA_KEY_REG_SECRET: JString read _GetEXTRA_KEY_REG_SECRET;
    {class} property EXTRA_KEY_ACCEPT_TIME: JString read _GetEXTRA_KEY_ACCEPT_TIME;
    {class} property EXTRA_KEY_ALIASES_MD5: JString read _GetEXTRA_KEY_ALIASES_MD5;
    {class} property EXTRA_KEY_ALIASES: JString read _GetEXTRA_KEY_ALIASES;
    {class} property EXTRA_KEY_TOPICS_MD5: JString read _GetEXTRA_KEY_TOPICS_MD5;
    {class} property EXTRA_KEY_TOPICS: JString read _GetEXTRA_KEY_TOPICS;
    {class} property EXTRA_KEY_ACCOUNTS_MD5: JString read _GetEXTRA_KEY_ACCOUNTS_MD5;
    {class} property EXTRA_KEY_ACCOUNTS: JString read _GetEXTRA_KEY_ACCOUNTS;
    {class} property EXTRA_KEY_MIID: JString read _GetEXTRA_KEY_MIID;
    {class} property EXTRA_KEY_BOOT_SERVICE_MODE: JString read _GetEXTRA_KEY_BOOT_SERVICE_MODE;
    {class} property EXTRA_KEY_INITIAL_WIFI_UPLOAD: JString read _GetEXTRA_KEY_INITIAL_WIFI_UPLOAD;
    {class} property EXTRA_KEY_XMSF_GEO_IS_WORK: JString read _GetEXTRA_KEY_XMSF_GEO_IS_WORK;
    {class} property ACCEPT_TIME_SEPARATOR_SP: JString read _GetACCEPT_TIME_SEPARATOR_SP;
    {class} property ACCEPT_TIME_SEPARATOR_SERVER: JString read _GetACCEPT_TIME_SEPARATOR_SERVER;
    {class} property GEO_NEED_REFRESHED: JString read _GetGEO_NEED_REFRESHED;
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/Constants')]
  JConstants = interface(JObject)
  ['{D264FA67-007C-4BCC-989B-EADDFC87F42C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJConstants = class(TJavaGenericImport<JConstantsClass, JConstants>) end;

//  JdClass = interface(JObjectClass)
//  ['{EB99095F-07A4-4CD5-A419-81C61C80DB65}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jd; cdecl; overload;
//    {class} function init(P1: JString; P2: JThrowable): Jd; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/d')]
//  Jd = interface(JObject)
//  ['{3EF0E8ED-149B-4492-AAF1-E672E88E3A10}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{B3FDEEA5-4E65-43D4-B93B-2C5BD92CF0B7}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: Integer): Je; cdecl;
//    {class} procedure a(P1: JContext; P2: Boolean); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/e')]
//  Je = interface(JObject)
//  ['{68B6CF5F-44CD-48F9-BC9A-199A9F89210F}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

  JErrorCodeClass = interface(JObjectClass)
  ['{B8B15DDE-8AE2-4A65-846B-36C8A973DDE8}']
    { static Property Methods }
    {class} function _GetSUCCESS: Integer;
    {class} function _GetERROR_SERVICE_UNAVAILABLE: Integer;
    {class} function _GetERROR_INTERNAL_ERROR: Integer;
    {class} function _GetERROR_AUTHERICATION_ERROR: Integer;
    {class} function _GetERROR_INVALID_PAYLOAD: Integer;

    { static Methods }
    {class} function init: JErrorCode; cdecl;

    { static Property }
    {class} property SUCCESS: Integer read _GetSUCCESS;
    {class} property ERROR_SERVICE_UNAVAILABLE: Integer read _GetERROR_SERVICE_UNAVAILABLE;
    {class} property ERROR_INTERNAL_ERROR: Integer read _GetERROR_INTERNAL_ERROR;
    {class} property ERROR_AUTHERICATION_ERROR: Integer read _GetERROR_AUTHERICATION_ERROR;
    {class} property ERROR_INVALID_PAYLOAD: Integer read _GetERROR_INVALID_PAYLOAD;
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/ErrorCode')]
  JErrorCode = interface(JObject)
  ['{74714041-C652-4DDA-8F7B-3B474A096B0A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJErrorCode = class(TJavaGenericImport<JErrorCodeClass, JErrorCode>) end;

//  JfClass = interface(JObjectClass)
//  ['{0A823D63-68B5-48FC-BCC4-B5B19C8194F4}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/f')]
//  Jf = interface(JObject)
//  ['{F6F830EA-3A35-4A99-AD39-6A6A0F7132B5}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JScanResult; P2: JScanResult): Integer; cdecl;
//    function compare(P1: JObject; P2: JObject): Integer; cdecl;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{78335079-D1D8-405A-BFA6-CB26E8966DE6}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jg; cdecl; overload;
//    {class} function a(P1: JMap): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/g')]
//  Jg = interface(JObject)
//  ['{4F240C9C-CBA4-4C8D-9F2C-5510A5315B82}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jaf); cdecl; overload;
//    procedure b(P1: Jaf); cdecl;
//    procedure c(P1: Jaf); cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{DC22A9DD-3786-4CE7-B37A-5383D9FA0B32}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jh; cdecl;
//    {class} function a(P1: JContext): Boolean; cdecl; overload;
//    {class} procedure b(P1: JContext); cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/h')]
//  Jh = interface(JObject)
//  ['{1A6293E8-07B1-4501-8FD8-6C75A0857F6C}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jk): Boolean; cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  Ji_aClass = interface(JObjectClass)
//  ['{3EC45257-9324-4BB5-9208-69E97BEAC012}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString): Ji_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/i$a')]
//  Ji_a = interface(JObject)
//  ['{BA823E40-64F8-420C-9E9B-81EFEAE97EF8}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJi_a = class(TJavaGenericImport<Ji_aClass, Ji_a>) end;

//  Ji_bClass = interface(JObjectClass)
//  ['{B8373A43-6287-4F17-9D04-796FDA50AE38}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: Boolean; P3: Boolean; P4: JString): Ji_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/i$b')]
//  Ji_b = interface(JObject)
//  ['{DFA61D54-00D0-45B0-A393-7AC82FD84BBE}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Boolean;
//    procedure _Setb(ab: Boolean);
//    function _Getc: Boolean;
//    procedure _Setc(ac: Boolean);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Boolean read _Getb write _Setb;
//    property c: Boolean read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//  end;

//  TJi_b = class(TJavaGenericImport<Ji_bClass, Ji_b>) end;

//  JiClass = interface(JObjectClass)
//  ['{A4ECD9F9-CE4A-4CA9-A56F-3F89EFC2CAE2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/i')]
//  Ji = interface(JObject)
//  ['{09ABCDEA-D942-43C5-A4AF-3BF919F0896C}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{07083757-9FA8-48DC-8A32-E428FED997B7}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/j')]
//  Jj = interface(JObject)
//  ['{BBB0A96A-6A72-49CC-8312-7846AF454604}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  JkClass = interface(JObjectClass)
//  ['{A9935F02-E5B0-4A14-9E6B-A826230D3215}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jk; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/k')]
//  Jk = interface(JObject)
//  ['{6C3D796B-9FEF-4DE4-A3D8-0860E3221050}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

//  JlClass = interface(JObjectClass)
//  ['{2E0D4E02-76F2-4133-9BD6-B441AB73D73C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/l')]
//  Jl = interface(JObject)
//  ['{27C4B589-4DD2-461A-887B-4C62F334CEF0}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJl = class(TJavaGenericImport<JlClass, Jl>) end;

  JLoggerClass = interface(JObjectClass)
  ['{E52A722A-4FE3-4CEC-9FD2-7317E27ADC42}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLogger; cdecl;
    {class} procedure setLogger(P1: JContext; P2: JLoggerInterface); cdecl;
    {class} procedure disablePushFileLog(P1: JContext); cdecl;
    {class} procedure enablePushFileLog(P1: JContext); cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/Logger')]
  JLogger = interface(JObject)
  ['{EEA99618-DC13-4A99-869E-8A6DBDC4D161}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLogger = class(TJavaGenericImport<JLoggerClass, JLogger>) end;

//  JmClass = interface(JObjectClass)
//  ['{59C3ACF1-B616-4CE0-B64B-86A0395DE654}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/m')]
//  Jm = interface(JObject)
//  ['{DA09A52B-400C-441B-9A2E-B152883EB3F1}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJm = class(TJavaGenericImport<JmClass, Jm>) end;

//  JMessageHandleService_aClass = interface(JObjectClass)
//  ['{B46359A4-2B50-47EF-A133-A1007F9DB4EE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JIntent; P2: JPushMessageReceiver): JMessageHandleService_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/MessageHandleService$a')]
//  JMessageHandleService_a = interface(JObject)
//  ['{645DA44F-1EF3-461E-9FB2-16223F48C1C7}']
//    { Property Methods }
//
//    { methods }
//    function a: JPushMessageReceiver; cdecl;
//    function b: JIntent; cdecl;
//
//    { Property }
//  end;

//  TJMessageHandleService_a = class(TJavaGenericImport<JMessageHandleService_aClass, JMessageHandleService_a>) end;
//
//  JMessageHandleServiceClass = interface(JObjectClass)
//  ['{E1E1039F-BB73-4483-A084-A801AC76A005}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure addJob(P1: JMessageHandleService_a); cdecl;
//    {class} function init: JMessageHandleService; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/MessageHandleService')]
//  JMessageHandleService = interface(JObject)
//  ['{25CE0BF5-FC3E-4C88-9ABA-1979462E85F1}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJMessageHandleService = class(TJavaGenericImport<JMessageHandleServiceClass, JMessageHandleService>) end;

  JMiPushClient_MiPushClientCallbackClass = interface(JObjectClass)
  ['{6B2EB1E1-56A3-4E99-8F57-E3887B452A63}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMiPushClient_MiPushClientCallback; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback')]
  JMiPushClient_MiPushClientCallback = interface(JObject)
  ['{35FAC29E-FAFF-453A-9495-C6344735CAE7}']
    { Property Methods }

    { methods }
    procedure onReceiveMessage(P1: JString; P2: JString; P3: JString; P4: Boolean); cdecl; overload;
    procedure onReceiveMessage(P1: JMiPushMessage); cdecl; overload;
    procedure onInitializeResult(P1: Int64; P2: JString; P3: JString); cdecl;
    procedure onSubscribeResult(P1: Int64; P2: JString; P3: JString); cdecl;
    procedure onUnsubscribeResult(P1: Int64; P2: JString; P3: JString); cdecl;
    procedure onCommandResult(P1: JString; P2: Int64; P3: JString; P4: JList); cdecl;

    { Property }
  end;

  TJMiPushClient_MiPushClientCallback = class(TJavaGenericImport<JMiPushClient_MiPushClientCallbackClass, JMiPushClient_MiPushClientCallback>) end;

  JMiPushClientClass = interface(JObjectClass)
  ['{2E539B47-58B4-4C19-9D0B-3D970F1FF778}']
    { static Property Methods }
    {class} function _GetCOMMAND_REGISTER: JString;
    {class} function _GetCOMMAND_UNREGISTER: JString;
    {class} function _GetCOMMAND_SET_ALIAS: JString;
    {class} function _GetCOMMAND_UNSET_ALIAS: JString;
    {class} function _GetCOMMAND_SET_ACCOUNT: JString;
    {class} function _GetCOMMAND_UNSET_ACCOUNT: JString;
    {class} function _GetCOMMAND_SUBSCRIBE_TOPIC: JString;
    {class} function _GetCOMMAND_UNSUBSCRIBE_TOPIC: JString;
    {class} function _GetCOMMAND_SET_ACCEPT_TIME: JString;
    {class} function _GetPREF_EXTRA: JString;

    { static Methods }
    {class} function init: JMiPushClient; cdecl;
    {class} function shouldUseMIUIPush(P1: JContext): Boolean; cdecl;
    {class} procedure registerPush(P1: JContext; P2: JString; P3: JString); cdecl;
    {class} procedure initialize(P1: JContext; P2: JString; P3: JString; P4: JMiPushClient_MiPushClientCallback); cdecl;
    {class} procedure awakeApps(P1: JContext; P2: TJavaObjectArray<JString>); cdecl;
    {class} function getAllAlias(P1: JContext): JList; cdecl;
    {class} function getAllTopic(P1: JContext): JList; cdecl;
    {class} function getAllUserAccount(P1: JContext): JList; cdecl;
    {class} procedure reportMessageClicked(P1: JContext; P2: JString); cdecl; overload;
    {class} procedure reportMessageClicked(P1: JContext; P2: JMiPushMessage); cdecl; overload;
    {class} procedure setLocalNotificationType(P1: JContext; P2: Integer); cdecl;
    {class} procedure clearLocalNotificationType(P1: JContext); cdecl;
    {class} procedure unregisterPush(P1: JContext); cdecl;
    {class} procedure disablePush(P1: JContext); cdecl;
    {class} procedure enablePush(P1: JContext); cdecl;
    {class} procedure setAlias(P1: JContext; P2: JString; P3: JString); cdecl;
    {class} procedure unsetAlias(P1: JContext; P2: JString; P3: JString); cdecl;
    {class} procedure setUserAccount(P1: JContext; P2: JString; P3: JString); cdecl;
    {class} procedure unsetUserAccount(P1: JContext; P2: JString; P3: JString); cdecl;
    {class} procedure subscribe(P1: JContext; P2: JString; P3: JString); cdecl;
    {class} procedure unsubscribe(P1: JContext; P2: JString; P3: JString); cdecl;
    {class} procedure pausePush(P1: JContext; P2: JString); cdecl;
    {class} procedure resumePush(P1: JContext; P2: JString); cdecl;
    {class} procedure clearNotification(P1: JContext; P2: Integer); cdecl; overload;
    {class} procedure clearNotification(P1: JContext; P2: JString; P3: JString); cdecl; overload;
    {class} procedure clearNotification(P1: JContext); cdecl; overload;
    {class} function getRegId(P1: JContext): JString; cdecl;
    {class} procedure setAcceptTime(P1: JContext; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: JString); cdecl;
    {class} function topicSubscribedTime(P1: JContext; P2: JString): Int64; cdecl;
    {class} function accountSetTime(P1: JContext; P2: JString): Int64; cdecl;
    {class} function aliasSetTime(P1: JContext; P2: JString): Int64; cdecl;

    { static Property }
    {class} property COMMAND_REGISTER: JString read _GetCOMMAND_REGISTER;
    {class} property COMMAND_UNREGISTER: JString read _GetCOMMAND_UNREGISTER;
    {class} property COMMAND_SET_ALIAS: JString read _GetCOMMAND_SET_ALIAS;
    {class} property COMMAND_UNSET_ALIAS: JString read _GetCOMMAND_UNSET_ALIAS;
    {class} property COMMAND_SET_ACCOUNT: JString read _GetCOMMAND_SET_ACCOUNT;
    {class} property COMMAND_UNSET_ACCOUNT: JString read _GetCOMMAND_UNSET_ACCOUNT;
    {class} property COMMAND_SUBSCRIBE_TOPIC: JString read _GetCOMMAND_SUBSCRIBE_TOPIC;
    {class} property COMMAND_UNSUBSCRIBE_TOPIC: JString read _GetCOMMAND_UNSUBSCRIBE_TOPIC;
    {class} property COMMAND_SET_ACCEPT_TIME: JString read _GetCOMMAND_SET_ACCEPT_TIME;
    {class} property PREF_EXTRA: JString read _GetPREF_EXTRA;
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/MiPushClient')]
  JMiPushClient = interface(JObject)
  ['{4D151D09-C235-4BEE-A64F-1E370D35BCAC}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMiPushClient = class(TJavaGenericImport<JMiPushClientClass, JMiPushClient>) end;

  JMiPushCommandMessageClass = interface(JObjectClass)
  ['{0C9D2D46-D79B-45D0-8767-84E4E9067377}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMiPushCommandMessage; cdecl;
    {class} function fromBundle(P1: JBundle): JMiPushCommandMessage; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/MiPushCommandMessage')]
  JMiPushCommandMessage = interface(JObject)
  ['{27365C46-38A0-48DF-9827-E972B694D77C}']
    { Property Methods }

    { methods }
    function getCommand: JString; cdecl;
    procedure setCommand(P1: JString); cdecl;
    function getCommandArguments: JList; cdecl;
    procedure setCommandArguments(P1: JList); cdecl;
    function getResultCode: Int64; cdecl;
    procedure setResultCode(P1: Int64); cdecl;
    function getReason: JString; cdecl;
    procedure setReason(P1: JString); cdecl;
    function getCategory: JString; cdecl;
    procedure setCategory(P1: JString); cdecl;
    function toString: JString; cdecl;
    function toBundle: JBundle; cdecl;

    { Property }
  end;

  TJMiPushCommandMessage = class(TJavaGenericImport<JMiPushCommandMessageClass, JMiPushCommandMessage>) end;

  JMiPushMessageClass = interface(JObjectClass)
  ['{87DEF887-14DA-463E-950D-4414A62E982D}']
    { static Property Methods }
    {class} function _GetMESSAGE_TYPE_REG: Integer;
    {class} function _GetMESSAGE_TYPE_ALIAS: Integer;
    {class} function _GetMESSAGE_TYPE_TOPIC: Integer;
    {class} function _GetMESSAGE_TYPE_ACCOUNT: Integer;

    { static Methods }
    {class} function init: JMiPushMessage; cdecl;
    {class} function fromBundle(P1: JBundle): JMiPushMessage; cdecl;

    { static Property }
    {class} property MESSAGE_TYPE_REG: Integer read _GetMESSAGE_TYPE_REG;
    {class} property MESSAGE_TYPE_ALIAS: Integer read _GetMESSAGE_TYPE_ALIAS;
    {class} property MESSAGE_TYPE_TOPIC: Integer read _GetMESSAGE_TYPE_TOPIC;
    {class} property MESSAGE_TYPE_ACCOUNT: Integer read _GetMESSAGE_TYPE_ACCOUNT;
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/MiPushMessage')]
  JMiPushMessage = interface(JObject)
  ['{08DBA319-EEC0-4C82-AB26-C914E66C2FF3}']
    { Property Methods }

    { methods }
    function getMessageId: JString; cdecl;
    function isArrivedMessage: Boolean; cdecl;
    procedure setArrivedMessage(P1: Boolean); cdecl;
    procedure setMessageId(P1: JString); cdecl;
    function getMessageType: Integer; cdecl;
    procedure setMessageType(P1: Integer); cdecl;
    function getContent: JString; cdecl;
    procedure setContent(P1: JString); cdecl;
    function getAlias: JString; cdecl;
    procedure setAlias(P1: JString); cdecl;
    procedure setUserAccount(P1: JString); cdecl;
    function getUserAccount: JString; cdecl;
    function getTopic: JString; cdecl;
    procedure setTopic(P1: JString); cdecl;
    function getNotifyType: Integer; cdecl;
    procedure setNotifyType(P1: Integer); cdecl;
    function getNotifyId: Integer; cdecl;
    procedure setNotifyId(P1: Integer); cdecl;
    function isNotified: Boolean; cdecl;
    procedure setNotified(P1: Boolean); cdecl;
    function getDescription: JString; cdecl;
    procedure setDescription(P1: JString); cdecl;
    function getTitle: JString; cdecl;
    procedure setTitle(P1: JString); cdecl;
    function getCategory: JString; cdecl;
    procedure setCategory(P1: JString); cdecl;
    function getPassThrough: Integer; cdecl;
    procedure setPassThrough(P1: Integer); cdecl;
    function getExtra: JMap; cdecl;
    procedure setExtra(P1: JMap); cdecl;
    function toString: JString; cdecl;
    function toBundle: JBundle; cdecl;

    { Property }
  end;

  TJMiPushMessage = class(TJavaGenericImport<JMiPushMessageClass, JMiPushMessage>) end;

//  JMiTinyDataClient_a_aClass = interface(JObjectClass)
//  ['{E15FF1C4-9BC3-469A-9D8F-795E463AFDD6}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JMiTinyDataClient_a): JMiTinyDataClient_a_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/MiTinyDataClient$a$a')]
//  JMiTinyDataClient_a_a = interface(JObject)
//  ['{5FB57367-CD89-4777-A3E9-8E302E355520}']
//    { Property Methods }
//    function _Geta: JArrayList;
//    procedure _Seta(aa: JArrayList);
//
//    { methods }
//    procedure a(P1: Je); cdecl;
//
//    { Property }
//    property a: JArrayList read _Geta write _Seta;
//  end;

//  TJMiTinyDataClient_a_a = class(TJavaGenericImport<JMiTinyDataClient_a_aClass, JMiTinyDataClient_a_a>) end;

//  JMiTinyDataClient_aClass = interface(JObjectClass)
//  ['{FCD00BC4-A1EF-4D03-AF5E-4C109293B54D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: JMiTinyDataClient_a; cdecl;
//    {class} function a: JMiTinyDataClient_a; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/MiTinyDataClient$a')]
//  JMiTinyDataClient_a = interface(JObject)
//  ['{48083E04-404B-4FFB-A116-36A00D2DE88A}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JContext); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    procedure b(P1: JString); cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: Je): Boolean; cdecl; overload;
//
//    { Property }
//  end;

//  TJMiTinyDataClient_a = class(TJavaGenericImport<JMiTinyDataClient_aClass, JMiTinyDataClient_a>) end;
//
//  JMiTinyDataClientClass = interface(JObjectClass)
//  ['{DE377B2D-30FC-4A1F-BA3A-B51DCD63C2E9}']
//    { static Property Methods }
//    {class} function _GetPENDING_REASON_APPID: JString;
//    {class} function _GetPENDING_REASON_INIT: JString;
//    {class} function _GetPENDING_REASON_CHANNEL: JString;
//
//    { static Methods }
//    {class} function init: JMiTinyDataClient; cdecl;
//    {class} procedure init(P1: JContext; P2: JString); cdecl;
//    {class} function upload(P1: JString; P2: JString; P3: Int64; P4: JString): Boolean; cdecl; overload;
//    {class} function upload(P1: JContext; P2: JString; P3: JString; P4: Int64; P5: JString): Boolean; cdecl; overload;
//    {class} function upload(P1: JContext; P2: Je): Boolean; cdecl; overload;
//
//    { static Property }
//    {class} property PENDING_REASON_APPID: JString read _GetPENDING_REASON_APPID;
//    {class} property PENDING_REASON_INIT: JString read _GetPENDING_REASON_INIT;
//    {class} property PENDING_REASON_CHANNEL: JString read _GetPENDING_REASON_CHANNEL;
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/MiTinyDataClient')]
//  JMiTinyDataClient = interface(JObject)
//  ['{ED505534-1552-4FAF-B431-E76AA27F005E}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJMiTinyDataClient = class(TJavaGenericImport<JMiTinyDataClientClass, JMiTinyDataClient>) end;
//
//  JnClass = interface(JObjectClass)
//  ['{2B9162FD-CCBF-4900-BCD4-2FB1D6F69084}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/n')]
//  Jn = interface(JObject)
//  ['{4438FB41-843F-4100-9C58-B4268C0DB907}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJn = class(TJavaGenericImport<JnClass, Jn>) end;

//  JoClass = interface(JObjectClass)
//  ['{17DC5819-B55F-4274-AE86-73B22FBA2D95}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/o')]
//  Jo = interface(JObject)
//  ['{19198B4C-25CE-4EF6-97ED-819736B0ECBF}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJo = class(TJavaGenericImport<JoClass, Jo>) end;

//  JpClass = interface(JObjectClass)
//  ['{3B35AD9A-3516-4D1F-9B43-F008B035CC6D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext; P2: Jah); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: Jao); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: JMiPushMessage); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/p')]
//  Jp = interface(JObject)
//  ['{572C1097-FC59-440C-953C-936991070D3C}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJp = class(TJavaGenericImport<JpClass, Jp>) end;

//  JPushMessageHandler_aClass = interface(JObjectClass)
//  ['{75F2C0D2-9769-4A96-A908-61A74910684B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/PushMessageHandler$a')]
//  JPushMessageHandler_a = interface(IJavaInstance)
//  ['{6D79EFF2-43C3-4A38-84E2-5F2BBAB985E0}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJPushMessageHandler_a = class(TJavaGenericImport<JPushMessageHandler_aClass, JPushMessageHandler_a>) end;
//
//  JPushMessageHandlerClass = interface(JObjectClass)
//  ['{D33A606C-2182-4FF0-B325-09CA1D53542F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: JPushMessageHandler; cdecl;
//    {class} function b: Boolean; cdecl;
//    {class} procedure a(P1: JContext; P2: JPushMessageHandler_a); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JMiPushMessage); cdecl; overload;
//    {class} procedure a(P1: Int64; P2: JString; P3: JString); cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/mipush/sdk/PushMessageHandler')]
//  JPushMessageHandler = interface(JObject)
//  ['{BA0028C7-0B25-4FF7-B273-62B97EE5D2FC}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJPushMessageHandler = class(TJavaGenericImport<JPushMessageHandlerClass, JPushMessageHandler>) end;

  JPushMessageHelperClass = interface(JObjectClass)
  ['{65504AEB-B7AD-49AB-AAC3-2922DAF33EEF}']
    { static Property Methods }
    {class} function _GetMESSAGE_TYPE: JString;
    {class} function _GetMESSAGE_RAW: Integer;
    {class} function _GetMESSAGE_SENDMESSAGE: Integer;
    {class} function _GetMESSAGE_COMMAND: Integer;
    {class} function _GetMESSAGE_QUIT: Integer;
    {class} function _GetKEY_MESSAGE: JString;
    {class} function _GetKEY_COMMAND: JString;
    {class} function _GetPUSH_MODE_CALLBACK: Integer;
    {class} function _GetPUSH_MODE_BROADCAST: Integer;

    { static Methods }
    {class} function init: JPushMessageHelper; cdecl;
    {class} function getPushMode(P1: JContext): Integer; cdecl;
    {class} function isUseCallbackPushMode(P1: JContext): Boolean; cdecl;
    {class} procedure sendCommandMessageBroadcast(P1: JContext; P2: JMiPushCommandMessage); cdecl;
    {class} procedure sendQuitMessageBroadcast(P1: JContext); cdecl;
    {class} function generateCommandMessage(P1: JString; P2: JList; P3: Int64; P4: JString; P5: JString): JMiPushCommandMessage; cdecl;
//    {class} function generateMessage(P1: Jak; P2: Js; P3: Boolean): JMiPushMessage; cdecl;

    { static Property }
    {class} property MESSAGE_TYPE: JString read _GetMESSAGE_TYPE;
    {class} property MESSAGE_RAW: Integer read _GetMESSAGE_RAW;
    {class} property MESSAGE_SENDMESSAGE: Integer read _GetMESSAGE_SENDMESSAGE;
    {class} property MESSAGE_COMMAND: Integer read _GetMESSAGE_COMMAND;
    {class} property MESSAGE_QUIT: Integer read _GetMESSAGE_QUIT;
    {class} property KEY_MESSAGE: JString read _GetKEY_MESSAGE;
    {class} property KEY_COMMAND: JString read _GetKEY_COMMAND;
    {class} property PUSH_MODE_CALLBACK: Integer read _GetPUSH_MODE_CALLBACK;
    {class} property PUSH_MODE_BROADCAST: Integer read _GetPUSH_MODE_BROADCAST;
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/PushMessageHelper')]
  JPushMessageHelper = interface(JObject)
  ['{1DD1B068-0C9E-4020-9517-4861F9415A43}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPushMessageHelper = class(TJavaGenericImport<JPushMessageHelperClass, JPushMessageHelper>) end;

  JPushMessageReceiverClass = interface(JObjectClass)
  ['{676A5800-6B28-4CEA-B189-1724873E840D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPushMessageReceiver; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/PushMessageReceiver')]
  JPushMessageReceiver = interface(JObject)
  ['{C5285BC5-43FA-4288-BD74-0095BE9B0874}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
    procedure onReceivePassThroughMessage(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onNotificationMessageClicked(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onNotificationMessageArrived(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onReceiveMessage(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onReceiveRegisterResult(P1: JContext; P2: JMiPushCommandMessage); cdecl;
    procedure onCommandResult(P1: JContext; P2: JMiPushCommandMessage); cdecl;

    { Property }
  end;

  TJPushMessageReceiver = class(TJavaGenericImport<JPushMessageReceiverClass, JPushMessageReceiver>) end;

  JPushServiceReceiverClass = interface(JObjectClass)
  ['{1CFC105C-39DC-47A2-A350-C2CAF293C61E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPushServiceReceiver; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/mipush/sdk/PushServiceReceiver')]
  JPushServiceReceiver = interface(JObject)
  ['{60892DB4-ECD2-4FEC-BEFE-885B43357269}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;

    { Property }
  end;

  TJPushServiceReceiver = class(TJavaGenericImport<JPushServiceReceiverClass, JPushServiceReceiver>) end;

//  JqClass = interface(JObjectClass)
//  ['{C2F95B61-8C33-4FD3-A78C-56800E964C19}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/q')]
//  Jq = interface(JObject)
//  ['{9B95FD2A-639A-46CE-88A5-F0C36AB36A8E}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: JMiPushMessage); cdecl; overload;
//    procedure a(P1: JString; P2: JMiPushCommandMessage); cdecl; overload;
//    procedure b(P1: JString; P2: JMiPushCommandMessage); cdecl;
//
//    { Property }
//  end;

//  TJq = class(TJavaGenericImport<JqClass, Jq>) end;

//  JrClass = interface(JObjectClass)
//  ['{1279C085-6D0A-4FDF-B0F7-107867AE7DE5}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/r')]
//  Jr = interface(JObject)
//  ['{3B23D394-FB12-455F-9047-5F1487F6E19B}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJr = class(TJavaGenericImport<JrClass, Jr>) end;

//  JsClass = interface(JObjectClass)
//  ['{1057FE17-E9FB-4D48-9AFA-B827B3256F3A}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/s')]
//  Js = interface(JObject)
//  ['{5231155A-E1D6-4D1A-B2FC-FAE57CE89D46}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJs = class(TJavaGenericImport<JsClass, Js>) end;

//  JtClass = interface(JObjectClass)
//  ['{BD8E9474-6B96-4C42-99BA-E6F6F8089C20}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jt; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/t')]
//  Jt = interface(JObject)
//  ['{EA40B646-A771-4006-86CE-25F79A1D8A57}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl;
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJt = class(TJavaGenericImport<JtClass, Jt>) end;

//  JuClass = interface(JObjectClass)
//  ['{2569BF84-568B-4A8D-A8A2-905A8ACC205A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Ju; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/u')]
//  Ju = interface(JObject)
//  ['{D763C930-8FA2-4674-BDA6-DDF1F4485613}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString); cdecl; overload;
//    procedure b(P1: JString); cdecl;
//    function c(P1: JString): Integer; cdecl;
//    procedure d(P1: JString); cdecl;
//    function e(P1: JString): Boolean; cdecl;
//    function a: JString; cdecl; overload;
//    procedure f(P1: JString); cdecl;
//
//    { Property }
//  end;

//  TJu = class(TJavaGenericImport<JuClass, Ju>) end;

//  JvClass = interface(JObjectClass)
//  ['{9DD97FE9-5FA3-446B-A1BB-1C216FA06F4D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: Jac): Ja; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//    {class} function b(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/v')]
//  Jv = interface(JObject)
//  ['{023F6E60-8D10-4F07-B253-2901FC8F7D80}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJv = class(TJavaGenericImport<JvClass, Jv>) end;

//  JwClass = interface(JObjectClass)
//  ['{5FC383BC-9DD8-48F0-8A6A-736F761AF56F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/w')]
//  Jw = interface(JObject)
//  ['{B7C4FFBD-8E9A-4EF8-9DB3-DA6EF25E96DF}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJw = class(TJavaGenericImport<JwClass, Jw>) end;

//  JxClass = interface(JObjectClass)
//  ['{66F94C12-D0F3-4004-A614-68BD35B48D3D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jx; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: JMap): JIntent; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/x')]
//  Jx = interface(JObject)
//  ['{A184D183-5E70-488F-956C-F5EC46C152AD}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JIntent): JPushMessageHandler_a; cdecl; overload;
//    function a(P1: JTimeZone; P2: JTimeZone; P3: JList): JList; cdecl; overload;
//
//    { Property }
//  end;

//  TJx = class(TJavaGenericImport<JxClass, Jx>) end;

//  JyClass = interface(JObjectClass)
//  ['{6D385A79-2F13-40F0-8CF4-5A9CD6E4F450}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/y')]
//  Jy = interface(JObject)
//  ['{07827E39-35CD-4831-AF20-6409BEEF01EB}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJy = class(TJavaGenericImport<JyClass, Jy>) end;

//  Jz_aClass = interface(JObjectClass)
//  ['{2A9BCC1E-8378-49AB-A65F-45B8C36D216F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/z$a')]
//  Jz_a = interface(JObject)
//  ['{B26D67E2-2818-4CF8-B7AB-BC3BBAE96179}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJz_a = class(TJavaGenericImport<Jz_aClass, Jz_a>) end;

//  JzClass = interface(JObjectClass)
//  ['{33770EEA-583F-4683-BEFE-6BBBD70B6A74}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jz; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/mipush/sdk/z')]
//  Jz = interface(JObject)
//  ['{13F069DC-C42E-4D29-9796-0215813A3ADC}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jag; P2: Boolean); cdecl; overload;
//    procedure a; cdecl; overload;
//    procedure a(P1: Jan); cdecl; overload;
//    procedure b; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a(P1: Boolean; P2: JString); cdecl; overload;
//    procedure a(P1: Ja; P2: Ja; P3: Js); cdecl; overload;
//    procedure a(P1: Ja; P2: Ja; P3: Boolean; P4: Js; P5: Boolean); cdecl; overload;
//    procedure a(P1: Ja; P2: Ja; P3: Boolean; P4: Js); cdecl; overload;
//    procedure a(P1: Ja; P2: Ja; P3: Boolean; P4: Boolean; P5: Js; P6: Boolean); cdecl; overload;
//    procedure a(P1: Ja; P2: Ja; P3: Boolean; P4: Boolean; P5: Js; P6: Boolean; P7: JString; P8: JString); cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    procedure d; cdecl;
//    procedure a(P1: Ja; P2: Ja; P3: Boolean); cdecl; overload;
//    procedure e; cdecl;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure b(P1: Integer); cdecl; overload;
//    procedure f; cdecl;
//    function g: Boolean; cdecl;
//    function c(P1: Integer): Boolean; cdecl; overload;
//
//    { Property }
//  end;

//  TJz = class(TJavaGenericImport<JzClass, Jz>) end;

//  JaClass = interface(JObjectClass)
//  ['{44EEA5A7-BBDB-421D-8BE7-108297E0C3D7}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/network/a')]
//  Ja = interface(JObject)
//  ['{8DB6D0BB-3C73-4535-98B3-E1DAF9B63D32}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JString): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

  JAccessHistoryClass = interface(JObjectClass)
  ['{AE6979D7-B658-414F-B056-5B162927DB2D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAccessHistory; cdecl; overload;
    {class} function init(P1: Integer; P2: Int64; P3: Int64; P4: JException): JAccessHistory; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/AccessHistory')]
  JAccessHistory = interface(JObject)
  ['{1863F498-A917-4450-B598-6E9563CBA9EB}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; overload;
    function b: JJSONObject; cdecl;
    function a(P1: JJSONObject): JAccessHistory; cdecl; overload;

    { Property }
  end;

  TJAccessHistory = class(TJavaGenericImport<JAccessHistoryClass, JAccessHistory>) end;

//  JbClass = interface(JObjectClass)
//  ['{634F516B-410C-42EC-8AA4-7F5F19E7A4CF}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/network/b')]
//  Jb = interface(JObject)
//  ['{13211605-3113-4AA6-8EA5-4A4CBF0B54A5}']
//    { Property Methods }
//
//    { methods }
//    function b: Boolean; cdecl;
//    function a(P1: Boolean): JArrayList; cdecl; overload;
//    procedure a(P1: JString; P2: JAccessHistory); cdecl; overload;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{C465AD59-1CA5-406B-81A5-55FC541B8BDB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jc; cdecl; overload;
//    {class} function init(P1: JString): Jc; cdecl; overload;
//    {class} function init(P1: JString; P2: Integer): Jc; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/network/c')]
//  Jc = interface(JObject)
//  ['{F7766778-7387-4878-83F6-C22CCA631A6E}']
//    { Property Methods }
//
//    { methods }
//    function toString: JString; cdecl;
//    function a(P1: Jc): Integer; cdecl; overload;
//    function a: JJSONObject; cdecl; overload;
//    function a(P1: JJSONObject): Jc; cdecl; overload;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

  JFallbackClass = interface(JObjectClass)
  ['{4E102D63-09E6-4953-B310-DF980E27004E}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString): JFallback; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/Fallback')]
  JFallback = interface(JObject)
  ['{5BC51CE6-AFF5-424D-B49E-42AFF65384AA}']
    { Property Methods }
    function _Geta: JString;
    procedure _Seta(aa: JString);
    function _Getb: JString;
    procedure _Setb(ab: JString);
    function _Getc: JString;
    procedure _Setc(ac: JString);
    function _Getd: JString;
    procedure _Setd(ad: JString);
    function _Gete: JString;
    procedure _Sete(ae: JString);
    function _Getf: JString;
    procedure _Setf(af: JString);
    function _Getg: JString;
    procedure _Setg(ag: JString);

    { methods }
    function a: Boolean; cdecl; overload;
    function a(P1: JFallback): Boolean; cdecl; overload;
    function b: Boolean; cdecl; overload;
    procedure a(P1: Int64); cdecl; overload;
    function a(P1: JString): JArrayList; cdecl; overload;
    procedure a(P1: JString; P2: Int64; P3: Int64); cdecl; overload;
    procedure b(P1: JString; P2: Int64; P3: Int64); cdecl; overload;
    procedure a(P1: JString; P2: Int64; P3: Int64; P4: JException); cdecl; overload;
    procedure b(P1: JString; P2: Int64; P3: Int64; P4: JException); cdecl; overload;
    procedure a(P1: JString; P2: Integer; P3: Int64; P4: Int64; P5: JException); cdecl; overload;
    procedure a(P1: JString; P2: JAccessHistory); cdecl; overload;
    function d: JArrayList; cdecl;
    function a(P1: Boolean): JArrayList; cdecl; overload;
    procedure b(P1: JString); cdecl; overload;
    procedure a(P1: TJavaObjectArray<JString>); cdecl; overload;
    function toString: JString; cdecl;
    function e: JString; cdecl;
    procedure c(P1: JString); cdecl;
    procedure a(P1: Double); cdecl; overload;
    function f: JJSONObject; cdecl;
    function a(P1: JJSONObject): JFallback; cdecl; overload;

    { Property }
    property a: JString read _Geta write _Seta;
    property b: JString read _Getb write _Setb;
    property c: JString read _Getc write _Setc;
    property d: JString read _Getd write _Setd;
    property e: JString read _Gete write _Sete;
    property f: JString read _Getf write _Setf;
    property g: JString read _Getg write _Setg;
  end;

  TJFallback = class(TJavaGenericImport<JFallbackClass, JFallback>) end;

  JFallbacksClass = interface(JObjectClass)
  ['{EC244339-EF3F-4E26-9605-4643551C96E3}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString): JFallbacks; cdecl; overload;
    {class} function init: JFallbacks; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/Fallbacks')]
  JFallbacks = interface(JObject)
  ['{92645898-80B6-46C9-B3BA-88DC2D43B78B}']
    { Property Methods }

    { methods }
    procedure addFallback(P1: JFallback); cdecl;
    function getFallback: JFallback; cdecl;
    function toString: JString; cdecl;
    function getFallbacks: JArrayList; cdecl;
    procedure purge(P1: Boolean); cdecl;
    function getHost: JString; cdecl;
    function toJSON: JJSONObject; cdecl;
    function fromJSON(P1: JJSONObject): JFallbacks; cdecl;

    { Property }
  end;

  TJFallbacks = class(TJavaGenericImport<JFallbacksClass, JFallbacks>) end;

  JHostClass = interface(JObjectClass)
  ['{D29C742C-D841-48CD-BFA9-D2E852BAA5D7}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString; P2: Integer): JHost; cdecl;
    {class} function a(P1: JString; P2: Integer): JHost; cdecl; overload;
//    {class} function b(P1: JString; P2: Integer): JInetSocketAddress; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/Host')]
  JHost = interface(JObject)
  ['{DD937353-0E97-49FE-A599-93A2CA0CA75A}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; overload;
    function b: JString; cdecl; overload;
    function toString: JString; cdecl;

    { Property }
  end;

  TJHost = class(TJavaGenericImport<JHostClass, JHost>) end;

  JHostFilterClass = interface(JObjectClass)
  ['{C9A10BB9-D303-442C-A8F9-1569FAFDA77F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/HostFilter')]
  JHostFilter = interface(IJavaInstance)
  ['{E5881B03-FCF8-47B4-AAFE-8942B51DABBD}']
    { Property Methods }

    { methods }
    function a(P1: JString): Boolean; cdecl;

    { Property }
  end;

  TJHostFilter = class(TJavaGenericImport<JHostFilterClass, JHostFilter>) end;

  JHostManager_HostManagerFactoryClass = interface(JObjectClass)
  ['{785C1C50-CC1D-4F2E-B3A5-7217C0CF47E3}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/HostManager$HostManagerFactory')]
  JHostManager_HostManagerFactory = interface(IJavaInstance)
  ['{3C1B81A5-EFFA-4132-BFFE-1803E2ABBBEA}']
    { Property Methods }

    { methods }
    function a(P1: JContext; P2: JHostFilter; P3: JHostManager_HttpGet; P4: JString): JHostManager; cdecl;

    { Property }
  end;

  TJHostManager_HostManagerFactory = class(TJavaGenericImport<JHostManager_HostManagerFactoryClass, JHostManager_HostManagerFactory>) end;

  JHostManager_HttpGetClass = interface(JObjectClass)
  ['{9BF38AD8-1F26-4FE7-BD7F-08172100E5F2}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/HostManager$HttpGet')]
  JHostManager_HttpGet = interface(IJavaInstance)
  ['{CAFC04E5-1CE9-4090-BC34-943D42A764AF}']
    { Property Methods }

    { methods }
    function a(P1: JString): JString; cdecl;

    { Property }
  end;

  TJHostManager_HttpGet = class(TJavaGenericImport<JHostManager_HttpGetClass, JHostManager_HttpGet>) end;

  JHostManagerClass = interface(JObjectClass)
  ['{D7785A49-560B-42F3-8F81-99E9D1E562AC}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JHostManager; cdecl;
    {class} procedure setHostManagerFactory(P1: JHostManager_HostManagerFactory); cdecl;
    {class} procedure init(P1: JContext; P2: JHostFilter; P3: JHostManager_HttpGet; P4: JString; P5: JString; P6: JString); cdecl;
    {class} procedure addReservedHost(P1: JString; P2: JString); cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/HostManager')]
  JHostManager = interface(JObject)
  ['{D2F9981A-865E-46DE-A135-AD2F3B0E17F2}']
    { Property Methods }

    { methods }
    function getFallbacksByURL(P1: JString): JFallback; cdecl;
    function getFallbacksByHost(P1: JString): JFallback; cdecl; overload;
    function getFallbacksByHost(P1: JString; P2: Boolean): JFallback; cdecl; overload;
    procedure clear; cdecl;
    procedure updateFallbacks(P1: JString; P2: JFallback); cdecl;
    procedure refreshFallbacks; cdecl;
    procedure persist; cdecl;
    procedure purge; cdecl;
    procedure setCurrentISP(P1: JString); cdecl;

    { Property }
  end;

  TJHostManager = class(TJavaGenericImport<JHostManagerClass, JHostManager>) end;

  JHostRefreshServiceClass = interface(JObjectClass)
  ['{05D496AB-411C-440A-9D1B-748C032F56E5}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/HostRefreshService')]
  JHostRefreshService = interface(JObject)
  ['{D97D20B9-F182-4B9A-AD4F-50ABC1175A6C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJHostRefreshService = class(TJavaGenericImport<JHostRefreshServiceClass, JHostRefreshService>) end;

  JHttpProcessorClass = interface(JObjectClass)
  ['{A2863247-48D3-40D5-91D2-F9FF8140ABB4}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: Integer): JHttpProcessor; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/HttpProcessor')]
  JHttpProcessor = interface(JObject)
  ['{AB3BCFF5-1E6E-49EC-9336-EEF6BFE4F945}']
    { Property Methods }

    { methods }
    function a(P1: JContext; P2: JString; P3: JList): Boolean; cdecl; overload;
    function b(P1: JContext; P2: JString; P3: JList): JString; cdecl;
    function a: Integer; cdecl; overload;

    { Property }
  end;

  TJHttpProcessor = class(TJavaGenericImport<JHttpProcessorClass, JHttpProcessor>) end;

  JHttpUtils_DefaultHttpGetProcessorClass = interface(JObjectClass)
  ['{0B6A32FD-BCFB-4DA1-BC15-4A9FB5C6CC0A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpUtils_DefaultHttpGetProcessor; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/HttpUtils$DefaultHttpGetProcessor')]
  JHttpUtils_DefaultHttpGetProcessor = interface(JObject)
  ['{AADDAF86-43CF-4221-B2A8-101A6048AAFB}']
    { Property Methods }

    { methods }
    function b(P1: JContext; P2: JString; P3: JList): JString; cdecl;

    { Property }
  end;

  TJHttpUtils_DefaultHttpGetProcessor = class(TJavaGenericImport<JHttpUtils_DefaultHttpGetProcessorClass, JHttpUtils_DefaultHttpGetProcessor>) end;

  JHttpUtilsClass = interface(JObjectClass)
  ['{3B80C278-11CD-49B3-9984-1FF11A7FC05E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpUtils; cdecl;
    {class} function a(P1: JContext; P2: JString; P3: JList): JString; cdecl; overload;
    {class} function a(P1: JContext; P2: JString; P3: JList; P4: JHttpProcessor; P5: Boolean): JString; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/HttpUtils')]
  JHttpUtils = interface(JObject)
  ['{FA94D9B9-63E2-4BE3-82E6-F23B5A2D69E4}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJHttpUtils = class(TJavaGenericImport<JHttpUtilsClass, JHttpUtils>) end;

  JNetworkStatusChangeReceiverClass = interface(JObjectClass)
  ['{13225F71-4ECC-4828-8941-3A4CBDDBA8DB}']
    { static Property Methods }

    { static Methods }
    {class} function init: JNetworkStatusChangeReceiver; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/NetworkStatusChangeReceiver')]
  JNetworkStatusChangeReceiver = interface(JObject)
  ['{94A90630-CB34-4626-91A1-610D34514B0F}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;

    { Property }
  end;

  TJNetworkStatusChangeReceiver = class(TJavaGenericImport<JNetworkStatusChangeReceiverClass, JNetworkStatusChangeReceiver>) end;

  JHostManagerDemoClass = interface(JObjectClass)
  ['{C88391E3-C41C-4FC2-B09C-C19CF1414A41}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHostManagerDemo; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/network/usagedemo/HostManagerDemo')]
  JHostManagerDemo = interface(JObject)
  ['{A0371D90-F89D-452F-AF47-37F1C57A9A80}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJHostManagerDemo = class(TJavaGenericImport<JHostManagerDemoClass, JHostManagerDemo>) end;

//  JaClass = interface(JObjectClass)
//  ['{84C58EBC-AB1E-4B0D-832A-50BBD5D550BF}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/a')]
//  Ja = interface(JObject)
//  ['{5F7FC486-1775-44C5-BF75-3E3E277201E5}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Jb_aClass = interface(JObjectClass)
//  ['{E9CC1704-689D-4C82-8B44-28BB816F8C9B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/b$a')]
//  Jb_a = interface(JObject)
//  ['{FDDEB56D-7BFA-40B0-A888-DF46DFF120AF}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl;
//
//    { Property }
//  end;

//  TJb_a = class(TJavaGenericImport<Jb_aClass, Jb_a>) end;

//  Jb_bClass = interface(JObjectClass)
//  ['{D567E811-859F-430C-9D78-E0F9F4A70DF8}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/b$b')]
//  Jb_b = interface(JObject)
//  ['{3F641124-3EB6-4ACE-87F1-A3D76D398D69}']
//    { Property Methods }
//
//    { methods }
//    function d: Boolean; cdecl;
//    procedure b; cdecl;
//
//    { Property }
//  end;

//  TJb_b = class(TJavaGenericImport<Jb_bClass, Jb_b>) end;

//  Jb_cClass = interface(JObjectClass)
//  ['{9DAF57DC-01EB-43D3-8AC0-842D617A764B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/b$c')]
//  Jb_c = interface(JObject)
//  ['{C2E2CC34-3455-476B-991E-98F9A4EDB854}']
//    { Property Methods }
//
//    { methods }
//    function d: Boolean; cdecl;
//    procedure b; cdecl;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJb_c = class(TJavaGenericImport<Jb_cClass, Jb_c>) end;

//  JbClass = interface(JObjectClass)
//  ['{7D2A0B39-E4C6-4C32-940C-422B931FC703}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jb; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/b')]
//  Jb = interface(JObject)
//  ['{7E207D5E-3D34-44AE-AFD8-34D5AE2F2F7C}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: JString; P3: JDate; P4: JDate; P5: Integer; P6: Boolean); cdecl; overload;
//    procedure a; cdecl; overload;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{E4F55032-2716-4F2B-AC0A-A8E32F337318}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/c')]
//  Jc = interface(JObject)
//  ['{B5AB40EE-D574-47EF-93BE-7117C199C74E}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{3D698D28-EBDA-471C-9214-770C51A136EA}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/d')]
//  Jd = interface(JObject)
//  ['{8AEB5A86-B631-4AA1-BE85-FAA632A6C9CB}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{917A1548-747B-46C4-A763-DB351FB5FD64}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JLoggerInterface; P2: JLoggerInterface): Je; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/e')]
//  Je = interface(JObject)
//  ['{3DA0B4C1-ADDD-443B-91A9-26EDBF477D21}']
//    { Property Methods }
//
//    { methods }
//    procedure setTag(P1: JString); cdecl;
//    procedure log(P1: JString); cdecl; overload;
//    procedure log(P1: JString; P2: JThrowable); cdecl; overload;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{4FBE231E-1515-438E-B2D7-D098A4825622}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jf; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/f')]
//  Jf = interface(JObject)
//  ['{C4C2FA17-A19F-4418-B04D-2F7ADD0DB363}']
//    { Property Methods }
//
//    { methods }
//    procedure setTag(P1: JString); cdecl;
//    procedure log(P1: JString); cdecl; overload;
//    procedure log(P1: JString; P2: JThrowable); cdecl; overload;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{CA252637-143A-4A16-B26B-6CBC5756E69C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/log/g')]
//  Jg = interface(JObject)
//  ['{362C50C5-FF5C-4B88-957E-3136225EA51F}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{2E0F4CF2-3BE9-4F69-B9E5-6E29DFC34AEF}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ja_a; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Ja_a; cdecl; overload;
//    {class} function c(P1: Jb): Ja_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/a$a')]
//  Ja_a = interface(JObject)
//  ['{317820BA-DC7A-44B3-9DB9-A756EB5C5E74}']
//    { Property Methods }
//
//    { methods }
//    function d: Integer; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: Integer): Ja_a; cdecl; overload;
//    function f: Boolean; cdecl;
//    function g: Boolean; cdecl;
//    function a(P1: Boolean): Ja_a; cdecl; overload;
//    function h: Integer; cdecl;
//    function i: Boolean; cdecl;
//    function b(P1: Integer): Ja_a; cdecl; overload;
//    function j: Boolean; cdecl;
//    function k: Boolean; cdecl;
//    function b(P1: Boolean): Ja_a; cdecl; overload;
//    function l: JList; cdecl;
//    function m: Integer; cdecl;
//    function a(P1: JString): Ja_a; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Ja_a; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{E90F4BD2-7EC9-4C7E-B6A5-C8C0BEDE9B2D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/a')]
//  Ja = interface(JObject)
//  ['{D0782B39-32A8-44EA-8ADF-3874B9E56954}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Jb_aClass = interface(JObjectClass)
//  ['{067AD73A-E394-4663-9C2A-AAB9CF8EACAB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$a')]
//  Jb_a = interface(JObject)
//  ['{1A49A423-A876-423C-A5E6-4C7EF2309005}']
//    { Property Methods }
//
//    { methods }
//    function d: Integer; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    function a(P1: Integer): Jb_a; cdecl; overload;
//    function f: Int64; cdecl; overload;
//    function g: Boolean; cdecl;
//    function a(P1: Int64): Jb_a; cdecl; overload;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function a(P1: JString): Jb_a; cdecl; overload;
//    function j: JString; cdecl;
//    function k: Boolean; cdecl;
//    function b(P1: JString): Jb_a; cdecl; overload;
//    function l: JString; cdecl;
//    function m: Boolean; cdecl;
//    function c(P1: JString): Jb_a; cdecl; overload;
//    function n: JString; cdecl;
//    function o: Boolean; cdecl;
//    function d(P1: JString): Jb_a; cdecl; overload;
//    function p: Jb_a; cdecl;
//    function q: JString; cdecl;
//    function r: Boolean; cdecl;
//    function e(P1: JString): Jb_a; cdecl; overload;
//    function s: Boolean; cdecl;
//    function t: Integer; cdecl;
//    function b(P1: Integer): Jb_a; cdecl; overload;
//    function u: Integer; cdecl;
//    function v: Boolean; cdecl;
//    function c(P1: Integer): Jb_a; cdecl; overload;
//    function w: Integer; cdecl;
//    function x: Boolean; cdecl;
//    function d(P1: Integer): Jb_a; cdecl; overload;
//    function y: JString; cdecl;
//    function z: Boolean; cdecl;
//    function f(P1: JString): Jb_a; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_a; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_a = class(TJavaGenericImport<Jb_aClass, Jb_a>) end;

//  Jb_bClass = interface(JObjectClass)
//  ['{7C8AF830-B5C2-4D2C-BBCD-9C1A5FE55917}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_b; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Jb_b; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$b')]
//  Jb_b = interface(JObject)
//  ['{C11F3BD5-1E50-41B5-9793-0D211B6359CA}']
//    { Property Methods }
//
//    { methods }
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: Boolean): Jb_b; cdecl; overload;
//    function f: Integer; cdecl;
//    function g: Boolean; cdecl;
//    function a(P1: Integer): Jb_b; cdecl; overload;
//    function h: Integer; cdecl;
//    function i: Boolean; cdecl;
//    function b(P1: Integer): Jb_b; cdecl; overload;
//    function j: Integer; cdecl;
//    function k: Boolean; cdecl;
//    function c(P1: Integer): Jb_b; cdecl;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_b; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_b = class(TJavaGenericImport<Jb_bClass, Jb_b>) end;

//  Jb_cClass = interface(JObjectClass)
//  ['{D1B514DB-EFAA-49B5-8553-61AECFB22334}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_c; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$c')]
//  Jb_c = interface(JObject)
//  ['{7E93C628-0FE6-4991-9070-2A0BFEB7CF34}']
//    { Property Methods }
//
//    { methods }
//    function d: JString; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    function a(P1: JString): Jb_c; cdecl; overload;
//    function f: JString; cdecl; overload;
//    function g: Boolean; cdecl;
//    function b(P1: JString): Jb_c; cdecl; overload;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function c(P1: JString): Jb_c; cdecl;
//    function j: JString; cdecl;
//    function k: Boolean; cdecl;
//    function d(P1: JString): Jb_c; cdecl; overload;
//    function l: JString; cdecl;
//    function m: Boolean; cdecl;
//    function e(P1: JString): Jb_c; cdecl; overload;
//    function n: JString; cdecl;
//    function o: Boolean; cdecl;
//    function f(P1: JString): Jb_c; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_c; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_c = class(TJavaGenericImport<Jb_cClass, Jb_c>) end;

//  Jb_dClass = interface(JObjectClass)
//  ['{EF26E012-48A7-48B4-A081-E2514FA95244}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_d; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Jb_d; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$d')]
//  Jb_d = interface(JObject)
//  ['{4C209676-62BB-4EB8-81C1-3EDA2D6CA1A6}']
//    { Property Methods }
//
//    { methods }
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: Boolean): Jb_d; cdecl; overload;
//    function f: JString; cdecl;
//    function g: Boolean; cdecl;
//    function a(P1: JString): Jb_d; cdecl; overload;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function b(P1: JString): Jb_d; cdecl; overload;
//    function j: JString; cdecl;
//    function k: Boolean; cdecl;
//    function c(P1: JString): Jb_d; cdecl;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_d; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_d = class(TJavaGenericImport<Jb_dClass, Jb_d>) end;

//  Jb_eClass = interface(JObjectClass)
//  ['{429A0085-32ED-4389-8511-580D89E89837}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_e; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$e')]
//  Jb_e = interface(JObject)
//  ['{2D4DB8ED-3C86-471A-A513-9D7FC2795C16}']
//    { Property Methods }
//
//    { methods }
//    function d: Integer; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    function a(P1: Integer): Jb_e; cdecl; overload;
//    function f: JString; cdecl; overload;
//    function g: Boolean; cdecl;
//    function a(P1: JString): Jb_e; cdecl; overload;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function b(P1: JString): Jb_e; cdecl; overload;
//    function j: JString; cdecl;
//    function k: Boolean; cdecl;
//    function c(P1: JString): Jb_e; cdecl; overload;
//    function l: Integer; cdecl;
//    function m: Boolean; cdecl;
//    function b(P1: Integer): Jb_e; cdecl; overload;
//    function n: JString; cdecl;
//    function o: Boolean; cdecl;
//    function d(P1: JString): Jb_e; cdecl; overload;
//    function p: JString; cdecl;
//    function q: Boolean; cdecl;
//    function e(P1: JString): Jb_e; cdecl; overload;
//    function r: JString; cdecl;
//    function s: Boolean; cdecl;
//    function f(P1: JString): Jb_e; cdecl; overload;
//    function t: Boolean; cdecl;
//    function u: Jb_b; cdecl;
//    function a(P1: Jb_b): Jb_e; cdecl; overload;
//    function v: Integer; cdecl;
//    function w: Boolean; cdecl;
//    function c(P1: Integer): Jb_e; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_e; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_e = class(TJavaGenericImport<Jb_eClass, Jb_e>) end;

//  Jb_fClass = interface(JObjectClass)
//  ['{8DFAAA2C-6889-49E4-9233-D14B0B071EA1}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_f; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Jb_f; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$f')]
//  Jb_f = interface(JObject)
//  ['{C36FF3F8-0C37-4A6A-A67B-BBFC5E80E7AF}']
//    { Property Methods }
//
//    { methods }
//    function d: JString; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: JString): Jb_f; cdecl; overload;
//    function f: JString; cdecl;
//    function g: Boolean; cdecl;
//    function b(P1: JString): Jb_f; cdecl; overload;
//    function h: Boolean; cdecl;
//    function i: Jb_b; cdecl;
//    function a(P1: Jb_b): Jb_f; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_f; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_f = class(TJavaGenericImport<Jb_fClass, Jb_f>) end;

//  Jb_gClass = interface(JObjectClass)
//  ['{A3BA6B68-3BB5-4EC7-8630-6C0ABF8B6098}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_g; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Jb_g; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$g')]
//  Jb_g = interface(JObject)
//  ['{6767FDA7-27EF-4468-BF71-10B9A5663A99}']
//    { Property Methods }
//
//    { methods }
//    function d: JString; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: JString): Jb_g; cdecl; overload;
//    function f: JString; cdecl;
//    function g: Boolean; cdecl;
//    function b(P1: JString): Jb_g; cdecl; overload;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function c(P1: JString): Jb_g; cdecl;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_g; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_g = class(TJavaGenericImport<Jb_gClass, Jb_g>) end;

//  Jb_hClass = interface(JObjectClass)
//  ['{BEA851E7-8F19-4E35-82A9-D3AF5956C07E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_h; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Jb_h; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$h')]
//  Jb_h = interface(JObject)
//  ['{BBE80F70-6812-411D-86B0-95A796ECCD3A}']
//    { Property Methods }
//
//    { methods }
//    function d: Integer; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: Integer): Jb_h; cdecl; overload;
//    function f: JString; cdecl;
//    function g: Boolean; cdecl;
//    function a(P1: JString): Jb_h; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_h; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_h = class(TJavaGenericImport<Jb_hClass, Jb_h>) end;

//  Jb_iClass = interface(JObjectClass)
//  ['{88239A96-2A38-4811-81F2-7DF50D7222CC}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_i; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Jb_i; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$i')]
//  Jb_i = interface(JObject)
//  ['{2AB33172-4C71-4B53-A2F7-71A518338C4B}']
//    { Property Methods }
//
//    { methods }
//    function d: Ja; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: Ja): Jb_i; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_i; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_i = class(TJavaGenericImport<Jb_iClass, Jb_i>) end;

//  Jb_jClass = interface(JObjectClass)
//  ['{0A0148C7-4DB1-4EF2-BDF9-D41274F5679B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_j; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Jb_j; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$j')]
//  Jb_j = interface(JObject)
//  ['{53BB4C22-A343-47A9-95D8-17FCBD68723D}']
//    { Property Methods }
//
//    { methods }
//    function d: Ja; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: Ja): Jb_j; cdecl; overload;
//    function f: Boolean; cdecl;
//    function g: Jb_b; cdecl;
//    function a(P1: Jb_b): Jb_j; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_j; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_j = class(TJavaGenericImport<Jb_jClass, Jb_j>) end;

//  Jb_kClass = interface(JObjectClass)
//  ['{91E5F4F8-0585-4A91-81AD-BDBD95BD4976}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb_k; cdecl;
//    {class} function b(P1: TJavaArray<Byte>): Jb_k; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b$k')]
//  Jb_k = interface(JObject)
//  ['{C7B5F169-CDBE-4B83-A9BA-E1C8D8903518}']
//    { Property Methods }
//
//    { methods }
//    function d: JString; cdecl;
//    function e: Boolean; cdecl;
//    function a(P1: JString): Jb_k; cdecl; overload;
//    function f: JString; cdecl;
//    function g: Boolean; cdecl;
//    function b(P1: JString): Jb_k; cdecl; overload;
//    function h: Int64; cdecl;
//    function i: Boolean; cdecl;
//    function a(P1: Int64): Jb_k; cdecl; overload;
//    function j: Int64; cdecl;
//    function k: Boolean; cdecl;
//    function b(P1: Int64): Jb_k; cdecl; overload;
//    function l: Boolean; cdecl;
//    function m: Boolean; cdecl;
//    function a(P1: Boolean): Jb_k; cdecl; overload;
//    function n: Integer; cdecl;
//    function o: Boolean; cdecl;
//    function a(P1: Integer): Jb_k; cdecl; overload;
//    procedure a(P1: Jc); cdecl; overload;
//    function a: Integer; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function b(P1: Jb): Jb_k; cdecl; overload;
//    function a(P1: Jb): Je; cdecl; overload;
//
//    { Property }
//  end;

//  TJb_k = class(TJavaGenericImport<Jb_kClass, Jb_k>) end;

//  JbClass = interface(JObjectClass)
//  ['{3472F74B-880A-49DA-85DC-EEDEDE42B4E8}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/protobuf/b')]
//  Jb = interface(JObject)
//  ['{CD4BC249-ED0E-42EB-B5B9-241601E81CD6}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JaClass = interface(JObjectClass)
//  ['{B8C13E4D-35E7-4E8B-A90F-719F1E603265}']
//    { static Property Methods }
//    {class} function _Geta: JObject;
//
//    { static Methods }
//    {class} function init(P1: JContext): Ja; cdecl;
//
//    { static Property }
//    {class} property a: JObject read _Geta;
//  end;

//  [JavaSignature('com/xiaomi/push/providers/a')]
//  Ja = interface(JObject)
//  ['{F67C1099-387B-4ACA-885A-933E4696B8E9}']
//    { Property Methods }
//
//    { methods }
//    procedure onCreate(P1: JSQLiteDatabase); cdecl;
//    procedure onUpgrade(P1: JSQLiteDatabase; P2: Integer; P3: Integer); cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JaClass = interface(JObjectClass)
//  ['{8AEE6ABE-ED38-4E14-B6F8-C720A04BCAA0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: TJavaObjectArray<Jb>): Ja; cdecl; overload;
//    {class} function init(P1: JXMPushService; P2: TJavaObjectArray<Jc>): Ja; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/a')]
//  Ja = interface(JObject)
//  ['{8EB6C337-8EF8-43BC-9B7E-2654D0B226B2}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;
//
//  JaaClass = interface(JObjectClass)
//  ['{C7D0D968-D801-4BF8-89BD-127A716A4D15}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/aa')]
//  Jaa = interface(JObject)
//  ['{DFE558D9-C91B-4B01-9610-C14D4F4E2CA5}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;
//
//  TJaa = class(TJavaGenericImport<JaaClass, Jaa>) end;
//
//  JabClass = interface(JObjectClass)
//  ['{1E322453-066A-4163-9D70-FC7E2E6A08C0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ab')]
//  Jab = interface(JObject)
//  ['{3259BB8F-F274-429D-A106-593E3B4D709A}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;
//
//  TJab = class(TJavaGenericImport<JabClass, Jab>) end;
//
//  JacClass = interface(JObjectClass)
//  ['{4FB1618D-A960-4C23-B3E9-6E12F55F5CAF}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ac')]
//  Jac = interface(JObject)
//  ['{6104BE7F-73AB-4AAF-8326-393D46245CD2}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJac = class(TJavaGenericImport<JacClass, Jac>) end;
//
//  JadClass = interface(JObjectClass)
//  ['{29A521CD-08CE-4C15-BAF8-CCC2B19868A7}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ad')]
//  Jad = interface(JObject)
//  ['{1B9E362D-0A7D-4D28-8DBC-B3B1A6253E6E}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jam_c; P2: Jam_c; P3: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJad = class(TJavaGenericImport<JadClass, Jad>) end;
//
//  Jae_aClass = interface(JObjectClass)
//  ['{21B924CC-ED92-4DD6-BF7D-6B427C5E52ED}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jae_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/ae$a')]
//  Jae_a = interface(JObject)
//  ['{FAAE738D-A80D-477F-B7EE-864DE204F4AF}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJae_a = class(TJavaGenericImport<Jae_aClass, Jae_a>) end;

//  Jae_bClass = interface(JObjectClass)
//  ['{F20DB532-5ECF-4CA7-8EED-222CBB51B989}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jae_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/ae$b')]
//  Jae_b = interface(JObject)
//  ['{2512705B-48AB-4EC4-8522-28BB353EB4D3}']
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

//  TJae_b = class(TJavaGenericImport<Jae_bClass, Jae_b>) end;
//
//  JaeClass = interface(JObjectClass)
//  ['{70EF8FA1-61C1-4DE7-B2E6-3123C2D6D4DD}']
//    { static Property Methods }
//    {class} function _Geta: Int64;
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString): Boolean; cdecl; overload;
//    {class} function a(P1: JContext; P2: Jac; P3: TJavaArray<Byte>): Jae_b; cdecl; overload;
//    {class} function a(P1: JDrawable): JBitmap; cdecl; overload;
//    {class} procedure b(P1: JContext; P2: JString); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: Integer); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: JString; P4: JString); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JLinkedList); cdecl; overload;
//    {class} function a(P1: JMap): Boolean; cdecl; overload;
//    {class} function b(P1: Jac): Boolean; cdecl; overload;
//
//    { static Property }
//    {class} property a: Int64 read _Geta;
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ae')]
//  Jae = interface(JObject)
//  ['{748AD99E-144A-4C87-BC22-E788004A9DEE}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJae = class(TJavaGenericImport<JaeClass, Jae>) end;
//
//  JafClass = interface(JObjectClass)
//  ['{9F68338F-8B6E-4661-B345-D7BE02D1C71D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JXMPushService; P2: JString; P3: JString): Boolean; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/af')]
//  Jaf = interface(JObject)
//  ['{BCFED84B-F828-4469-85F3-2E053A4B0D4B}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJaf = class(TJavaGenericImport<JafClass, Jaf>) end;
//
//  JagClass = interface(JObjectClass)
//  ['{C1888821-6907-4024-9385-50CD1ACE827F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a; cdecl; overload;
//    {class} procedure a(P1: JList; P2: Boolean); cdecl; overload;
//    {class} procedure b; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ag')]
//  Jag = interface(JObject)
//  ['{E70F2AE6-7B91-4D80-B3BC-AA370C4B4BDC}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJag = class(TJavaGenericImport<JagClass, Jag>) end;
//
//  JahClass = interface(JObjectClass)
//  ['{DC44B359-8ADC-47F7-AFE1-34B97378313A}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ah')]
//  Jah = interface(JObject)
//  ['{E58CB4B0-B15C-4A62-BE69-2ABFEBE361E3}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;
//
//  TJah = class(TJavaGenericImport<JahClass, Jah>) end;
//
//  Jai_aClass = interface(JObjectClass)
//  ['{E3F337EC-09EB-4E81-B689-898354591B30}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: TJavaArray<Byte>; P2: Integer): Jai_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/ai$a')]
//  Jai_a = interface(JObject)
//  ['{50D3C45D-B0FF-4DB2-B3EC-5716020018A6}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJai_a = class(TJavaGenericImport<Jai_aClass, Jai_a>) end;

//  Jai_bClass = interface(JObjectClass)
//  ['{85BF5F41-F040-4610-9E5E-3CF0CA35DDD7}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JBitmap; P2: Int64): Jai_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/ai$b')]
//  Jai_b = interface(JObject)
//  ['{C47C6F13-EB23-4A18-8705-CA7DEA496A0C}']
//    { Property Methods }
//    function _Geta: JBitmap;
//    procedure _Seta(aa: JBitmap);
//    function _Getb: Int64;
//    procedure _Setb(ab: Int64);
//
//    { methods }
//
//    { Property }
//    property a: JBitmap read _Geta write _Seta;
//    property b: Int64 read _Getb write _Setb;
//  end;

//  TJai_b = class(TJavaGenericImport<Jai_bClass, Jai_b>) end;
//
//  JaiClass = interface(JObjectClass)
//  ['{2FF2A69F-6379-4F8D-8A02-59505B52767F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString): Jai_b; cdecl;
//    {class} function b(P1: JContext; P2: JString): JBitmap; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ai')]
//  Jai = interface(JObject)
//  ['{8C4F590C-C9C7-4A6E-8BB2-0074A85BFDC9}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJai = class(TJavaGenericImport<JaiClass, Jai>) end;
//
//  JajClass = interface(JObjectClass)
//  ['{B0D996D8-4B12-465F-B8EB-EBA3F4987BE8}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jaj; cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/aj')]
//  Jaj = interface(JObject)
//  ['{2CB03FF4-FA64-45BC-A655-9C0A12D0166B}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JList); cdecl; overload;
//    procedure b(P1: JList); cdecl;
//    function a(P1: Integer; P2: Integer): Integer; cdecl; overload;
//    function a(P1: Integer; P2: JString): JString; cdecl; overload;
//    function a(P1: Integer; P2: Boolean): Boolean; cdecl; overload;
//
//    { Property }
//  end;
//
//  TJaj = class(TJavaGenericImport<JajClass, Jaj>) end;
//
//  JakClass = interface(JObjectClass)
//  ['{CC14807D-7AE5-4060-B721-075380AA767C}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: Jaj; P2: Jae); cdecl; overload;
//    {class} procedure a(P1: Jaj; P2: Jad); cdecl; overload;
//    {class} function a(P1: Jaj; P2: Jg): Integer; cdecl; overload;
//    {class} procedure a(P1: Jaj; P2: Jg; P3: Integer); cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ak')]
//  Jak = interface(JObject)
//  ['{5ACB7618-6233-4235-BF7B-5CC524E72A9F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJak = class(TJavaGenericImport<JakClass, Jak>) end;
//
//  JalClass = interface(JObjectClass)
//  ['{49D679AF-8371-49C1-BA56-625D5F1C3DFF}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/al')]
//  Jal = interface(JObject)
//  ['{DEBF89FB-2233-4489-8F6A-C59CFB39F216}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJal = class(TJavaGenericImport<JalClass, Jal>) end;
//
//  Jam_aClass = interface(JObjectClass)
//  ['{18815AE2-4DD2-48F3-A151-7C1D71BEA0E0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/am$a')]
//  Jam_a = interface(IJavaInstance)
//  ['{E100EF41-B166-4971-9A2E-31FE35AB33DD}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//
//    { Property }
//  end;

//  TJam_a = class(TJavaGenericImport<Jam_aClass, Jam_a>) end;

//  Jam_b_aClass = interface(JObjectClass)
//  ['{94646474-2A8A-4141-B399-80BE66D0AEF0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/am$b$a')]
//  Jam_b_a = interface(IJavaInstance)
//  ['{E7D3D81C-74A7-4165-8355-C6A624118784}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jam_c; P2: Jam_c; P3: Integer); cdecl;
//
//    { Property }
//  end;

//  TJam_b_a = class(TJavaGenericImport<Jam_b_aClass, Jam_b_a>) end;

//  Jam_bClass = interface(JObjectClass)
//  ['{5EDDA03E-BF02-40DF-9176-B1BE237C3F19}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jam_b; cdecl; overload;
//    {class} function init(P1: JXMPushService): Jam_b; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/am$b')]
//  Jam_b = interface(JObject)
//  ['{E4ECB449-2835-482F-8D4E-103F09E09AE9}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Boolean;
//    procedure _Sete(ae: Boolean);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//    function _Getk: Jb;
//    procedure _Setk(ak: Jb);
//    function _Getl: JContext;
//    procedure _Setl(al: JContext);
//
//    { methods }
//    procedure a(P1: Jam_c; P2: Integer; P3: Integer; P4: JString; P5: JString); cdecl; overload;
//    function a(P1: Integer): JString; cdecl; overload;
//    procedure a(P1: Jam_b_a); cdecl; overload;
//    procedure b(P1: Jam_b_a); cdecl;
//    function a: Int64; cdecl; overload;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Boolean read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//    property k: Jb read _Getk write _Setk;
//    property l: JContext read _Getl write _Setl;
//  end;

//  TJam_b = class(TJavaGenericImport<Jam_bClass, Jam_b>) end;

//  Jam_cClass = interface(JObjectClass)
//  ['{0D5CF068-59A7-4085-9A1A-3540F164FE03}']
//    { static Property Methods }
//    {class} function _Geta: Jam_c;
//    {class} function _Getb: Jam_c;
//    {class} function _Getc: Jam_c;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jam_c>; cdecl;
//    {class} function valueOf(P1: JString): Jam_c; cdecl;
//
//    { static Property }
//    {class} property a: Jam_c read _Geta;
//    {class} property b: Jam_c read _Getb;
//    {class} property c: Jam_c read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/push/service/am$c')]
//  Jam_c = interface(JObject)
//  ['{9B445298-DFAF-4B2C-9607-F6190F07D369}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJam_c = class(TJavaGenericImport<Jam_cClass, Jam_c>) end;
//
//  JamClass = interface(JObjectClass)
//  ['{441E103A-59ED-4B1B-A3AA-07FC681069DA}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Jam; cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/am')]
//  Jam = interface(JObject)
//  ['{A2804A7B-974B-460D-8F74-C9B8751DB9A3}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jam_b); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function b(P1: JString): JList; cdecl; overload;
//    function b: JArrayList; cdecl; overload;
//    function c(P1: JString): JCollection; cdecl; overload;
//    function b(P1: JString; P2: JString): Jam_b; cdecl; overload;
//    procedure a(P1: JContext; P2: Integer); cdecl; overload;
//    function c: Integer; cdecl; overload;
//    procedure d; cdecl;
//    procedure a(P1: JContext); cdecl; overload;
//    procedure a(P1: Jam_a); cdecl; overload;
//    procedure e; cdecl;
//
//    { Property }
//  end;
//
//  TJam = class(TJavaGenericImport<JamClass, Jam>) end;
//
//  JanClass = interface(JObjectClass)
//  ['{1A8D4685-7BA6-4317-99DB-677C8EFDDDDB}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/an')]
//  Jan = interface(JObject)
//  ['{AEEA7697-5EBE-4F15-BBB7-CDD1DE7BAC6B}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jam_c; P2: Jam_c; P3: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJan = class(TJavaGenericImport<JanClass, Jan>) end;
//
//  JaoClass = interface(JObjectClass)
//  ['{301295F0-FB64-4A57-B5E2-42971C6355D1}']
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
//    {class} function _Getx: JString;
//    {class} function _Gety: JString;
//    {class} function _Getz: JString;
//    {class} function _GetA: JString;
//    {class} function _GetB: JString;
//    {class} function _GetC: JString;
//    {class} function _GetD: JString;
//    {class} function _GetE: JString;
//    {class} function _GetF: JString;
//    {class} function _GetG: JString;
//    {class} function _GetH: JString;
//
//    { static Methods }
//    {class} function a(P1: Integer): JString; cdecl;
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
//    {class} property x: JString read _Getx;
//    {class} property y: JString read _Gety;
//    {class} property z: JString read _Getz;
//    {class} property A: JString read _GetA;
//    {class} property B: JString read _GetB;
//    {class} property C: JString read _GetC;
//    {class} property D: JString read _GetD;
//    {class} property E: JString read _GetE;
//    {class} property F: JString read _GetF;
//    {class} property G: JString read _GetG;
//    {class} property H: JString read _GetH;
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ao')]
//  Jao = interface(JObject)
//  ['{149D78FA-8B18-485A-8CD7-E95F59914A0D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJao = class(TJavaGenericImport<JaoClass, Jao>) end;
//
////  Jap_aClass = interface(JObjectClass)
////  ['{723C5940-901F-4C3F-88A2-2AB70C496664}']
////    { static Property Methods }
////
////    { static Methods }
////
////    { static Property }
////  end;
//
////  [JavaSignature('com/xiaomi/push/service/ap$a')]
////  Jap_a = interface(JObject)
////  ['{69E8C4C1-1945-4E8F-ABC3-72E2873BE7C1}']
////    { Property Methods }
////
////    { methods }
////    function a(P1: JString): JString; cdecl;
////
////    { Property }
////  end;
//
////  TJap_a = class(TJavaGenericImport<Jap_aClass, Jap_a>) end;
//
////  Jap_bClass = interface(JObjectClass)
////  ['{72559961-37CC-45AE-84D8-611164AF7BD7}']
////    { static Property Methods }
////
////    { static Methods }
////
////    { static Property }
////  end;
//
////  [JavaSignature('com/xiaomi/push/service/ap$b')]
////  Jap_b = interface(JObject)
////  ['{98A9223D-E9E1-4B78-B806-4FB13FF99143}']
////    { Property Methods }
////
////    { methods }
////
////    { Property }
////  end;
//
////  TJap_b = class(TJavaGenericImport<Jap_bClass, Jap_b>) end;
//
//  JapClass = interface(JObjectClass)
//  ['{2B497238-5FBD-4FA4-A431-C5458FDC49D1}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JXMPushService); cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ap')]
//  Jap = interface(JObject)
//  ['{457FD2CC-36ED-4871-A9C4-A7A73B09020C}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jb_b); cdecl; overload;
//    procedure a(P1: Ja_a); cdecl; overload;
//    function a(P1: JContext; P2: JHostFilter; P3: JHostManager_HttpGet; P4: JString): JHostManager; cdecl; overload;
//
//    { Property }
//  end;
//
//  TJap = class(TJavaGenericImport<JapClass, Jap>) end;
//
//  JaqClass = interface(JObjectClass)
//  ['{8FA9C333-F77C-4BE8-BC13-AFC50864562E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jaq; cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/aq')]
//  Jaq = interface(JObject)
//  ['{20EA8A08-3886-4B05-8AC4-1D7B79F7D844}']
//    { Property Methods }
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Integer; cdecl;
//    function c: Jnet_Uri; cdecl;
//
//    { Property }
//  end;
//
//  TJaq = class(TJavaGenericImport<JaqClass, Jaq>) end;
//
//  JarClass = interface(JObjectClass)
//  ['{1DCA41EF-DCE4-4E1E-A7E6-0F9DADFBE729}']
//    { static Property Methods }
//    {class} function _Geta: JString;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: JString read _Geta;
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ar')]
//  Jar = interface(JObject)
//  ['{54724932-E769-4035-824E-8E5ABBF55CC1}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJar = class(TJavaGenericImport<JarClass, Jar>) end;
//
//  JasClass = interface(JObjectClass)
//  ['{831AD99B-EFF3-4935-8F5C-72DBBDDFE779}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jas; cdecl;
//    {class} function a(P1: Byte): Integer; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>; P2: JString): JString; cdecl; overload;
//    {class} function b(P1: TJavaArray<Byte>; P2: JString): TJavaArray<Byte>; cdecl;
//    {class} function a(P1: JString; P2: JString): TJavaArray<Byte>; cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/as')]
//  Jas = interface(JObject)
//  ['{D3D80B20-C7CC-4FF0-998D-1C00464D1887}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJas = class(TJavaGenericImport<JasClass, Jas>) end;
//
//  JatClass = interface(JObjectClass)
//  ['{38BB2C5D-90C9-456E-B593-7B1D87CF89F6}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService): Jat; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/at')]
//  Jat = interface(JObject)
//  ['{28CEABA2-900F-4B5D-880A-B204A764988A}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//
//    { Property }
//  end;
//
//  TJat = class(TJavaGenericImport<JatClass, Jat>) end;
//
//  JauClass = interface(JObjectClass)
//  ['{8C71D865-4E56-46E1-8716-1067F00247ED}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Jb): Jau; cdecl; overload;
//    {class} function init(P1: JXMPushService; P2: Jd): Jau; cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/au')]
//  Jau = interface(JObject)
//  ['{A3437B26-DC8C-4500-B5D9-6018DAB8446B}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;
//
//  TJau = class(TJavaGenericImport<JauClass, Jau>) end;
//
////  Jav_aClass = interface(JObjectClass)
////  ['{FAD674FF-614F-4FE3-A8B4-9662A3689CF0}']
////    { static Property Methods }
////
////    { static Methods }
////    {class} function init: Jav_a; cdecl;
////
////    { static Property }
////  end;
//
////  [JavaSignature('com/xiaomi/push/service/av$a')]
////  Jav_a = interface(JObject)
////  ['{ABF50AF9-BE03-49F3-AAE2-5ADE03C748BB}']
////    { Property Methods }
////
////    { methods }
////    procedure a(P1: Jb_b); cdecl; overload;
////    procedure a(P1: Ja_a); cdecl; overload;
////
////    { Property }
////  end;
//
////  TJav_a = class(TJavaGenericImport<Jav_aClass, Jav_a>) end;
//
//  JavClass = interface(JObjectClass)
//  ['{72E984C4-D32A-4EC9-B8F0-2EE0088C843F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Jav; cdecl; overload;
//    {class} function e: JString; cdecl;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/av')]
//  Jav = interface(JObject)
//  ['{2EC135DD-7470-4538-8382-BC6DBB7AB295}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jav_a); cdecl; overload;
//    function d: Ja_a; cdecl;
//
//    { Property }
//  end;
//
//  TJav = class(TJavaGenericImport<JavClass, Jav>) end;
//
//  JawClass = interface(JObjectClass)
//  ['{3BE9FC1F-D3E6-457E-A609-A2537B02EA5D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/aw')]
//  Jaw = interface(JObject)
//  ['{C9424FF4-D834-4E28-AAF3-C787C0DA893F}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl;
//    procedure c; cdecl;
//
//    { Property }
//  end;
//
//  TJaw = class(TJavaGenericImport<JawClass, Jaw>) end;
//
//  JaxClass = interface(JObjectClass)
//  ['{5A3B0D48-3859-409C-994F-772F4B56BCC0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jax; cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ax')]
//  Jax = interface(JObject)
//  ['{3FF87DB0-4EB8-4B51-AA4B-FADA82546AD9}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JString; P2: JString; P3: Boolean): Boolean; cdecl; overload;
//
//    { Property }
//  end;
//
//  TJax = class(TJavaGenericImport<JaxClass, Jax>) end;
//
//  JayClass = interface(JObjectClass)
//  ['{3D0115C9-475E-4BE8-8704-FED55AB80D0D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: JString; cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: JString; P4: Int64; P5: JString); cdecl; overload;
//    {class} function a(P1: JList; P2: JString; P3: JString; P4: Integer): JArrayList; cdecl; overload;
//    {class} function a(P1: Je; P2: Boolean): Boolean; cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ay')]
//  Jay = interface(JObject)
//  ['{0F1D99CC-AECE-40FF-A9A7-44A5EADE84D2}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJay = class(TJavaGenericImport<JayClass, Jay>) end;
//
//  JazClass = interface(JObjectClass)
//  ['{8C2D4E96-B89F-4D07-80DA-245C9522FB2B}']
//    { static Property Methods }
//    {class} function _Geta: JRunnable;
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: Jac): Boolean; cdecl; overload;
//    {class} function a(P1: Jac): JString; cdecl; overload;
//
//    { static Property }
//    {class} property a: JRunnable read _Geta;
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/az')]
//  Jaz = interface(JObject)
//  ['{88CA5D9A-3AF2-4085-90C2-4F5FB8549129}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJaz = class(TJavaGenericImport<JazClass, Jaz>) end;
//
////  JbClass = interface(JObjectClass)
////  ['{FA441C8D-F6EC-4335-A6AE-15AE5B415A70}']
////    { static Property Methods }
////
////    { static Methods }
////    {class} function init: Jb; cdecl;
////    {class} function a(P1: JString): JString; cdecl; overload;
////
////    { static Property }
////  end;
//
////  [JavaSignature('com/xiaomi/push/service/b')]
////  Jb = interface(JObject)
////  ['{236CE2CB-90C6-40FC-A71B-CBC0678A1FCE}']
////    { Property Methods }
////
////    { methods }
////    procedure a(P1: JContext); cdecl; overload;
////    procedure a(P1: JContext; P2: Jam_b; P3: Boolean; P4: Integer; P5: JString); cdecl; overload;
////    procedure a(P1: JContext; P2: Jam_b; P3: Integer); cdecl; overload;
////    procedure a(P1: JXMPushService; P2: JString; P3: Jd); cdecl; overload;
////    procedure a(P1: JXMPushService; P2: JString; P3: Jb); cdecl; overload;
////    procedure a(P1: JContext; P2: Jam_b; P3: JString; P4: JString); cdecl; overload;
////
////    { Property }
////  end;
//
////  TJb = class(TJavaGenericImport<JbClass, Jb>) end;
//
//  JbaClass = interface(JObjectClass)
//  ['{A11DE083-EF8A-4DF5-A1CD-3AC6A1D79581}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/ba')]
//  Jba = interface(JObject)
//  ['{4777060C-07FC-4270-9847-8BEC56F33DFF}']
//    { Property Methods }
//
//    { methods }
//    procedure b(P1: Jd); cdecl;
//    procedure a(P1: Jb); cdecl;
//
//    { Property }
//  end;
//
//  TJba = class(TJavaGenericImport<JbaClass, Jba>) end;
//
//  JbbClass = interface(JObjectClass)
//  ['{B15CACA3-DD54-4C13-AA49-C8CAF62E0873}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bb')]
//  Jbb = interface(JObject)
//  ['{90549198-C778-4314-9EA2-685D2CFF3B72}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;
//
//  TJbb = class(TJavaGenericImport<JbbClass, Jbb>) end;
//
//  JbcClass = interface(JObjectClass)
//  ['{69694F4A-C234-4B5C-904B-2AE1BCEE0273}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bc')]
//  Jbc = interface(JObject)
//  ['{66AE83BE-E93B-4DBA-8374-302426A0659F}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jd): Boolean; cdecl;
//
//    { Property }
//  end;
//
//  TJbc = class(TJavaGenericImport<JbcClass, Jbc>) end;
//
//  JbdClass = interface(JObjectClass)
//  ['{49D57C8E-6FBE-4E9E-8CA5-10FF5E30E490}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bd')]
//  Jbd = interface(JObject)
//  ['{76936C4D-5F17-4E9D-A7C7-77A08846EEE3}']
//    { Property Methods }
//
//    { methods }
//    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;
//    procedure onServiceDisconnected(P1: JComponentName); cdecl;
//
//    { Property }
//  end;
//
//  TJbd = class(TJavaGenericImport<JbdClass, Jbd>) end;
//
//  JbeClass = interface(JObjectClass)
//  ['{29F9FD88-8EDB-4A36-888B-F81D7440370C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/be')]
//  Jbe = interface(JObject)
//  ['{58BB375B-7CB6-4AF4-A226-DC68CD3E4BFE}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;
//
//  TJbe = class(TJavaGenericImport<JbeClass, Jbe>) end;
//
//  JbfClass = interface(JObjectClass)
//  ['{293B0E3D-1560-4F6E-8C84-0F19202C318F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bf')]
//  Jbf = interface(JObject)
//  ['{BCECC0E0-FEC8-4866-9A9B-6EFBC018DBE3}']
//    { Property Methods }
//
//    { methods }
//    function a: TJavaArray<Byte>; cdecl;
//
//    { Property }
//  end;
//
//  TJbf = class(TJavaGenericImport<JbfClass, Jbf>) end;
//
//  JbgClass = interface(JObjectClass)
//  ['{342FB34E-197C-4DAA-88F5-194A414C8F96}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bg')]
//  Jbg = interface(JObject)
//  ['{4C214AE6-88AC-4600-AD9C-DA4AACDA04FA}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;
//
//  TJbg = class(TJavaGenericImport<JbgClass, Jbg>) end;
//
//  JbhClass = interface(JObjectClass)
//  ['{4EE2162F-ED7C-47E9-B795-A1B1798AED5D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bh')]
//  Jbh = interface(JObject)
//  ['{8EB4C50C-57D5-4EDA-AADA-478E6C40D2E9}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//
//    { Property }
//  end;
//
//  TJbh = class(TJavaGenericImport<JbhClass, Jbh>) end;
//
//  JbiClass = interface(JObjectClass)
//  ['{B6E8BEE2-5DF9-4C2B-985B-1B95E8DC7205}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bi')]
//  Jbi = interface(JObject)
//  ['{50EE9EB3-3B88-4D26-930B-C2FF06FD1D0B}']
//    { Property Methods }
//
//    { methods }
//    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
//
//    { Property }
//  end;
//
//  TJbi = class(TJavaGenericImport<JbiClass, Jbi>) end;
//
//  JbjClass = interface(JObjectClass)
//  ['{225FBE62-6099-4B49-A34B-940A9DC1B67F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bj')]
//  Jbj = interface(JObject)
//  ['{308A6D58-7785-49DB-86BC-939B94A8702A}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;
//
//  TJbj = class(TJavaGenericImport<JbjClass, Jbj>) end;
//
//  JbkClass = interface(JObjectClass)
//  ['{F86CFA85-F30E-46FA-9CE9-EB0420405437}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bk')]
//  Jbk = interface(JObject)
//  ['{F283B3B7-04FA-4D02-AA2C-1A117987EE16}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;
//
//  TJbk = class(TJavaGenericImport<JbkClass, Jbk>) end;
//
//  JblClass = interface(JObjectClass)
//  ['{50071780-56E4-4738-A45F-DB47CB4E6275}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bl')]
//  Jbl = interface(JObject)
//  ['{43346B4C-7CE4-447D-A3A4-DF2B11FBF3E8}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;
//
//  TJbl = class(TJavaGenericImport<JblClass, Jbl>) end;
//
//  JbmClass = interface(JObjectClass)
//  ['{06E62434-7E55-408F-98E5-44A415E0D0FE}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/bm')]
//  Jbm = interface(JObject)
//  ['{20080EBD-C1B0-4DF9-B555-55FE8A906749}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;
//
//  TJbm = class(TJavaGenericImport<JbmClass, Jbm>) end;
//
//  JcClass = interface(JObjectClass)
//  ['{5A7FC759-423B-49E6-82DA-522E5681FFD1}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jc; cdecl;
//    {class} function a(P1: JXmlPullParser): Ja; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/c')]
//  Jc = interface(JObject)
//  ['{D3AE9FDA-67E3-4BAE-BEB0-D67C3A511DE7}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    function b(P1: JXmlPullParser): Ja; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{D9EEFE9A-1767-4FB6-A9EF-08EA9821107E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService): Jd; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/d')]
//  Jd = interface(JObject)
//  ['{B4F82367-B6D6-44B7-8CAE-DED1D05D1933}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl;
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{65ED2727-7D98-4997-A3DE-815972BAE31E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Je; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/e')]
//  Je = interface(JObject)
//  ['{C6AB471F-CEAD-4885-A7AD-71B613AC1DEE}']
//    { Property Methods }
//
//    { methods }
//    function a: JArrayList; cdecl; overload;
//    function a(P1: JString): Jk; cdecl; overload;
//    function b(P1: JString): JArrayList; cdecl;
//    function c(P1: JString): JString; cdecl;
//    function a(P1: JString; P2: JString): Integer; cdecl; overload;
//    function a(P1: Jk): Int64; cdecl; overload;
//    function d(P1: JString): Integer; cdecl;
//    function e(P1: JString): Integer; cdecl;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{345F4F81-98D7-49A3-9D30-755E27AF73F0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jf; cdecl;
//    {class} function a(P1: JContext): Jf; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/f')]
//  Jf = interface(JObject)
//  ['{902CA6CA-9BB5-4903-8A86-6663ADA70EA8}']
//    { Property Methods }
//    function _Geta: JObject;
//    procedure _Seta(aa: JObject);
//
//    { methods }
//    procedure onCreate(P1: JSQLiteDatabase); cdecl;
//    procedure onUpgrade(P1: JSQLiteDatabase; P2: Integer; P3: Integer); cdecl;
//    function a: JSQLiteDatabase; cdecl; overload;
//    procedure b; cdecl;
//
//    { Property }
//    property a: JObject read _Geta write _Seta;
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{0E11BA06-AFE5-4715-96A7-605523B345E2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jg; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/g')]
//  Jg = interface(JObject)
//  ['{558E3A6D-C134-4E8A-B76E-B76F02B92ED8}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JArrayList): Boolean; cdecl; overload;
//    function a(P1: JString): Integer; cdecl; overload;
//    function b(P1: JString): Integer; cdecl;
//    function c(P1: JString): JArrayList; cdecl;
//    function a: JArrayList; cdecl; overload;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{DD5803B3-C27C-4964-BF6C-914C2DF94808}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Boolean; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: Integer): Boolean; cdecl; overload;
//    {class} function b(P1: JContext): Boolean; cdecl;
//    {class} function c(P1: JContext): Boolean; cdecl;
//    {class} procedure a(P1: JContext; P2: JString); cdecl; overload;
//    {class} procedure a(P1: JString; P2: JContext); cdecl; overload;
//    {class} function d(P1: JContext): Boolean; cdecl;
//    {class} function e(P1: JContext): Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/h')]
//  Jh = interface(JObject)
//  ['{9ACA0B49-82B3-4E8B-B4E1-8F3CF7BF815E}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  Ji_aClass = interface(JObjectClass)
//  ['{BBAF10BD-FFC4-468F-BD06-2A602B5282AC}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/i$a')]
//  Ji_a = interface(JObject)
//  ['{84842722-78A0-4961-9FB6-BCF7C2737A3D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJi_a = class(TJavaGenericImport<Ji_aClass, Ji_a>) end;

//  Ji_bClass = interface(JObjectClass)
//  ['{E0175C3B-AD63-488F-8979-039FC21D9626}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Integer): Ji_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/i$b')]
//  Ji_b = interface(JObject)
//  ['{5F5C4428-35D4-4034-9948-BD3F1C670B87}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJi_b = class(TJavaGenericImport<Ji_bClass, Ji_b>) end;

//  Ji_c_aClass = interface(JObjectClass)
//  ['{E17D1F77-8717-4409-823B-788F5007A76D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/i$c$a')]
//  Ji_c_a = interface(JObject)
//  ['{90962E14-1627-4444-9AFC-0E589D5B81A1}']
//    { Property Methods }
//
//    { methods }
//    function a: Ji_d; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    procedure a(P1: Ji_d); cdecl; overload;
//    function a(P1: Integer): Boolean; cdecl; overload;
//    procedure b(P1: Integer); cdecl; overload;
//    procedure a(P1: Integer; P2: Ji_b); cdecl; overload;
//    procedure c(P1: Integer); cdecl; overload;
//    procedure c; cdecl; overload;
//    procedure d; cdecl;
//
//    { Property }
//  end;

//  TJi_c_a = class(TJavaGenericImport<Ji_c_aClass, Ji_c_a>) end;

//  Ji_cClass = interface(JObjectClass)
//  ['{AF11ACCC-528A-448B-B6B9-DED704A04361}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/i$c')]
//  Ji_c = interface(JObject)
//  ['{E59F0F1A-0D1C-4987-B0E5-AA0E9D997D0C}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//    procedure a; cdecl;
//    function b: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJi_c = class(TJavaGenericImport<Ji_cClass, Ji_c>) end;

//  Ji_dClass = interface(JObjectClass)
//  ['{1D276EA3-628D-4F43-AF3A-70D90F4128B9}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/i$d')]
//  Ji_d = interface(JObject)
//  ['{447BF42A-CDCB-4FDD-A19D-F3E92A3598E3}']
//    { Property Methods }
//
//    { methods }
//    function a: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJi_d = class(TJavaGenericImport<Ji_dClass, Ji_d>) end;

//  JiClass = interface(JObjectClass)
//  ['{B4738047-23D8-4B0D-8D41-25D26B6CFD24}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: Boolean): Ji; cdecl; overload;
//    {class} function init(P1: JString): Ji; cdecl; overload;
//    {class} function init(P1: Boolean): Ji; cdecl; overload;
//    {class} function init: Ji; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/i')]
//  Ji = interface(JObject)
//  ['{053F8CC4-9B97-41DE-8725-1A0E4B1A33AE}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl; overload;
//    function a(P1: Integer): Boolean; cdecl; overload;
//    procedure b(P1: Integer); cdecl; overload;
//    procedure c; cdecl;
//    procedure a(P1: Integer; P2: Ji_b); cdecl; overload;
//    function d: Boolean; cdecl;
//    procedure a(P1: Ji_b); cdecl; overload;
//    procedure a(P1: Ji_b; P2: Int64); cdecl; overload;
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{7429C8E8-F938-41D8-958D-6BE19DA24838}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/j')]
//  Jj = interface(JObject)
//  ['{25DA44B3-C916-4A4F-B5F1-A9C20DCAD98F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  JkClass = interface(JObjectClass)
//  ['{161B12D6-B314-43E1-AD49-24D74CA4C718}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService): Jk; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/k')]
//  Jk = interface(JObject)
//  ['{AC1F4551-5AA1-44AE-83E8-86E1485CB853}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JList; P2: JString; P3: JString); cdecl; overload;
//    function a(P1: Je; P2: JString): Boolean; cdecl; overload;
//
//    { Property }
//  end;

//  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

//  JlClass = interface(JObjectClass)
//  ['{B3E33FDB-34DB-4813-A3B2-119ADFF2E0B7}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/l')]
//  Jl = interface(JObject)
//  ['{AD2F7532-26AC-4242-A30B-19033DDA3E82}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJl = class(TJavaGenericImport<JlClass, Jl>) end;

//  Jm_aClass = interface(JObjectClass)
//  ['{CB4527DA-A8B5-4F62-9BCC-761CBC8AABCE}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/m$a')]
//  Jm_a = interface(IJavaInstance)
//  ['{CA923FA7-A191-4923-B34A-4548FF7B1A37}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: JContext); cdecl;
//
//    { Property }
//  end;

//  TJm_a = class(TJavaGenericImport<Jm_aClass, Jm_a>) end;

//  JmClass = interface(JObjectClass)
//  ['{FFC62EAF-13A1-4DB4-8D94-0C0EF7EFC2A1}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jm; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/m')]
//  Jm = interface(JObject)
//  ['{3FB459AB-C644-4117-B601-39318B9C8112}']
//    { Property Methods }
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    procedure b; cdecl; overload;
//    function c: JString; cdecl;
//    procedure a(P1: Jm_a); cdecl; overload;
//    procedure b(P1: Jm_a); cdecl; overload;
//
//    { Property }
//  end;

//  TJm = class(TJavaGenericImport<JmClass, Jm>) end;

//  JaClass = interface(JObjectClass)
//  ['{DE417BE9-9267-41FD-A51D-0F2D50008FE9}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JString): Ja; cdecl;
//    {class} function a(P1: JContext; P2: JString): JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/module/a')]
//  Ja = interface(JObject)
//  ['{90C26C7A-391F-4D15-BEFB-64111873AD5D}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    function b: JString; cdecl;
//    function c: JDexClassLoader; cdecl;
//    function d: JString; cdecl;
//    function e: JString; cdecl;
//    function f: JString; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{B0118362-8A3D-4AFB-A106-A13624B6AD50}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/module/b')]
//  Jb = interface(JObject)
//  ['{9EAC91FF-3E28-48E6-B5BA-FF287071CE69}']
//    { Property Methods }
//
//    { methods }
//    function a: Int64; cdecl; overload;
//    procedure a(P1: Int64); cdecl; overload;
//    function b: JString; cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function c: JString; cdecl;
//    procedure b(P1: JString); cdecl; overload;
//    function d: TJavaArray<Byte>; cdecl;
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//    function e: Integer; cdecl;
//    procedure a(P1: Integer); cdecl; overload;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{B403C369-22E3-4FEA-8BCD-0870B1A33C5E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: JString; P3: JClassLoader; P4: JString; P5: Integer): Jc; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/module/c')]
//  Jc = interface(JObject)
//  ['{2EE99841-D12B-465F-96EA-25AB32BBD1ED}']
//    { Property Methods }
//
//    { methods }
//    function a: JClassLoader; cdecl; overload;
//    procedure a(P1: JContext); cdecl; overload;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  Jd_aClass = interface(JObjectClass)
//  ['{CE3B3A59-0CF7-4639-A3A7-502E902DA7DE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JString; P3: JString; P4: JString; P5: Boolean): Jd_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/module/d$a')]
//  Jd_a = interface(JObject)
//  ['{1D6E7D1F-1491-4067-A4C5-E6AC41BFB465}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJd_a = class(TJavaGenericImport<Jd_aClass, Jd_a>) end;

//  Jd_bClass = interface(JObjectClass)
//  ['{F0A03205-8B97-46D4-BB7A-8CD0AF6D1AE6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/module/d$b')]
//  Jd_b = interface(IJavaInstance)
//  ['{9EC90B9B-15BB-4CBD-85F5-168E53D9EFC2}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jf); cdecl;
//
//    { Property }
//  end;

//  TJd_b = class(TJavaGenericImport<Jd_bClass, Jd_b>) end;

//  JdClass = interface(JObjectClass)
//  ['{6BEA2FBD-1DA6-4048-813B-512BCEE081BF}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jd; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/module/d')]
//  Jd = interface(JObject)
//  ['{A8F07933-DC71-4430-95C1-1668DD37CC9D}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Je): Jc; cdecl; overload;
//    procedure a; cdecl; overload;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{53FF3E75-F975-46D6-8E0A-9AA9E69E6903}']
//    { static Property Methods }
//    {class} function _Geta: Je;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Je>; cdecl;
//    {class} function valueOf(P1: JString): Je; cdecl;
//
//    { static Property }
//    {class} property a: Je read _Geta;
//  end;

//  [JavaSignature('com/xiaomi/push/service/module/e')]
//  Je = interface(JObject)
//  ['{79E1EC59-EC80-4262-A2CA-1B3319033AEF}']
//    { Property Methods }
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//
//    { methods }
//
//    { Property }
//    property b: JString read _Getb write _Setb;
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{F5A50FDF-21BC-438B-B4B0-D8E75A36B3D0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jf; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/module/f')]
//  Jf = interface(JObject)
//  ['{6D560E6E-0639-49CA-96CE-6B4401052C2D}']
//    { Property Methods }
//    function _Geta: Je;
//    procedure _Seta(aa: Je);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Boolean;
//    procedure _Sete(ae: Boolean);
//
//    { methods }
//
//    { Property }
//    property a: Je read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Boolean read _Gete write _Sete;
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JnClass = interface(JObjectClass)
//  ['{AFD4D517-3439-4584-8027-FC942FA7A6B2}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/n')]
//  Jn = interface(JObject)
//  ['{4F62C297-326A-48D9-BFE5-C3DA37B1E2F0}']
//    { Property Methods }
//
//    { methods }
//    procedure onAccountsUpdated(P1: TJavaObjectArray<JAccount>); cdecl;
//
//    { Property }
//  end;

//  TJn = class(TJavaGenericImport<JnClass, Jn>) end;

//  JoClass = interface(JObjectClass)
//  ['{775526D1-4EED-4D7B-AC45-43D00F07613E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jo; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/o')]
//  Jo = interface(JObject)
//  ['{F6010B70-AF1E-40AF-94CA-77F6E4BFCD2F}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function b: JString; cdecl;
//    function c: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJo = class(TJavaGenericImport<JoClass, Jo>) end;

//  JpClass = interface(JObjectClass)
//  ['{10010CCF-BE17-4239-BB81-E90CB1704F2E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: Integer): Jp; cdecl;
//    {class} function a(P1: JContext): Boolean; cdecl; overload;
//    {class} function a: Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/p')]
//  Jp = interface(JObject)
//  ['{7DE67B93-6CC7-4797-B075-5D995ED8BFA5}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: Integer;
//    procedure _Setg(ag: Integer);
//
//    { methods }
//    function a(P1: JXMPushService): Jam_b; cdecl; overload;
//    function a(P1: Jam_b; P2: JContext; P3: Jb; P4: JString): Jam_b; cdecl; overload;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: Integer read _Getg write _Setg;
//  end;

//  TJp = class(TJavaGenericImport<JpClass, Jp>) end;
//
//  JPacketSync_PacketReceiveHandlerClass = interface(JObjectClass)
//  ['{EB2D3511-D61F-4B7B-A053-75BB3C361E92}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/PacketSync$PacketReceiveHandler')]
//  JPacketSync_PacketReceiveHandler = interface(IJavaInstance)
//  ['{9EABD34F-9561-4FFF-B553-46FAD83C14DF}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJPacketSync_PacketReceiveHandler = class(TJavaGenericImport<JPacketSync_PacketReceiveHandlerClass, JPacketSync_PacketReceiveHandler>) end;
//
//  JPacketSyncClass = interface(JObjectClass)
//  ['{4C2D3C2A-8C22-4D38-BAC9-2BE022344F01}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/push/service/PacketSync')]
//  JPacketSync = interface(JObject)
//  ['{1719119E-FC2D-443F-9EB4-702C5AF56764}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jd); cdecl; overload;
//    procedure a(P1: Jb); cdecl; overload;
//    procedure b(P1: Jb); cdecl;
//
//    { Property }
//  end;
//
//  TJPacketSync = class(TJavaGenericImport<JPacketSyncClass, JPacketSync>) end;
//
//  Jq_aClass = interface(JObjectClass)
//  ['{1EA70AC0-EDDF-4092-A8A5-8287A7195414}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/q$a')]
//  Jq_a = interface(IJavaInstance)
//  ['{FD472124-C371-4245-AD7F-B1579DF2384B}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//
//    { Property }
//  end;

//  TJq_a = class(TJavaGenericImport<Jq_aClass, Jq_a>) end;

//  JqClass = interface(JObjectClass)
//  ['{61EB8B6F-94A4-429F-8E56-118ABE712EE0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jp; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: JString; P4: JString): Jp; cdecl; overload;
//    {class} function a: JString; cdecl; overload;
//    {class} procedure a(P1: JContext; P2: Jp); cdecl; overload;
//    {class} procedure b(P1: JContext); cdecl; overload;
//    {class} procedure b; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/q')]
//  Jq = interface(JObject)
//  ['{2383EABF-6DB0-40E4-9ABE-336ABA6282A1}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJq = class(TJavaGenericImport<JqClass, Jq>) end;

//  JrClass = interface(JObjectClass)
//  ['{01843C4B-9293-4A89-A5FA-0004DD7D1FC7}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jr; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/r')]
//  Jr = interface(JObject)
//  ['{B0BCD332-6921-4425-9A07-DC9599B51373}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JString): Boolean; cdecl; overload;
//    function b(P1: JString): Boolean; cdecl;
//    function c(P1: JString): Boolean; cdecl;
//    procedure d(P1: JString); cdecl;
//    procedure e(P1: JString); cdecl;
//    procedure f(P1: JString); cdecl;
//    procedure g(P1: JString); cdecl;
//    procedure h(P1: JString); cdecl;
//    procedure i(P1: JString); cdecl;
//
//    { Property }
//  end;

//  TJr = class(TJavaGenericImport<JrClass, Jr>) end;

//  JaClass = interface(JObjectClass)
//  ['{E0C8129C-A86E-47DB-A737-82EB415A309B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/receivers/a')]
//  Ja = interface(JObject)
//  ['{B69E1183-19E1-4877-B189-5D14D803897A}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

  JNetworkStatusReceiverClass = interface(JObjectClass)
  ['{A898712B-5391-4099-8D8F-A4611447C545}']
    { static Property Methods }

    { static Methods }
    {class} function init: JNetworkStatusReceiver; cdecl; overload;
    {class} function init(P1: JObject): JNetworkStatusReceiver; cdecl; overload;
    {class} function a: Boolean; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/push/service/receivers/NetworkStatusReceiver')]
  JNetworkStatusReceiver = interface(JObject)
  ['{53959720-026A-42D1-BB51-EE2030BBDCAB}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;

    { Property }
  end;

  TJNetworkStatusReceiver = class(TJavaGenericImport<JNetworkStatusReceiverClass, JNetworkStatusReceiver>) end;

  JPingReceiverClass = interface(JObjectClass)
  ['{6EDF970C-DBDC-4D35-9197-539E144CA0DA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPingReceiver; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/push/service/receivers/PingReceiver')]
  JPingReceiver = interface(JObject)
  ['{1F3E9EC9-7B08-4D9A-836B-BB1E52AA35CB}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;

    { Property }
  end;

  TJPingReceiver = class(TJavaGenericImport<JPingReceiverClass, JPingReceiver>) end;

  JPkgUninstallReceiverClass = interface(JObjectClass)
  ['{0FB2C325-1C7F-4A69-8213-78E0EBA26C41}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPkgUninstallReceiver; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/push/service/receivers/PkgUninstallReceiver')]
  JPkgUninstallReceiver = interface(JObject)
  ['{67F8B23E-581A-42A5-9AB8-6049845B2014}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;

    { Property }
  end;

  TJPkgUninstallReceiver = class(TJavaGenericImport<JPkgUninstallReceiverClass, JPkgUninstallReceiver>) end;

//  JsClass = interface(JObjectClass)
//  ['{010E8495-5ECA-4223-94A9-7689DFD155ED}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: JString; P3: JString; P4: JString; P5: TJavaArray<Byte>): Js; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/s')]
//  Js = interface(JObject)
//  ['{91FAF8E7-5499-403A-8EAB-CBDD9B4CB098}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJs = class(TJavaGenericImport<JsClass, Js>) end;

//  JtClass = interface(JObjectClass)
//  ['{2F809E4A-5F41-4B88-B325-AD6AC4838229}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JString; P2: TJavaArray<Byte>); cdecl; overload;
//    {class} procedure a(P1: JXMPushService); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: Integer; P3: JString); cdecl; overload;
//    {class} procedure b(P1: JXMPushService); cdecl; overload;
//    {class} procedure b(P1: JString; P2: TJavaArray<Byte>); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: TJavaArray<Byte>; P4: Integer; P5: JString); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/t')]
//  Jt = interface(JObject)
//  ['{1A2BE88C-CEC8-436F-9728-E646D300FE39}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJt = class(TJavaGenericImport<JtClass, Jt>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{2E41431B-F62F-48F2-9FF7-2E0A15DA0C95}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/timers/a$a')]
//  Ja_a = interface(IJavaInstance)
//  ['{315AFEC1-102B-44E6-B442-928E6CD31B11}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a; cdecl; overload;
//    function b: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{71E76440-93A2-4A6F-B160-32592F07449A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl; overload;
//    {class} procedure a(P1: Boolean); cdecl; overload;
//    {class} procedure a; cdecl; overload;
//    {class} function b: Boolean; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/timers/a')]
//  Ja = interface(JObject)
//  ['{6CB02E08-F20B-41CD-A0B1-55F9A192C7FA}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{A66179EF-F918-4677-99BF-E18EEE80E329}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/timers/b')]
//  Jb = interface(JObject)
//  ['{ED564033-08E5-48AC-9FFF-019D2C9374CA}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JIntent; P2: Int64); cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a; cdecl; overload;
//    function b: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{53F73876-A9C0-4ACE-B589-BB7BBAE28757}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/timers/c')]
//  Jc = interface(JObject)
//  ['{3FA627E9-8CC1-4CD3-897A-6CD71ACE820E}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a; cdecl; overload;
//    function b: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JuClass = interface(JObjectClass)
//  ['{527E6002-B7B8-4BE6-B729-D81484C0BB0E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ju; cdecl;
//    {class} function a(P1: TJavaArray<Byte>; P2: Int64): JIntent; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>): Jac; cdecl; overload;
//    {class} procedure a(P1: JXMPushService; P2: JString; P3: TJavaArray<Byte>; P4: JIntent; P5: Boolean); cdecl; overload;
//    {class} procedure a(P1: JXMPushService; P2: Jac; P3: Boolean; P4: Boolean; P5: Boolean); cdecl; overload;
//    {class} function a(P1: JContext; P2: Jac): Jac; cdecl; overload;
//    {class} function a(P1: JContext; P2: Jac; P3: Boolean; P4: Boolean; P5: Boolean): Jac; cdecl; overload;
//    {class} function a(P1: Js): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/u')]
//  Ju = interface(JObject)
//  ['{CD5E3B3F-5627-41B2-8067-4F0518DD3073}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JContext; P2: Jam_b; P3: Boolean; P4: Integer; P5: JString); cdecl; overload;
//    procedure a(P1: JXMPushService; P2: Jd; P3: Jam_b); cdecl; overload;
//    procedure a(P1: JXMPushService; P2: Jb; P3: Jam_b); cdecl; overload;
//
//    { Property }
//  end;

//  TJu = class(TJavaGenericImport<JuClass, Ju>) end;

//  JvClass = interface(JObjectClass)
//  ['{D581D50B-6FDC-4B58-BCE8-E43A0E2F3D2E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/v')]
//  Jv = interface(JObject)
//  ['{06DD3C4F-297E-423D-B4E7-16CF2F3C3D9F}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJv = class(TJavaGenericImport<JvClass, Jv>) end;

//  JwClass = interface(JObjectClass)
//  ['{10E8DA76-BBA2-4589-9C3C-664EB55316E1}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/w')]
//  Jw = interface(JObject)
//  ['{4FD20C63-C211-4076-A587-91A1C9AC4B02}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJw = class(TJavaGenericImport<JwClass, Jw>) end;

//  JxClass = interface(JObjectClass)
//  ['{698038C7-B4C0-4FA1-93A1-F03F91C9DC50}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/x')]
//  Jx = interface(JObject)
//  ['{69915392-85F2-4D5C-B93A-CFD8F1713EFC}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJx = class(TJavaGenericImport<JxClass, Jx>) end;

//  JXMJobService_a_aClass = interface(JObjectClass)
//  ['{F63A4025-4403-47C2-B850-06E36319BE3C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMJobService$a$a')]
//  JXMJobService_a_a = interface(JObject)
//  ['{3FB9AB33-5703-44E7-8B33-06901699F528}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJXMJobService_a_a = class(TJavaGenericImport<JXMJobService_a_aClass, JXMJobService_a_a>) end;

//  JXMJobService_aClass = interface(JObjectClass)
//  ['{9C825ECC-FCD9-4A83-8BEC-2070FD79C702}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMJobService$a')]
//  JXMJobService_a = interface(JObject)
//  ['{BF5EB751-0F3F-45AA-B883-28F52449A7E4}']
//    { Property Methods }
//
//    { methods }
//    function onStartJob(P1: JJobParameters): Boolean; cdecl;
//    function onStopJob(P1: JJobParameters): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJXMJobService_a = class(TJavaGenericImport<JXMJobService_aClass, JXMJobService_a>) end;

  JXMJobServiceClass = interface(JObjectClass)
  ['{D24A035C-4E0B-475A-B68D-035974E4C8C9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JXMJobService; cdecl;

    { static Property }
  end;

  [JavaSignature('com/xiaomi/push/service/XMJobService')]
  JXMJobService = interface(JObject)
  ['{C7C44F96-711C-4A3C-AC77-45BB03A234C8}']
    { Property Methods }

    { methods }
    procedure onCreate; cdecl;
    procedure onDestroy; cdecl;
    function onBind(P1: JIntent): JIBinder; cdecl;

    { Property }
  end;

  TJXMJobService = class(TJavaGenericImport<JXMJobServiceClass, JXMJobService>) end;

//  JXMPushService_aClass = interface(JObjectClass)
//  ['{30ADC554-1C17-42B1-8F48-8FC213BF8482}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Jam_b): JXMPushService_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$a')]
//  JXMPushService_a = interface(JObject)
//  ['{D683B7D5-A42F-4845-B5CF-3BB265940FD0}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_a = class(TJavaGenericImport<JXMPushService_aClass, JXMPushService_a>) end;

//  JXMPushService_bClass = interface(JObjectClass)
//  ['{5FBB608B-A6BA-41FF-945A-B16F949C6BC0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jam_b): JXMPushService_b; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$b')]
//  JXMPushService_b = interface(JObject)
//  ['{1F0D86A7-33DA-4AB1-A84D-CE7CCB2A6726}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function hashCode: Integer; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_b = class(TJavaGenericImport<JXMPushService_bClass, JXMPushService_b>) end;

//  JXMPushService_cClass = interface(JObjectClass)
//  ['{4B6FC066-22FA-49F1-81C7-30BCC5B36F4F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Jb): JXMPushService_c; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$c')]
//  JXMPushService_c = interface(JObject)
//  ['{012C1283-E562-4EA0-804D-AAEE17EAF96C}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_c = class(TJavaGenericImport<JXMPushService_cClass, JXMPushService_c>) end;

//  JXMPushService_dClass = interface(JObjectClass)
//  ['{45830A95-2F19-49A1-80DA-435987CFF66E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$d')]
//  JXMPushService_d = interface(JObject)
//  ['{724BEAEE-0E40-42FB-907E-898EE673BCE9}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_d = class(TJavaGenericImport<JXMPushService_dClass, JXMPushService_d>) end;

//  JXMPushService_eClass = interface(JObjectClass)
//  ['{52CACDB8-7321-417D-BF33-69202F523851}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$e')]
//  JXMPushService_e = interface(JObject)
//  ['{0AC42A04-7C7C-4102-ABBC-272BDA3D7083}']
//    { Property Methods }
//
//    { methods }
//    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_e = class(TJavaGenericImport<JXMPushService_eClass, JXMPushService_e>) end;

//  JXMPushService_fClass = interface(JObjectClass)
//  ['{93817215-C1A3-4B84-9755-D0C25DC0FE2D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$f')]
//  JXMPushService_f = interface(JObject)
//  ['{12C6AD0F-CFD6-476B-A83F-5841A3E4AFA4}']
//    { Property Methods }
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//    function _Getc: JException;
//    procedure _Setc(ac: JException);
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//    property b: Integer read _Getb write _Setb;
//    property c: JException read _Getc write _Setc;
//  end;

//  TJXMPushService_f = class(TJavaGenericImport<JXMPushService_fClass, JXMPushService_f>) end;

//  JXMPushService_gClass = interface(JObjectClass)
//  ['{6CEEEBD7-DF28-4EC7-AA57-81F1B8C9D7FA}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: JIntent): JXMPushService_g; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$g')]
//  JXMPushService_g = interface(JObject)
//  ['{1624C8A6-D552-4D5E-BE23-2182D693A34B}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_g = class(TJavaGenericImport<JXMPushService_gClass, JXMPushService_g>) end;

//  JXMPushService_hClass = interface(JObjectClass)
//  ['{4CD5E514-94EF-4080-AAC5-572A05D655AB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Integer): JXMPushService_h; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$h')]
//  JXMPushService_h = interface(JObject)
//  ['{626CE57B-6389-4561-86CF-5ED79354D2E1}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_h = class(TJavaGenericImport<JXMPushService_hClass, JXMPushService_h>) end;

//  JXMPushService_iClass = interface(JObjectClass)
//  ['{0BF8D0EB-9FB5-4117-ABDA-E34E1AAD2E56}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService): JXMPushService_i; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$i')]
//  JXMPushService_i = interface(JObject)
//  ['{3EE596B9-F579-4582-9B01-10D0FDBCD5B7}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_i = class(TJavaGenericImport<JXMPushService_iClass, JXMPushService_i>) end;

//  JXMPushService_jClass = interface(JObjectClass)
//  ['{FE86239D-2158-4E5D-A2D5-84EFECCB3D2F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Jd): JXMPushService_j; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$j')]
//  JXMPushService_j = interface(JObject)
//  ['{B184A4BA-2E0B-40DF-8E94-D49EA5FC3C40}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_j = class(TJavaGenericImport<JXMPushService_jClass, JXMPushService_j>) end;

//  JXMPushService_kClass = interface(JObjectClass)
//  ['{6ABE6085-CED2-4B25-844A-2C19008090B6}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Boolean): JXMPushService_k; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$k')]
//  JXMPushService_k = interface(JObject)
//  ['{564BB0F4-3BA9-4F15-96C8-E3063A697441}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_k = class(TJavaGenericImport<JXMPushService_kClass, JXMPushService_k>) end;

//  JXMPushService_lClass = interface(JObjectClass)
//  ['{9004E6C7-BB64-4D1C-8990-4D363B29C434}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Jam_b): JXMPushService_l; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$l')]
//  JXMPushService_l = interface(JObject)
//  ['{1539936C-E362-4A48-902D-931A21A57A74}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_l = class(TJavaGenericImport<JXMPushService_lClass, JXMPushService_l>) end;

//  JXMPushService_mClass = interface(JObjectClass)
//  ['{C314E2C4-F256-4D6B-8D5C-FD44853D9FB3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$m')]
//  JXMPushService_m = interface(JObject)
//  ['{6C25612F-9BC5-4F07-9E5D-850292AEF496}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_m = class(TJavaGenericImport<JXMPushService_mClass, JXMPushService_m>) end;

//  JXMPushService_nClass = interface(JObjectClass)
//  ['{1765D0B4-2208-409D-91F1-CC0B50BD8E8C}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Jam_b; P3: Integer; P4: JString; P5: JString): JXMPushService_n; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/XMPushService$n')]
//  JXMPushService_n = interface(JObject)
//  ['{C2EAFBC7-8BD3-4B39-BB84-6EB08FF4748B}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJXMPushService_n = class(TJavaGenericImport<JXMPushService_nClass, JXMPushService_n>) end;

  JXMPushServiceClass = interface(JObjectClass)
  ['{2B1CBF61-A1D0-4655-AB10-C6676F6376E6}']
    { static Property Methods }
    {class} function _Getc: Integer;

    { static Methods }
    {class} function init: JXMPushService; cdecl;
    {class} function a(P1: Integer; P2: JString): Boolean; cdecl; overload;
    {class} function a(P1: JContext): JNotification; cdecl; overload;

    { static Property }
    {class} property c: Integer read _Getc;
  end;

  [JavaSignature('com/xiaomi/push/service/XMPushService')]
  JXMPushService = interface(JObject)
  ['{10039A43-388A-47C4-BD21-6E7E08987C4D}']
    { Property Methods }

    { methods }
    procedure onCreate; cdecl;
    procedure a(P1: JBroadcastReceiver); cdecl; overload;
    procedure onStart(P1: JIntent; P2: Integer); cdecl;
    procedure a(P1: TJavaArray<Byte>; P2: JString); cdecl; overload;
    procedure a(P1: JString; P2: JString; P3: Integer; P4: JString; P5: JString); cdecl; overload;
    function onStartCommand(P1: JIntent; P2: Integer; P3: Integer): Integer; cdecl;
    function onBind(P1: JIntent): JIBinder; cdecl;
//    procedure a(P1: JXMPushService_h); cdecl; overload;
//    procedure a(P1: JXMPushService_h; P2: Int64); cdecl; overload;
    procedure onDestroy; cdecl;
//    procedure a(P1: Jb); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<Jb>); cdecl; overload;
//    procedure a(P1: Jd); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<Jd>); cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a(P1: Jam_b); cdecl; overload;
//    procedure a(P1: Integer; P2: JException); cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Jb; cdecl;
//    function e: Jb; cdecl;
//    function f: Boolean; cdecl;
//    function g: Boolean; cdecl;
//    function h: Ja; cdecl;
//    procedure a(P1: Integer); cdecl; overload;
//    function b(P1: Integer): Boolean; cdecl; overload;
//    procedure b(P1: JXMPushService_h); cdecl; overload;
//    procedure b(P1: Ja); cdecl; overload;
//    procedure a(P1: Ja; P2: Integer; P3: JException); cdecl; overload;
//    procedure a(P1: Ja); cdecl; overload;
//    procedure a(P1: Ja; P2: JException); cdecl; overload;

    { Property }
  end;

  TJXMPushService = class(TJavaGenericImport<JXMPushServiceClass, JXMPushService>) end;

//  JyClass = interface(JObjectClass)
//  ['{66E0D22C-9F3B-4EDD-9274-91A000AD9715}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/y')]
//  Jy = interface(JObject)
//  ['{C79EE6A0-7822-47C2-9441-7523814DDDCD}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJy = class(TJavaGenericImport<JyClass, Jy>) end;

//  JzClass = interface(JObjectClass)
//  ['{827B6219-EE8C-4B69-B2AA-132DCC7BF72C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/push/service/z')]
//  Jz = interface(JObject)
//  ['{B80A3C30-1C13-4CE0-98BE-02D1A840B6F4}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJz = class(TJavaGenericImport<JzClass, Jz>) end;

//  JaClass = interface(JObjectClass)
//  ['{DE5F081C-7224-40F1-8967-652A959B289A}']
//    { static Property Methods }
//    {class} function _Geta: Ja;
//    {class} function _Getb: Ja;
//    {class} function _Getc: Ja;
//    {class} function _Getd: Ja;
//    {class} function _Gete: Ja;
//    {class} function _Getf: Ja;
//    {class} function _Getg: Ja;
//    {class} function _Geth: Ja;
//    {class} function _Geti: Ja;
//    {class} function _Getj: Ja;
//    {class} function _Getk: Ja;
//    {class} function _Getl: Ja;
//    {class} function _Getm: Ja;
//    {class} function _Getn: Ja;
//    {class} function _Geto: Ja;
//    {class} function _Getp: Ja;
//    {class} function _Getq: Ja;
//    {class} function _Getr: Ja;
//    {class} function _Gets: Ja;
//    {class} function _Gett: Ja;
//    {class} function _Getu: Ja;
//    {class} function _Getv: Ja;
//    {class} function _Getw: Ja;
//    {class} function _Getx: Ja;
//    {class} function _Gety: Ja;
//    {class} function _Getz: Ja;
//    {class} function _GetA: Ja;
//    {class} function _GetB: Ja;
//    {class} function _GetC: Ja;
//    {class} function _GetD: Ja;
//    {class} function _GetE: Ja;
//    {class} function _GetF: Ja;
//    {class} function _GetG: Ja;
//    {class} function _GetH: Ja;
//    {class} function _GetI: Ja;
//    {class} function _GetJ: Ja;
//    {class} function _GetK: Ja;
//    {class} function _GetL: Ja;
//    {class} function _GetM: Ja;
//    {class} function _GetN: Ja;
//    {class} function _GetO: Ja;
//    {class} function _GetP: Ja;
//    {class} function _GetQ: Ja;
//    {class} function _GetR: Ja;
//    {class} function _GetS: Ja;
//    {class} function _GetT: Ja;
//    {class} function _GetU: Ja;
//    {class} function _GetV: Ja;
//    {class} function _GetW: Ja;
//    {class} function _GetX: Ja;
//    {class} function _GetY: Ja;
//    {class} function _GetZ: Ja;
//    {class} function _Getaa: Ja;
//    {class} function _Getab: Ja;
//    {class} function _Getac: Ja;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Ja>; cdecl;
//    {class} function valueOf(P1: JString): Ja; cdecl;
//    {class} function a(P1: Integer): Ja; cdecl; overload;
//
//    { static Property }
//    {class} property a: Ja read _Geta;
//    {class} property b: Ja read _Getb;
//    {class} property c: Ja read _Getc;
//    {class} property d: Ja read _Getd;
//    {class} property e: Ja read _Gete;
//    {class} property f: Ja read _Getf;
//    {class} property g: Ja read _Getg;
//    {class} property h: Ja read _Geth;
//    {class} property i: Ja read _Geti;
//    {class} property j: Ja read _Getj;
//    {class} property k: Ja read _Getk;
//    {class} property l: Ja read _Getl;
//    {class} property m: Ja read _Getm;
//    {class} property n: Ja read _Getn;
//    {class} property o: Ja read _Geto;
//    {class} property p: Ja read _Getp;
//    {class} property q: Ja read _Getq;
//    {class} property r: Ja read _Getr;
//    {class} property s: Ja read _Gets;
//    {class} property t: Ja read _Gett;
//    {class} property u: Ja read _Getu;
//    {class} property v: Ja read _Getv;
//    {class} property w: Ja read _Getw;
//    {class} property x: Ja read _Getx;
//    {class} property y: Ja read _Gety;
//    {class} property z: Ja read _Getz;
//    {class} property A: Ja read _GetA;
//    {class} property B: Ja read _GetB;
//    {class} property C: Ja read _GetC;
//    {class} property D: Ja read _GetD;
//    {class} property E: Ja read _GetE;
//    {class} property F: Ja read _GetF;
//    {class} property G: Ja read _GetG;
//    {class} property H: Ja read _GetH;
//    {class} property I: Ja read _GetI;
//    {class} property J: Ja read _GetJ;
//    {class} property K: Ja read _GetK;
//    {class} property L: Ja read _GetL;
//    {class} property M: Ja read _GetM;
//    {class} property N: Ja read _GetN;
//    {class} property O: Ja read _GetO;
//    {class} property P: Ja read _GetP;
//    {class} property Q: Ja read _GetQ;
//    {class} property R: Ja read _GetR;
//    {class} property S: Ja read _GetS;
//    {class} property T: Ja read _GetT;
//    {class} property U: Ja read _GetU;
//    {class} property V: Ja read _GetV;
//    {class} property W: Ja read _GetW;
//    {class} property X: Ja read _GetX;
//    {class} property Y: Ja read _GetY;
//    {class} property Z: Ja read _GetZ;
//    {class} property aa: Ja read _Getaa;
//    {class} property ab: Ja read _Getab;
//    {class} property ac: Ja read _Getac;
//  end;

//  [JavaSignature('com/xiaomi/push/thrift/a')]
//  Ja = interface(JObject)
//  ['{9FE54E2F-B533-4403-98FD-1EFB1F3209A7}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Jb_aClass = interface(JObjectClass)
//  ['{93D1F2B2-8661-4C12-BA2A-B83AFE21E20E}']
//    { static Property Methods }
//    {class} function _Geta: Jb_a;
//    {class} function _Getb: Jb_a;
//    {class} function _Getc: Jb_a;
//    {class} function _Getd: Jb_a;
//    {class} function _Gete: Jb_a;
//    {class} function _Getf: Jb_a;
//    {class} function _Getg: Jb_a;
//    {class} function _Geth: Jb_a;
//    {class} function _Geti: Jb_a;
//    {class} function _Getj: Jb_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jb_a>; cdecl;
//    {class} function valueOf(P1: JString): Jb_a; cdecl;
//
//    { static Property }
//    {class} property a: Jb_a read _Geta;
//    {class} property b: Jb_a read _Getb;
//    {class} property c: Jb_a read _Getc;
//    {class} property d: Jb_a read _Getd;
//    {class} property e: Jb_a read _Gete;
//    {class} property f: Jb_a read _Getf;
//    {class} property g: Jb_a read _Getg;
//    {class} property h: Jb_a read _Geth;
//    {class} property i: Jb_a read _Geti;
//    {class} property j: Jb_a read _Getj;
//  end;

//  [JavaSignature('com/xiaomi/push/thrift/b$a')]
//  Jb_a = interface(JObject)
//  ['{7628BDF7-4632-4A0B-8D7F-954F73470C5B}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJb_a = class(TJavaGenericImport<Jb_aClass, Jb_a>) end;

//  JbClass = interface(JObjectClass)
//  ['{6CA7BC91-AB56-4712-8BCE-836EA358C81A}']
//    { static Property Methods }
//    {class} function _Getk: JMap;
//
//    { static Methods }
//    {class} function init: Jb; cdecl;
//
//    { static Property }
//    {class} property k: JMap read _Getk;
//  end;

//  [JavaSignature('com/xiaomi/push/thrift/b')]
//  Jb = interface(JObject)
//  ['{2A1593FC-3B52-48A6-88F0-EC49D2AF228F}']
//    { Property Methods }
//    function _Geta: Byte;
//    procedure _Seta(aa: Byte);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//    function _Getc: Integer;
//    procedure _Setc(ac: Integer);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: Integer;
//    procedure _Setf(af: Integer);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: Integer;
//    procedure _Seti(ai: Integer);
//    function _Getj: Integer;
//    procedure _Setj(aj: Integer);
//
//    { methods }
//    function a(P1: Byte): Jb; cdecl; overload;
//    function a: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function a(P1: Integer): Jb; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    procedure b(P1: Boolean); cdecl; overload;
//    function b(P1: Integer): Jb; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    procedure c(P1: Boolean); cdecl; overload;
//    function a(P1: JString): Jb; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function b(P1: JString): Jb; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    function c(P1: Integer): Jb; cdecl; overload;
//    function f: Boolean; cdecl; overload;
//    procedure d(P1: Boolean); cdecl; overload;
//    function c(P1: JString): Jb; cdecl; overload;
//    function g: Boolean; cdecl;
//    function d(P1: JString): Jb; cdecl; overload;
//    function h: Boolean; cdecl;
//    function d(P1: Integer): Jb; cdecl; overload;
//    function i: Boolean; cdecl;
//    procedure e(P1: Boolean); cdecl; overload;
//    function e(P1: Integer): Jb; cdecl; overload;
//    function j: Boolean; cdecl;
//    procedure f(P1: Boolean); cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jb): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jb): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure k; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Byte read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//    property c: Integer read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: Integer read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: Integer read _Geti write _Seti;
//    property j: Integer read _Getj write _Setj;
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  Jc_aClass = interface(JObjectClass)
//  ['{6FB0DAA7-1859-42E3-9AE0-9A2FF6182DEB}']
//    { static Property Methods }
//    {class} function _Geta: Jc_a;
//    {class} function _Getb: Jc_a;
//    {class} function _Getc: Jc_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jc_a>; cdecl;
//    {class} function valueOf(P1: JString): Jc_a; cdecl;
//
//    { static Property }
//    {class} property a: Jc_a read _Geta;
//    {class} property b: Jc_a read _Getb;
//    {class} property c: Jc_a read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/push/thrift/c$a')]
//  Jc_a = interface(JObject)
//  ['{C4C9353B-21FC-4A6D-B647-AFD380774CCC}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJc_a = class(TJavaGenericImport<Jc_aClass, Jc_a>) end;

//  JcClass = interface(JObjectClass)
//  ['{348F6095-B87B-46DF-9A2C-8737FFF4641C}']
//    { static Property Methods }
//    {class} function _Getd: JMap;
//
//    { static Methods }
//    {class} function init: Jc; cdecl; overload;
//    {class} function init(P1: JString; P2: JList): Jc; cdecl; overload;
//
//    { static Property }
//    {class} property d: JMap read _Getd;
//  end;

//  [JavaSignature('com/xiaomi/push/thrift/c')]
//  Jc = interface(JObject)
//  ['{F81CD424-03E5-4F0B-954C-576DE300D117}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JList;
//    procedure _Setc(ac: JList);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function a(P1: JString): Jc; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jc): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jc): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure d; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JList read _Getc write _Setc;
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JaClass = interface(JObjectClass)
//  ['{9A8F91E2-08E8-41B5-A36D-92799A157BC6}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: Jam_b; P2: JString; P3: Ja); cdecl; overload;
//    {class} procedure a(P1: JString; P2: JString; P3: Ja); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/slim/a')]
//  Ja = interface(JObject)
//  ['{E4ED62C5-6AB7-4080-BAFB-D25CAEAA46C2}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{47652A7C-01A0-4371-84FF-695330C9434A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb; cdecl;
//    {class} function g: JString; cdecl;
//    {class} function a(P1: Jd; P2: JString): Jb; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/slim/b')]
//  Jb = interface(JObject)
//  ['{EFC8E86F-AFB8-4FB7-BA43-A27561916119}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    function a: JString; cdecl; overload;
//    function b: JString; cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    function c: Integer; cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function e: Integer; cdecl;
//    function f: JString; cdecl;
//    function h: JString; cdecl;
//    procedure b(P1: JString); cdecl; overload;
//    function i: JString; cdecl;
//    procedure c(P1: JString); cdecl; overload;
//    procedure a(P1: Int64; P2: JString; P3: JString); cdecl; overload;
//    function j: JString; cdecl;
//    procedure a(P1: TJavaArray<Byte>; P2: JString); cdecl; overload;
//    function k: TJavaArray<Byte>; cdecl;
//    function d(P1: JString): TJavaArray<Byte>; cdecl; overload;
//    function l: Integer; cdecl;
//    function m: Word; cdecl;
//    procedure a(P1: Word); cdecl; overload;
//    function toString: JString; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{0998B205-3F8C-411B-94E8-F7A798ED8E68}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/slim/c')]
//  Jc = interface(JObject)
//  ['{DD5344FC-EFBB-4B4D-8E62-84E127FBDF6A}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{0930484B-B06C-42E6-8ACD-EFAF1627AE88}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/slim/d')]
//  Jd = interface(JObject)
//  ['{49BC2277-B89C-49EC-9361-A12F9B52A5CF}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jb): Integer; cdecl; overload;
//    procedure a; cdecl; overload;
//    procedure b; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{901DC9BA-E28D-4788-ABBD-25A226375041}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/slim/e')]
//  Je = interface(JObject)
//  ['{38A28AEF-0AD3-48F8-B251-B4A79AC371FD}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{05B1B2FA-DDB4-4C1E-9D56-E0EFE561DF77}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Jb): Jf; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/slim/f')]
//  Jf = interface(JObject)
//  ['{F7D001E0-7104-4AB2-831F-E7517826C41F}']
//    { Property Methods }
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    procedure a(P1: Jam_b); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<Jb>); cdecl; overload;
//    procedure a(P1: Jd); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<Jd>); cdecl; overload;
//    procedure b(P1: Jb); cdecl;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{74F757C6-1FBD-4943-BF2C-5F3F2B9C27E5}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/slim/g')]
//  Jg = interface(JObject)
//  ['{07497754-9C6A-4009-8297-731710282797}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{E065F1A2-5024-41BD-884D-84225C882ED7}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jf; P2: Ja): Ja_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/a$a')]
//  Ja_a = interface(JObject)
//  ['{22FF5A8F-F1BE-4723-BBBF-50DE0DA9055B}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jd); cdecl; overload;
//    procedure a(P1: Jb); cdecl; overload;
//
//    { Property }
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{1B0DB6C2-C0E3-4A4C-A2ED-F2E5ABFE8CF0}']
//    { static Property Methods }
//    {class} function _Geta: Boolean;
//
//    { static Methods }
//
//    { static Property }
//    {class} property a: Boolean read _Geta;
//  end;

//  [JavaSignature('com/xiaomi/smack/a')]
//  Ja = interface(JObject)
//  ['{87B438F7-7765-4F85-BCAF-57299E603F01}']
//    { Property Methods }
//
//    { methods }
//    function c: Jb; cdecl;
//    function d: JString; cdecl;
//    function e: JString; cdecl;
//    function f: Integer; cdecl;
//    function a: Boolean; cdecl; overload;
//    function g: Int64; cdecl;
//    procedure b(P1: Jb); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<Jb>); cdecl; overload;
//    procedure a(P1: Jd); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<Jd>); cdecl; overload;
//    procedure a(P1: Jam_b); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure b(P1: Boolean); cdecl; overload;
//    procedure b(P1: Integer; P2: JException); cdecl; overload;
//    procedure h; cdecl;
//    procedure a(P1: Jd); cdecl; overload;
//    procedure b(P1: Jd); cdecl; overload;
//    procedure a(P1: Jf; P2: Ja); cdecl; overload;
//    procedure b(P1: Jf; P2: Ja); cdecl; overload;
//    function j: Boolean; cdecl;
//    function k: Boolean; cdecl;
//    function l: Integer; cdecl;
//    procedure a(P1: Integer; P2: Integer; P3: JException); cdecl; overload;
//    function m: Integer; cdecl;
//    procedure a(P1: JString); cdecl; overload;
//    procedure n; cdecl;
//    function o: Boolean; cdecl;
//    function a(P1: Int64): Boolean; cdecl; overload;
//    function p: Boolean; cdecl;
//    procedure q; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{5AACB4EB-BF57-4E20-B946-170B4F198514}']
//    { static Property Methods }
//    {class} function _Getb: JString;
//    {class} function _Getc: JString;
//    {class} function _Getd: JString;
//
//    { static Methods }
//    {class} function b: JString; cdecl; overload;
//    {class} function init(P1: JMap; P2: Integer; P3: JString; P4: Je): Jb; cdecl;
//
//    { static Property }
//    {class} property b: JString read _Getb;
//    {class} property c: JString read _Getc;
//    {class} property d: JString read _Getd;
//  end;

//  [JavaSignature('com/xiaomi/smack/b')]
//  Jb = interface(JObject)
//  ['{85CD6D41-7876-4C7B-8A03-D11DD01110B7}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString); cdecl; overload;
//    function c: JString; cdecl;
//    function a: TJavaArray<Byte>; cdecl; overload;
//    function d: Integer; cdecl;
//    function e: JString; cdecl;
//    procedure b(P1: JString); cdecl; overload;
//    function f: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{318A1B5E-D6AC-4D2C-B24C-613EB76D4D13}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JThrowable): Integer; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/c')]
//  Jc = interface(JObject)
//  ['{38FD9541-DA45-43C7-93A5-6B69034E8F05}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{01FAEC2E-9588-4BBE-9489-004B2D9E221C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/d')]
//  Jd = interface(IJavaInstance)
//  ['{396A3C19-F629-4553-8DE2-DF2CF388E96F}']
//    { Property Methods }
//
//    { methods }
//    procedure b(P1: Ja); cdecl;
//    procedure a(P1: Ja; P2: Integer; P3: JException); cdecl; overload;
//    procedure a(P1: Ja); cdecl; overload;
//    procedure a(P1: Ja; P2: JException); cdecl; overload;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JaClass = interface(JObjectClass)
//  ['{350F70F2-249F-4363-A712-81631E595676}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/debugger/a')]
//  Ja = interface(IJavaInstance)
//  ['{55B1454D-1088-4163-8D5C-82FB937500E7}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JeClass = interface(JObjectClass)
//  ['{D1FCF9E2-3CD5-4881-ACB0-70D92E24CAF8}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/e')]
//  Je = interface(IJavaInstance)
//  ['{4DD578B6-25AD-49CA-8931-3EDCD9B7799D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{4F6A1164-ACA2-4DED-B4D5-2F9337C90DE2}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/f')]
//  Jf = interface(IJavaInstance)
//  ['{6600D664-9BC0-4125-8E9F-6169DC8219A4}']
//    { Property Methods }
//
//    { methods }
//    procedure b(P1: Jd); cdecl;
//    procedure a(P1: Jb); cdecl;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JaClass = interface(JObjectClass)
//  ['{38532279-9B66-4BB0-8AA0-3A9A8E7B7A7F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/filter/a')]
//  Ja = interface(IJavaInstance)
//  ['{6F8C61F0-2067-4F8A-9D89-EF4BF945882A}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jd): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JgClass = interface(JObjectClass)
//  ['{D55C9B45-80A9-45D7-A441-1FE7F85A3910}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: JString; cdecl;
//    {class} function b: Integer; cdecl;
//    {class} function c: Integer; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/g')]
//  Jg = interface(JObject)
//  ['{3C1D1B22-C775-4623-A934-DCC65E44DD4B}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{74751F9B-A48F-4BDB-8253-94BD13406712}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JXMPushService; P2: Jb): Jh; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/h')]
//  Jh = interface(JObject)
//  ['{9E1F690E-664E-423A-B226-E4ADC44EB501}']
//    { Property Methods }
//
//    { methods }
//    procedure b(P1: Boolean); cdecl; overload;
//    function r: JString; cdecl;
//    function d: JString; cdecl;
//    procedure b(P1: Integer; P2: JException); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<Jb>); cdecl; overload;
//    procedure a(P1: TJavaObjectArray<Jd>); cdecl; overload;
//    procedure s; cdecl;
//    procedure c(P1: Integer; P2: JException); cdecl;
//    function t: JSocket; cdecl;
//    procedure u; cdecl;
//    procedure v; cdecl;
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JiClass = interface(JObjectClass)
//  ['{7ED9854B-3235-4EAD-AD53-5C1EC9A4F85C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/i')]
//  Ji = interface(JObject)
//  ['{EA0D5E8A-1531-4BED-8DEC-845ED8C3EF9F}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{5582FCED-FAFE-4BFD-9572-F119AC22B532}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/j')]
//  Jj = interface(JObject)
//  ['{916BD47B-3972-4E43-A5A4-BBE9EE035CF0}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  JkClass = interface(JObjectClass)
//  ['{41442D50-3E39-4D74-BE97-DBA1036ECD5F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/k')]
//  Jk = interface(JObject)
//  ['{55FCB836-90B3-46C7-9D55-32515EC6C779}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

//  JlClass = interface(JObjectClass)
//  ['{0D81E10D-3960-4365-97BB-2C0BE9A5AB5A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jl; cdecl; overload;
//    {class} function init(P1: JString): Jl; cdecl; overload;
//    {class} function init(P1: JThrowable): Jl; cdecl; overload;
//    {class} function init(P1: Jg): Jl; cdecl; overload;
//    {class} function init(P1: JString; P2: JThrowable): Jl; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/l')]
//  Jl = interface(JObject)
//  ['{82EA5E33-E02F-42E7-885E-70EB259BC123}']
//    { Property Methods }
//
//    { methods }
//    function a: JThrowable; cdecl;
//    procedure printStackTrace; cdecl; overload;
//    procedure printStackTrace(P1: JPrintStream); cdecl; overload;
//    procedure printStackTrace(P1: JPrintWriter); cdecl; overload;
//    function getMessage: JString; cdecl;
//    function toString: JString; cdecl;
//
//    { Property }
//  end;

//  TJl = class(TJavaGenericImport<JlClass, Jl>) end;

//  JaClass = interface(JObjectClass)
//  ['{B538514D-69D0-4003-A1FA-2235B319B041}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: JString; P3: TJavaObjectArray<JString>; P4: TJavaObjectArray<JString>): Ja; cdecl; overload;
//    {class} function init(P1: JString; P2: JString; P3: TJavaObjectArray<JString>; P4: TJavaObjectArray<JString>; P5: JString; P6: JList): Ja; cdecl; overload;
//    {class} function a(P1: TJavaObjectArray<Ja>): TJavaObjectArray<JParcelable>; cdecl; overload;
//    {class} function a(P1: JList): TJavaObjectArray<JParcelable>; cdecl; overload;
//    {class} function a(P1: JBundle): Ja; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/a')]
//  Ja = interface(JObject)
//  ['{5D931FA2-6749-460E-B849-50EBD54D6298}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl; overload;
//    function b: JString; cdecl; overload;
//    function c: JString; cdecl;
//    function toString: JString; cdecl;
//    function d: JString; cdecl;
//    function e: JBundle; cdecl;
//    function f: JParcelable; cdecl;
//    function a(P1: JString): JString; cdecl; overload;
//    procedure b(P1: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Jb_aClass = interface(JObjectClass)
//  ['{FF8ED531-9B93-4661-AF51-FBFE91CCE63F}']
//    { static Property Methods }
//    {class} function _Geta: Jb_a;
//    {class} function _Getb: Jb_a;
//    {class} function _Getc: Jb_a;
//    {class} function _Getd: Jb_a;
//    {class} function _Gete: Jb_a;
//
//    { static Methods }
//    {class} function a(P1: JString): Jb_a; cdecl;
//
//    { static Property }
//    {class} property a: Jb_a read _Geta;
//    {class} property b: Jb_a read _Getb;
//    {class} property c: Jb_a read _Getc;
//    {class} property d: Jb_a read _Getd;
//    {class} property e: Jb_a read _Gete;
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/b$a')]
//  Jb_a = interface(JObject)
//  ['{17F5F4FB-B073-4601-94DC-E852EB914EF6}']
//    { Property Methods }
//
//    { methods }
//    function toString: JString; cdecl;
//
//    { Property }
//  end;

//  TJb_a = class(TJavaGenericImport<Jb_aClass, Jb_a>) end;

//  JbClass = interface(JObjectClass)
//  ['{DEE2E41B-755B-4497-9A52-AB5C7A2C6DEB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb; cdecl; overload;
//    {class} function init(P1: JBundle): Jb; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/b')]
//  Jb = interface(JObject)
//  ['{BA3BD92D-80D0-4A4F-8F86-D7CB17638E6A}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JMap); cdecl; overload;
//    function a: Jb_a; cdecl; overload;
//    procedure a(P1: Jb_a); cdecl; overload;
//    function b: JBundle; cdecl;
//    function c: JString; cdecl;
//    function d: JString; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{40F86EB6-2A74-4AEF-8B6D-5523BC57417E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jc; cdecl; overload;
//    {class} function init(P1: JBundle): Jc; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/c')]
//  Jc = interface(JObject)
//  ['{AACE36F6-2D57-431C-A1EB-BCF89898FF33}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function d: JString; cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function e: JString; cdecl; overload;
//    procedure b(P1: JString); cdecl; overload;
//    function f: JString; cdecl; overload;
//    procedure c(P1: JString); cdecl; overload;
//    function g: JString; cdecl; overload;
//    procedure d(P1: JString); cdecl; overload;
//    function h: JString; cdecl; overload;
//    procedure e(P1: JString); cdecl; overload;
//    procedure f(P1: JString); cdecl; overload;
//    procedure b(P1: Boolean); cdecl; overload;
//    procedure g(P1: JString); cdecl; overload;
//    procedure h(P1: JString); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    procedure i(P1: JString); cdecl; overload;
//    function i: JString; cdecl; overload;
//    procedure j(P1: JString); cdecl;
//    function b: JBundle; cdecl; overload;
//    function c: JString; cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function hashCode: Integer; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{75F9AF05-2D1B-4997-B020-BF30AF1B28F6}']
//    { static Property Methods }
//    {class} function _Getb: JDateFormat;
//
//    { static Methods }
//    {class} function j: JString; cdecl;
//    {class} function init: Jd; cdecl; overload;
//    {class} function init(P1: JBundle): Jd; cdecl; overload;
//    {class} function u: JString; cdecl;
//
//    { static Property }
//    {class} property b: JDateFormat read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/d')]
//  Jd = interface(JObject)
//  ['{FD904596-F046-42C2-BFCB-4D94E694C523}']
//    { Property Methods }
//
//    { methods }
//    function k: JString; cdecl; overload;
//    procedure k(P1: JString); cdecl; overload;
//    function l: JString; cdecl; overload;
//    procedure l(P1: JString); cdecl; overload;
//    function m: JString; cdecl; overload;
//    procedure m(P1: JString); cdecl; overload;
//    function n: JString; cdecl; overload;
//    procedure n(P1: JString); cdecl; overload;
//    function o: JString; cdecl; overload;
//    procedure o(P1: JString); cdecl; overload;
//    function p: Jh; cdecl; overload;
//    procedure a(P1: Jh); cdecl; overload;
//    function q: JCollection; cdecl; overload;
//    function p(P1: JString): Ja; cdecl; overload;
//    function b(P1: JString; P2: JString): Ja; cdecl; overload;
//    procedure a(P1: Ja); cdecl; overload;
//    function q(P1: JString): JObject; cdecl; overload;
//    function r: JCollection; cdecl;
//    function c: JString; cdecl;
//    function b: JBundle; cdecl; overload;
//    function t: JString; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function hashCode: Integer; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{1F97AA5E-9ECE-4514-9271-96CC19CC0F5A}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/e')]
//  Je = interface(IJavaInstance)
//  ['{A7F5308A-7B1F-4CA8-B26B-33A1BC63B5CE}']
//    { Property Methods }
//
//    { methods }
//    function d: JString; cdecl;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  Jf_aClass = interface(JObjectClass)
//  ['{163F8210-EEDE-422E-8BA3-E5B23A95F7B0}']
//    { static Property Methods }
//    {class} function _Geta: Jf_a;
//    {class} function _Getb: Jf_a;
//    {class} function _Getc: Jf_a;
//    {class} function _Getd: Jf_a;
//    {class} function _Gete: Jf_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jf_a>; cdecl;
//    {class} function valueOf(P1: JString): Jf_a; cdecl;
//
//    { static Property }
//    {class} property a: Jf_a read _Geta;
//    {class} property b: Jf_a read _Getb;
//    {class} property c: Jf_a read _Getc;
//    {class} property d: Jf_a read _Getd;
//    {class} property e: Jf_a read _Gete;
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/f$a')]
//  Jf_a = interface(JObject)
//  ['{3F1231E2-9545-4BE7-ADB3-76F14653777D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf_a = class(TJavaGenericImport<Jf_aClass, Jf_a>) end;

//  Jf_bClass = interface(JObjectClass)
//  ['{897064EC-CF42-4B5C-B4B8-D7C57FC110F8}']
//    { static Property Methods }
//    {class} function _Geta: Jf_b;
//    {class} function _Getb: Jf_b;
//    {class} function _Getc: Jf_b;
//    {class} function _Getd: Jf_b;
//    {class} function _Gete: Jf_b;
//    {class} function _Getf: Jf_b;
//    {class} function _Getg: Jf_b;
//    {class} function _Geth: Jf_b;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jf_b>; cdecl;
//    {class} function valueOf(P1: JString): Jf_b; cdecl;
//
//    { static Property }
//    {class} property a: Jf_b read _Geta;
//    {class} property b: Jf_b read _Getb;
//    {class} property c: Jf_b read _Getc;
//    {class} property d: Jf_b read _Getd;
//    {class} property e: Jf_b read _Gete;
//    {class} property f: Jf_b read _Getf;
//    {class} property g: Jf_b read _Getg;
//    {class} property h: Jf_b read _Geth;
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/f$b')]
//  Jf_b = interface(JObject)
//  ['{77D41D1B-D8C4-4C91-B57B-71CF82956C10}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf_b = class(TJavaGenericImport<Jf_bClass, Jf_b>) end;

//  JfClass = interface(JObjectClass)
//  ['{EF9A29BD-4491-414E-A63B-C14922C4002B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jf_b): Jf; cdecl; overload;
//    {class} function init(P1: JBundle): Jf; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/f')]
//  Jf = interface(JObject)
//  ['{796D5EAC-FC47-4DB5-B1D6-52FB89C39895}']
//    { Property Methods }
//
//    { methods }
//    function b: JBundle; cdecl;
//    procedure a(P1: Jf_b); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: Jf_a); cdecl; overload;
//    function c: JString; cdecl;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{0CD7A4BF-1D9A-4757-837C-C3E04545292F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString): Jg; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/g')]
//  Jg = interface(JObject)
//  ['{A70C8398-2471-4CE7-AEB6-78AF9F14E227}']
//    { Property Methods }
//
//    { methods }
//    function toString: JString; cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  Jh_aClass = interface(JObjectClass)
//  ['{390CC13B-7EBB-48EE-BB81-7721C9F1B16A}']
//    { static Property Methods }
//    {class} function _Geta: Jh_a;
//    {class} function _Getb: Jh_a;
//    {class} function _Getc: Jh_a;
//    {class} function _Getd: Jh_a;
//    {class} function _Gete: Jh_a;
//    {class} function _Getf: Jh_a;
//    {class} function _Getg: Jh_a;
//    {class} function _Geth: Jh_a;
//    {class} function _Geti: Jh_a;
//    {class} function _Getj: Jh_a;
//    {class} function _Getk: Jh_a;
//    {class} function _Getl: Jh_a;
//    {class} function _Getm: Jh_a;
//    {class} function _Getn: Jh_a;
//    {class} function _Geto: Jh_a;
//    {class} function _Getp: Jh_a;
//    {class} function _Getq: Jh_a;
//    {class} function _Getr: Jh_a;
//    {class} function _Gets: Jh_a;
//    {class} function _Gett: Jh_a;
//    {class} function _Getu: Jh_a;
//    {class} function _Getv: Jh_a;
//    {class} function _Getw: Jh_a;
//    {class} function _Getx: Jh_a;
//
//    { static Methods }
//    {class} function init(P1: JString): Jh_a; cdecl;
//
//    { static Property }
//    {class} property a: Jh_a read _Geta;
//    {class} property b: Jh_a read _Getb;
//    {class} property c: Jh_a read _Getc;
//    {class} property d: Jh_a read _Getd;
//    {class} property e: Jh_a read _Gete;
//    {class} property f: Jh_a read _Getf;
//    {class} property g: Jh_a read _Getg;
//    {class} property h: Jh_a read _Geth;
//    {class} property i: Jh_a read _Geti;
//    {class} property j: Jh_a read _Getj;
//    {class} property k: Jh_a read _Getk;
//    {class} property l: Jh_a read _Getl;
//    {class} property m: Jh_a read _Getm;
//    {class} property n: Jh_a read _Getn;
//    {class} property o: Jh_a read _Geto;
//    {class} property p: Jh_a read _Getp;
//    {class} property q: Jh_a read _Getq;
//    {class} property r: Jh_a read _Getr;
//    {class} property s: Jh_a read _Gets;
//    {class} property t: Jh_a read _Gett;
//    {class} property u: Jh_a read _Getu;
//    {class} property v: Jh_a read _Getv;
//    {class} property w: Jh_a read _Getw;
//    {class} property x: Jh_a read _Getx;
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/h$a')]
//  Jh_a = interface(JObject)
//  ['{3C6854AB-54E6-4162-AB3A-46EFA02E87A5}']
//    { Property Methods }
//
//    { methods }
//    function toString: JString; cdecl;
//
//    { Property }
//  end;

//  TJh_a = class(TJavaGenericImport<Jh_aClass, Jh_a>) end;

//  JhClass = interface(JObjectClass)
//  ['{DE71CF79-33E5-479E-A207-51A80C7E80E2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jh_a): Jh; cdecl; overload;
//    {class} function init(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JList): Jh; cdecl; overload;
//    {class} function init(P1: JBundle): Jh; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/packet/h')]
//  Jh = interface(JObject)
//  ['{BA545F54-D5D1-45E9-AE67-0D35608E1BA4}']
//    { Property Methods }
//
//    { methods }
//    function a: JBundle; cdecl;
//    function b: JString; cdecl;
//    function toString: JString; cdecl;
//    function c: JList; cdecl;
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JaClass = interface(JObjectClass)
//  ['{F77D9AE3-82F6-4AC9-86F4-8920126B406B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/provider/a')]
//  Ja = interface(IJavaInstance)
//  ['{DA9F0F74-A50C-455B-93F0-6F166DA3F006}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{C4105AB2-0F03-4878-ABE0-B3D0C209E0D6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/provider/b')]
//  Jb = interface(IJavaInstance)
//  ['{7572F946-E64F-4990-B940-AC7C8289231F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{EB23634E-A64E-4E37-9BA5-F9EF6CBE4BF2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Jc; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/provider/c')]
//  Jc = interface(JObject)
//  ['{4350CBF5-1945-4429-AC8E-544680B23F35}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JString; P2: JString): JObject; cdecl; overload;
//    procedure a(P1: JString; P2: JString; P3: JObject); cdecl; overload;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JaClass = interface(JObjectClass)
//  ['{311590F0-F870-4712-B11A-C384B6DE3A71}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JXmlPullParser): Jd; cdecl; overload;
//    {class} function b(P1: JXmlPullParser): Jf; cdecl;
//    {class} function a(P1: JXmlPullParser; P2: Ja): Jb; cdecl; overload;
//    {class} function c(P1: JXmlPullParser): Jg; cdecl;
//    {class} function d(P1: JXmlPullParser): Jh; cdecl;
//    {class} function a(P1: JString; P2: JString; P3: JXmlPullParser): Ja; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/a')]
//  Ja = interface(JObject)
//  ['{7266AC63-F36C-4910-99D3-D353897207F9}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{893F2C7D-91E1-4FD6-B012-8135BBF0A381}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/b')]
//  Jb = interface(JObject)
//  ['{6A0E7B3A-D22D-44BD-B2D6-F8444DB756FF}']
//    { Property Methods }
//
//    { methods }
//    function d: JString; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{19CDA178-DF2D-4783-85F6-E737F843E576}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/c')]
//  Jc = interface(JObject)
//  ['{1F4A0407-A5F2-4D17-8073-CD48BB3789E4}']
//    { Property Methods }
//
//    { methods }
//    function d: JString; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{83687249-B12F-4B8A-8DEB-39274F5B35E6}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString): JString; cdecl; overload;
//    {class} function b(P1: JString): JString; cdecl;
//    {class} function a(P1: JString; P2: JString; P3: JString): JString; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>): JString; cdecl; overload;
//    {class} function a(P1: Integer): JString; cdecl; overload;
//    {class} function c(P1: JString): JString; cdecl;
//    {class} function a(P1: Char): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/d')]
//  Jd = interface(JObject)
//  ['{4884C576-3599-496B-AF02-023F245DFE01}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{EE5FFC3D-AC33-4BEB-891B-DEF16486852A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JRunnable); cdecl; overload;
//    {class} procedure a(P1: Ji_b); cdecl; overload;
//    {class} procedure a(P1: Ji_b; P2: Int64); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/e')]
//  Je = interface(JObject)
//  ['{31178FFF-3DE7-40B5-A488-385D5008CCAD}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{0CC3CE80-87A4-4D6D-8BD1-497403DB4F0A}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/f')]
//  Jf = interface(JObject)
//  ['{01EA3CBD-A1F6-4872-8A2B-465F05526D1A}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  Jg_aClass = interface(JObjectClass)
//  ['{AB10DEB2-381C-4575-9F2B-159236CFEA7E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: Int64; P3: Integer; P4: Integer; P5: JString; P6: Int64): Jg_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/g$a')]
//  Jg_a = interface(JObject)
//  ['{7EB1220C-29DC-474D-94AD-0777B64EDD55}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Int64;
//    procedure _Setb(ab: Int64);
//    function _Getc: Integer;
//    procedure _Setc(ac: Integer);
//    function _Getd: Integer;
//    procedure _Setd(ad: Integer);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: Int64;
//    procedure _Setf(af: Int64);
//
//    { methods }
//    function a(P1: Jg_a): Boolean; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Int64 read _Getb write _Setb;
//    property c: Integer read _Getc write _Setc;
//    property d: Integer read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: Int64 read _Getf write _Setf;
//  end;

//  TJg_a = class(TJavaGenericImport<Jg_aClass, Jg_a>) end;

//  JgClass = interface(JObjectClass)
//  ['{279BBCED-CA1A-4A8C-9879-EFBC0D5130DB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: Int64; P4: Boolean; P5: Int64); cdecl; overload;
//    {class} function a(P1: JString): Integer; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/g')]
//  Jg = interface(JObject)
//  ['{5A4025B7-C5EA-400E-B313-CCA4F68DE04A}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{03D555A1-DE2B-4815-862E-8FC1AA2B46F3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/smack/util/h')]
//  Jh = interface(JObject)
//  ['{013A21EF-04CD-4947-8EAA-95318D3BAE89}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl;
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JaClass = interface(JObjectClass)
//  ['{151FDB0D-9D46-41C4-995D-F90C824C58B2}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/a')]
//  Ja = interface(JObject)
//  ['{01E584AB-6B02-442F-8DB7-B91F1C405D30}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jam_c; P2: Jam_c; P3: Integer); cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{AE7905F4-80FE-4092-A2DD-954352AC242A}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/b')]
//  Jb = interface(JObject)
//  ['{545EDBC3-1CF1-4533-B897-E0AAF66FBEFB}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//    function b: JString; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{C4F4CCCD-D2C9-416C-B143-4BC59AE8362D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/c')]
//  Jc = interface(JObject)
//  ['{2EBD72B3-91A7-477A-A9DE-4BE1577BA88D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  Jd_aClass = interface(JObjectClass)
//  ['{621D2D4A-A1D8-410B-B4FC-725F76987B28}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/d$a')]
//  Jd_a = interface(JObject)
//  ['{5B1DBAE1-744E-4F25-83FF-D9B324CEB190}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd_a = class(TJavaGenericImport<Jd_aClass, Jd_a>) end;

//  JdClass = interface(JObjectClass)
//  ['{A5EF60DF-3C19-40F1-8831-68145B6241F9}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/d')]
//  Jd = interface(JObject)
//  ['{9E0F29BF-7EA5-4197-9DE2-B24327DE74A9}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{66287573-141D-4B54-8A1D-89F134CBD9E7}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/e')]
//  Je = interface(JObject)
//  ['{6C5F620D-848D-4830-A252-AD593CE2009B}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl; overload;
//    procedure b(P1: Ja); cdecl; overload;
//    procedure a(P1: Ja; P2: Integer; P3: JException); cdecl; overload;
//    procedure a(P1: Ja); cdecl; overload;
//    procedure a(P1: Ja; P2: JException); cdecl; overload;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  Jf_aClass = interface(JObjectClass)
//  ['{EA6C9A64-66AA-4FB5-8A0C-77F1886A7C0B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/f$a')]
//  Jf_a = interface(JObject)
//  ['{674189C4-CB68-480E-82EF-A67065455D90}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf_a = class(TJavaGenericImport<Jf_aClass, Jf_a>) end;

//  JfClass = interface(JObjectClass)
//  ['{9F0AEDCC-A11E-4502-9B05-E6AB9642DCB5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jf; cdecl;
//    {class} function a: Jf; cdecl; overload;
//    {class} function b: Je; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/f')]
//  Jf = interface(JObject)
//  ['{E15DAFBE-2E37-4A31-818A-4EC33451240E}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JXMPushService); cdecl; overload;
//    function c: Boolean; cdecl;
//    procedure a(P1: Integer); cdecl; overload;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{9AA7FB3A-672E-4C27-B304-C60AE64F80A3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/g')]
//  Jg = interface(JObject)
//  ['{34D78CE9-0C77-4092-AE2A-9DB7F9A51181}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jb_b); cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  Jh_aClass = interface(JObjectClass)
//  ['{E03F6021-677B-47EB-BBE0-0D75FCF035A3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/h$a')]
//  Jh_a = interface(JObject)
//  ['{2FFBB8A3-A41C-4CD0-BE29-01FD6898DFBD}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJh_a = class(TJavaGenericImport<Jh_aClass, Jh_a>) end;

//  JhClass = interface(JObjectClass)
//  ['{52B6F380-A33C-45B0-ABD5-8705B3A45E35}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: JString; P2: JException); cdecl; overload;
//    {class} procedure b(P1: JString; P2: JException); cdecl; overload;
//    {class} procedure a(P1: JString; P2: Integer; P3: JException); cdecl; overload;
//    {class} procedure a(P1: JXMPushService; P2: Jam_b); cdecl; overload;
//    {class} procedure a(P1: Integer; P2: Integer); cdecl; overload;
//    {class} procedure a(P1: Integer; P2: Integer; P3: JString; P4: Integer); cdecl; overload;
//    {class} procedure a; cdecl; overload;
//    {class} procedure b; cdecl; overload;
//    {class} procedure a(P1: Integer; P2: Integer; P3: Integer; P4: JString; P5: Integer); cdecl; overload;
//    {class} procedure a(P1: Integer); cdecl; overload;
//    {class} function c: TJavaArray<Byte>; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/stats/h')]
//  Jh = interface(JObject)
//  ['{4215EE01-59CC-48C0-B2DE-22C523C4012C}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JaClass = interface(JObjectClass)
//  ['{995B9D33-2B5D-423D-96AD-941B0FD9DD86}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jd): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/tinyData/a')]
//  Ja = interface(JObject)
//  ['{35878821-ADA2-4571-8CC1-45F194A0B5E8}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{A5918976-EC3A-415F-A6C7-C5CA94F3A9F2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jd): Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/tinyData/b')]
//  Jb = interface(JObject)
//  ['{BD10BFAF-B5CC-4C60-8EBD-35673E7C50E0}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{8E954656-F906-4416-B345-656523348551}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jd): Jc; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/tinyData/c')]
//  Jc = interface(JObject)
//  ['{558D9416-ADC8-45ED-ABF7-68E324B3A037}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{421CF5F9-4538-40DB-8D28-D0CDBD30550B}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jd; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/tinyData/d')]
//  Jd = interface(JObject)
//  ['{73357CB4-B349-47C4-8D52-1C7D26DD05BA}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Je; P2: JString); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    function b(P1: Je; P2: JString): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{43FEAD8F-90B2-44E1-8C6C-B236E1F2ABC3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/xiaomi/tinyData/e')]
//  Je = interface(IJavaInstance)
//  ['{028C6575-E625-4FD5-A284-4A3603EE0E63}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JList; P2: JString; P3: JString); cdecl; overload;
//    function a(P1: Je; P2: JString): Boolean; cdecl; overload;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JaClass = interface(JObjectClass)
//  ['{DA119964-C6F4-48D7-A564-74F14ADDA700}']
//    { static Property Methods }
//    {class} function _Geta: Ja;
//    {class} function _Getb: Ja;
//    {class} function _Getc: Ja;
//    {class} function _Getd: Ja;
//    {class} function _Gete: Ja;
//    {class} function _Getf: Ja;
//    {class} function _Getg: Ja;
//    {class} function _Geth: Ja;
//    {class} function _Geti: Ja;
//    {class} function _Getj: Ja;
//    {class} function _Getk: Ja;
//    {class} function _Getl: Ja;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Ja>; cdecl;
//    {class} function valueOf(P1: JString): Ja; cdecl;
//    {class} function a(P1: Integer): Ja; cdecl; overload;
//
//    { static Property }
//    {class} property a: Ja read _Geta;
//    {class} property b: Ja read _Getb;
//    {class} property c: Ja read _Getc;
//    {class} property d: Ja read _Getd;
//    {class} property e: Ja read _Gete;
//    {class} property f: Ja read _Getf;
//    {class} property g: Ja read _Getg;
//    {class} property h: Ja read _Geth;
//    {class} property i: Ja read _Geti;
//    {class} property j: Ja read _Getj;
//    {class} property k: Ja read _Getk;
//    {class} property l: Ja read _Getl;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/a')]
//  Ja = interface(JObject)
//  ['{972AA5EF-BE99-42ED-8D3E-8BE71278B4A1}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Jaa_aClass = interface(JObjectClass)
//  ['{DEE333C2-809D-4353-814D-FBB3A72CACA3}']
//    { static Property Methods }
//    {class} function _Geta: Jaa_a;
//    {class} function _Getb: Jaa_a;
//    {class} function _Getc: Jaa_a;
//    {class} function _Getd: Jaa_a;
//    {class} function _Gete: Jaa_a;
//    {class} function _Getf: Jaa_a;
//    {class} function _Getg: Jaa_a;
//    {class} function _Geth: Jaa_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jaa_a>; cdecl;
//    {class} function valueOf(P1: JString): Jaa_a; cdecl;
//
//    { static Property }
//    {class} property a: Jaa_a read _Geta;
//    {class} property b: Jaa_a read _Getb;
//    {class} property c: Jaa_a read _Getc;
//    {class} property d: Jaa_a read _Getd;
//    {class} property e: Jaa_a read _Gete;
//    {class} property f: Jaa_a read _Getf;
//    {class} property g: Jaa_a read _Getg;
//    {class} property h: Jaa_a read _Geth;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/aa$a')]
//  Jaa_a = interface(JObject)
//  ['{49152A48-0AF8-405E-AEDE-C97F4748FCFD}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJaa_a = class(TJavaGenericImport<Jaa_aClass, Jaa_a>) end;
//
//  JaaClass = interface(JObjectClass)
//  ['{CFF0AF42-C7D2-4B98-9BD6-E9B96993E871}']
//    { static Property Methods }
//    {class} function _Geti: JMap;
//
//    { static Methods }
//    {class} function init: Jaa; cdecl;
//
//    { static Property }
//    {class} property i: JMap read _Geti;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/aa')]
//  Jaa = interface(JObject)
//  ['{1719A8B4-77C0-45A4-8425-CAB376ADFAB8}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JList;
//    procedure _Setf(af: JList);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: JString): Jaa; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function b(P1: JString): Jaa; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function c(P1: JString): Jaa; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    procedure d(P1: JString); cdecl; overload;
//    function f: Boolean; cdecl; overload;
//    function e(P1: JString): Jaa; cdecl; overload;
//    function g: Boolean; cdecl;
//    function f(P1: JString): Jaa; cdecl; overload;
//    function h: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jaa): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jaa): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure i; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JList read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//  end;
//
//  TJaa = class(TJavaGenericImport<JaaClass, Jaa>) end;
//
//  Jab_aClass = interface(JObjectClass)
//  ['{05145EB6-E11B-4AB1-8F92-3E7368FBBF88}']
//    { static Property Methods }
//    {class} function _Geta: Jab_a;
//    {class} function _Getb: Jab_a;
//    {class} function _Getc: Jab_a;
//    {class} function _Getd: Jab_a;
//    {class} function _Gete: Jab_a;
//    {class} function _Getf: Jab_a;
//    {class} function _Getg: Jab_a;
//    {class} function _Geth: Jab_a;
//    {class} function _Geti: Jab_a;
//    {class} function _Getj: Jab_a;
//    {class} function _Getk: Jab_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jab_a>; cdecl;
//    {class} function valueOf(P1: JString): Jab_a; cdecl;
//
//    { static Property }
//    {class} property a: Jab_a read _Geta;
//    {class} property b: Jab_a read _Getb;
//    {class} property c: Jab_a read _Getc;
//    {class} property d: Jab_a read _Getd;
//    {class} property e: Jab_a read _Gete;
//    {class} property f: Jab_a read _Getf;
//    {class} property g: Jab_a read _Getg;
//    {class} property h: Jab_a read _Geth;
//    {class} property i: Jab_a read _Geti;
//    {class} property j: Jab_a read _Getj;
//    {class} property k: Jab_a read _Getk;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/ab$a')]
//  Jab_a = interface(JObject)
//  ['{9E82AE4B-AA07-4D3D-8980-70B736C38EBB}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJab_a = class(TJavaGenericImport<Jab_aClass, Jab_a>) end;
//
//  JabClass = interface(JObjectClass)
//  ['{5AE24DAC-B9EB-499F-95C0-29D0B16117A6}']
//    { static Property Methods }
//    {class} function _Getl: JMap;
//
//    { static Methods }
//    {class} function init: Jab; cdecl;
//
//    { static Property }
//    {class} property l: JMap read _Getl;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ab')]
//  Jab = interface(JObject)
//  ['{84CCECC3-E036-429A-BCA8-2D431257C5B9}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: Jaa;
//    procedure _Setf(af: Jaa);
//    function _Getg: Int64;
//    procedure _Setg(ag: Int64);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JList;
//    procedure _Setj(aj: JList);
//    function _Getk: JString;
//    procedure _Setk(ak: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Boolean; cdecl;
//    function e: JString; cdecl;
//    function f: Boolean; cdecl;
//    function g: Boolean; cdecl;
//    function h: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function i: Boolean; cdecl;
//    function j: Boolean; cdecl;
//    function k: JList; cdecl;
//    function l: Boolean; cdecl;
//    function m: JString; cdecl;
//    function n: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jab): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jab): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure o; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: Jaa read _Getf write _Setf;
//    property g: Int64 read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JList read _Getj write _Setj;
//    property k: JString read _Getk write _Setk;
//  end;
//
//  TJab = class(TJavaGenericImport<JabClass, Jab>) end;
//
//  Jac_aClass = interface(JObjectClass)
//  ['{18822ECF-AFB2-4142-A6EE-1F9619CC8F51}']
//    { static Property Methods }
//    {class} function _Geta: Jac_a;
//    {class} function _Getb: Jac_a;
//    {class} function _Getc: Jac_a;
//    {class} function _Getd: Jac_a;
//    {class} function _Gete: Jac_a;
//    {class} function _Getf: Jac_a;
//    {class} function _Getg: Jac_a;
//    {class} function _Geth: Jac_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jac_a>; cdecl;
//    {class} function valueOf(P1: JString): Jac_a; cdecl;
//
//    { static Property }
//    {class} property a: Jac_a read _Geta;
//    {class} property b: Jac_a read _Getb;
//    {class} property c: Jac_a read _Getc;
//    {class} property d: Jac_a read _Getd;
//    {class} property e: Jac_a read _Gete;
//    {class} property f: Jac_a read _Getf;
//    {class} property g: Jac_a read _Getg;
//    {class} property h: Jac_a read _Geth;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/ac$a')]
//  Jac_a = interface(JObject)
//  ['{FD0063BC-9172-49B7-A784-96E4491E1F74}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJac_a = class(TJavaGenericImport<Jac_aClass, Jac_a>) end;
//
//  JacClass = interface(JObjectClass)
//  ['{D355296E-6C1F-4F15-9737-AC25D4AD2AAA}']
//    { static Property Methods }
//    {class} function _Geti: JMap;
//
//    { static Methods }
//    {class} function init: Jac; cdecl;
//
//    { static Property }
//    {class} property i: JMap read _Geti;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ac')]
//  Jac = interface(JObject)
//  ['{D7C399D8-FB8C-44FC-80C7-2E875EFAEA29}']
//    { Property Methods }
//    function _Geta: Ja;
//    procedure _Seta(aa: Ja);
//    function _Getb: Boolean;
//    procedure _Setb(ab: Boolean);
//    function _Getc: Boolean;
//    procedure _Setc(ac: Boolean);
//    function _Getd: JByteBuffer;
//    procedure _Setd(ad: JByteBuffer);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: Jv;
//    procedure _Setg(ag: Jv);
//    function _Geth: Js;
//    procedure _Seth(ah: Js);
//
//    { methods }
//    function a: Ja; cdecl; overload;
//    function a(P1: Ja): Jac; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function a(P1: Boolean): Jac; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    procedure b(P1: Boolean); cdecl; overload;
//    function c(P1: Boolean): Jac; cdecl; overload;
//    function e: Boolean; cdecl;
//    procedure d(P1: Boolean); cdecl; overload;
//    function f: TJavaArray<Byte>; cdecl;
//    function a(P1: JByteBuffer): Jac; cdecl; overload;
//    function g: Boolean; cdecl;
//    function h: JString; cdecl;
//    function a(P1: JString): Jac; cdecl; overload;
//    function i: Boolean; cdecl;
//    function j: JString; cdecl;
//    function b(P1: JString): Jac; cdecl; overload;
//    function k: Boolean; cdecl;
//    function a(P1: Jv): Jac; cdecl; overload;
//    function l: Boolean; cdecl;
//    function m: Js; cdecl;
//    function a(P1: Js): Jac; cdecl; overload;
//    function n: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jac): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jac): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure o; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Ja read _Geta write _Seta;
//    property b: Boolean read _Getb write _Setb;
//    property c: Boolean read _Getc write _Setc;
//    property d: JByteBuffer read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: Jv read _Getg write _Setg;
//    property h: Js read _Geth write _Seth;
//  end;
//
//  TJac = class(TJavaGenericImport<JacClass, Jac>) end;
//
////  Jad_aClass = interface(JObjectClass)
////  ['{933EF261-A3D7-4FFA-8939-59DECBDAF572}']
////    { static Property Methods }
////    {class} function _Geta: Jad_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jad_a>; cdecl;
////    {class} function valueOf(P1: JString): Jad_a; cdecl;
////
////    { static Property }
////    {class} property a: Jad_a read _Geta;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/ad$a')]
////  Jad_a = interface(JObject)
////  ['{2391EF58-64CB-49DB-A24C-C5FC4573480A}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJad_a = class(TJavaGenericImport<Jad_aClass, Jad_a>) end;
//
//  JadClass = interface(JObjectClass)
//  ['{DD7CA13E-3262-49FA-9C00-B6E436D78C53}']
//    { static Property Methods }
//    {class} function _Getb: JMap;
//
//    { static Methods }
//    {class} function init: Jad; cdecl;
//
//    { static Property }
//    {class} property b: JMap read _Getb;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ad')]
//  Jad = interface(JObject)
//  ['{EED49EC2-DF77-420C-B850-A72B39FF141B}']
//    { Property Methods }
//    function _Geta: JList;
//    procedure _Seta(aa: JList);
//
//    { methods }
//    function a: JList; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jad): Boolean; cdecl; overload;
//    function b(P1: Jad): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure c; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JList read _Geta write _Seta;
//  end;
//
//  TJad = class(TJavaGenericImport<JadClass, Jad>) end;
//
////  Jae_aClass = interface(JObjectClass)
////  ['{AD43AC1C-08DB-49C7-BFAA-9633F7588C5C}']
////    { static Property Methods }
////    {class} function _Geta: Jae_a;
////    {class} function _Getb: Jae_a;
////    {class} function _Getc: Jae_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jae_a>; cdecl;
////    {class} function valueOf(P1: JString): Jae_a; cdecl;
////
////    { static Property }
////    {class} property a: Jae_a read _Geta;
////    {class} property b: Jae_a read _Getb;
////    {class} property c: Jae_a read _Getc;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/ae$a')]
////  Jae_a = interface(JObject)
////  ['{FBF8F7C2-7777-4C45-B4CD-9A1665B9D155}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJae_a = class(TJavaGenericImport<Jae_aClass, Jae_a>) end;
//
//  JaeClass = interface(JObjectClass)
//  ['{A3D05287-F8E7-4CD5-A7D9-1DFAA0B9E6A9}']
//    { static Property Methods }
//    {class} function _Getd: JMap;
//
//    { static Methods }
//    {class} function init: Jae; cdecl;
//
//    { static Property }
//    {class} property d: JMap read _Getd;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ae')]
//  Jae = interface(JObject)
//  ['{62279DD8-959F-44D5-B267-02C5BFC7205A}']
//    { Property Methods }
//    function _Geta: JList;
//    procedure _Seta(aa: JList);
//    function _Getb: Int64;
//    procedure _Setb(ab: Int64);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//
//    { methods }
//    function a: JList; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function d: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jae): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jae): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure e; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JList read _Geta write _Seta;
//    property b: Int64 read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//  end;
//
//  TJae = class(TJavaGenericImport<JaeClass, Jae>) end;
//
////  Jaf_aClass = interface(JObjectClass)
////  ['{850CE62F-014C-45A7-8ECD-35E4CB5E8DD1}']
////    { static Property Methods }
////    {class} function _Geta: Jaf_a;
////    {class} function _Getb: Jaf_a;
////    {class} function _Getc: Jaf_a;
////    {class} function _Getd: Jaf_a;
////    {class} function _Gete: Jaf_a;
////    {class} function _Getf: Jaf_a;
////    {class} function _Getg: Jaf_a;
////    {class} function _Geth: Jaf_a;
////    {class} function _Geti: Jaf_a;
////    {class} function _Getj: Jaf_a;
////    {class} function _Getk: Jaf_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jaf_a>; cdecl;
////    {class} function valueOf(P1: JString): Jaf_a; cdecl;
////
////    { static Property }
////    {class} property a: Jaf_a read _Geta;
////    {class} property b: Jaf_a read _Getb;
////    {class} property c: Jaf_a read _Getc;
////    {class} property d: Jaf_a read _Getd;
////    {class} property e: Jaf_a read _Gete;
////    {class} property f: Jaf_a read _Getf;
////    {class} property g: Jaf_a read _Getg;
////    {class} property h: Jaf_a read _Geth;
////    {class} property i: Jaf_a read _Geti;
////    {class} property j: Jaf_a read _Getj;
////    {class} property k: Jaf_a read _Getk;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/af$a')]
////  Jaf_a = interface(JObject)
////  ['{1E913563-AA12-46FF-B962-DC4BD5587AFE}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJaf_a = class(TJavaGenericImport<Jaf_aClass, Jaf_a>) end;
//
//  JafClass = interface(JObjectClass)
//  ['{1EDE0AFE-3349-49DD-B230-C6963C00584C}']
//    { static Property Methods }
//    {class} function _Getl: JMap;
//
//    { static Methods }
//    {class} function init: Jaf; cdecl; overload;
//    {class} function init(P1: JString; P2: Boolean): Jaf; cdecl; overload;
//
//    { static Property }
//    {class} property l: JMap read _Getl;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/af')]
//  Jaf = interface(JObject)
//  ['{D862F9FD-2AB3-4FA6-97FB-D5F63A02FBE7}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: Boolean;
//    procedure _Setf(af: Boolean);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JMap;
//    procedure _Seth(ah: JMap);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//    function _Getk: JByteBuffer;
//    procedure _Setk(ak: JByteBuffer);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: JString; cdecl; overload;
//    function a(P1: JString): Jaf; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function b(P1: JString): Jaf; cdecl; overload;
//    function e: Boolean; cdecl;
//    function c(P1: JString): Jaf; cdecl; overload;
//    function f: Boolean; cdecl;
//    function a(P1: Boolean): Jaf; cdecl; overload;
//    function g: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function h: Boolean; cdecl;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    function i: JMap; cdecl;
//    function a(P1: JMap): Jaf; cdecl; overload;
//    function j: Boolean; cdecl;
//    function d(P1: JString): Jaf; cdecl; overload;
//    function k: Boolean; cdecl;
//    function l: Boolean; cdecl;
//    function m: TJavaArray<Byte>; cdecl;
//    function a(P1: TJavaArray<Byte>): Jaf; cdecl; overload;
//    function a(P1: JByteBuffer): Jaf; cdecl; overload;
//    function n: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jaf): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jaf): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure o; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: Boolean read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JMap read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//    property k: JByteBuffer read _Getk write _Setk;
//  end;
//
//  TJaf = class(TJavaGenericImport<JafClass, Jaf>) end;
//
//  Jag_aClass = interface(JObjectClass)
//  ['{9A8A6A99-9144-4087-B31A-F2E169764CF5}']
//    { static Property Methods }
//    {class} function _Geta: Jag_a;
//    {class} function _Getb: Jag_a;
//    {class} function _Getc: Jag_a;
//    {class} function _Getd: Jag_a;
//    {class} function _Gete: Jag_a;
//    {class} function _Getf: Jag_a;
//    {class} function _Getg: Jag_a;
//    {class} function _Geth: Jag_a;
//    {class} function _Geti: Jag_a;
//    {class} function _Getj: Jag_a;
//    {class} function _Getk: Jag_a;
//    {class} function _Getl: Jag_a;
//    {class} function _Getm: Jag_a;
//    {class} function _Getn: Jag_a;
//    {class} function _Geto: Jag_a;
//    {class} function _Getp: Jag_a;
//    {class} function _Getq: Jag_a;
//    {class} function _Getr: Jag_a;
//    {class} function _Gets: Jag_a;
//    {class} function _Gett: Jag_a;
//    {class} function _Getu: Jag_a;
//    {class} function _Getv: Jag_a;
//    {class} function _Getw: Jag_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jag_a>; cdecl;
//    {class} function valueOf(P1: JString): Jag_a; cdecl;
//
//    { static Property }
//    {class} property a: Jag_a read _Geta;
//    {class} property b: Jag_a read _Getb;
//    {class} property c: Jag_a read _Getc;
//    {class} property d: Jag_a read _Getd;
//    {class} property e: Jag_a read _Gete;
//    {class} property f: Jag_a read _Getf;
//    {class} property g: Jag_a read _Getg;
//    {class} property h: Jag_a read _Geth;
//    {class} property i: Jag_a read _Geti;
//    {class} property j: Jag_a read _Getj;
//    {class} property k: Jag_a read _Getk;
//    {class} property l: Jag_a read _Getl;
//    {class} property m: Jag_a read _Getm;
//    {class} property n: Jag_a read _Getn;
//    {class} property o: Jag_a read _Geto;
//    {class} property p: Jag_a read _Getp;
//    {class} property q: Jag_a read _Getq;
//    {class} property r: Jag_a read _Getr;
//    {class} property s: Jag_a read _Gets;
//    {class} property t: Jag_a read _Gett;
//    {class} property u: Jag_a read _Getu;
//    {class} property v: Jag_a read _Getv;
//    {class} property w: Jag_a read _Getw;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/ag$a')]
//  Jag_a = interface(JObject)
//  ['{A66DC027-4105-4472-90DF-33854FE0E67C}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJag_a = class(TJavaGenericImport<Jag_aClass, Jag_a>) end;
//
//  JagClass = interface(JObjectClass)
//  ['{4CF4FD2D-E345-472F-851B-0A8A101463EB}']
//    { static Property Methods }
//    {class} function _Getx: JMap;
//
//    { static Methods }
//    {class} function init: Jag; cdecl;
//
//    { static Property }
//    {class} property x: JMap read _Getx;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ag')]
//  Jag = interface(JObject)
//  ['{AE733416-E031-4F80-9D39-E945B107A616}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//    function _Getk: JString;
//    procedure _Setk(ak: JString);
//    function _Getl: JString;
//    procedure _Setl(al: JString);
//    function _Getm: Integer;
//    procedure _Setm(am: Integer);
//    function _Getn: Integer;
//    procedure _Setn(an: Integer);
//    function _Geto: JString;
//    procedure _Seto(ao: JString);
//    function _Getp: JString;
//    procedure _Setp(ap: JString);
//    function _Getq: JString;
//    procedure _Setq(aq: JString);
//    function _Getr: JString;
//    procedure _Setr(ar: JString);
//    function _Gets: Integer;
//    procedure _Sets(as: Integer);
//    function _Gett: Ju;
//    procedure _Sett(at: Ju);
//    function _Getu: JMap;
//    procedure _Setu(au: JMap);
//    function _Getv: Boolean;
//    procedure _Setv(av: Boolean);
//    function _Getw: JString;
//    procedure _Setw(aw: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: JString): Jag; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function d: JString; cdecl; overload;
//    function b(P1: JString): Jag; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    function c(P1: JString): Jag; cdecl; overload;
//    function f: Boolean; cdecl; overload;
//    function d(P1: JString): Jag; cdecl; overload;
//    function g: Boolean; cdecl; overload;
//    function h: JString; cdecl; overload;
//    function e(P1: JString): Jag; cdecl; overload;
//    function i: Boolean; cdecl; overload;
//    function f(P1: JString): Jag; cdecl; overload;
//    function j: Boolean; cdecl; overload;
//    function k: Boolean; cdecl; overload;
//    function l: Boolean; cdecl;
//    function m: Boolean; cdecl;
//    function g(P1: JString): Jag; cdecl; overload;
//    function n: Boolean; cdecl;
//    function a(P1: Integer): Jag; cdecl; overload;
//    function o: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function b(P1: Integer): Jag; cdecl; overload;
//    function p: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function h(P1: JString): Jag; cdecl; overload;
//    function q: Boolean; cdecl;
//    function i(P1: JString): Jag; cdecl; overload;
//    function r: Boolean; cdecl;
//    function j(P1: JString): Jag; cdecl; overload;
//    function s: Boolean; cdecl;
//    function k(P1: JString): Jag; cdecl; overload;
//    function t: Boolean; cdecl;
//    function c(P1: Integer): Jag; cdecl; overload;
//    function u: Boolean; cdecl;
//    procedure c(P1: Boolean); cdecl; overload;
//    function a(P1: Ju): Jag; cdecl; overload;
//    function v: Boolean; cdecl;
//    function w: Boolean; cdecl;
//    function x: Boolean; cdecl;
//    procedure d(P1: Boolean); cdecl; overload;
//    function y: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jag): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jag): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure z; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//    property k: JString read _Getk write _Setk;
//    property l: JString read _Getl write _Setl;
//    property m: Integer read _Getm write _Setm;
//    property n: Integer read _Getn write _Setn;
//    property o: JString read _Geto write _Seto;
//    property p: JString read _Getp write _Setp;
//    property q: JString read _Getq write _Setq;
//    property r: JString read _Getr write _Setr;
//    property s: Integer read _Gets write _Sets;
//    property t: Ju read _Gett write _Sett;
//    property u: JMap read _Getu write _Setu;
//    property v: Boolean read _Getv write _Setv;
//    property w: JString read _Getw write _Setw;
//  end;
//
//  TJag = class(TJavaGenericImport<JagClass, Jag>) end;
//
//  Jah_aClass = interface(JObjectClass)
//  ['{69373B74-BF5B-44DF-BED3-1DF988578D81}']
//    { static Property Methods }
//    {class} function _Geta: Jah_a;
//    {class} function _Getb: Jah_a;
//    {class} function _Getc: Jah_a;
//    {class} function _Getd: Jah_a;
//    {class} function _Gete: Jah_a;
//    {class} function _Getf: Jah_a;
//    {class} function _Getg: Jah_a;
//    {class} function _Geth: Jah_a;
//    {class} function _Geti: Jah_a;
//    {class} function _Getj: Jah_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jah_a>; cdecl;
//    {class} function valueOf(P1: JString): Jah_a; cdecl;
//
//    { static Property }
//    {class} property a: Jah_a read _Geta;
//    {class} property b: Jah_a read _Getb;
//    {class} property c: Jah_a read _Getc;
//    {class} property d: Jah_a read _Getd;
//    {class} property e: Jah_a read _Gete;
//    {class} property f: Jah_a read _Getf;
//    {class} property g: Jah_a read _Getg;
//    {class} property h: Jah_a read _Geth;
//    {class} property i: Jah_a read _Geti;
//    {class} property j: Jah_a read _Getj;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/ah$a')]
//  Jah_a = interface(JObject)
//  ['{D21D363E-8AAD-41C9-83DF-B5E88DF68F8A}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJah_a = class(TJavaGenericImport<Jah_aClass, Jah_a>) end;
//
//  JahClass = interface(JObjectClass)
//  ['{E6FDE949-84DA-48CD-A940-3C4D781E06B5}']
//    { static Property Methods }
//    {class} function _Getk: JMap;
//
//    { static Methods }
//    {class} function init: Jah; cdecl;
//
//    { static Property }
//    {class} property k: JMap read _Getk;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ah')]
//  Jah = interface(JObject)
//  ['{5084A923-7729-41A0-B6B6-94CEE171DFB6}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Jag;
//    procedure _Sete(ae: Jag);
//    function _Getf: Int64;
//    procedure _Setf(af: Int64);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function f: Int64; cdecl;
//    function g: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function h: Boolean; cdecl;
//    function i: Boolean; cdecl;
//    function j: Boolean; cdecl;
//    function k: JString; cdecl;
//    function l: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jah): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jah): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure m; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Jag read _Gete write _Sete;
//    property f: Int64 read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//  end;
//
//  TJah = class(TJavaGenericImport<JahClass, Jah>) end;
//
////  Jai_aClass = interface(JObjectClass)
////  ['{B37C23D3-F488-42D2-9564-46984DD5DF24}']
////    { static Property Methods }
////    {class} function _Geta: Jai_a;
////    {class} function _Getb: Jai_a;
////    {class} function _Getc: Jai_a;
////    {class} function _Getd: Jai_a;
////    {class} function _Gete: Jai_a;
////    {class} function _Getf: Jai_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jai_a>; cdecl;
////    {class} function valueOf(P1: JString): Jai_a; cdecl;
////
////    { static Property }
////    {class} property a: Jai_a read _Geta;
////    {class} property b: Jai_a read _Getb;
////    {class} property c: Jai_a read _Getc;
////    {class} property d: Jai_a read _Getd;
////    {class} property e: Jai_a read _Gete;
////    {class} property f: Jai_a read _Getf;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/ai$a')]
////  Jai_a = interface(JObject)
////  ['{8CF94506-9A6F-43E2-AD26-B680BB66DC42}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJai_a = class(TJavaGenericImport<Jai_aClass, Jai_a>) end;
//
//  JaiClass = interface(JObjectClass)
//  ['{68E387E8-3328-4FEA-8AE3-1F9A581D3CD3}']
//    { static Property Methods }
//    {class} function _Getg: JMap;
//
//    { static Methods }
//    {class} function init: Jai; cdecl;
//
//    { static Property }
//    {class} property g: JMap read _Getg;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ai')]
//  Jai = interface(JObject)
//  ['{8031EA3D-A5C1-40F7-9472-6073C0C26566}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JMap;
//    procedure _Sete(ae: JMap);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function f: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jai): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jai): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure g; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JMap read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//  end;
//
//  TJai = class(TJavaGenericImport<JaiClass, Jai>) end;
//
////  Jaj_aClass = interface(JObjectClass)
////  ['{AAEAAF16-6817-48F4-ACD2-932D9057CA15}']
////    { static Property Methods }
////    {class} function _Geta: Jaj_a;
////    {class} function _Getb: Jaj_a;
////    {class} function _Getc: Jaj_a;
////    {class} function _Getd: Jaj_a;
////    {class} function _Gete: Jaj_a;
////    {class} function _Getf: Jaj_a;
////    {class} function _Getg: Jaj_a;
////    {class} function _Geth: Jaj_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jaj_a>; cdecl;
////    {class} function valueOf(P1: JString): Jaj_a; cdecl;
////
////    { static Property }
////    {class} property a: Jaj_a read _Geta;
////    {class} property b: Jaj_a read _Getb;
////    {class} property c: Jaj_a read _Getc;
////    {class} property d: Jaj_a read _Getd;
////    {class} property e: Jaj_a read _Gete;
////    {class} property f: Jaj_a read _Getf;
////    {class} property g: Jaj_a read _Getg;
////    {class} property h: Jaj_a read _Geth;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/aj$a')]
////  Jaj_a = interface(JObject)
////  ['{8A786E65-C013-4A9D-9847-0278740D394D}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJaj_a = class(TJavaGenericImport<Jaj_aClass, Jaj_a>) end;
//
//  JajClass = interface(JObjectClass)
//  ['{EDBE22B0-B2B8-47A8-A171-6BDA45C1AE82}']
//    { static Property Methods }
//    {class} function _Geti: JMap;
//
//    { static Methods }
//    {class} function init: Jaj; cdecl;
//
//    { static Property }
//    {class} property i: JMap read _Geti;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/aj')]
//  Jaj = interface(JObject)
//  ['{A0399A57-1CD1-4ADD-833C-963547A1B85B}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Jai;
//    procedure _Sete(ae: Jai);
//    function _Getf: Int64;
//    procedure _Setf(af: Int64);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function f: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function g: Boolean; cdecl;
//    function h: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jaj): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jaj): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure i; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Jai read _Gete write _Sete;
//    property f: Int64 read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//  end;
//
//  TJaj = class(TJavaGenericImport<JajClass, Jaj>) end;
//
////  Jak_aClass = interface(JObjectClass)
////  ['{E8A206F6-A791-4FA5-AB0B-C696D9B8C008}']
////    { static Property Methods }
////    {class} function _Geta: Jak_a;
////    {class} function _Getb: Jak_a;
////    {class} function _Getc: Jak_a;
////    {class} function _Getd: Jak_a;
////    {class} function _Gete: Jak_a;
////    {class} function _Getf: Jak_a;
////    {class} function _Getg: Jak_a;
////    {class} function _Geth: Jak_a;
////    {class} function _Geti: Jak_a;
////    {class} function _Getj: Jak_a;
////    {class} function _Getk: Jak_a;
////    {class} function _Getl: Jak_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jak_a>; cdecl;
////    {class} function valueOf(P1: JString): Jak_a; cdecl;
////
////    { static Property }
////    {class} property a: Jak_a read _Geta;
////    {class} property b: Jak_a read _Getb;
////    {class} property c: Jak_a read _Getc;
////    {class} property d: Jak_a read _Getd;
////    {class} property e: Jak_a read _Gete;
////    {class} property f: Jak_a read _Getf;
////    {class} property g: Jak_a read _Getg;
////    {class} property h: Jak_a read _Geth;
////    {class} property i: Jak_a read _Geti;
////    {class} property j: Jak_a read _Getj;
////    {class} property k: Jak_a read _Getk;
////    {class} property l: Jak_a read _Getl;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/ak$a')]
////  Jak_a = interface(JObject)
////  ['{D51D4EE3-3C5C-4CCF-A6EE-F4A54F50F0C9}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJak_a = class(TJavaGenericImport<Jak_aClass, Jak_a>) end;
//
//  JakClass = interface(JObjectClass)
//  ['{848932D2-3193-4551-AA9A-088A69BEFC5B}']
//    { static Property Methods }
//    {class} function _Getm: JMap;
//
//    { static Methods }
//    {class} function init: Jak; cdecl;
//
//    { static Property }
//    {class} property m: JMap read _Getm;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ak')]
//  Jak = interface(JObject)
//  ['{BFF22A10-149D-46DD-9D08-7BA8892E8E9F}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: Jr;
//    procedure _Seth(ah: Jr);
//    function _Geti: Boolean;
//    procedure _Seti(ai: Boolean);
//    function _Getj: JMap;
//    procedure _Setj(aj: JMap);
//    function _Getk: JString;
//    procedure _Setk(ak: JString);
//    function _Getl: JString;
//    procedure _Setl(al: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: JString; cdecl;
//    function d: Boolean; cdecl;
//    function e: JString; cdecl;
//    function f: Boolean; cdecl;
//    function g: Boolean; cdecl;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function j: JString; cdecl;
//    function k: Boolean; cdecl;
//    function l: Jr; cdecl;
//    function m: Boolean; cdecl;
//    function n: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function o: Boolean; cdecl;
//    function p: JString; cdecl;
//    function q: Boolean; cdecl;
//    function r: JString; cdecl;
//    function s: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jak): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jak): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure t; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: Jr read _Geth write _Seth;
//    property i: Boolean read _Geti write _Seti;
//    property j: JMap read _Getj write _Setj;
//    property k: JString read _Getk write _Setk;
//    property l: JString read _Getl write _Setl;
//  end;
//
//  TJak = class(TJavaGenericImport<JakClass, Jak>) end;
//
////  Jal_aClass = interface(JObjectClass)
////  ['{D8DE63F5-2FEB-406A-A3D4-E0310745B3F5}']
////    { static Property Methods }
////    {class} function _Geta: Jal_a;
////    {class} function _Getb: Jal_a;
////    {class} function _Getc: Jal_a;
////    {class} function _Getd: Jal_a;
////    {class} function _Gete: Jal_a;
////    {class} function _Getf: Jal_a;
////    {class} function _Getg: Jal_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jal_a>; cdecl;
////    {class} function valueOf(P1: JString): Jal_a; cdecl;
////
////    { static Property }
////    {class} property a: Jal_a read _Geta;
////    {class} property b: Jal_a read _Getb;
////    {class} property c: Jal_a read _Getc;
////    {class} property d: Jal_a read _Getd;
////    {class} property e: Jal_a read _Gete;
////    {class} property f: Jal_a read _Getf;
////    {class} property g: Jal_a read _Getg;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/al$a')]
////  Jal_a = interface(JObject)
////  ['{D78956AD-2FAC-46A8-88E3-D62682AFE441}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJal_a = class(TJavaGenericImport<Jal_aClass, Jal_a>) end;
//
//  JalClass = interface(JObjectClass)
//  ['{9AE3DC87-9553-4D08-B48F-76DBE45E5BAA}']
//    { static Property Methods }
//    {class} function _Geth: JMap;
//
//    { static Methods }
//    {class} function init: Jal; cdecl;
//
//    { static Property }
//    {class} property h: JMap read _Geth;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/al')]
//  Jal = interface(JObject)
//  ['{C63CB84A-3369-4AD6-9C88-34E839D51BBE}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: JString): Jal; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function b(P1: JString): Jal; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function c(P1: JString): Jal; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    function d(P1: JString): Jal; cdecl; overload;
//    function f: Boolean; cdecl;
//    function e(P1: JString): Jal; cdecl; overload;
//    function g: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jal): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jal): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure h; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//  end;
//
//  TJal = class(TJavaGenericImport<JalClass, Jal>) end;
//
////  Jam_aClass = interface(JObjectClass)
////  ['{F39FACBD-98AE-4117-AA63-407D9FB02213}']
////    { static Property Methods }
////    {class} function _Geta: Jam_a;
////    {class} function _Getb: Jam_a;
////    {class} function _Getc: Jam_a;
////    {class} function _Getd: Jam_a;
////    {class} function _Gete: Jam_a;
////    {class} function _Getf: Jam_a;
////    {class} function _Getg: Jam_a;
////    {class} function _Geth: Jam_a;
////    {class} function _Geti: Jam_a;
////    {class} function _Getj: Jam_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jam_a>; cdecl;
////    {class} function valueOf(P1: JString): Jam_a; cdecl;
////
////    { static Property }
////    {class} property a: Jam_a read _Geta;
////    {class} property b: Jam_a read _Getb;
////    {class} property c: Jam_a read _Getc;
////    {class} property d: Jam_a read _Getd;
////    {class} property e: Jam_a read _Gete;
////    {class} property f: Jam_a read _Getf;
////    {class} property g: Jam_a read _Getg;
////    {class} property h: Jam_a read _Geth;
////    {class} property i: Jam_a read _Geti;
////    {class} property j: Jam_a read _Getj;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/am$a')]
////  Jam_a = interface(JObject)
////  ['{8B4BDFE6-3B9D-4610-9A07-C4C47DA608E1}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJam_a = class(TJavaGenericImport<Jam_aClass, Jam_a>) end;
//
//  JamClass = interface(JObjectClass)
//  ['{25B8FA7E-7AD4-47C4-8C51-765F4AC12476}']
//    { static Property Methods }
//    {class} function _Getk: JMap;
//
//    { static Methods }
//    {class} function init: Jam; cdecl;
//
//    { static Property }
//    {class} property k: JMap read _Getk;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/am')]
//  Jam = interface(JObject)
//  ['{F763D81D-9054-43D3-AE9E-1A5BA437BE88}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Jal;
//    procedure _Sete(ae: Jal);
//    function _Getf: Int64;
//    procedure _Setf(af: Int64);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function f: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function g: Boolean; cdecl;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function j: Boolean; cdecl;
//    function k: JString; cdecl;
//    function l: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jam): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jam): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure m; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Jal read _Gete write _Sete;
//    property f: Int64 read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//  end;
//
//  TJam = class(TJavaGenericImport<JamClass, Jam>) end;
//
////  Jan_aClass = interface(JObjectClass)
////  ['{DD142A7B-6CAC-4D29-843B-EA6C1BF21DA0}']
////    { static Property Methods }
////    {class} function _Geta: Jan_a;
////    {class} function _Getb: Jan_a;
////    {class} function _Getc: Jan_a;
////    {class} function _Getd: Jan_a;
////    {class} function _Gete: Jan_a;
////    {class} function _Getf: Jan_a;
////    {class} function _Getg: Jan_a;
////    {class} function _Geth: Jan_a;
////    {class} function _Geti: Jan_a;
////    {class} function _Getj: Jan_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jan_a>; cdecl;
////    {class} function valueOf(P1: JString): Jan_a; cdecl;
////
////    { static Property }
////    {class} property a: Jan_a read _Geta;
////    {class} property b: Jan_a read _Getb;
////    {class} property c: Jan_a read _Getc;
////    {class} property d: Jan_a read _Getd;
////    {class} property e: Jan_a read _Gete;
////    {class} property f: Jan_a read _Getf;
////    {class} property g: Jan_a read _Getg;
////    {class} property h: Jan_a read _Geth;
////    {class} property i: Jan_a read _Geti;
////    {class} property j: Jan_a read _Getj;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/an$a')]
////  Jan_a = interface(JObject)
////  ['{702A2A8F-0E4F-4BA2-97E7-7AC6FF3C6156}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJan_a = class(TJavaGenericImport<Jan_aClass, Jan_a>) end;
//
//  JanClass = interface(JObjectClass)
//  ['{D44E24BB-B1ED-4C02-B880-0B9E55E1F290}']
//    { static Property Methods }
//    {class} function _Getk: JMap;
//
//    { static Methods }
//    {class} function init: Jan; cdecl;
//
//    { static Property }
//    {class} property k: JMap read _Getk;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/an')]
//  Jan = interface(JObject)
//  ['{C9BC75A0-1032-4C61-864E-97E07EE6BD3B}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: JString): Jan; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function b(P1: JString): Jan; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function c(P1: JString): Jan; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    function f: Boolean; cdecl;
//    function d(P1: JString): Jan; cdecl; overload;
//    function g: Boolean; cdecl;
//    function e(P1: JString): Jan; cdecl; overload;
//    function h: Boolean; cdecl;
//    function i: Boolean; cdecl;
//    function j: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jan): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jan): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure k; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//  end;
//
//  TJan = class(TJavaGenericImport<JanClass, Jan>) end;
//
////  Jao_aClass = interface(JObjectClass)
////  ['{3AABEE71-F599-4529-9FA8-557F38E305DF}']
////    { static Property Methods }
////    {class} function _Geta: Jao_a;
////    {class} function _Getb: Jao_a;
////    {class} function _Getc: Jao_a;
////    {class} function _Getd: Jao_a;
////    {class} function _Gete: Jao_a;
////    {class} function _Getf: Jao_a;
////    {class} function _Getg: Jao_a;
////    {class} function _Geth: Jao_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jao_a>; cdecl;
////    {class} function valueOf(P1: JString): Jao_a; cdecl;
////
////    { static Property }
////    {class} property a: Jao_a read _Geta;
////    {class} property b: Jao_a read _Getb;
////    {class} property c: Jao_a read _Getc;
////    {class} property d: Jao_a read _Getd;
////    {class} property e: Jao_a read _Gete;
////    {class} property f: Jao_a read _Getf;
////    {class} property g: Jao_a read _Getg;
////    {class} property h: Jao_a read _Geth;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/ao$a')]
////  Jao_a = interface(JObject)
////  ['{84A8E54D-8BE1-4AC1-A442-B7733DD48F53}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJao_a = class(TJavaGenericImport<Jao_aClass, Jao_a>) end;
//
//  JaoClass = interface(JObjectClass)
//  ['{C374B96A-BD6A-40AA-8C9D-EC1F582E5883}']
//    { static Property Methods }
//    {class} function _Geti: JMap;
//
//    { static Methods }
//    {class} function init: Jao; cdecl;
//
//    { static Property }
//    {class} property i: JMap read _Geti;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ao')]
//  Jao = interface(JObject)
//  ['{0ADB924C-52DF-430D-8DDD-3BF5F0304D36}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Jan;
//    procedure _Sete(ae: Jan);
//    function _Getf: Int64;
//    procedure _Setf(af: Int64);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function f: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function g: Boolean; cdecl;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jao): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jao): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure j; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Jan read _Gete write _Sete;
//    property f: Int64 read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//  end;
//
//  TJao = class(TJavaGenericImport<JaoClass, Jao>) end;
//
////  Jap_aClass = interface(JObjectClass)
////  ['{EFCCBEE2-6847-49C3-AA35-E1260C8F6D67}']
////    { static Property Methods }
////    {class} function _Geta: Jap_a;
////    {class} function _Getb: Jap_a;
////    {class} function _Getc: Jap_a;
////    {class} function _Getd: Jap_a;
////    {class} function _Gete: Jap_a;
////    {class} function _Getf: Jap_a;
////    {class} function _Getg: Jap_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jap_a>; cdecl;
////    {class} function valueOf(P1: JString): Jap_a; cdecl;
////
////    { static Property }
////    {class} property a: Jap_a read _Geta;
////    {class} property b: Jap_a read _Getb;
////    {class} property c: Jap_a read _Getc;
////    {class} property d: Jap_a read _Getd;
////    {class} property e: Jap_a read _Gete;
////    {class} property f: Jap_a read _Getf;
////    {class} property g: Jap_a read _Getg;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/ap$a')]
////  Jap_a = interface(JObject)
////  ['{D9116A34-84E4-43AA-992B-583501662BEA}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJap_a = class(TJavaGenericImport<Jap_aClass, Jap_a>) end;
//
//  JapClass = interface(JObjectClass)
//  ['{3B3B6F7D-5C6B-41C2-83F8-5E9033FC986E}']
//    { static Property Methods }
//    {class} function _Geth: JMap;
//
//    { static Methods }
//    {class} function init: Jap; cdecl;
//
//    { static Property }
//    {class} property h: JMap read _Geth;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ap')]
//  Jap = interface(JObject)
//  ['{F5B18AD2-099E-44BF-8E7F-9AD64F3EC355}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: JString): Jap; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function b(P1: JString): Jap; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function c(P1: JString): Jap; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    function d(P1: JString): Jap; cdecl; overload;
//    function f: Boolean; cdecl;
//    function e(P1: JString): Jap; cdecl; overload;
//    function g: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jap): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jap): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure h; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//  end;
//
//  TJap = class(TJavaGenericImport<JapClass, Jap>) end;
//
////  Jaq_aClass = interface(JObjectClass)
////  ['{F188C0E5-82A8-4554-9193-D4FE8A580C9F}']
////    { static Property Methods }
////    {class} function _Geta: Jaq_a;
////    {class} function _Getb: Jaq_a;
////    {class} function _Getc: Jaq_a;
////    {class} function _Getd: Jaq_a;
////    {class} function _Gete: Jaq_a;
////    {class} function _Getf: Jaq_a;
////    {class} function _Getg: Jaq_a;
////    {class} function _Geth: Jaq_a;
////    {class} function _Geti: Jaq_a;
////    {class} function _Getj: Jaq_a;
////
////    { static Methods }
////    {class} function values: TJavaObjectArray<Jaq_a>; cdecl;
////    {class} function valueOf(P1: JString): Jaq_a; cdecl;
////
////    { static Property }
////    {class} property a: Jaq_a read _Geta;
////    {class} property b: Jaq_a read _Getb;
////    {class} property c: Jaq_a read _Getc;
////    {class} property d: Jaq_a read _Getd;
////    {class} property e: Jaq_a read _Gete;
////    {class} property f: Jaq_a read _Getf;
////    {class} property g: Jaq_a read _Getg;
////    {class} property h: Jaq_a read _Geth;
////    {class} property i: Jaq_a read _Geti;
////    {class} property j: Jaq_a read _Getj;
////  end;
//
////  [JavaSignature('com/xiaomi/xmpush/thrift/aq$a')]
////  Jaq_a = interface(JObject)
////  ['{D14F326C-BFFB-4FCB-B4FD-E7E47853542B}']
////    { Property Methods }
////
////    { methods }
////    function a: JString; cdecl;
////
////    { Property }
////  end;
//
////  TJaq_a = class(TJavaGenericImport<Jaq_aClass, Jaq_a>) end;
//
//  JaqClass = interface(JObjectClass)
//  ['{18CEDDC0-3040-4628-A3A5-86A02E907BD9}']
//    { static Property Methods }
//    {class} function _Getk: JMap;
//
//    { static Methods }
//    {class} function init: Jaq; cdecl;
//
//    { static Property }
//    {class} property k: JMap read _Getk;
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/aq')]
//  Jaq = interface(JObject)
//  ['{BBA28B3B-3C43-4264-B8F9-53781B7CB5F2}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Jap;
//    procedure _Sete(ae: Jap);
//    function _Getf: Int64;
//    procedure _Setf(af: Int64);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function f: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function g: Boolean; cdecl;
//    function h: JString; cdecl;
//    function i: Boolean; cdecl;
//    function j: Boolean; cdecl;
//    function k: JString; cdecl;
//    function l: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jaq): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jaq): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure m; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Jap read _Gete write _Sete;
//    property f: Int64 read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//  end;
//
//  TJaq = class(TJavaGenericImport<JaqClass, Jaq>) end;
//
//  JarClass = interface(JObjectClass)
//  ['{610DAC20-947F-4D8F-9F55-D791E9A2F8A1}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: Ja): TJavaArray<Byte>; cdecl; overload;
//    {class} procedure a(P1: Ja; P2: TJavaArray<Byte>); cdecl; overload;
//    {class} function a(P1: JContext; P2: Jac): Word; cdecl; overload;
//    {class} function a(P1: Boolean; P2: Boolean; P3: Boolean): Word; cdecl; overload;
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/xiaomi/xmpush/thrift/ar')]
//  Jar = interface(JObject)
//  ['{E6E414FF-8FE4-4A56-9D76-9A9F98BFC602}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;
//
//  TJar = class(TJavaGenericImport<JarClass, Jar>) end;
//
//  JbClass = interface(JObjectClass)
//  ['{4E3EADC1-8F04-48CB-A0DD-BB1B277DCA72}']
//    { static Property Methods }
//    {class} function _Geta: Jb;
//    {class} function _Getb: Jb;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jb>; cdecl;
//    {class} function valueOf(P1: JString): Jb; cdecl;
//
//    { static Property }
//    {class} property a: Jb read _Geta;
//    {class} property b: Jb read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/b')]
//  Jb = interface(JObject)
//  ['{A891E15D-8849-4753-953A-32ABD2BAB2C7}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  Jc_aClass = interface(JObjectClass)
//  ['{9021A826-FCCB-4A9D-BCB1-6CAB6B40D20E}']
//    { static Property Methods }
//    {class} function _Geta: Jc_a;
//    {class} function _Getb: Jc_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jc_a>; cdecl;
//    {class} function valueOf(P1: JString): Jc_a; cdecl;
//
//    { static Property }
//    {class} property a: Jc_a read _Geta;
//    {class} property b: Jc_a read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/c$a')]
//  Jc_a = interface(JObject)
//  ['{05CE7384-AA7C-4134-BFB6-EA186322D32B}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJc_a = class(TJavaGenericImport<Jc_aClass, Jc_a>) end;

//  JcClass = interface(JObjectClass)
//  ['{9961DEA7-615E-4EB8-BA65-D6182C3504E9}']
//    { static Property Methods }
//    {class} function _Getc: JMap;
//
//    { static Methods }
//    {class} function init: Jc; cdecl;
//
//    { static Property }
//    {class} property c: JMap read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/c')]
//  Jc = interface(JObject)
//  ['{2DBE379E-90FD-4F64-AA45-1D64D5BC4C45}']
//    { Property Methods }
//    function _Geta: Integer;
//    procedure _Seta(aa: Integer);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//
//    { methods }
//    function a(P1: Integer): Jc; cdecl; overload;
//    function a: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function b(P1: Integer): Jc; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    procedure b(P1: Boolean); cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jc): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jc): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure c; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Integer read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  Jd_aClass = interface(JObjectClass)
//  ['{C2457E3B-F419-4960-9634-B007FA3B4B71}']
//    { static Property Methods }
//    {class} function _Geta: Jd_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jd_a>; cdecl;
//    {class} function valueOf(P1: JString): Jd_a; cdecl;
//
//    { static Property }
//    {class} property a: Jd_a read _Geta;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/d$a')]
//  Jd_a = interface(JObject)
//  ['{D9820AE8-2A8B-497C-BFD1-D734965A2EB2}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJd_a = class(TJavaGenericImport<Jd_aClass, Jd_a>) end;

//  JdClass = interface(JObjectClass)
//  ['{2D949F10-1561-4972-AA5E-E7AEFF426EE8}']
//    { static Property Methods }
//    {class} function _Getb: JMap;
//
//    { static Methods }
//    {class} function init: Jd; cdecl;
//
//    { static Property }
//    {class} property b: JMap read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/d')]
//  Jd = interface(JObject)
//  ['{68F1C7D2-7753-413C-AB27-712DE7D85B03}']
//    { Property Methods }
//    function _Geta: JList;
//    procedure _Seta(aa: JList);
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jd): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jd): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure c; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JList read _Geta write _Seta;
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  Je_aClass = interface(JObjectClass)
//  ['{DF84CBDB-FC85-43DF-AC87-D5587792F09F}']
//    { static Property Methods }
//    {class} function _Geta: Je_a;
//    {class} function _Getb: Je_a;
//    {class} function _Getc: Je_a;
//    {class} function _Getd: Je_a;
//    {class} function _Gete: Je_a;
//    {class} function _Getf: Je_a;
//    {class} function _Getg: Je_a;
//    {class} function _Geth: Je_a;
//    {class} function _Geti: Je_a;
//    {class} function _Getj: Je_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Je_a>; cdecl;
//    {class} function valueOf(P1: JString): Je_a; cdecl;
//
//    { static Property }
//    {class} property a: Je_a read _Geta;
//    {class} property b: Je_a read _Getb;
//    {class} property c: Je_a read _Getc;
//    {class} property d: Je_a read _Getd;
//    {class} property e: Je_a read _Gete;
//    {class} property f: Je_a read _Getf;
//    {class} property g: Je_a read _Getg;
//    {class} property h: Je_a read _Geth;
//    {class} property i: Je_a read _Geti;
//    {class} property j: Je_a read _Getj;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/e$a')]
//  Je_a = interface(JObject)
//  ['{9EA38112-3960-44DC-880D-BDEE09557E22}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJe_a = class(TJavaGenericImport<Je_aClass, Je_a>) end;

//  JeClass = interface(JObjectClass)
//  ['{4D7A7097-1EF8-4706-B646-931E41E4CD02}']
//    { static Property Methods }
//    {class} function _Getk: JMap;
//
//    { static Methods }
//    {class} function init: Je; cdecl;
//
//    { static Property }
//    {class} property k: JMap read _Getk;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/e')]
//  Je = interface(JObject)
//  ['{C751B474-7DC1-423D-85BB-0364FD7A1DE1}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: Int64;
//    procedure _Setd(ad: Int64);
//    function _Gete: Int64;
//    procedure _Sete(ae: Int64);
//    function _Getf: Boolean;
//    procedure _Setf(af: Boolean);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JMap;
//    procedure _Setj(aj: JMap);
//
//    { methods }
//    function a: JString; cdecl; overload;
//    function a(P1: JString): Je; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function b(P1: JString): Je; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function c(P1: JString): Je; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function a(P1: Int64): Je; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function f: Int64; cdecl; overload;
//    function b(P1: Int64): Je; cdecl; overload;
//    function g: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function c(P1: Boolean): Je; cdecl; overload;
//    function h: Boolean; cdecl;
//    procedure d(P1: Boolean); cdecl; overload;
//    function d(P1: JString): Je; cdecl; overload;
//    function i: Boolean; cdecl;
//    function j: JString; cdecl;
//    function e(P1: JString): Je; cdecl; overload;
//    function k: Boolean; cdecl;
//    function l: JString; cdecl;
//    function f(P1: JString): Je; cdecl; overload;
//    function m: Boolean; cdecl;
//    function n: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Je): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Je): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure o; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: Int64 read _Getd write _Setd;
//    property e: Int64 read _Gete write _Sete;
//    property f: Boolean read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JMap read _Getj write _Setj;
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{7088DEE5-9C6C-4A0D-85AB-300D49B66484}']
//    { static Property Methods }
//    {class} function _Geta: Jf;
//    {class} function _Getb: Jf;
//    {class} function _Getc: Jf;
//    {class} function _Getd: Jf;
//    {class} function _Gete: Jf;
//    {class} function _Getf: Jf;
//    {class} function _Getg: Jf;
//    {class} function _Geth: Jf;
//    {class} function _Geti: Jf;
//    {class} function _Getj: Jf;
//    {class} function _Getk: Jf;
//    {class} function _Getl: Jf;
//    {class} function _Getm: Jf;
//    {class} function _Getn: Jf;
//    {class} function _Geto: Jf;
//    {class} function _Getp: Jf;
//    {class} function _Getq: Jf;
//    {class} function _Getr: Jf;
//    {class} function _Gets: Jf;
//    {class} function _Gett: Jf;
//    {class} function _Getu: Jf;
//    {class} function _Getv: Jf;
//    {class} function _Getw: Jf;
//    {class} function _Getx: Jf;
//    {class} function _Gety: Jf;
//    {class} function _Getz: Jf;
//    {class} function _GetA: Jf;
//    {class} function _GetB: Jf;
//    {class} function _GetC: Jf;
//    {class} function _GetD: Jf;
//    {class} function _GetE: Jf;
//    {class} function _GetF: Jf;
//    {class} function _GetG: Jf;
//    {class} function _GetH: Jf;
//    {class} function _GetI: Jf;
//    {class} function _GetJ: Jf;
//    {class} function _GetK: Jf;
//    {class} function _GetL: Jf;
//    {class} function _GetM: Jf;
//    {class} function _GetN: Jf;
//    {class} function _GetO: Jf;
//    {class} function _GetP: Jf;
//    {class} function _GetQ: Jf;
//    {class} function _GetR: Jf;
//    {class} function _GetS: Jf;
//    {class} function _GetT: Jf;
//    {class} function _GetU: Jf;
//    {class} function _GetV: Jf;
//    {class} function _GetW: Jf;
//    {class} function _GetX: Jf;
//    {class} function _GetY: Jf;
//    {class} function _GetZ: Jf;
//    {class} function _Getaa: Jf;
//    {class} function _Getab: Jf;
//    {class} function _Getac: Jf;
//    {class} function _Getad: Jf;
//    {class} function _Getae: Jf;
//    {class} function _Getaf: Jf;
//    {class} function _Getag: Jf;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jf>; cdecl;
//    {class} function valueOf(P1: JString): Jf; cdecl;
//
//    { static Property }
//    {class} property a: Jf read _Geta;
//    {class} property b: Jf read _Getb;
//    {class} property c: Jf read _Getc;
//    {class} property d: Jf read _Getd;
//    {class} property e: Jf read _Gete;
//    {class} property f: Jf read _Getf;
//    {class} property g: Jf read _Getg;
//    {class} property h: Jf read _Geth;
//    {class} property i: Jf read _Geti;
//    {class} property j: Jf read _Getj;
//    {class} property k: Jf read _Getk;
//    {class} property l: Jf read _Getl;
//    {class} property m: Jf read _Getm;
//    {class} property n: Jf read _Getn;
//    {class} property o: Jf read _Geto;
//    {class} property p: Jf read _Getp;
//    {class} property q: Jf read _Getq;
//    {class} property r: Jf read _Getr;
//    {class} property s: Jf read _Gets;
//    {class} property t: Jf read _Gett;
//    {class} property u: Jf read _Getu;
//    {class} property v: Jf read _Getv;
//    {class} property w: Jf read _Getw;
//    {class} property x: Jf read _Getx;
//    {class} property y: Jf read _Gety;
//    {class} property z: Jf read _Getz;
//    {class} property A: Jf read _GetA;
//    {class} property B: Jf read _GetB;
//    {class} property C: Jf read _GetC;
//    {class} property D: Jf read _GetD;
//    {class} property E: Jf read _GetE;
//    {class} property F: Jf read _GetF;
//    {class} property G: Jf read _GetG;
//    {class} property H: Jf read _GetH;
//    {class} property I: Jf read _GetI;
//    {class} property J: Jf read _GetJ;
//    {class} property K: Jf read _GetK;
//    {class} property L: Jf read _GetL;
//    {class} property M: Jf read _GetM;
//    {class} property N: Jf read _GetN;
//    {class} property O: Jf read _GetO;
//    {class} property P: Jf read _GetP;
//    {class} property Q: Jf read _GetQ;
//    {class} property R: Jf read _GetR;
//    {class} property S: Jf read _GetS;
//    {class} property T: Jf read _GetT;
//    {class} property U: Jf read _GetU;
//    {class} property V: Jf read _GetV;
//    {class} property W: Jf read _GetW;
//    {class} property X: Jf read _GetX;
//    {class} property Y: Jf read _GetY;
//    {class} property Z: Jf read _GetZ;
//    {class} property aa: Jf read _Getaa;
//    {class} property ab: Jf read _Getab;
//    {class} property ac: Jf read _Getac;
//    {class} property ad: Jf read _Getad;
//    {class} property ae: Jf read _Getae;
//    {class} property af: Jf read _Getaf;
//    {class} property ag: Jf read _Getag;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/f')]
//  Jf = interface(JObject)
//  ['{84661289-D528-4992-A215-9BFD4AEB6CC7}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{A69AC58A-C02C-4B59-B58A-768680AAE6B9}']
//    { static Property Methods }
//    {class} function _Geta: Jg;
//    {class} function _Getb: Jg;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jg>; cdecl;
//    {class} function valueOf(P1: JString): Jg; cdecl;
//    {class} function a(P1: Integer): Jg; cdecl; overload;
//
//    { static Property }
//    {class} property a: Jg read _Geta;
//    {class} property b: Jg read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/g')]
//  Jg = interface(JObject)
//  ['{A895E91A-6F6E-495E-9F71-042897078D25}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{78E177AB-FB18-4634-AF72-B0AC5F1D24B2}']
//    { static Property Methods }
//    {class} function _Geta: Jh;
//    {class} function _Getb: Jh;
//    {class} function _Getc: Jh;
//    {class} function _Getd: Jh;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jh>; cdecl;
//    {class} function valueOf(P1: JString): Jh; cdecl;
//    {class} function a(P1: Integer): Jh; cdecl;
//
//    { static Property }
//    {class} property a: Jh read _Geta;
//    {class} property b: Jh read _Getb;
//    {class} property c: Jh read _Getc;
//    {class} property d: Jh read _Getd;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/h')]
//  Jh = interface(JObject)
//  ['{1F53CBBF-10E3-49DA-AE39-9752CB4598EB}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JiClass = interface(JObjectClass)
//  ['{6A5131DB-1FC4-485B-A622-F0A76CA8796B}']
//    { static Property Methods }
//    {class} function _Geta: Ji;
//    {class} function _Getb: Ji;
//    {class} function _Getc: Ji;
//    {class} function _Getd: Ji;
//    {class} function _Gete: Ji;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Ji>; cdecl;
//    {class} function valueOf(P1: JString): Ji; cdecl;
//    {class} function a(P1: Integer): Ji; cdecl; overload;
//
//    { static Property }
//    {class} property a: Ji read _Geta;
//    {class} property b: Ji read _Getb;
//    {class} property c: Ji read _Getc;
//    {class} property d: Ji read _Getd;
//    {class} property e: Ji read _Gete;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/i')]
//  Ji = interface(JObject)
//  ['{613CAE45-21DA-445B-808D-3C5B298F634A}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  Jj_aClass = interface(JObjectClass)
//  ['{9D19EAB7-078B-4E8C-9C5B-271FE012BB03}']
//    { static Property Methods }
//    {class} function _Geta: Jj_a;
//    {class} function _Getb: Jj_a;
//    {class} function _Getc: Jj_a;
//    {class} function _Getd: Jj_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jj_a>; cdecl;
//    {class} function valueOf(P1: JString): Jj_a; cdecl;
//
//    { static Property }
//    {class} property a: Jj_a read _Geta;
//    {class} property b: Jj_a read _Getb;
//    {class} property c: Jj_a read _Getc;
//    {class} property d: Jj_a read _Getd;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/j$a')]
//  Jj_a = interface(JObject)
//  ['{3FC0E4D2-016D-4C19-86C2-CFF517872F81}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJj_a = class(TJavaGenericImport<Jj_aClass, Jj_a>) end;

//  JjClass = interface(JObjectClass)
//  ['{2539AC1A-FFC5-4280-86A6-76A8D3B686E1}']
//    { static Property Methods }
//    {class} function _Gete: JMap;
//
//    { static Methods }
//    {class} function init: Jj; cdecl;
//
//    { static Property }
//    {class} property e: JMap read _Gete;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/j')]
//  Jj = interface(JObject)
//  ['{B240F1F1-1089-46AD-905C-9A7A909F57EC}']
//    { Property Methods }
//    function _Geta: Jm;
//    procedure _Seta(aa: Jm);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: Int64;
//    procedure _Setc(ac: Int64);
//    function _Getd: Double;
//    procedure _Setd(ad: Double);
//
//    { methods }
//    function a(P1: Jm): Jj; cdecl; overload;
//    function a: Boolean; cdecl; overload;
//    function a(P1: JString): Jj; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: Int64): Jj; cdecl; overload;
//    function c: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function a(P1: Double): Jj; cdecl; overload;
//    function d: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jj): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jj): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure e; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Jm read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: Int64 read _Getc write _Setc;
//    property d: Double read _Getd write _Setd;
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  Jk_aClass = interface(JObjectClass)
//  ['{2C61BEC0-FA80-4628-B8F5-F64527185839}']
//    { static Property Methods }
//    {class} function _Geta: Jk_a;
//    {class} function _Getb: Jk_a;
//    {class} function _Getc: Jk_a;
//    {class} function _Getd: Jk_a;
//    {class} function _Gete: Jk_a;
//    {class} function _Getf: Jk_a;
//    {class} function _Getg: Jk_a;
//    {class} function _Geth: Jk_a;
//    {class} function _Geti: Jk_a;
//    {class} function _Getj: Jk_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jk_a>; cdecl;
//    {class} function valueOf(P1: JString): Jk_a; cdecl;
//
//    { static Property }
//    {class} property a: Jk_a read _Geta;
//    {class} property b: Jk_a read _Getb;
//    {class} property c: Jk_a read _Getc;
//    {class} property d: Jk_a read _Getd;
//    {class} property e: Jk_a read _Gete;
//    {class} property f: Jk_a read _Getf;
//    {class} property g: Jk_a read _Getg;
//    {class} property h: Jk_a read _Geth;
//    {class} property i: Jk_a read _Geti;
//    {class} property j: Jk_a read _Getj;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/k$a')]
//  Jk_a = interface(JObject)
//  ['{C67AA9CE-BB04-4502-8D67-5EE44B73A6C0}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJk_a = class(TJavaGenericImport<Jk_aClass, Jk_a>) end;

//  JkClass = interface(JObjectClass)
//  ['{B0A07C97-FF75-4617-BFBD-87CC7046CA4F}']
//    { static Property Methods }
//    {class} function _Getk: JMap;
//
//    { static Methods }
//    {class} function init: Jk; cdecl;
//
//    { static Property }
//    {class} property k: JMap read _Getk;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/k')]
//  Jk = interface(JObject)
//  ['{1708D5B3-0DA2-451D-8882-03F99D9DAE90}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: Int64;
//    procedure _Setc(ac: Int64);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Int64;
//    procedure _Sete(ae: Int64);
//    function _Getf: Jl;
//    procedure _Setf(af: Jl);
//    function _Getg: Jm;
//    procedure _Setg(ag: Jm);
//    function _Geth: Double;
//    procedure _Seth(ah: Double);
//    function _Geti: JList;
//    procedure _Seti(ai: JList);
//    function _Getj: Ji;
//    procedure _Setj(aj: Ji);
//
//    { methods }
//    function a: JString; cdecl; overload;
//    function a(P1: JString): Jk; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: JString; cdecl; overload;
//    function b(P1: JString): Jk; cdecl; overload;
//    function d: Boolean; cdecl;
//    function e: Int64; cdecl;
//    function a(P1: Int64): Jk; cdecl; overload;
//    function f: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function g: JString; cdecl;
//    function c(P1: JString): Jk; cdecl; overload;
//    function h: Boolean; cdecl;
//    function i: Int64; cdecl;
//    function b(P1: Int64): Jk; cdecl; overload;
//    function j: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function k: Jl; cdecl;
//    function a(P1: Jl): Jk; cdecl; overload;
//    function l: Boolean; cdecl;
//    function m: Jm; cdecl;
//    function a(P1: Jm): Jk; cdecl; overload;
//    function n: Boolean; cdecl;
//    function o: Double; cdecl;
//    function a(P1: Double): Jk; cdecl; overload;
//    function p: Boolean; cdecl;
//    procedure c(P1: Boolean); cdecl; overload;
//    function q: JList; cdecl;
//    function a(P1: JList): Jk; cdecl; overload;
//    function r: Boolean; cdecl;
//    function s: Ji; cdecl;
//    function a(P1: Ji): Jk; cdecl; overload;
//    function t: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jk): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jk): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure u; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: Int64 read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Int64 read _Gete write _Sete;
//    property f: Jl read _Getf write _Setf;
//    property g: Jm read _Getg write _Setg;
//    property h: Double read _Geth write _Seth;
//    property i: JList read _Geti write _Seti;
//    property j: Ji read _Getj write _Setj;
//  end;

//  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

//  JlClass = interface(JObjectClass)
//  ['{1B63976B-B56F-4496-B0AF-C2AD47638893}']
//    { static Property Methods }
//    {class} function _Geta: Jl;
//    {class} function _Getb: Jl;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jl>; cdecl;
//    {class} function valueOf(P1: JString): Jl; cdecl;
//    {class} function a(P1: Integer): Jl; cdecl; overload;
//
//    { static Property }
//    {class} property a: Jl read _Geta;
//    {class} property b: Jl read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/l')]
//  Jl = interface(JObject)
//  ['{21C5C749-698E-4355-8D11-E3CD2CB7031B}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJl = class(TJavaGenericImport<JlClass, Jl>) end;

//  Jm_aClass = interface(JObjectClass)
//  ['{D718846E-D766-434A-9B30-6D5DE2583FAB}']
//    { static Property Methods }
//    {class} function _Geta: Jm_a;
//    {class} function _Getb: Jm_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jm_a>; cdecl;
//    {class} function valueOf(P1: JString): Jm_a; cdecl;
//
//    { static Property }
//    {class} property a: Jm_a read _Geta;
//    {class} property b: Jm_a read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/m$a')]
//  Jm_a = interface(JObject)
//  ['{50F54082-8ADE-4259-A644-D0BEBD85E8E6}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJm_a = class(TJavaGenericImport<Jm_aClass, Jm_a>) end;

//  JmClass = interface(JObjectClass)
//  ['{7AABAA0B-C392-401E-8A9B-390EB1AB49B1}']
//    { static Property Methods }
//    {class} function _Getc: JMap;
//
//    { static Methods }
//    {class} function init: Jm; cdecl;
//
//    { static Property }
//    {class} property c: JMap read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/m')]
//  Jm = interface(JObject)
//  ['{67183D39-C14C-45FB-8423-EC06BBF34FF3}']
//    { Property Methods }
//    function _Geta: Double;
//    procedure _Seta(aa: Double);
//    function _Getb: Double;
//    procedure _Setb(ab: Double);
//
//    { methods }
//    function a: Double; cdecl; overload;
//    function a(P1: Double): Jm; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function c: Double; cdecl;
//    function b(P1: Double): Jm; cdecl; overload;
//    function d: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jm): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jm): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure e; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Double read _Geta write _Seta;
//    property b: Double read _Getb write _Setb;
//  end;

//  TJm = class(TJavaGenericImport<JmClass, Jm>) end;

//  Jn_aClass = interface(JObjectClass)
//  ['{E8A63A57-F47B-489E-9BB9-7C48ED3BE253}']
//    { static Property Methods }
//    {class} function _Geta: Jn_a;
//    {class} function _Getb: Jn_a;
//    {class} function _Getc: Jn_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jn_a>; cdecl;
//    {class} function valueOf(P1: JString): Jn_a; cdecl;
//
//    { static Property }
//    {class} property a: Jn_a read _Geta;
//    {class} property b: Jn_a read _Getb;
//    {class} property c: Jn_a read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/n$a')]
//  Jn_a = interface(JObject)
//  ['{993876EC-532A-4688-8D90-58E3C1D4864B}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJn_a = class(TJavaGenericImport<Jn_aClass, Jn_a>) end;

//  JnClass = interface(JObjectClass)
//  ['{541C68EC-D735-41D0-8423-24074A3208B8}']
//    { static Property Methods }
//    {class} function _Getd: JMap;
//
//    { static Methods }
//    {class} function init: Jn; cdecl;
//
//    { static Property }
//    {class} property d: JMap read _Getd;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/n')]
//  Jn = interface(JObject)
//  ['{5D87FA35-83FA-46D9-AE4E-248A0981FBC8}']
//    { Property Methods }
//    function _Geta: JList;
//    procedure _Seta(aa: JList);
//    function _Getb: JList;
//    procedure _Setb(ab: JList);
//    function _Getc: Jj;
//    procedure _Setc(ac: Jj);
//
//    { methods }
//    function a(P1: JList): Jn; cdecl; overload;
//    function a: Boolean; cdecl; overload;
//    function b(P1: JList): Jn; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: Jj): Jn; cdecl; overload;
//    function c: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jn): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jn): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure d; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JList read _Geta write _Seta;
//    property b: JList read _Getb write _Setb;
//    property c: Jj read _Getc write _Setc;
//  end;

//  TJn = class(TJavaGenericImport<JnClass, Jn>) end;

//  Jo_aClass = interface(JObjectClass)
//  ['{DDD00393-BA95-4E64-8531-48478B0258B1}']
//    { static Property Methods }
//    {class} function _Geta: Jo_a;
//    {class} function _Getb: Jo_a;
//    {class} function _Getc: Jo_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jo_a>; cdecl;
//    {class} function valueOf(P1: JString): Jo_a; cdecl;
//
//    { static Property }
//    {class} property a: Jo_a read _Geta;
//    {class} property b: Jo_a read _Getb;
//    {class} property c: Jo_a read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/o$a')]
//  Jo_a = interface(JObject)
//  ['{754ADC69-4A09-4225-B472-3C9558C13098}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJo_a = class(TJavaGenericImport<Jo_aClass, Jo_a>) end;

//  JoClass = interface(JObjectClass)
//  ['{71A4FB1B-C90B-42FD-B7A5-72ACB46A7316}']
//    { static Property Methods }
//    {class} function _Getd: JMap;
//
//    { static Methods }
//    {class} function init: Jo; cdecl;
//
//    { static Property }
//    {class} property d: JMap read _Getd;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/o')]
//  Jo = interface(JObject)
//  ['{9C5D5F37-F55C-4392-8D60-C774BD805467}']
//    { Property Methods }
//    function _Geta: Integer;
//    procedure _Seta(aa: Integer);
//    function _Getb: JList;
//    procedure _Setb(ab: JList);
//    function _Getc: Jg;
//    procedure _Setc(ac: Jg);
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Jg; cdecl;
//    function e: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jo): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jo): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure f; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Integer read _Geta write _Seta;
//    property b: JList read _Getb write _Setb;
//    property c: Jg read _Getc write _Setc;
//  end;

//  TJo = class(TJavaGenericImport<JoClass, Jo>) end;

//  JpClass = interface(JObjectClass)
//  ['{0C4C1A5C-2329-431A-8F7E-E910929B7006}']
//    { static Property Methods }
//    {class} function _Geta: Jp;
//    {class} function _Getb: Jp;
//    {class} function _Getc: Jp;
//    {class} function _Getd: Jp;
//    {class} function _Gete: Jp;
//    {class} function _Getf: Jp;
//    {class} function _Getg: Jp;
//    {class} function _Geth: Jp;
//    {class} function _Geti: Jp;
//    {class} function _Getj: Jp;
//    {class} function _Getk: Jp;
//    {class} function _Getl: Jp;
//    {class} function _Getm: Jp;
//    {class} function _Getn: Jp;
//    {class} function _Geto: Jp;
//    {class} function _Getp: Jp;
//    {class} function _Getq: Jp;
//    {class} function _Getr: Jp;
//    {class} function _Gets: Jp;
//    {class} function _Gett: Jp;
//    {class} function _Getu: Jp;
//    {class} function _Getv: Jp;
//    {class} function _Getw: Jp;
//    {class} function _Getx: Jp;
//    {class} function _Gety: Jp;
//    {class} function _Getz: Jp;
//    {class} function _GetA: Jp;
//    {class} function _GetB: Jp;
//    {class} function _GetC: Jp;
//    {class} function _GetD: Jp;
//    {class} function _GetE: Jp;
//    {class} function _GetF: Jp;
//    {class} function _GetG: Jp;
//    {class} function _GetH: Jp;
//    {class} function _GetI: Jp;
//    {class} function _GetJ: Jp;
//    {class} function _GetK: Jp;
//    {class} function _GetL: Jp;
//    {class} function _GetM: Jp;
//    {class} function _GetN: Jp;
//    {class} function _GetO: Jp;
//    {class} function _GetP: Jp;
//    {class} function _GetQ: Jp;
//    {class} function _GetR: Jp;
//    {class} function _GetS: Jp;
//    {class} function _GetU: JMap;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jp>; cdecl;
//    {class} function valueOf(P1: JString): Jp; cdecl;
//
//    { static Property }
//    {class} property a: Jp read _Geta;
//    {class} property b: Jp read _Getb;
//    {class} property c: Jp read _Getc;
//    {class} property d: Jp read _Getd;
//    {class} property e: Jp read _Gete;
//    {class} property f: Jp read _Getf;
//    {class} property g: Jp read _Getg;
//    {class} property h: Jp read _Geth;
//    {class} property i: Jp read _Geti;
//    {class} property j: Jp read _Getj;
//    {class} property k: Jp read _Getk;
//    {class} property l: Jp read _Getl;
//    {class} property m: Jp read _Getm;
//    {class} property n: Jp read _Getn;
//    {class} property o: Jp read _Geto;
//    {class} property p: Jp read _Getp;
//    {class} property q: Jp read _Getq;
//    {class} property r: Jp read _Getr;
//    {class} property s: Jp read _Gets;
//    {class} property t: Jp read _Gett;
//    {class} property u: Jp read _Getu;
//    {class} property v: Jp read _Getv;
//    {class} property w: Jp read _Getw;
//    {class} property x: Jp read _Getx;
//    {class} property y: Jp read _Gety;
//    {class} property z: Jp read _Getz;
//    {class} property A: Jp read _GetA;
//    {class} property B: Jp read _GetB;
//    {class} property C: Jp read _GetC;
//    {class} property D: Jp read _GetD;
//    {class} property E: Jp read _GetE;
//    {class} property F: Jp read _GetF;
//    {class} property G: Jp read _GetG;
//    {class} property H: Jp read _GetH;
//    {class} property I: Jp read _GetI;
//    {class} property J: Jp read _GetJ;
//    {class} property K: Jp read _GetK;
//    {class} property L: Jp read _GetL;
//    {class} property M: Jp read _GetM;
//    {class} property N: Jp read _GetN;
//    {class} property O: Jp read _GetO;
//    {class} property P: Jp read _GetP;
//    {class} property Q: Jp read _GetQ;
//    {class} property R: Jp read _GetR;
//    {class} property S: Jp read _GetS;
//    {class} property U: JMap read _GetU;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/p')]
//  Jp = interface(JObject)
//  ['{310B305E-8464-44C8-887F-D5B489869034}']
//    { Property Methods }
//    function _GetT: JString;
//    procedure _SetT(aT: JString);
//
//    { methods }
//    function toString: JString; cdecl;
//
//    { Property }
//    property T: JString read _GetT write _SetT;
//  end;

//  TJp = class(TJavaGenericImport<JpClass, Jp>) end;

//  Jq_aClass = interface(JObjectClass)
//  ['{F6D97A2F-9BAD-41ED-8125-47D51E967F74}']
//    { static Property Methods }
//    {class} function _Geta: Jq_a;
//    {class} function _Getb: Jq_a;
//    {class} function _Getc: Jq_a;
//    {class} function _Getd: Jq_a;
//    {class} function _Gete: Jq_a;
//    {class} function _Getf: Jq_a;
//    {class} function _Getg: Jq_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jq_a>; cdecl;
//    {class} function valueOf(P1: JString): Jq_a; cdecl;
//
//    { static Property }
//    {class} property a: Jq_a read _Geta;
//    {class} property b: Jq_a read _Getb;
//    {class} property c: Jq_a read _Getc;
//    {class} property d: Jq_a read _Getd;
//    {class} property e: Jq_a read _Gete;
//    {class} property f: Jq_a read _Getf;
//    {class} property g: Jq_a read _Getg;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/q$a')]
//  Jq_a = interface(JObject)
//  ['{2FB36060-FFE3-4626-B0CC-565A49E4B094}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJq_a = class(TJavaGenericImport<Jq_aClass, Jq_a>) end;

//  JqClass = interface(JObjectClass)
//  ['{4908F1A6-A0C0-476F-86EB-01B91A660B5D}']
//    { static Property Methods }
//    {class} function _Geth: JMap;
//
//    { static Methods }
//    {class} function init: Jq; cdecl;
//
//    { static Property }
//    {class} property h: JMap read _Geth;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/q')]
//  Jq = interface(JObject)
//  ['{DFF56509-5928-4C17-912D-9A07A0D262B7}']
//    { Property Methods }
//    function _Geta: Integer;
//    procedure _Seta(aa: Integer);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//    function _Getc: Boolean;
//    procedure _Setc(ac: Boolean);
//    function _Getd: Integer;
//    procedure _Setd(ad: Integer);
//    function _Gete: Int64;
//    procedure _Sete(ae: Int64);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: Boolean;
//    procedure _Setg(ag: Boolean);
//
//    { methods }
//    function a: Integer; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function c: Integer; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    procedure b(P1: Boolean); cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    procedure c(P1: Boolean); cdecl; overload;
//    function f: Integer; cdecl; overload;
//    function g: Boolean; cdecl;
//    procedure d(P1: Boolean); cdecl; overload;
//    function h: Int64; cdecl;
//    function i: Boolean; cdecl;
//    procedure e(P1: Boolean); cdecl; overload;
//    function j: JString; cdecl;
//    function k: Boolean; cdecl;
//    function l: Boolean; cdecl;
//    function m: Boolean; cdecl;
//    procedure f(P1: Boolean); cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jq): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jq): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure n; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Integer read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//    property c: Boolean read _Getc write _Setc;
//    property d: Integer read _Getd write _Setd;
//    property e: Int64 read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: Boolean read _Getg write _Setg;
//  end;

//  TJq = class(TJavaGenericImport<JqClass, Jq>) end;

//  Jr_aClass = interface(JObjectClass)
//  ['{BE55DE3D-8D2E-4B94-A593-7BEE8E552095}']
//    { static Property Methods }
//    {class} function _Geta: Jr_a;
//    {class} function _Getb: Jr_a;
//    {class} function _Getc: Jr_a;
//    {class} function _Getd: Jr_a;
//    {class} function _Gete: Jr_a;
//    {class} function _Getf: Jr_a;
//    {class} function _Getg: Jr_a;
//    {class} function _Geth: Jr_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jr_a>; cdecl;
//    {class} function valueOf(P1: JString): Jr_a; cdecl;
//
//    { static Property }
//    {class} property a: Jr_a read _Geta;
//    {class} property b: Jr_a read _Getb;
//    {class} property c: Jr_a read _Getc;
//    {class} property d: Jr_a read _Getd;
//    {class} property e: Jr_a read _Gete;
//    {class} property f: Jr_a read _Getf;
//    {class} property g: Jr_a read _Getg;
//    {class} property h: Jr_a read _Geth;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/r$a')]
//  Jr_a = interface(JObject)
//  ['{BC3D29EA-E2BB-4710-8874-33E9680581DB}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJr_a = class(TJavaGenericImport<Jr_aClass, Jr_a>) end;

//  JrClass = interface(JObjectClass)
//  ['{AF28657F-5B08-4FB7-9D00-C72003E99418}']
//    { static Property Methods }
//    {class} function _Geti: JMap;
//
//    { static Methods }
//    {class} function init: Jr; cdecl;
//
//    { static Property }
//    {class} property i: JMap read _Geti;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/r')]
//  Jr = interface(JObject)
//  ['{8B5AA9EB-4833-474F-97C7-3AC03E3B8560}']
//    { Property Methods }
//    function _Geta: Jv;
//    procedure _Seta(aa: Jv);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Int64;
//    procedure _Sete(ae: Int64);
//    function _Getf: Int64;
//    procedure _Setf(af: Int64);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: JString; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: JString; cdecl;
//    function e: Boolean; cdecl;
//    function f: JString; cdecl;
//    function g: Boolean; cdecl;
//    function h: Int64; cdecl;
//    function i: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function j: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function k: Boolean; cdecl;
//    function l: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jr): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jr): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure m; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Jv read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Int64 read _Gete write _Sete;
//    property f: Int64 read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//  end;

//  TJr = class(TJavaGenericImport<JrClass, Jr>) end;

//  Js_aClass = interface(JObjectClass)
//  ['{B53E4807-B948-4A97-8421-5648DB26B5D1}']
//    { static Property Methods }
//    {class} function _Geta: Js_a;
//    {class} function _Getb: Js_a;
//    {class} function _Getc: Js_a;
//    {class} function _Getd: Js_a;
//    {class} function _Gete: Js_a;
//    {class} function _Getf: Js_a;
//    {class} function _Getg: Js_a;
//    {class} function _Geth: Js_a;
//    {class} function _Geti: Js_a;
//    {class} function _Getj: Js_a;
//    {class} function _Getk: Js_a;
//    {class} function _Getl: Js_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Js_a>; cdecl;
//    {class} function valueOf(P1: JString): Js_a; cdecl;
//
//    { static Property }
//    {class} property a: Js_a read _Geta;
//    {class} property b: Js_a read _Getb;
//    {class} property c: Js_a read _Getc;
//    {class} property d: Js_a read _Getd;
//    {class} property e: Js_a read _Gete;
//    {class} property f: Js_a read _Getf;
//    {class} property g: Js_a read _Getg;
//    {class} property h: Js_a read _Geth;
//    {class} property i: Js_a read _Geti;
//    {class} property j: Js_a read _Getj;
//    {class} property k: Js_a read _Getk;
//    {class} property l: Js_a read _Getl;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/s$a')]
//  Js_a = interface(JObject)
//  ['{897E4DAE-9FAF-4988-ABC1-BB1145368D68}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJs_a = class(TJavaGenericImport<Js_aClass, Js_a>) end;

//  JsClass = interface(JObjectClass)
//  ['{7D5EDA29-9AB8-418A-A2D9-EC2B460629D5}']
//    { static Property Methods }
//    {class} function _Getm: JMap;
//
//    { static Methods }
//    {class} function init: Js; cdecl; overload;
//    {class} function init(P1: Js): Js; cdecl; overload;
//
//    { static Property }
//    {class} property m: JMap read _Getm;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/s')]
//  Js = interface(JObject)
//  ['{8EAF7A1D-0C74-407F-B4D4-11EAEC7C5D82}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Int64;
//    procedure _Setb(ab: Int64);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: Integer;
//    procedure _Setf(af: Integer);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: Integer;
//    procedure _Seth(ah: Integer);
//    function _Geti: Integer;
//    procedure _Seti(ai: Integer);
//    function _Getj: JMap;
//    procedure _Setj(aj: JMap);
//    function _Getk: JMap;
//    procedure _Setk(ak: JMap);
//    function _Getl: Boolean;
//    procedure _Setl(al: Boolean);
//
//    { methods }
//    function a: Js; cdecl; overload;
//    function b: JString; cdecl; overload;
//    function a(P1: JString): Js; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function d: Int64; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function f: JString; cdecl;
//    function b(P1: JString): Js; cdecl; overload;
//    function g: Boolean; cdecl;
//    function h: JString; cdecl;
//    function c(P1: JString): Js; cdecl; overload;
//    function i: Boolean; cdecl;
//    function j: JString; cdecl;
//    function d(P1: JString): Js; cdecl; overload;
//    function k: Boolean; cdecl;
//    function l: Integer; cdecl;
//    function a(P1: Integer): Js; cdecl; overload;
//    function m: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function n: Boolean; cdecl;
//    function o: Integer; cdecl;
//    function b(P1: Integer): Js; cdecl; overload;
//    function p: Boolean; cdecl;
//    procedure c(P1: Boolean); cdecl; overload;
//    function q: Integer; cdecl;
//    function c(P1: Integer): Js; cdecl; overload;
//    function r: Boolean; cdecl;
//    procedure d(P1: Boolean); cdecl; overload;
//    procedure a(P1: JString; P2: JString); cdecl; overload;
//    function s: JMap; cdecl;
//    function a(P1: JMap): Js; cdecl; overload;
//    function t: Boolean; cdecl;
//    procedure b(P1: JString; P2: JString); cdecl; overload;
//    function u: JMap; cdecl;
//    function v: Boolean; cdecl;
//    function w: Boolean; cdecl;
//    function x: Boolean; cdecl;
//    procedure e(P1: Boolean); cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Js): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Js): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure y; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Int64 read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: Integer read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: Integer read _Geth write _Seth;
//    property i: Integer read _Geti write _Seti;
//    property j: JMap read _Getj write _Setj;
//    property k: JMap read _Getk write _Setk;
//    property l: Boolean read _Getl write _Setl;
//  end;

//  TJs = class(TJavaGenericImport<JsClass, Js>) end;

//  Jt_aClass = interface(JObjectClass)
//  ['{461D2BD3-B8C5-45EA-A100-313FC3A0C56A}']
//    { static Property Methods }
//    {class} function _Geta: Jt_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jt_a>; cdecl;
//    {class} function valueOf(P1: JString): Jt_a; cdecl;
//
//    { static Property }
//    {class} property a: Jt_a read _Geta;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/t$a')]
//  Jt_a = interface(JObject)
//  ['{2DDA021D-B617-4AE4-BFA4-A8584CE640C6}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJt_a = class(TJavaGenericImport<Jt_aClass, Jt_a>) end;

//  JtClass = interface(JObjectClass)
//  ['{4482544F-11A8-4665-BD82-38457A36ECAE}']
//    { static Property Methods }
//    {class} function _Getb: JMap;
//
//    { static Methods }
//    {class} function init: Jt; cdecl;
//
//    { static Property }
//    {class} property b: JMap read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/t')]
//  Jt = interface(JObject)
//  ['{7AB1B580-293E-40B7-A889-DC4A2B0CB699}']
//    { Property Methods }
//    function _Geta: JSet;
//    procedure _Seta(aa: JSet);
//
//    { methods }
//    function a: JSet; cdecl; overload;
//    function a(P1: JSet): Jt; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jt): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jt): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure c; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JSet read _Geta write _Seta;
//  end;

//  TJt = class(TJavaGenericImport<JtClass, Jt>) end;

//  JuClass = interface(JObjectClass)
//  ['{F818DC4B-D467-4EBA-94A8-82FC1A81B240}']
//    { static Property Methods }
//    {class} function _Geta: Ju;
//    {class} function _Getb: Ju;
//    {class} function _Getc: Ju;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Ju>; cdecl;
//    {class} function valueOf(P1: JString): Ju; cdecl;
//    {class} function a(P1: Integer): Ju; cdecl; overload;
//
//    { static Property }
//    {class} property a: Ju read _Geta;
//    {class} property b: Ju read _Getb;
//    {class} property c: Ju read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/u')]
//  Ju = interface(JObject)
//  ['{C4B7CFA4-6591-43B8-8CAE-13CDB7DC43D8}']
//    { Property Methods }
//
//    { methods }
//    function a: Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJu = class(TJavaGenericImport<JuClass, Ju>) end;

//  Jv_aClass = interface(JObjectClass)
//  ['{7FF922D6-7675-4EB3-8AEF-E2895E9AD73F}']
//    { static Property Methods }
//    {class} function _Geta: Jv_a;
//    {class} function _Getb: Jv_a;
//    {class} function _Getc: Jv_a;
//    {class} function _Getd: Jv_a;
//    {class} function _Gete: Jv_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jv_a>; cdecl;
//    {class} function valueOf(P1: JString): Jv_a; cdecl;
//
//    { static Property }
//    {class} property a: Jv_a read _Geta;
//    {class} property b: Jv_a read _Getb;
//    {class} property c: Jv_a read _Getc;
//    {class} property d: Jv_a read _Getd;
//    {class} property e: Jv_a read _Gete;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/v$a')]
//  Jv_a = interface(JObject)
//  ['{B4CA8291-5744-4A01-ACFE-F3F06C3B058A}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJv_a = class(TJavaGenericImport<Jv_aClass, Jv_a>) end;

//  JvClass = interface(JObjectClass)
//  ['{13F9AE3E-BBCE-47AE-88C3-AAAF60F92742}']
//    { static Property Methods }
//    {class} function _Getf: JMap;
//
//    { static Methods }
//    {class} function init: Jv; cdecl;
//
//    { static Property }
//    {class} property f: JMap read _Getf;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/v')]
//  Jv = interface(JObject)
//  ['{413116DF-170C-491B-BFDE-5DEA7381B52D}']
//    { Property Methods }
//    function _Geta: Int64;
//    procedure _Seta(aa: Int64);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Boolean;
//    procedure _Sete(ae: Boolean);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: Boolean; cdecl;
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jv): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jv): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure f; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Int64 read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Boolean read _Gete write _Sete;
//  end;

//  TJv = class(TJavaGenericImport<JvClass, Jv>) end;

//  Jw_aClass = interface(JObjectClass)
//  ['{DB07170D-446C-4AD7-B71C-AAF17FFC166C}']
//    { static Property Methods }
//    {class} function _Geta: Jw_a;
//    {class} function _Getb: Jw_a;
//    {class} function _Getc: Jw_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jw_a>; cdecl;
//    {class} function valueOf(P1: JString): Jw_a; cdecl;
//
//    { static Property }
//    {class} property a: Jw_a read _Geta;
//    {class} property b: Jw_a read _Getb;
//    {class} property c: Jw_a read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/w$a')]
//  Jw_a = interface(JObject)
//  ['{D2F0266E-12F7-415E-AF40-4555867FB74D}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJw_a = class(TJavaGenericImport<Jw_aClass, Jw_a>) end;

//  JwClass = interface(JObjectClass)
//  ['{442228B2-6935-41FC-AE16-025A12BB921E}']
//    { static Property Methods }
//    {class} function _Getd: JMap;
//
//    { static Methods }
//    {class} function init: Jw; cdecl;
//
//    { static Property }
//    {class} property d: JMap read _Getd;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/w')]
//  Jw = interface(JObject)
//  ['{0D877BDD-ED11-438E-A5D3-6657E5690149}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//
//    { methods }
//    function a(P1: JString): Jw; cdecl; overload;
//    function a: Boolean; cdecl; overload;
//    function a(P1: Integer): Jw; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function b(P1: JString): Jw; cdecl; overload;
//    function c: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jw): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jw): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure d; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//  end;

//  TJw = class(TJavaGenericImport<JwClass, Jw>) end;

//  Jx_aClass = interface(JObjectClass)
//  ['{86953446-254D-4D23-BAD5-5F2CBCF23CA2}']
//    { static Property Methods }
//    {class} function _Geta: Jx_a;
//    {class} function _Getb: Jx_a;
//    {class} function _Getc: Jx_a;
//    {class} function _Getd: Jx_a;
//    {class} function _Gete: Jx_a;
//    {class} function _Getf: Jx_a;
//    {class} function _Getg: Jx_a;
//    {class} function _Geth: Jx_a;
//    {class} function _Geti: Jx_a;
//    {class} function _Getj: Jx_a;
//    {class} function _Getk: Jx_a;
//    {class} function _Getl: Jx_a;
//    {class} function _Getm: Jx_a;
//    {class} function _Getn: Jx_a;
//    {class} function _Geto: Jx_a;
//    {class} function _Getp: Jx_a;
//    {class} function _Getq: Jx_a;
//    {class} function _Getr: Jx_a;
//    {class} function _Gets: Jx_a;
//    {class} function _Gett: Jx_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jx_a>; cdecl;
//    {class} function valueOf(P1: JString): Jx_a; cdecl;
//
//    { static Property }
//    {class} property a: Jx_a read _Geta;
//    {class} property b: Jx_a read _Getb;
//    {class} property c: Jx_a read _Getc;
//    {class} property d: Jx_a read _Getd;
//    {class} property e: Jx_a read _Gete;
//    {class} property f: Jx_a read _Getf;
//    {class} property g: Jx_a read _Getg;
//    {class} property h: Jx_a read _Geth;
//    {class} property i: Jx_a read _Geti;
//    {class} property j: Jx_a read _Getj;
//    {class} property k: Jx_a read _Getk;
//    {class} property l: Jx_a read _Getl;
//    {class} property m: Jx_a read _Getm;
//    {class} property n: Jx_a read _Getn;
//    {class} property o: Jx_a read _Geto;
//    {class} property p: Jx_a read _Getp;
//    {class} property q: Jx_a read _Getq;
//    {class} property r: Jx_a read _Getr;
//    {class} property s: Jx_a read _Gets;
//    {class} property t: Jx_a read _Gett;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/x$a')]
//  Jx_a = interface(JObject)
//  ['{64C6FA10-42AF-4A94-8AB3-61E66832C02F}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJx_a = class(TJavaGenericImport<Jx_aClass, Jx_a>) end;

//  JxClass = interface(JObjectClass)
//  ['{6C721AA9-CF7E-424E-B946-35969007FDBA}']
//    { static Property Methods }
//    {class} function _Getu: JMap;
//
//    { static Methods }
//    {class} function init: Jx; cdecl;
//
//    { static Property }
//    {class} property u: JMap read _Getu;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/x')]
//  Jx = interface(JObject)
//  ['{3116130C-2662-43F7-A92E-34BD9CCF4913}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: Int64;
//    procedure _Sete(ae: Int64);
//    function _Getf: JString;
//    procedure _Setf(af: JString);
//    function _Getg: JString;
//    procedure _Setg(ag: JString);
//    function _Geth: Jak;
//    procedure _Seth(ah: Jak);
//    function _Geti: JString;
//    procedure _Seti(ai: JString);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//    function _Getk: Boolean;
//    procedure _Setk(ak: Boolean);
//    function _Getl: JString;
//    procedure _Setl(al: JString);
//    function _Getm: JString;
//    procedure _Setm(am: JString);
//    function _Getn: JString;
//    procedure _Setn(an: JString);
//    function _Geto: Word;
//    procedure _Seto(ao: Word);
//    function _Getp: Word;
//    procedure _Setp(ap: Word);
//    function _Getq: JString;
//    procedure _Setq(aq: JString);
//    function _Getr: JString;
//    procedure _Setr(ar: JString);
//    function _Gets: Integer;
//    procedure _Sets(as: Integer);
//    function _Gett: JMap;
//    procedure _Sett(at: JMap);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function a(P1: JString): Jx; cdecl; overload;
//    function c: Boolean; cdecl; overload;
//    function b(P1: JString): Jx; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    function a(P1: Int64): Jx; cdecl; overload;
//    function e: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function c(P1: JString): Jx; cdecl; overload;
//    function f: Boolean; cdecl;
//    function d(P1: JString): Jx; cdecl; overload;
//    function g: Boolean; cdecl;
//    function h: Boolean; cdecl;
//    function i: Boolean; cdecl;
//    function j: Boolean; cdecl;
//    function k: Boolean; cdecl;
//    procedure b(P1: Boolean); cdecl; overload;
//    function l: Boolean; cdecl;
//    function m: Boolean; cdecl;
//    function n: Boolean; cdecl;
//    function a(P1: Word): Jx; cdecl; overload;
//    function o: Boolean; cdecl;
//    procedure c(P1: Boolean); cdecl; overload;
//    function b(P1: Word): Jx; cdecl; overload;
//    function p: Boolean; cdecl;
//    procedure d(P1: Boolean); cdecl; overload;
//    function q: Boolean; cdecl;
//    function r: Boolean; cdecl;
//    function s: Boolean; cdecl;
//    procedure e(P1: Boolean); cdecl; overload;
//    function t: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jx): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jx): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure u; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: Int64 read _Gete write _Sete;
//    property f: JString read _Getf write _Setf;
//    property g: JString read _Getg write _Setg;
//    property h: Jak read _Geth write _Seth;
//    property i: JString read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//    property k: Boolean read _Getk write _Setk;
//    property l: JString read _Getl write _Setl;
//    property m: JString read _Getm write _Setm;
//    property n: JString read _Getn write _Setn;
//    property o: Word read _Geto write _Seto;
//    property p: Word read _Getp write _Setp;
//    property q: JString read _Getq write _Setq;
//    property r: JString read _Getr write _Setr;
//    property s: Integer read _Gets write _Sets;
//    property t: JMap read _Gett write _Sett;
//  end;

//  TJx = class(TJavaGenericImport<JxClass, Jx>) end;

//  Jy_aClass = interface(JObjectClass)
//  ['{30B7C72F-D0BC-48E7-A153-C036E91FA70D}']
//    { static Property Methods }
//    {class} function _Geta: Jy_a;
//    {class} function _Getb: Jy_a;
//    {class} function _Getc: Jy_a;
//    {class} function _Getd: Jy_a;
//    {class} function _Gete: Jy_a;
//    {class} function _Getf: Jy_a;
//    {class} function _Getg: Jy_a;
//    {class} function _Geth: Jy_a;
//    {class} function _Geti: Jy_a;
//    {class} function _Getj: Jy_a;
//    {class} function _Getk: Jy_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jy_a>; cdecl;
//    {class} function valueOf(P1: JString): Jy_a; cdecl;
//
//    { static Property }
//    {class} property a: Jy_a read _Geta;
//    {class} property b: Jy_a read _Getb;
//    {class} property c: Jy_a read _Getc;
//    {class} property d: Jy_a read _Getd;
//    {class} property e: Jy_a read _Gete;
//    {class} property f: Jy_a read _Getf;
//    {class} property g: Jy_a read _Getg;
//    {class} property h: Jy_a read _Geth;
//    {class} property i: Jy_a read _Geti;
//    {class} property j: Jy_a read _Getj;
//    {class} property k: Jy_a read _Getk;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/y$a')]
//  Jy_a = interface(JObject)
//  ['{2AA94031-E078-405D-A4FB-874EFA2DF22F}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJy_a = class(TJavaGenericImport<Jy_aClass, Jy_a>) end;

//  JyClass = interface(JObjectClass)
//  ['{740B9E90-03B4-49E2-A600-9F9D09DD4081}']
//    { static Property Methods }
//    {class} function _Getl: JMap;
//
//    { static Methods }
//    {class} function init: Jy; cdecl;
//
//    { static Property }
//    {class} property l: JMap read _Getl;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/y')]
//  Jy = interface(JObject)
//  ['{E365339A-3514-4258-8CC7-44F5119AAA54}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Jv;
//    procedure _Setb(ab: Jv);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//    function _Getf: Jaf;
//    procedure _Setf(af: Jaf);
//    function _Getg: Int64;
//    procedure _Setg(ag: Int64);
//    function _Geth: JString;
//    procedure _Seth(ah: JString);
//    function _Geti: JMap;
//    procedure _Seti(ai: JMap);
//    function _Getj: JString;
//    procedure _Setj(aj: JString);
//    function _Getk: JString;
//    procedure _Setk(ak: JString);
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    function c: JString; cdecl;
//    function d: Boolean; cdecl;
//    function e: Boolean; cdecl;
//    function f: Boolean; cdecl;
//    function g: Boolean; cdecl;
//    function h: Boolean; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    function i: Boolean; cdecl;
//    function j: Boolean; cdecl;
//    function k: Boolean; cdecl;
//    function l: Boolean; cdecl;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jy): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jy): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure m; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Jv read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//    property f: Jaf read _Getf write _Setf;
//    property g: Int64 read _Getg write _Setg;
//    property h: JString read _Geth write _Seth;
//    property i: JMap read _Geti write _Seti;
//    property j: JString read _Getj write _Setj;
//    property k: JString read _Getk write _Setk;
//  end;

//  TJy = class(TJavaGenericImport<JyClass, Jy>) end;

//  Jz_aClass = interface(JObjectClass)
//  ['{A76678B2-3613-442A-AC01-6A9454E97E77}']
//    { static Property Methods }
//    {class} function _Geta: Jz_a;
//    {class} function _Getb: Jz_a;
//
//    { static Methods }
//    {class} function values: TJavaObjectArray<Jz_a>; cdecl;
//    {class} function valueOf(P1: JString): Jz_a; cdecl;
//
//    { static Property }
//    {class} property a: Jz_a read _Geta;
//    {class} property b: Jz_a read _Getb;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/z$a')]
//  Jz_a = interface(JObject)
//  ['{CCA9044F-7D98-4096-A49B-D82F36D309FE}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl;
//
//    { Property }
//  end;

//  TJz_a = class(TJavaGenericImport<Jz_aClass, Jz_a>) end;

//  JzClass = interface(JObjectClass)
//  ['{C1494226-FAA5-4989-8336-036035D683FA}']
//    { static Property Methods }
//    {class} function _Getc: JMap;
//
//    { static Methods }
//    {class} function init: Jz; cdecl;
//
//    { static Property }
//    {class} property c: JMap read _Getc;
//  end;

//  [JavaSignature('com/xiaomi/xmpush/thrift/z')]
//  Jz = interface(JObject)
//  ['{D9CE32E8-50C7-456F-B2E0-ED2EA41667F5}']
//    { Property Methods }
//    function _Geta: Integer;
//    procedure _Seta(aa: Integer);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//
//    { methods }
//    function a(P1: Integer): Jz; cdecl; overload;
//    function a: Boolean; cdecl; overload;
//    procedure a(P1: Boolean); cdecl; overload;
//    function b(P1: Integer): Jz; cdecl; overload;
//    function b: Boolean; cdecl; overload;
//    procedure b(P1: Boolean); cdecl; overload;
//    function equals(P1: JObject): Boolean; cdecl;
//    function a(P1: Jz): Boolean; cdecl; overload;
//    function hashCode: Integer; cdecl;
//    function b(P1: Jz): Integer; cdecl; overload;
//    procedure a(P1: Je); cdecl; overload;
//    procedure b(P1: Je); cdecl; overload;
//    function toString: JString; cdecl;
//    procedure c; cdecl;
//    function compareTo(P1: JObject): Integer; cdecl;
//
//    { Property }
//    property a: Integer read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//  end;

//  TJz = class(TJavaGenericImport<JzClass, Jz>) end;

//  JaClass = interface(JObjectClass)
//  ['{BE023671-AEE4-44CD-B7CB-4FC550F757F6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/a')]
//  Ja = interface(IJavaInstance)
//  ['{74A62080-E73D-4DAB-BEB3-B1274CB4C156}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Je); cdecl;
//    procedure b(P1: Je); cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  Jb_aClass = interface(JObjectClass)
//  ['{EB74CFB5-3818-45A9-A9A3-3BD019283AF6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/b$a')]
//  Jb_a = interface(JObject)
//  ['{A774514C-D0E9-4F0D-953B-BF372E93FD5B}']
//    { Property Methods }
//
//    { methods }
//    function compare(P1: JObject; P2: JObject): Integer; cdecl;
//
//    { Property }
//  end;

//  TJb_a = class(TJavaGenericImport<Jb_aClass, Jb_a>) end;

//  JbClass = interface(JObjectClass)
//  ['{AE76745B-5E1B-4996-868C-97B0AC9942C3}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: Boolean; P2: Boolean): Integer; cdecl; overload;
//    {class} function a(P1: Byte; P2: Byte): Integer; cdecl; overload;
//    {class} function a(P1: Word; P2: Word): Integer; cdecl; overload;
//    {class} function a(P1: Integer; P2: Integer): Integer; cdecl; overload;
//    {class} function a(P1: Int64; P2: Int64): Integer; cdecl; overload;
//    {class} function a(P1: Double; P2: Double): Integer; cdecl; overload;
//    {class} function a(P1: JString; P2: JString): Integer; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl; overload;
//    {class} function a(P1: JComparable; P2: JComparable): Integer; cdecl; overload;
//    {class} function a(P1: JList; P2: JList): Integer; cdecl; overload;
//    {class} function a(P1: JSet; P2: JSet): Integer; cdecl; overload;
//    {class} function a(P1: JMap; P2: JMap): Integer; cdecl; overload;
//    {class} procedure a(P1: JByteBuffer; P2: JStringBuilder); cdecl; overload;
//    {class} function a(P1: Byte): JString; cdecl; overload;
//    {class} function a(P1: JByteBuffer): TJavaArray<Byte>; cdecl; overload;
//    {class} function b(P1: JByteBuffer): Boolean; cdecl;
//    {class} function a(P1: JByteBuffer; P2: TJavaArray<Byte>; P3: Integer): Integer; cdecl; overload;
//    {class} function c(P1: JByteBuffer): JByteBuffer; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/b')]
//  Jb = interface(JObject)
//  ['{7D803F90-E498-433B-BB3C-65C6BAED3559}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{31627587-21C7-4F3A-AAAD-49F181584B8B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/c')]
//  Jc = interface(JObject)
//  ['{446AD8A0-35B4-412E-948B-6A2012D6639F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{A61F9271-9331-47FA-BC2D-3FDA88075EB3}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Integer): Jd; cdecl; overload;
//    {class} function init: Jd; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/d')]
//  Jd = interface(JObject)
//  ['{03742C3F-6B69-49AE-8F24-159BFCF9D513}']
//    { Property Methods }
//
//    { methods }
//    function a: TJavaArray<Byte>; cdecl;
//    function b: Integer; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{FDE6A7E3-2A6F-4EBE-ADDA-026B6571984E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Je; cdecl; overload;
//    {class} function init(P1: Jg): Je; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/e')]
//  Je = interface(JObject)
//  ['{4DEF97BD-62C6-45FE-A840-12EEF645AE2A}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Ja; P2: TJavaArray<Byte>); cdecl;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{51E77A80-6825-4893-8A11-A603445A57A7}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jf; cdecl; overload;
//    {class} function init(P1: JString): Jf; cdecl; overload;
//    {class} function init(P1: JThrowable): Jf; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/f')]
//  Jf = interface(JObject)
//  ['{9B54500A-2530-441D-BC01-77DEBCB5E472}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{3EAD2CFB-4365-4396-A5B5-EBC39A7EDF89}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jg; cdecl; overload;
//    {class} function init(P1: Jg): Jg; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/g')]
//  Jg = interface(JObject)
//  ['{EFB8303D-A59D-45B8-AF62-D589BD205B6D}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Ja): TJavaArray<Byte>; cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JaClass = interface(JObjectClass)
//  ['{A22CD3F2-AFD7-4C0F-BB58-CC8A3CB8EFCB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Byte; P2: JClass): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/meta_data/a')]
//  Ja = interface(JObject)
//  ['{FCC9B9E1-4712-44D0-81C5-7470AA7A5CA1}']
//    { Property Methods }
//    function _Geta: JClass;
//    procedure _Seta(aa: JClass);
//
//    { methods }
//
//    { Property }
//    property a: JClass read _Geta write _Seta;
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{A1D497B8-4D3E-46DF-8185-3534136FFDE4}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: Byte; P3: Jc): Jb; cdecl;
//    {class} procedure a(P1: JClass; P2: JMap); cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/meta_data/b')]
//  Jb = interface(JObject)
//  ['{D54215B7-AD94-4F6A-B30A-AE0D3C61FDB6}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Byte;
//    procedure _Setb(ab: Byte);
//    function _Getc: Jc;
//    procedure _Setc(ac: Jc);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Byte read _Getb write _Setb;
//    property c: Jc read _Getc write _Setc;
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{4805F2C2-A4AA-4A01-BD51-E7D39CE15185}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Byte): Jc; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/meta_data/c')]
//  Jc = interface(JObject)
//  ['{710066FC-3908-4A0F-9C4F-6D9E8666C63E}']
//    { Property Methods }
//    function _Getb: Byte;
//    procedure _Setb(ab: Byte);
//
//    { methods }
//
//    { Property }
//    property b: Byte read _Getb write _Setb;
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{C953CB32-8EF8-4F03-AAF8-68022E7CC1AC}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Byte; P2: Jc): Jd; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/meta_data/d')]
//  Jd = interface(JObject)
//  ['{AF5CEC83-69DC-465C-99C4-3586B4D9A054}']
//    { Property Methods }
//    function _Geta: Jc;
//    procedure _Seta(aa: Jc);
//
//    { methods }
//
//    { Property }
//    property a: Jc read _Geta write _Seta;
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{74639C9D-AB7C-436F-A539-7D35BCF9EEC5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Byte; P2: Jc; P3: Jc): Je; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/meta_data/e')]
//  Je = interface(JObject)
//  ['{A1AEA648-B696-4F46-85F2-E2298A076724}']
//    { Property Methods }
//    function _Geta: Jc;
//    procedure _Seta(aa: Jc);
//    function _Getc: Jc;
//    procedure _Setc(ac: Jc);
//
//    { methods }
//
//    { Property }
//    property a: Jc read _Geta write _Seta;
//    property c: Jc read _Getc write _Setc;
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{F0B1B10F-0E36-4E63-AC07-C6C6202C43C2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Byte; P2: Jc): Jf; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/meta_data/f')]
//  Jf = interface(JObject)
//  ['{7C24F795-59AE-48A5-834E-A57BB7F39D1A}']
//    { Property Methods }
//    function _Geta: Jc;
//    procedure _Seta(aa: Jc);
//
//    { methods }
//
//    { Property }
//    property a: Jc read _Geta write _Seta;
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{70A62765-18D0-46F9-B200-ECE165DD8BCE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Byte; P2: JClass): Jg; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/meta_data/g')]
//  Jg = interface(JObject)
//  ['{AECD7FC0-42E7-440A-97FF-EEB3B45310C7}']
//    { Property Methods }
//    function _Geta: JClass;
//    procedure _Seta(aa: JClass);
//
//    { methods }
//
//    { Property }
//    property a: JClass read _Geta write _Seta;
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  Ja_aClass = interface(JObjectClass)
//  ['{1A5B84DC-D8ED-413D-AD15-805C489261CF}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ja_a; cdecl; overload;
//    {class} function init(P1: Boolean; P2: Boolean): Ja_a; cdecl; overload;
//    {class} function init(P1: Boolean; P2: Boolean; P3: Integer): Ja_a; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/a$a')]
//  Ja_a = interface(JObject)
//  ['{7155E811-2BA1-4512-8070-DE70D529D8DF}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jd): Je; cdecl;
//
//    { Property }
//  end;

//  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

//  JaClass = interface(JObjectClass)
//  ['{BF1B17AB-FEBA-495F-BF29-2AC76118155E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jd; P2: Boolean; P3: Boolean): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/a')]
//  Ja = interface(JObject)
//  ['{A4C2A2DF-C59E-4949-A4D8-321ED47FACC9}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jj); cdecl; overload;
//    procedure a; cdecl; overload;
//    procedure a(P1: Jb); cdecl; overload;
//    procedure b; cdecl; overload;
//    procedure c; cdecl; overload;
//    procedure a(P1: Jd); cdecl; overload;
//    procedure d; cdecl;
//    procedure a(P1: Jc); cdecl; overload;
//    procedure e; cdecl;
//    procedure a(P1: Ji); cdecl; overload;
//    procedure f; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a(P1: Byte); cdecl; overload;
//    procedure a(P1: Word); cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: Int64); cdecl; overload;
//    procedure a(P1: Double); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    procedure a(P1: JByteBuffer); cdecl; overload;
//    function g: Jj; cdecl;
//    procedure h; cdecl;
//    function i: Jb; cdecl;
//    procedure j; cdecl;
//    function k: Jd; cdecl;
//    procedure l; cdecl;
//    function m: Jc; cdecl;
//    procedure n; cdecl;
//    function o: Ji; cdecl;
//    procedure p; cdecl;
//    function q: Boolean; cdecl;
//    function r: Byte; cdecl;
//    function s: Word; cdecl;
//    function t: Integer; cdecl;
//    function u: Int64; cdecl;
//    function v: Double; cdecl;
//    function w: JString; cdecl;
//    function b(P1: Integer): JString; cdecl; overload;
//    function x: JByteBuffer; cdecl;
//    procedure c(P1: Integer); cdecl; overload;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{AAC438C6-4247-4844-AF8B-AC6784A736D0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jb; cdecl; overload;
//    {class} function init(P1: JString; P2: Byte; P3: Word): Jb; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/b')]
//  Jb = interface(JObject)
//  ['{32B9AD7D-C910-41EA-98DA-36D9074246A3}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: Byte;
//    procedure _Setb(ab: Byte);
//    function _Getc: Word;
//    procedure _Setc(ac: Word);
//
//    { methods }
//    function toString: JString; cdecl;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: Byte read _Getb write _Setb;
//    property c: Word read _Getc write _Setc;
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{0C016AEA-5864-4F88-90EA-BC65949F9670}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jc; cdecl; overload;
//    {class} function init(P1: Byte; P2: Integer): Jc; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/c')]
//  Jc = interface(JObject)
//  ['{1330C28B-7B7D-4464-9C64-0FAE1D1C9C19}']
//    { Property Methods }
//    function _Geta: Byte;
//    procedure _Seta(aa: Byte);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//
//    { methods }
//
//    { Property }
//    property a: Byte read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{9D99F522-8D28-439D-B626-58E7B4CD5DC7}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jd; cdecl; overload;
//    {class} function init(P1: Byte; P2: Byte; P3: Integer): Jd; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/d')]
//  Jd = interface(JObject)
//  ['{AFD539F9-D172-4D07-8458-786F4FE93E79}']
//    { Property Methods }
//    function _Geta: Byte;
//    procedure _Seta(aa: Byte);
//    function _Getb: Byte;
//    procedure _Setb(ab: Byte);
//    function _Getc: Integer;
//    procedure _Setc(ac: Integer);
//
//    { methods }
//
//    { Property }
//    property a: Byte read _Geta write _Seta;
//    property b: Byte read _Getb write _Setb;
//    property c: Integer read _Getc write _Setc;
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{77DB4442-5F4B-4177-B535-53F02460FDA0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/e')]
//  Je = interface(JObject)
//  ['{1D364810-CD8E-4459-AA99-7C31BB832956}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jj); cdecl; overload;
//    procedure a; cdecl; overload;
//    procedure a(P1: Jb); cdecl; overload;
//    procedure b; cdecl;
//    procedure c; cdecl;
//    procedure a(P1: Jd); cdecl; overload;
//    procedure d; cdecl;
//    procedure a(P1: Jc); cdecl; overload;
//    procedure e; cdecl;
//    procedure a(P1: Ji); cdecl; overload;
//    procedure f; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a(P1: Byte); cdecl; overload;
//    procedure a(P1: Word); cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: Int64); cdecl; overload;
//    procedure a(P1: Double); cdecl; overload;
//    procedure a(P1: JString); cdecl; overload;
//    procedure a(P1: JByteBuffer); cdecl; overload;
//    function g: Jj; cdecl;
//    procedure h; cdecl;
//    function i: Jb; cdecl;
//    procedure j; cdecl;
//    function k: Jd; cdecl;
//    procedure l; cdecl;
//    function m: Jc; cdecl;
//    procedure n; cdecl;
//    function o: Ji; cdecl;
//    procedure p; cdecl;
//    function q: Boolean; cdecl;
//    function r: Byte; cdecl;
//    function s: Word; cdecl;
//    function t: Integer; cdecl;
//    function u: Int64; cdecl;
//    function v: Double; cdecl;
//    function w: JString; cdecl;
//    function x: JByteBuffer; cdecl;
//    procedure y; cdecl;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{5A82304D-4B00-4735-A5B7-29681A416B95}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jf; cdecl; overload;
//    {class} function init(P1: Integer; P2: JString): Jf; cdecl; overload;
//    {class} function init(P1: JString): Jf; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/f')]
//  Jf = interface(JObject)
//  ['{FC5C296C-418F-4914-B2F0-BAA737FEA56B}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{4BFA40F6-7FCF-443A-8FEC-2E4CB12CFE3E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/g')]
//  Jg = interface(IJavaInstance)
//  ['{1A6154B1-36DF-4DED-8172-4B8D02A94DF5}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jd): Je; cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{C0526354-4219-48A7-A9AA-6598BE7CDA3A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} procedure a(P1: Je; P2: Byte); cdecl; overload;
//    {class} procedure a(P1: Je; P2: Byte; P3: Integer); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/h')]
//  Jh = interface(JObject)
//  ['{382E425D-8318-4793-B2F3-9F4041F0FAD8}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JiClass = interface(JObjectClass)
//  ['{ABC77471-9A6B-4906-9F7F-EA1A9037CDF5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Ji; cdecl; overload;
//    {class} function init(P1: Byte; P2: Integer): Ji; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/i')]
//  Ji = interface(JObject)
//  ['{920488C8-6EAD-4184-9C6B-0A06766DF433}']
//    { Property Methods }
//    function _Geta: Byte;
//    procedure _Seta(aa: Byte);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//
//    { methods }
//
//    { Property }
//    property a: Byte read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{91F19E14-8413-4E3B-9103-861A10FF5C60}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jj; cdecl; overload;
//    {class} function init(P1: JString): Jj; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/j')]
//  Jj = interface(JObject)
//  ['{4E8D55BB-AFC2-4522-BAE8-B7B8DF22419C}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  Jk_aClass = interface(JObjectClass)
//  ['{F05F032E-8589-4947-8FCF-4DC7F4AA5178}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jk_a; cdecl; overload;
//    {class} function init(P1: Boolean; P2: Boolean; P3: Integer): Jk_a; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/k$a')]
//  Jk_a = interface(JObject)
//  ['{EBF7EF98-086D-4195-A614-8C8D1B2D5D08}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Jd): Je; cdecl;
//
//    { Property }
//  end;

//  TJk_a = class(TJavaGenericImport<Jk_aClass, Jk_a>) end;

//  JkClass = interface(JObjectClass)
//  ['{7A735ADA-2436-4341-92D2-026C15E2EABB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jd; P2: Boolean; P3: Boolean): Jk; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/protocol/k')]
//  Jk = interface(JObject)
//  ['{58F53CB2-DE59-4352-B7FC-1F01147F036A}']
//    { Property Methods }
//
//    { methods }
//    function k: Jd; cdecl;
//    function m: Jc; cdecl;
//    function o: Ji; cdecl;
//    function w: JString; cdecl;
//    function x: JByteBuffer; cdecl;
//
//    { Property }
//  end;

//  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

//  JaClass = interface(JObjectClass)
//  ['{8798D0B6-CB4C-4FFF-992D-FFC41FBB98D5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JOutputStream): Ja; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/transport/a')]
//  Ja = interface(JObject)
//  ['{5F82A2F5-B686-464E-A221-B8347B62FDA2}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
//    procedure b(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{42E92F27-D9D5-4DBD-ADD8-0E75738C8236}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Integer): Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/transport/b')]
//  Jb = interface(JObject)
//  ['{A73BEA26-6745-4030-9DC1-F878CCF72F20}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
//    procedure b(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl;
//    function a_: Integer; cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{62660EDD-198D-4C09-A311-0FC19C00639E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jc; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/transport/c')]
//  Jc = interface(JObject)
//  ['{DB48B890-DC8E-4C92-9D06-55A3DF33E4FD}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: TJavaArray<Byte>); cdecl; overload;
//    procedure c(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl; overload;
//    function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl; overload;
//    procedure b(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl; overload;
//    function a: TJavaArray<Byte>; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function c: Integer; cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{EA24FED1-F015-496D-8351-4B47D9654F79}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jd; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/transport/d')]
//  Jd = interface(JObject)
//  ['{65BA840B-08D5-4847-968E-82874A69C65F}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl; overload;
//    function d(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
//    procedure b(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl; overload;
//    function a: TJavaArray<Byte>; cdecl; overload;
//    function b: Integer; cdecl; overload;
//    function c: Integer; cdecl;
//    procedure a(P1: Integer); cdecl; overload;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{AD5FE24C-55AE-4024-8B73-9E828331EC47}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Je; cdecl; overload;
//    {class} function init(P1: Integer): Je; cdecl; overload;
//    {class} function init(P1: Integer; P2: JString): Je; cdecl; overload;
//    {class} function init(P1: JString): Je; cdecl; overload;
//    {class} function init(P1: Integer; P2: JThrowable): Je; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('org/apache/thrift/transport/e')]
//  Je = interface(JObject)
//  ['{139657EC-8667-460B-AC89-5A0EFC156153}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

{$ENDIF}
implementation
//{$IFDEF ANDROID}
//
//
//procedure RegisterTypes;
//begin
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JLoggerInterface',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JLoggerInterface));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaa',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaa));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jab',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jab));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jac',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jac));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jad',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jad));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jag',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jag));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JConstants',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JConstants));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JErrorCode',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JErrorCode));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JLogger',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JLogger));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMessageHandleService_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMessageHandleService_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMessageHandleService',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMessageHandleService));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiPushClient_MiPushClientCallback',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiPushClient_MiPushClientCallback));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiPushClient',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiPushClient));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiPushCommandMessage',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiPushCommandMessage));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiPushMessage',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiPushMessage));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiTinyDataClient_a_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiTinyDataClient_a_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiTinyDataClient_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiTinyDataClient_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiTinyDataClient',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JMiTinyDataClient));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jn',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jn));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jo',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jo));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jp',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jp));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushMessageHandler_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushMessageHandler_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushMessageHandler',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushMessageHandler));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushMessageHelper',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushMessageHelper));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushMessageReceiver',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushMessageReceiver));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushServiceReceiver',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPushServiceReceiver));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jr',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jr));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Js',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Js));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jt',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jt));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ju',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ju));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jv',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jv));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jw',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jw));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jx',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jx));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jy',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jy));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JAccessHistory',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JAccessHistory));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JFallback',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JFallback));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JFallbacks',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JFallbacks));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHost',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHost));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostFilter',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostFilter));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostManager_HostManagerFactory',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostManager_HostManagerFactory));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostManager_HttpGet',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostManager_HttpGet));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostManager',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostManager));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostRefreshService',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostRefreshService));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHttpProcessor',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHttpProcessor));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHttpUtils_DefaultHttpGetProcessor',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHttpUtils_DefaultHttpGetProcessor));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHttpUtils',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHttpUtils));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JNetworkStatusChangeReceiver',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JNetworkStatusChangeReceiver));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostManagerDemo',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JHostManagerDemo));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_c',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_c));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_c',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_c));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_d',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_d));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_e',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_e));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_f',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_f));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_g',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_g));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_h',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_h));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_i',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_i));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_j',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_j));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_k',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_k));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaa',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaa));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jab',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jab));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jac',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jac));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jad',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jad));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jag',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jag));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jah',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jah));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jak',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jak));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jal',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jal));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_b_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_b_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_c',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_c));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jan',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jan));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jao',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jao));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaq',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaq));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jar',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jar));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jas',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jas));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jat',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jat));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jau',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jau));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jav_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jav_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jav',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jav));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaw',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaw));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jax',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jax));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jay',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jay));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaz',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaz));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jba',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jba));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbe',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbe));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbi',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbi));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbk',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbk));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbl',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbl));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbm',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jbm));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_c_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_c_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_c',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_c));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_d',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji_d));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jn',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jn));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jo',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jo));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jp',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jp));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPacketSync_PacketReceiveHandler',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPacketSync_PacketReceiveHandler));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPacketSync',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPacketSync));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jr',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jr));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JNetworkStatusReceiver',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JNetworkStatusReceiver));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPingReceiver',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPingReceiver));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPkgUninstallReceiver',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JPkgUninstallReceiver));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Js',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Js));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jt',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jt));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ju',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ju));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jv',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jv));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jw',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jw));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jx',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jx));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMJobService_a_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMJobService_a_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMJobService_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMJobService_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMJobService',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMJobService));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_c',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_c));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_d',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_d));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_e',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_e));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_f',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_f));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_g',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_g));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_h',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_h));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_i',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_i));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_j',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_j));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_k',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_k));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_l',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_l));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_m',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_m));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_n',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService_n));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.JXMPushService));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jy',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jy));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf_b',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf_b));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaa_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaa_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaa',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaa));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jab_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jab_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jab',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jab));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jac_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jac_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jac',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jac));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jad_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jad_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jad',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jad));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jae));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaf_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaf_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jag_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jag_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jag',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jag));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jah_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jah_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jah',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jah));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jai));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaj_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaj_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jak_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jak_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jak',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jak));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jal_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jal_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jal',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jal));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jam));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jan_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jan_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jan',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jan));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jao_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jao_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jao',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jao));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jap));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaq_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaq_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaq',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jaq));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jar',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jar));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jl));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jm));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jn_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jn_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jn',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jn));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jo_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jo_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jo',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jo));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jp',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jp));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jq));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jr_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jr_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jr',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jr));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Js_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Js_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Js',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Js));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jt_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jt_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jt',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jt));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ju',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ju));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jv_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jv_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jv',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jv));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jw_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jw_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jw',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jw));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jx_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jx_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jx',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jx));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jy_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jy_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jy',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jy));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jz));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk_a',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk_a));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jk));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je',
//    TypeInfo(Androidapi.JNI.MiPush_SDK_Client_3_4_0.Je));
//end;
//
//
//initialization
//  RegisterTypes;
//
//{$ENDIF}

end.

