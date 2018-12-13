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
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.UIKit,
	iOSApi.OpenGLES,
	iOSApi.Foundation,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;

	
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
	{int} function callback,uint32_t host,uint16_t port():ssl_vpn_initVPN_CALL_BACK;cdecl;
	
	    {*
	     *@功能：开始登陆VPN，开始循环认证一系列认证方式（认证顺序方式由服务端配置决定）
	     *@param authType     ［in］ 当前认证的类型
	     *@return 0表示当前认证预成功，注意并不表示认证成功，若要知道认证是否成功，
	     *          需要查看回调函数中的认证类型认证错误码； 
	     *}
	{int} function int authType():ssl_vpn_loginconst;cdecl;
	
	    {*
	     *@ 功能：注销登陆VPN服务器
	     *return 0表示注销成功，－1表示失败
	     *}
	{} function ssl_vpn_logout(VPN_STATUS ssl_vpn_query_auth_state(void:oid);ssl_vpn_query_auth_state(void:PN_STATU):Integer;cdecl;
	
	    {*
	     * @ 功能：设置错误字符串
	     *}
	{void} function char err():vpn_seterr_nbconst{*};cdecl;
	
	    {*
	     * @功能 获取VPN错误字符串
	     * return NULL表示获取失败，非NULL表示成功返回的错误提示字符串
	     *}
	{}ssl_vpn_get_err(void)=char{*};
	
	    {*
	     * @功能 设置键值对
	     * @param key   键名
	     * @param value 键值
	     *}
	{int} function char key, char value():ssl_vpn_set_login_paramconst{*};cdecl;
	
	    {*
	     * @清理vqpn登录的属性
	     * @param key[in] 不能为空，为上边以PORPERTY_开头的宏
	     *}
	{void} function char key():vpn_clear_login_paramconst{*};cdecl;
	
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
	{void*} function char key,void value,uint32_t  value_length():vpn_get_login_paramconst{*};cdecl;
	
	    {*
	     * @功能 获取硬件特征码信息，以字符串的形式返回
	     *
	     * @return 硬件特征码，注意可能获取失败。失败时返回NULL
	     *}
	{}ssl_vpn_query_hardid(char buffer, int buffer_len)=char*{*};
	
	    {*
	     * @功能 获取短信验证 手机号
	     * @return 返回短信验证 手机号
	     }
	{}ssl_get_sms_phonenumber(char buffer, int buffer_len)=char{*};
	
	    {*
	     * @功能 获取短信验证 再次发送倒计时
	     * @return 返回短信验证再次发送倒计时
	     }
	{}ssl_get_sms_countdown()=char{*};
	
	    {*
	     * @功能 设置获取图形验证码CALLBACK
	     * @param callback
	     *}
	{void} function callback():ssl_vpn_set_rnd_code_call_backRND_CODE_CALL_BACK;cdecl;
	
	    {*
	     * @功能 获取图形验证码
	     *}
	{} function ssl_vpn_get_rnd_code(int ssl_set_no_eth_hardid(:;ssl_set_no_eth_hardid(:n):Integer;cdecl;
	
	    {*
	     * @功能 退出VPN
	     *}
	{} function ssl_vpn_quit(int ssl_vpn_relogin(:oid);ssl_vpn_relogin(:n):Integer;cdecl;
	
	    {*
	     * @功能 设置dns 服务器的IP地址
	     * @dnsServer dnsServer服务器Ip地址字符串
	     * 
	     * @return void
	     }
	{void} function char dnsServer():ssl_set_dns_serverconst{*};cdecl;
	
	    {*
	     * @功能 获取SDK版本号
	     * @return 返回SDK的版本号字符串
	     }
	{}ssl_get_version(void)=char{*};
	
	    {*
	     * @功能 获取sessionid
	     * @return 返回session字符串
	     }
	{int} function buffer, int len():ssl_get_sessionidchar{*};cdecl;
	
	    {*
	     *  设置session id
	     *
	     *  @param session session字符串
	     *  @param len     长度
	     }
	{void} function char session,int len():ssl_set_sessionidconst{*};cdecl;
	
	    {*
	     * 设置HOOK 勾子，多个filter之间用分号隔开
	     * @param filter[in] 过滤的规则
	     *}
	{void} function char  filter():ssl_vpn_addHookFilterconst{*};cdecl;
	
	{void} function callback():set_reconnect_callbackRECONNECT_CALL_BACK;cdecl;
	
	{} function get_proxy_port():Integer;cdecl;
	//#endif //__cplusplus
	
	//#endif //_SSLAUTH_H_
{$ENDIF}

implementation

{$IFDEF IOS}
{int} function callback,uint32_t host,uint16_t port():ssl_vpn_initVPN_CALL_BACK;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'callback,uint32_t host,uint16_t port'
{int} function int authType():ssl_vpn_loginconst;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'int authType'
{} function ssl_vpn_logout(VPN_STATUS ssl_vpn_query_auth_state(void:oid);ssl_vpn_query_auth_state(void:PN_STATU):Integer;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'ssl_vpn_logout'
{void} function char err():vpn_seterr_nbconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char err'
{int} function char key, char value():ssl_vpn_set_login_paramconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char key, char value'
{void} function char key():vpn_clear_login_paramconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char key'
{void*} function char key,void value,uint32_t  value_length():vpn_get_login_paramconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char key,void value,uint32_t  value_length'
{void} function callback():ssl_vpn_set_rnd_code_call_backRND_CODE_CALL_BACK;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'callback'
{} function ssl_vpn_get_rnd_code(int ssl_set_no_eth_hardid(:;ssl_set_no_eth_hardid(:n):Integer;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'ssl_vpn_get_rnd_code'
{} function ssl_vpn_quit(int ssl_vpn_relogin(:oid);ssl_vpn_relogin(:n):Integer;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'ssl_vpn_quit'
{void} function char dnsServer():ssl_set_dns_serverconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char dnsServer'
{int} function buffer, int len():ssl_get_sessionidchar{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'buffer, int len'
{void} function char session,int len():ssl_set_sessionidconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char session,int len'
{void} function char  filter():ssl_vpn_addHookFilterconst{*};cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'char  filter'
{void} function callback():set_reconnect_callbackRECONNECT_CALL_BACK;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'callback'
{} function get_proxy_port():Integer;cdecl;external {$I BaiduMapDylibName.inc} name _PU + 'get_proxy_port'

{$O-}
{$O+}


{$ENDIF}

end.

