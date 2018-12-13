//
//  Company: Sangfor
//  libSagfor
//
//  Created by on 12-9-1.
//
//

//#ifndef  _SSLAUTH_H_
//#define  _SSLAUTH_H_

unit sslvpnnb_iOSApi;

interface

{$IFDEF IOS}
uses
	sdkheader_iOSApi,
//	MacApi.ObjectiveC,
//	iOSApi.CocoaTypes,
//	iOSApi.CoreGraphics,
//	iOSApi.UIKit,
//	iOSApi.OpenGLES,
//	iOSApi.Foundation,
//	iOSApi.CoreLocation,
	Macapi.ObjCRuntime;//,
//	SysUtils,Types,FMX.Types,Classes;




type
	//declare pointer
	id=Pointer;
  int=Integer;

	{******************************************************************
	    注意：以下接口调用有些操作必须在主线程中调用，否则会返回非主线程调用接口的错误
	 ******************************************************************}
	
	//#ifdef __cplusplus
	
	
	//#endif //__cplusplus





	    {*
	     * @功能：初始化vpn信息，包括初始化的回调函数，VPN服务器IP地址，端口号
	     * @param callBack 回调函数指针，初始化为nil时，表示不设置回调函数
	     * @param host［in］VPN服务器Ipd地址，注意为网络序，一定为有效的地址和端口
	     * @param port［in］VPN服务器端口，注意为网络序
	     * return 0表示初始化成功，－1表示失败
	     *}
//	{int} function callback,uint32_t host,uint16_t port():ssl_vpn_initVPN_CALL_BACK;cdecl;
    function ssl_vpn_init(callback:VPN_CALL_BACK;host:uint32;port:uint16):int;cdecl;

	    {*
	     *@功能：开始登陆VPN，开始循环认证一系列认证方式（认证顺序方式由服务端配置决定）
	     *@param authType     ［in］ 当前认证的类型
	     *@return 0表示当前认证预成功，注意并不表示认证成功，若要知道认证是否成功，
	     *          需要查看回调函数中的认证类型认证错误码；
	     *}
//	{int} function int authType():ssl_vpn_loginconst;cdecl;
    function ssl_vpn_login(const authType:int):int;cdecl;


	    {*
	     *@ 功能：注销登陆VPN服务器
	     *return 0表示注销成功，－1表示失败
	     *}
//	{} function ssl_vpn_logout(VPN_STATUS ssl_vpn_query_auth_state(void:oid);ssl_vpn_query_auth_state(void:PN_STATU):Integer;cdecl;
    function ssl_vpn_logout():int;cdecl;

//    /**
//     * @ 功能：查询VPN当前状态，注意判断VPN认证是否成功可以调用此函数查询
//     * return 返回的VPN状态码，可能情况有三大类：1.认证成功，2.正在认真过程当中，3.认证失败; 注意当认
//     *        真失败时，可以调用ssl_vpn_get_err获取错误原因字符串，具体返回值查看与错误相关的宏定义
//     **/
//    VPN_STATUS ssl_vpn_query_auth_state(void);
     function ssl_vpn_query_auth_state():VPN_STATUS;cdecl;


	    {*
	     * @ 功能：设置错误字符串
	     *}
//	{void} function char err():vpn_seterr_nbconst{*};cdecl;
      procedure vpn_seterr_nb(const err:MarshaledAString);cdecl;


	    {*
	     * @功能 获取VPN错误字符串
	     * return NULL表示获取失败，非NULL表示成功返回的错误提示字符串
	     *}
//	{}ssl_vpn_get_err(void)=char{*};
//    function ssl_vpn_get_err:
      function ssl_vpn_get_err():MarshaledAString;cdecl;


	    {*
	     * @功能 设置键值对
	     * @param key   键名
	     * @param value 键值
	     *}
//	{int} function char key, char value():ssl_vpn_set_login_paramconst{*};cdecl;
      function ssl_vpn_set_login_param(const key:MarshaledAString;value:MarshaledAString):int;cdecl;


	    {*
	     * @清理vqpn登录的属性
	     * @param key[in] 不能为空，为上边以PORPERTY_开头的宏
	     *}
