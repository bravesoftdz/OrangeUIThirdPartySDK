//
//  IFlyUserWords.h
//  MSC
//
//  Created by ypzhao on 13-2-26.
//  Copyright (c) 2013�� iflytek. All rights reserved.
//

unit IFlyUserWords_iOSApi;

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
	 *  �û��ʱ���
	 *    ��ȡ�û��ʱ���Ϊ�˸��õ�����ʶ��(iat)���û��ʱ�Ҳ���ڸ��Ի���һ����.
	 }
	IFlyUserWords=interface(NSObject)//
	['{3D180739-FFA3-47C8-ADD1-120A940DFFE7}']
		
		{!
		 *  ��ʼ������
		 *
		 *  �ڽ��г�ʼ��ʱ����Ҫ����ĸ�ʽ���£�
		 *  <pre><code>{\"userword\":[{\"name\":\"iflytek\",\"words\":[\"�ƴ�Ѷ��\",
		 *  \"��ƽ̨\",\"�û�����\",\"��ʼ�ϴ�����\"]}]}</code></pre>
		 *
		 *  @param json ��ʼ��ʱ���������
		 *
		 *  @return IFlyUserWords����
		 }
		{-} function initWithJson(json:NSString{*}):id;cdecl;
		
		{!
		 *  ������ת��Ϊ�ϴ������ݸ�ʽ
		 *
		 *  @return û�����ݻ��߸�ʽ����ʱ����nil
		 }
		{-} function toString:NSString{*};cdecl;
		
		{!
		 *  ����key��Ӧ������
		 *
		 *  @param key  ��putword:value�����õ�key
		 *
		 *  @return key��Ӧ������
		 }
		{-} function getWords(key:NSString{*}):NSArray{*};cdecl;
		
		{!
		 *  ���һ���û�������
		 *
		 *  @param key   �û��ʶ�Ӧ��key
		 *  @param value �ϴ����û�������
		 *
		 *  @return �ɹ�����YES,ʧ�ܷ���NO
		 }
		[MethodName('putWord:value:')]
		{-} function putWordvalue(key:NSString{*};value:NSString{*}):Boolean;cdecl;
		
		{!
		 *  ���һ������
		 *
		 *  @param key   �û��ʶ�Ӧ��key
		 *  @param words �ϴ����û�������
		 *
		 *  @return �ɹ�����YES,ʧ�ܷ���NO
		 }
		[MethodName('putwords:words:')]
		{-} function putwordswords(key:NSString{*};words:NSArray{*}):Boolean;cdecl;
		
		{!
		 *  �Ƿ����key��Ӧ���û�������
		 *
		 *  @param key �û��ʶ�Ӧ��key
		 *
		 *  @return �ɹ�����YES,ʧ�ܷ���NO
		 }
		{-} function containsKey(key:NSString{*}):Boolean;cdecl;
	end;
	
	IFlyUserWordsClass=interface(NSObjectClass)//
	['{91A77C18-1B72-4174-9365-DB10876378D6}']
	end;
	
	TIFlyUserWords=class(TOCGenericImport<IFlyUserWordsClass,IFlyUserWords>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyUserWords_FakeLoader : IFlyUserWords; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyUserWords';
{$O+}


{$ENDIF}

end.

