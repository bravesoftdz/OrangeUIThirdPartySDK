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
	    ע�⣺���½ӿڵ�����Щ�������������߳��е��ã�����᷵�ط����̵߳��ýӿڵĴ���
	 ******************************************************************}
	
	//#ifdef __cplusplus
	
	
	//#endif //__cplusplus





	    {*
	     * @���ܣ���ʼ��vpn��Ϣ��������ʼ���Ļص�������VPN������IP��ַ���˿ں�
	     * @param callBack �ص�����ָ�룬��ʼ��Ϊnilʱ����ʾ�����ûص�����
	     * @param host��in��VPN������Ipd��ַ��ע��Ϊ������һ��Ϊ��Ч�ĵ�ַ�Ͷ˿�
	     * @param port��in��VPN�������˿ڣ�ע��Ϊ������
	     * return 0��ʾ��ʼ���ɹ�����1��ʾʧ��
	     *}
//	{int} function callback,uint32_t host,uint16_t port():ssl_vpn_initVPN_CALL_BACK;cdecl;
    function ssl_vpn_init(callback:VPN_CALL_BACK;host:uint32;port:uint16):int;cdecl;

	    {*
	     *@���ܣ���ʼ��½VPN����ʼѭ����֤һϵ����֤��ʽ����֤˳��ʽ�ɷ�������þ�����
	     *@param authType     ��in�� ��ǰ��֤������
	     *@return 0��ʾ��ǰ��֤Ԥ�ɹ���ע�Ⲣ����ʾ��֤�ɹ�����Ҫ֪����֤�Ƿ�ɹ���
	     *          ��Ҫ�鿴�ص������е���֤������֤�����룻
	     *}
//	{int} function int authType():ssl_vpn_loginconst;cdecl;
    function ssl_vpn_login(const authType:int):int;cdecl;


	    {*
	     *@ ���ܣ�ע����½VPN������
	     *return 0��ʾע���ɹ�����1��ʾʧ��
	     *}
//	{} function ssl_vpn_logout(VPN_STATUS ssl_vpn_query_auth_state(void:oid);ssl_vpn_query_auth_state(void:PN_STATU):Integer;cdecl;
    function ssl_vpn_logout():int;cdecl;

//    /**
//     * @ ���ܣ���ѯVPN��ǰ״̬��ע���ж�VPN��֤�Ƿ�ɹ����Ե��ô˺�����ѯ
//     * return ���ص�VPN״̬�룬��������������ࣺ1.��֤�ɹ���2.����������̵��У�3.��֤ʧ��; ע�⵱��
//     *        ��ʧ��ʱ�����Ե���ssl_vpn_get_err��ȡ����ԭ���ַ��������巵��ֵ�鿴�������صĺ궨��
//     **/
//    VPN_STATUS ssl_vpn_query_auth_state(void);
     function ssl_vpn_query_auth_state():VPN_STATUS;cdecl;


	    {*
	     * @ ���ܣ����ô����ַ���
	     *}
//	{void} function char err():vpn_seterr_nbconst{*};cdecl;
      procedure vpn_seterr_nb(const err:MarshaledAString);cdecl;


	    {*
	     * @���� ��ȡVPN�����ַ���
	     * return NULL��ʾ��ȡʧ�ܣ���NULL��ʾ�ɹ����صĴ�����ʾ�ַ���
	     *}
//	{}ssl_vpn_get_err(void)=char{*};
//    function ssl_vpn_get_err:
      function ssl_vpn_get_err():MarshaledAString;cdecl;


	    {*
	     * @���� ���ü�ֵ��
	     * @param key   ����
	     * @param value ��ֵ
	     *}
//	{int} function char key, char value():ssl_vpn_set_login_paramconst{*};cdecl;
      function ssl_vpn_set_login_param(const key:MarshaledAString;value:MarshaledAString):int;cdecl;


	    {*
	     * @����vqpn��¼������
	     * @param key[in] ����Ϊ�գ�Ϊ�ϱ���PORPERTY_��ͷ�ĺ�
	     *}
