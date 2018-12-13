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
	{int} function callback,uint32_t host,uint16_t port():ssl_vpn_initVPN_CALL_BACK;cdecl;
	
	    {*
	     *@���ܣ���ʼ��½VPN����ʼѭ����֤һϵ����֤��ʽ����֤˳��ʽ�ɷ�������þ�����
	     *@param authType     ��in�� ��ǰ��֤������
	     *@return 0��ʾ��ǰ��֤Ԥ�ɹ���ע�Ⲣ����ʾ��֤�ɹ�����Ҫ֪����֤�Ƿ�ɹ���
	     *          ��Ҫ�鿴�ص������е���֤������֤�����룻 
	     *}
	{int} function int authType():ssl_vpn_loginconst;cdecl;
	
	    {*
	     *@ ���ܣ�ע����½VPN������
	     *return 0��ʾע���ɹ�����1��ʾʧ��
	     *}
	{} function ssl_vpn_logout(VPN_STATUS ssl_vpn_query_auth_state(void:oid);ssl_vpn_query_auth_state(void:PN_STATU):Integer;cdecl;
	
	    {*
	     * @ ���ܣ����ô����ַ���
	     *}
	{void} function char err():vpn_seterr_nbconst{*};cdecl;
	
	    {*
	     * @���� ��ȡVPN�����ַ���
	     * return NULL��ʾ��ȡʧ�ܣ���NULL��ʾ�ɹ����صĴ�����ʾ�ַ���
	     *}
	{}ssl_vpn_get_err(void)=char{*};
	
	    {*
	     * @���� ���ü�ֵ��
	     * @param key   ����
	     * @param value ��ֵ
	     *}
	{int} function char key, char value():ssl_vpn_set_login_paramconst{*};cdecl;
	
	    {*
	     * @����vqpn��¼������
	     * @param key[in] ����Ϊ�գ�Ϊ�ϱ���PORPERTY_��ͷ�ĺ�
	     *}
	{void} function char key():vpn_clear_login_paramconst{*};cdecl;
	
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
	{void*} function char key,void value,uint32_t  value_length():vpn_get_login_paramconst{*};cdecl;
	
	    {*
	     * @���� ��ȡӲ����������Ϣ�����ַ�������ʽ����
	     *
	     * @return Ӳ�������룬ע����ܻ�ȡʧ�ܡ�ʧ��ʱ����NULL
	     *}
	{}ssl_vpn_query_hardid(char buffer, int buffer_len)=char*{*};
	
	    {*
	     * @���� ��ȡ������֤ �ֻ���
	     * @return ���ض�����֤ �ֻ���
	     }
	{}ssl_get_sms_phonenumber(char buffer, int buffer_len)=char{*};
	
	    {*
	     * @���� ��ȡ������֤ �ٴη��͵���ʱ
	     * @return ���ض�����֤�ٴη��͵���ʱ
	     }
	{}ssl_get_sms_countdown()=char{*};
	
	    {*
	     * @���� ���û�ȡͼ����֤��CALLBACK
	     * @param callback
	     *}
	{void} function callback():ssl_vpn_set_rnd_code_call_backRND_CODE_CALL_BACK;cdecl;
	
	    {*
	     * @���� ��ȡͼ����֤��
	     *}
	{} function ssl_vpn_get_rnd_code(int ssl_set_no_eth_hardid(:;ssl_set_no_eth_hardid(:n):Integer;cdecl;
	
	    {*
	     * @���� �˳�VPN
	     *}
	{} function ssl_vpn_quit(int ssl_vpn_relogin(:oid);ssl_vpn_relogin(:n):Integer;cdecl;
	
	    {*
	     * @���� ����dns ��������IP��ַ
	     * @dnsServer dnsServer������Ip��ַ�ַ���
	     * 
	     * @return void
	     }
	{void} function char dnsServer():ssl_set_dns_serverconst{*};cdecl;
	
	    {*
	     * @���� ��ȡSDK�汾��
	     * @return ����SDK�İ汾���ַ���
	     }
	{}ssl_get_version(void)=char{*};
	
	    {*
	     * @���� ��ȡsessionid
	     * @return ����session�ַ���
	     }
	{int} function buffer, int len():ssl_get_sessionidchar{*};cdecl;
	
	    {*
	     *  ����session id
	     *
	     *  @param session session�ַ���
	     *  @param len     ����
	     }
	{void} function char session,int len():ssl_set_sessionidconst{*};cdecl;
	
	    {*
	     * ����HOOK ���ӣ����filter֮���÷ֺŸ���
	     * @param filter[in] ���˵Ĺ���
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