//	{void} function char key():vpn_clear_login_paramconst{*};cdecl;
      procedure vpn_clear_login_param(const key:MarshaledAString);cdecl;


	    {*
	     * @功能 获取vpn登录的属性
	     * @param key[in] 不能为空，为上边以PORPERTY_开头的宏
	     * @param value[out] 属性的值,
	     * @param value_lenth[in/out] value 的长度,by Bytes。返回实际长度
		 *
		 * @return 如果不存在，memset(value,0,value_length) return NULL;
	     *         如果存在但长度不够 strncpy(value,out_value,value_length) return NULL;
	     *         如果正确，strncpy(value,out_value,value_length) return value;
	     *         如果参数错误，return NULL;
	     *}
//	{void*} function char key,void value,uint32_t  value_length():vpn_get_login_paramconst{*};cdecl;
      function vpn_get_login_param(const key:MarshaledAString;value:Pointer;value_length:PCardinal):Pointer;cdecl;


	    {*
	     * @功能 获取硬件特征码信息，以字符串的形式返回
	     *
	     * @return 硬件特征码，注意可能获取失败。失败时返回NULL
	     *}
//	{}ssl_vpn_query_hardid(char buffer, int buffer_len)=char*{*};
      function ssl_vpn_query_hardid(buffer:MarshaledAString;buffer_len:int):MarshaledAString;cdecl;


	    {*
	     * @功能 获取短信验证 手机号
	     * @return 返回短信验证 手机号
	     }
//	{}ssl_get_sms_phonenumber(char buffer, int buffer_len)=char{*};
      function ssl_get_sms_phonenumber(buffer:MarshaledAString;buffer_len:int):MarshaledAString;cdecl;


	    {*
	     * @功能 获取短信验证 再次发送倒计时
	     * @return 返回短信验证再次发送倒计时
	     }
//	{}ssl_get_sms_countdown()=char{*};
      function ssl_get_sms_countdown():MarshaledAString;cdecl;


	    {*
	     * @功能 设置获取图形验证码CALLBACK
	     * @param callback
	     *}
//	{void} function callback():ssl_vpn_set_rnd_code_call_backRND_CODE_CALL_BACK;cdecl;
      procedure ssl_vpn_set_rnd_code_call_back(callback:RND_CODE_CALL_BACK);cdecl;


	    {*
	     * @功能 获取图形验证码
	     *}
//	{} function ssl_vpn_get_rnd_code(int ssl_set_no_eth_hardid(:;ssl_set_no_eth_hardid(:n):Integer;cdecl;
      function ssl_vpn_get_rnd_code():int;cdecl;


	    {*
	     * @功能 退出VPN
	     *}
//	{} function ssl_vpn_quit(int ssl_vpn_relogin(:oid);ssl_vpn_relogin(:n):Integer;cdecl;
      function ssl_vpn_quit():int;cdecl;

//    /**
//     * vpn重新登陆的接口,阻塞的接口
//     *
//     * @return 0成功；－1，失败
//     **/
      function ssl_vpn_relogin():int;cdecl;


	    {*
	     * @功能 设置dns 服务器的IP地址
	     * @dnsServer dnsServer服务器Ip地址字符串
	     *
	     * @return void
	     }
//	{void} function char dnsServer():ssl_set_dns_serverconst{*};cdecl;
      procedure ssl_set_dns_server(const dnsServer:MarshaledAString);cdecl;


	    {*
	     * @功能 获取SDK版本号
	     * @return 返回SDK的版本号字符串
	     }
//	{}ssl_get_version(void)=char{*};
        function ssl_get_version():MarshaledAString;cdecl;


	    {*
	     * @功能 获取sessionid
	     * @return 返回session字符串
	     }
//	{int} function buffer, int len():ssl_get_sessionidchar{*};cdecl;
        function ssl_get_sessionid(buffer:MarshaledAString;len:int):int;cdecl;

	    {*
	     *  设置session id
	     *
	     *  @param session session字符串
	     *  @param len     长度
	     }
//	{void} function char session,int len():ssl_set_sessionidconst{*};cdecl;
        procedure ssl_set_sessionid(const session:MarshaledAString;len:int);cdecl;


	    {*
	     * 设置HOOK 勾子，多个filter之间用分号隔开
	     * @param filter[in] 过滤的规则
	     *}