//	{void} function char key():vpn_clear_login_paramconst{*};cdecl;
      procedure vpn_clear_login_param(const key:MarshaledAString);cdecl;


	    {*
	     * @���� ��ȡvpn��¼������
	     * @param key[in] ����Ϊ�գ�Ϊ�ϱ���PORPERTY_��ͷ�ĺ�
	     * @param value[out] ���Ե�ֵ,
	     * @param value_lenth[in/out] value �ĳ���,by Bytes������ʵ�ʳ���
		 *
		 * @return ��������ڣ�memset(value,0,value_length) return NULL;
	     *         ������ڵ����Ȳ��� strncpy(value,out_value,value_length) return NULL;
	     *         �����ȷ��strncpy(value,out_value,value_length) return value;
	     *         �����������return NULL;
	     *}
//	{void*} function char key,void value,uint32_t  value_length():vpn_get_login_paramconst{*};cdecl;
      function vpn_get_login_param(const key:MarshaledAString;value:Pointer;value_length:PCardinal):Pointer;cdecl;


	    {*
	     * @���� ��ȡӲ����������Ϣ�����ַ�������ʽ����
	     *
	     * @return Ӳ�������룬ע����ܻ�ȡʧ�ܡ�ʧ��ʱ����NULL
	     *}
//	{}ssl_vpn_query_hardid(char buffer, int buffer_len)=char*{*};
      function ssl_vpn_query_hardid(buffer:MarshaledAString;buffer_len:int):MarshaledAString;cdecl;


	    {*
	     * @���� ��ȡ������֤ �ֻ���
	     * @return ���ض�����֤ �ֻ���
	     }
//	{}ssl_get_sms_phonenumber(char buffer, int buffer_len)=char{*};
      function ssl_get_sms_phonenumber(buffer:MarshaledAString;buffer_len:int):MarshaledAString;cdecl;


	    {*
	     * @���� ��ȡ������֤ �ٴη��͵���ʱ
	     * @return ���ض�����֤�ٴη��͵���ʱ
	     }
//	{}ssl_get_sms_countdown()=char{*};
      function ssl_get_sms_countdown():MarshaledAString;cdecl;


	    {*
	     * @���� ���û�ȡͼ����֤��CALLBACK
	     * @param callback
	     *}
//	{void} function callback():ssl_vpn_set_rnd_code_call_backRND_CODE_CALL_BACK;cdecl;
      procedure ssl_vpn_set_rnd_code_call_back(callback:RND_CODE_CALL_BACK);cdecl;


	    {*
	     * @���� ��ȡͼ����֤��
	     *}
//	{} function ssl_vpn_get_rnd_code(int ssl_set_no_eth_hardid(:;ssl_set_no_eth_hardid(:n):Integer;cdecl;
      function ssl_vpn_get_rnd_code():int;cdecl;


	    {*
	     * @���� �˳�VPN
	     *}
//	{} function ssl_vpn_quit(int ssl_vpn_relogin(:oid);ssl_vpn_relogin(:n):Integer;cdecl;
      function ssl_vpn_quit():int;cdecl;

//    /**
//     * vpn���µ�½�Ľӿ�,�����Ľӿ�
//     *
//     * @return 0�ɹ�����1��ʧ��
//     **/
      function ssl_vpn_relogin():int;cdecl;


	    {*
	     * @���� ����dns ��������IP��ַ
	     * @dnsServer dnsServer������Ip��ַ�ַ���
	     *
	     * @return void
	     }
//	{void} function char dnsServer():ssl_set_dns_serverconst{*};cdecl;
      procedure ssl_set_dns_server(const dnsServer:MarshaledAString);cdecl;


	    {*
	     * @���� ��ȡSDK�汾��
	     * @return ����SDK�İ汾���ַ���
	     }
//	{}ssl_get_version(void)=char{*};
        function ssl_get_version():MarshaledAString;cdecl;


	    {*
	     * @���� ��ȡsessionid
	     * @return ����session�ַ���
	     }
//	{int} function buffer, int len():ssl_get_sessionidchar{*};cdecl;
        function ssl_get_sessionid(buffer:MarshaledAString;len:int):int;cdecl;

	    {*
	     *  ����session id
	     *
	     *  @param session session�ַ���
	     *  @param len     ����
	     }
//	{void} function char session,int len():ssl_set_sessionidconst{*};cdecl;
        procedure ssl_set_sessionid(const session:MarshaledAString;len:int);cdecl;


	    {*
	     * ����HOOK ���ӣ����filter֮���÷ֺŸ���
	     * @param filter[in] ���˵Ĺ���
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

