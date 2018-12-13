//
//  IFlySetting.h
//  MSC
//
//  Created by iflytek on 13-4-12.
//  Copyright (c) 2013�� iflytek. All rights reserved.
//

unit IFlySetting_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.UIKit,
	iOSApi.OpenGLES,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;

	
	{!
	 *  ��־��ӡ�ȼ�
	 }
//	=NS_OPTIONS(NSInteger,;
	    {!
	     *  ȫ����ӡ
	     }
	
	    {!
	     *  �ߣ��쳣������Ҫ�ļ���
	     }
	
	    {!
	     *  �У���ӡ������־��Ϣ
	     }
	
	    {!
	     *  �ͣ�ֻ��ӡ��Ҫ��־��Ϣ
	     }
	
	    {!
	     *  ����ӡ
	     }


///*!
// *  ��־��ӡ�ȼ�
// */
//typedef NS_OPTIONS(NSInteger, LOG_LEVEL){
  LOG_LEVEL_=(
//    /*!
//     *  ȫ����ӡ
//     */
    LVL_ALL                 = -1,
//    /*!
//     *  �ߣ��쳣������Ҫ�ļ���
//     */
    LVL_DETAIL              = 31,
//    /*!
//     *  �У���ӡ������־��Ϣ
//     */
    LVL_NORMAL              = 15,
//    /*!
//     *  �ͣ�ֻ��ӡ��Ҫ��־��Ϣ
//     */
    LVL_LOW                 = 7,
//    /*!
//     *  ����ӡ
//     */
    LVL_NONE                = 0
    );

  LOG_LEVEL=Integer;


	{!
	 *   �˽ӿ�ΪiflyMSC sdk ���ýӿڡ�<br>
	 *   ���Ի�ȡ�汾�ţ�������־��ӡ�ȼ���
	 }
	IFlySetting=interface(NSObject)//
	['{06E15A9F-04EE-4A09-9FE2-B3B8F0D9A532}']
		
		{!
		 *  ��ȡ�汾��
		 *
		 *  @return  �汾��
		 }
		
		{!
		 *  ��ȡ��־�ȼ�
		 *
		 *  @return ������־�ȼ�
		 }
		
		{!
		 *  �Ƿ��ӡ����̨log<br>
		 *  ���������ʱ������رմ�log��
		 *
		 *  @param showLog -[in] YES,��ӡlog;NO,����ӡ
		 }
		
		{!
		 *  ������־msc.log����·���Լ���־�ȼ�
		 *
		 *  | ��־��ӡ�ȼ�             | ����                               |
		 *  |------------------------|-----------------------------------|
		 *  | LVL_ALL                | ȫ����ӡ                           |
		 *  | LVL_DETAIL             | �ߣ��쳣������Ҫ�ļ���                |
		 *  | LVL_NORMAL             | �У���ӡ������־��Ϣ                  |
		 *  | LVL_LOW                | �ͣ�ֻ��ӡ��Ҫ��־��Ϣ                |
		 *  | LVL_NONE               | ����ӡ                             |
		 *
		 *  @param level  -[in] ��־��ӡ�ȼ�
		 }
		
		{!
		 *  ������־�ļ���·��<br>
		 *  ��־�ļ�Ĭ�ϴ����DocumentsĿ¼��
		 *
		 *  @param path  -[in] ��־�ļ���ȫ·��
		 }
		
	end;
	
	IFlySettingClass=interface(NSObjectClass)//
	['{6620076E-76AA-4F17-B11A-3E9068E8FEEE}']
		{+} function getVersion:NSString{*};cdecl;
		{+} function logLvl:LOG_LEVEL;cdecl;
		{+} procedure showLogcat(showLog:Boolean);cdecl;
		{+} procedure setLogFile(level:LOG_LEVEL);cdecl;
		{+} procedure setLogFilePath(path:NSString{*});cdecl;
	end;
	
	TIFlySetting=class(TOCGenericImport<IFlySettingClass,IFlySetting>)
	end;
{$ENDIF}


implementation

{$IFDEF IOS}

{$O-}
function IFlySetting_FakeLoader : IFlySetting; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySetting';
{$O+}


{$ENDIF}

end.