//	{void} function char  filter():ssl_vpn_addHookFilterconst{*};cdecl;
        procedure ssl_vpn_addHookFilter(const filter:MarshaledAString);cdecl;



//	{void} function callback():set_reconnect_callbackRECONNECT_CALL_BACK;cdecl;
        procedure set_reconnect_callback(callback:RECONNECT_CALL_BACK);cdecl;


//	{} function get_proxy_port():Integer;cdecl;
        function get_proxy_port():Integer;cdecl;



	//#endif //__cplusplus
	
	//#endif //_SSLAUTH_H_

{$ENDIF}



implementation




{$IFDEF IOS}



//{int} function callback,uint32_t host,uint16_t port():ssl_vpn_initVPN_CALL_BACK;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'callback,uint32_t host,uint16_t port'
function ssl_vpn_init;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_init';
//{int} function int authType():ssl_vpn_loginconst;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'int authType'
function ssl_vpn_login;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_login';
//{} function ssl_vpn_logout(VPN_STATUS ssl_vpn_query_auth_state(void:oid);ssl_vpn_query_auth_state(void:PN_STATU):Integer;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'ssl_vpn_logout'
function ssl_vpn_logout;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_logout';
function ssl_vpn_query_auth_state;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_query_auth_state';
//{void} function char err():vpn_seterr_nbconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char err'
procedure vpn_seterr_nb;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'vpn_seterr_nb';
function ssl_vpn_get_err;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_get_err';
//{int} function char key, char value():ssl_vpn_set_login_paramconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char key, char value'
function ssl_vpn_set_login_param;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_set_login_param';
//{void} function char key():vpn_clear_login_paramconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char key'
procedure vpn_clear_login_param;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'vpn_clear_login_param';
//{void*} function char key,void value,uint32_t  value_length():vpn_get_login_paramconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char key,void value,uint32_t  value_length'
function vpn_get_login_param;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'vpn_get_login_param';
function ssl_vpn_query_hardid;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_query_hardid';
function ssl_get_sms_phonenumber;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_get_sms_phonenumber';
function ssl_get_sms_countdown;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_get_sms_countdown';


//{void} function callback():ssl_vpn_set_rnd_code_call_backRND_CODE_CALL_BACK;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'callback'
procedure ssl_vpn_set_rnd_code_call_back;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_set_rnd_code_call_back';
//{} function ssl_vpn_get_rnd_code(int ssl_set_no_eth_hardid(:;ssl_set_no_eth_hardid(:n):Integer;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'ssl_vpn_get_rnd_code'
procedure ssl_set_no_eth_hardid;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_set_no_eth_hardid';
function ssl_vpn_get_rnd_code;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_get_rnd_code';


//{} function ssl_vpn_quit(int ssl_vpn_relogin(:oid);ssl_vpn_relogin(:n):Integer;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'ssl_vpn_quit'
function ssl_vpn_quit;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_quit';
function ssl_vpn_relogin;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_relogin';
//{void} function char dnsServer():ssl_set_dns_serverconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char dnsServer'
procedure ssl_set_dns_server;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_set_dns_server';
function ssl_get_version;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_get_version';


//{int} function buffer, int len():ssl_get_sessionidchar{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'buffer, int len'
function ssl_get_sessionid;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_get_sessionid';
//{void} function char session,int len():ssl_set_sessionidconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char session,int len'
procedure ssl_set_sessionid;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_set_sessionid';
//{void} function char  filter():ssl_vpn_addHookFilterconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char  filter'
procedure ssl_vpn_addHookFilter;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'ssl_vpn_addHookFilter';
//{void} function callback():set_reconnect_callbackRECONNECT_CALL_BACK;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'callback'
procedure set_reconnect_callback;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'set_reconnect_callback';



//{} function get_proxy_port():Integer;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'get_proxy_port'
function get_proxy_port;cdecl;external 'SangForSDK\libs\libSangforSdk.a' name _PU + 'get_proxy_port'{$IFNDEF POSIX}delayed{$ENDIF};

//{$O-}
//{$O+}


{$ENDIF}

end.

