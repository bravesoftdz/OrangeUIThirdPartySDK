unit sdkheader_iOSApi;

interface

{$IFDEF IOS}
uses
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.UIKit,
	iOSApi.OpenGLES,
	iOSApi.Foundation,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;
{$ENDIF}

const
	SSL_AUTH_TYPE_FIRSTAUTH  	=-1000; 	//** ��һ����֤ */
	SSL_AUTH_TYPE_CERTIFICATE  	=0;   	//** ֤����֤ */
	SSL_AUTH_TYPE_PASSWORD      =1;   	//** �û���������֤ */
	SSL_AUTH_TYPE_SMS           =2;   	//** ������֤ */
	SSL_AUTH_TYPE_SMS1          =3;   	//**���»�ȡ������֤�� */
	SSL_AUTH_TYPE_HARDID        =4;   	//** Ӳ�������� */
	SSL_AUTH_TYPE_USBKEY        =5;   	//** USBKEY��֤ */
	SSL_AUTH_TYPE_RADIUS        =6;   	//** RADIUS��ս��֤ */
	SSL_AUTH_TYPE_TOKEN         =7;   	//** ������֤ */
	SSL_AUTH_TYPE_AUTHOR        =10;      //** ��Ȩ��֤ */
	SSL_AUTH_TYPE_TWF           =16;  	//** TWF��֤ */

  //��ΪͬAUTH_TYPE_NONEһ��
	SSL_AUTH_TYPE_NONE          =17;  	//** ����֤ */

	START_RECONNECT             =0;  //��ʼ��������
	END_RECONNECT               =1;  //������������
	SUCCESS                    =-1;  //�������ӳɹ�
	FAILD                       =0;  //��������ʧ��

	PORPERTY_NamePasswordAuth_NAME      ='NamePasswordAuth.name';
	PORPERTY_NamePasswordAuth_PASSWORD  ='NamePasswordAuth.password';
	PORPERTY_HardIdAuth_HARDID          ='HardIdAuth.hardid';
	PORPERTY_Keychain_Identifier        ='sangfor.keychain.identifier';
	PORPERTY_ZkyTwfidAuth_TWFID         ='ZkyTwfidAuth.twfid';


	CERT_PASSWORD                       ='CertAuth.Certs.PassWord';  //֤�������
	CERT_P12_FILE_NAME                  ='CertAuth.Certs.P12File';   //P12֤��·��
	CERT_PEM_KEY_FILE_NAME              ='CertAuth.Certs.PEM.KeyFile'; //PEM key�ļ�
	CERT_PEM_CERT_FILE_NAME             ='CertAuth.Certs.Cert.KeyFile'; //PEM RTS˽Կ�ļ�
	CERT_PEM_KEY_CONTENT                ='CertAuth.Certs.PEM.KeyConten'; //PEM key���ݱ���
	CERT_PEM_CERT_CONTENT               ='CertAuth.Certs.Cert.KeyConten'; //PEM RTS����ASN1����
	SMS_AUTH_CODE                       ='Message.Auth.Code';        //������֤��code
	CHALLENGE_AUTH_REPLY                ='Challenge.Auth.Reply';      //radius��ս�Ĵ�
	ACCESS_GROUPS_SHARE_KEY             ='IndentfyAccessGroups.Key'; //keyChain������ַ���
	CERT_AUTH_SLECT_AUTH                ='CertAuth.Whether.Chosse.Identity'; //����֤��ѡ��֤����
	SET_RND_IMAGE_AUTH                  ='NamePasswordAuth.Set.Randcode'; //����ͼ��У������֤
	GET_RND_IMAGE                       ='FirstAuth.RNDIMG';         //ͼ��У����
	SET_RND_CODE_STR                    ='NamePasswordAuth.svpn_rand_code'; //ͼ��У����
	AUTH_RND_CODE_CALL_BACK             ='RNDCode.CallBack';         //��ȡͼ��У�����callback
	AUTH_WITH_RND_CODE                  ='RNDCode.Enable';           //����ͼ��У����
	AUTH_CONNECT_TIME_OUT               ='Auth.Connect.timeout';     //��֤���ӳ�ʱʱ��
	KEYCHAIN_ACESS_KEY                  ='Keychain.Access.Key';
	    //����������keychain��ʶ
	    //�ر�SDK�Զ���½��ѡ�����ʹ�ô�ѡ��ر��Զ���½�Ĺ��ܣ������ݴ���������Ż��Ĵ���
	    //�ڲ����øùؼ��ֵ�ʱ��Ĭ���ǿ����Զ���½��ѡ�������ǰ�ϰ汾�Ĺ��ܣ�����ر��Զ���½��
	    //֧��IOS7��SDK�Է��Զ���½������½��������ݴ���������Ż������ݴ��䴫�������
	AUTO_LOGIN_OFF_KEY                   ='SangforSdk.AutoLogin.Off.Key';
	AUTH_DEVICE_ID                       ='Auth.Device.id';  //device id



{$IFDEF IOS}

type
	//declare pointer
	id=Pointer;
  int=Integer;

	//
	//  sdkheader.h
	//  forwardSdk
	//
	//  Created by Huang Shounan on 12-9-6.
	//  Copyright (c) 2012�� Huang Shounan. All rights reserved.
	//
	
	//#ifndef __FORWARD_SDK_HEADER_H__
//	__FORWARD_SDK_HEADER_H__

	//#include <stdint.h>
	
	//#ifdef __cplusplus
	
	
	//#endif //__cplusplus
	
	    //����֤�����ݽṹ��,ע��ΪX509�ṹ
	IdentityData=record
		{}data:Pointer;//void{*};//����֤�飬����
		len:Integer;//����֤�����ݵĳ���
	end;
	PIdentityData=^IdentityData;
	IdentityDataArray=array of IdentityData;
	PIdentityDataArray=^IdentityDataArray;
	



	    {* ����VPN��ʼ������֤�ӿں�Ľ����������ȡ������Ϣ��ͨ��vpn_geterr()��ȡ *}
	VPN_RESULT_NO_=(
			RESULT_VPN_L3VPN_FAIL = -3,		// L3VPN����ʧ��
	        RESULT_VPN_INIT_FAIL = -2,  //��ʼ��SVPN��½ʧ��
	        RESULT_VPN_AUTH_FAIL = -1,  //��֤ʧ��
	        RESULT_VPN_NONE = 0,  // ��Чֵ
	        RESULT_VPN_INIT_SUCCESS = 1,  //��ʼ��VPN�ɹ�
	        RESULT_VPN_AUTH_SUCCESS = 2,  //��֤�ɹ�
	        RESULT_VPN_AUTH_LOGOUT = 3,  //vpnע����
			RESULT_VPN_AUTH_CANCEL = 4,		// vpn��֤ȡ����
			RESULT_VPN_L3VPN_SUCCESS = 5,	// L3VPN�����ɹ�
			RESULT_VPN_OTHER = 6//,			// ��������״̬
	);
	VPN_RESULT_NO=Integer;
	
		{* ��������״̬��������չ *}
	VPN_RESULT_OTHER_NO_=(
			VPN_OTHER_RELOGIN_FAIL = 0//,		// �������⵼������ʧ��
	);
	VPN_RESULT_OTHER_NO=Integer;
	
	    {* VPN״̬�� *}
	VPN_STATUS_=(
	        VPN_STATUS_UNSTART = 0,  // δ����
	        VPN_STATUS_INITING,  // ���ڳ�ʼ��
	        VPN_STATUS_INIT_OK,  // ��ʼ�����
	        VPN_STATUS_LOGINING,  // ���ڽ�����֤
	        VPN_STATUS_RELOGIN,  // ���½�����֤
	        VPN_STATUS_OK,  // Ҳ������֤�ɹ�,����������
	        VPN_STATUS_EXITING,  // �����˳�VPN��״̬
	        VPN_STATUS_ERR_THREAD,  // �����̴߳���
	        VPN_STATUS_LOGOUT,  // �û��Ѿ�ע��
	        VPN_STATUS_TIME_OUT,  // ��ѯVPN״̬��ʱ�����������
	        VPN_STATUS_QUERY_ERR  // vpn��ѯʱ���ִ���
	);
	VPN_STATUS=Integer;
	
	    {*
	     * @���� SDK��VPN�ص�������ע�����������½����߳��лص�������ö������̰߳�ȫ���߳�����������
	     * @param vpnErrno vpn���ӽ�����ɹ�����ERROR_VPN_SUCCESS��ʧ�ܷ��ض�Ӧ�Ĵ����룬���������Ϣ��ͨ����ȡ������Ϣ�ӿڻ�ȡ
	     * @param authType �ɹ�������֤���ͣ�ʧ�ܷ�����Чֵ0
	     *
	     * @return ��
	     *}
//	VPN_RESULT_NO result, const int authType)=void(*VPN_CALL_BACK)(const;
  VPN_CALL_BACK=procedure(const result:VPN_RESULT_NO;const authType:int);cdecl;

	    {*
	     * @���� ֤����֤ʱ��֤������ƥ��ص�������ע��˻ص���������������keychain��keyֵʱ�Ż���Ч
	     * @param identityVec ֤������
	     * @param len  ֤��������֤��ĸ���
	     * @return  < count ����֤����֤��ѡ��֤�������ֵ����1��ʾ��ѡ��û�з��ϵ�֤��
	     }
//	IdentityData *identityVec, const int count)=int(*CERT_AUTH_CALL_BACK)(const;
  CERT_AUTH_CALL_BACK=procedure(const identityVec:PIdentityData;const count:int);cdecl;


	    {*
	     * ��ȡͼ�����CallBack����
	     * @param addr ������ͼƬ
	     * @param addrlen �����Ƶĳ���
	     *}
//	void *addr, uint32_t addrlen)=void(*RND_CODE_CALL_BACK)(const;
  RND_CODE_CALL_BACK=procedure(const addr:Pointer;addrlen:uint32);cdecl;


//	int status, int result)=void(*RECONNECT_CALL_BACK)(const;
  RECONNECT_CALL_BACK=procedure(const status:int;result:int);cdecl;


	//#ifdef __cplusplus
	
	
	//#endif //__cplusplus
	
	//#endif // __FORWARD_SDK_HEADER_H__
{$ENDIF}



implementation



{$IFDEF IOS}

{$O-}
{$O+}


{$ENDIF}

end.

