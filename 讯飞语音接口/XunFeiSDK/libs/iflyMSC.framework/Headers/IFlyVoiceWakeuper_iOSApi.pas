//
//  IFlyVoiceWakeuper.h
//  wakeup
//
//  Created by admin on 14-3-18.
//  Copyright (c) 2014�� iflytek. All rights reserved.
//


unit IFlyVoiceWakeuper_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	IFlyVoiceWakeuperDelegate_iOSApi,
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
	PIFlyVoiceWakeuperDelegate=Pointer;//PIFlyVoiceWakeuperDelegate=Pointer of IFlyVoiceWakeuperDelegate; ILocalObject(IFlyVoiceWakeuperDelegate).GetObjectID

	
	{!
	 
	  �汾����������1.0.0.1
	 
	  ����������Դռ�ã�iPhone5sʵ�⣩<br>
	  �ڴ�ռ�ã�3M<br>
	  CPUռ�ã�< 12%
	 
	 
	  ���ѷ���ӿ�ʱ������
	 
	  sharedInstance ��������ʵ��<br>
	  setParameter ���÷������
	 
	    ����[_voiceWakeuper setParameter:@"wake" forKey:@"sst"];
	        sst ��ʾ�������ͣ�wake�ǻ��ѣ�enroll��ע��
	 
	    ����[_voiceWakeuper setParameter:@"m_wakeupResPath" forKey:@"ivw_wake_list"];
	        ivw_wake_list ��ʾ������Դ��·��
	 
	    ����[_voiceWakeuper setParameter:@"holdValue" forKey:@"ivw_threshold"];
	        ivw_threshold ��ʾ������Դ�ķ�ֵ��holdValue��ʽ��
	            ID��20��15��30
	            ÿ�����ִ����Ӧ��Դ�ķ�ֵ��15��ʾ��Դ1��ֵ��20��ʾ��Դ2��ֵ��30��ʾ��Դ3��ֵ
	            ��demoֻ��һ����Դ����ΪID��20 ���
	 
	  startListening��������<br>
	  stopListening ȡ�����񣬵��ǲ��ͷ��ڲ���Դ<br>
	  cancel ��ֹ���񣬲��ͷ��ڲ���Դ
	
	 
	 *��������
	
	 * �������ò���<br>
	  sst=wake��ʾ����<br>
	  sst=enroll��ʾע��<br>
	     SESSION_TYPE                @"sst"    //��������<br>
	      WAKEUP                  @"wake"             //����<br>
	     ENROLL                  @"enroll"           //ע��
	 
	 * ����ʱ����ʾ��Դ��Ӧ�ķ�ֵ��Ϊ����ֵ����������Ϊ��ID:20;20;3<br>
	    ��IDΪ��ʼ���м��á�;����������ʾ��������Դ�����Է�ֵ��ӦΪ20��20��3<br>
	    IVW_THRESHOLD           @"ivw_threshold"    //���Ѵʶ�Ӧ������
	
	 
	 * �������<br>
	  ��Ҫ��û�ж���Ĳ���������params����<br>
	     PARAM                   @"params"
	
	
	 * ѵ�����ϲ����ɵ���Դ·��
	 
	  ����ivw_word_path=/abc/123/newpath.irf<br>
	     IVW_WORD_PATH               @"ivw_word_path"
	
	
	
	 * ҵ��ɹ���ĻỰ����״̬<br>
	    keep_alive 0:����һ�ξͽ�����1�����Ѻ����<br>
	     KEEP_ALIVE              @"keep_alive"
	
	
	 * focus_typeע��ͻ��ѵķ��ز���<br>
	  wake ����<br>
	  enroll ע��<br>
	     FOCUS_TYPE              @"focus_type"       //��������
	
	
	 * ����״̬<br>
	  status=success ��������<br>
	  status=failed ����ʧ��<br>
	  status=done ע�����<br>
	     STATUS                  @"status"     //����״̬<br>
	     SUCESS                  @"success"   //����ɹ�<br>
	     FAILED                  @"failed"   //����ʧ��<br>
	     DONE                    @"done"     //ѵ�����<br>
	
	
	 * ���ѽ����λ��<br>
	     ID                      @"id"     //���ѽ����id
	
	
	 * ������Դ�ķ�ֵ<br>
	  ע��ʱ���أ���ʾע����Դ��Ӧ�ķ�ֵ��Ϊ���ֵ<br>
	     THRESHOLD               @"threshold"  //ѵ����Դ�ķ�ֵ
	
	
	 * �������Ŀ��Ŷ�<br>
	     SCORE                   @"score"  //���������Ŷ�
	
	
	 * Ϊע��ʱ���أ���ʾ�Ѿ�ע��ɹ��Ĵ���<br>
	     NUM                     @"num"     //��ѵ���ɹ�����
	
	
	 * ��ʾ��������Ƶ��Ӧ����ʼ��ͽ�����<br>
	     BOS                     @"bos"     //ǰ�˵�<br>
	     EOS                     @"eos"     //��˵�
	
	
	 * ¼����ʽ��������ⲿ���ݣ�����Ϊ-1��ͨ��WriteAudio������Ƶ<br>
	    ע�⣺Ŀǰ����֧�ֻ��ѷ���ע��ҵ���в�֧��<br>
	     AUDIO_SOURCE            @"audio_source"
	
	
	 * ��ʾ��Դ�ϲ�����<br>
	 MERGE_RES_ACTION @"merge"
	
	}
	IFlyVoiceWakeuper=interface(NSObject)//
	['{F4867EDD-A9D4-4CC1-B7CA-302E487208A5}']
		
		
		
		
		{!
		 * ����
		 }
		function delegate:PIFlyVoiceWakeuperDelegate{id<IFlyVoiceWakeuperDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlyVoiceWakeuperDelegate{id<IFlyVoiceWakeuperDelegate>});cdecl;
		
		{!
		 * ��������ʵ�������õ���ģʽ
		 }
		
		
		{!
		 * ��������
		 * ����ֵ:YES �ɹ���NO��ʧ��
		 }
		{-} function startListening:Boolean;cdecl;
		
		{!
		 * ȡ�����ѻỰ<br>
		 * ע����cancel�����𣬽���ֹͣ���񣬲����ͷ���Դ
		 }
		{-} function stopListening:Boolean;cdecl;
		
		{!
		 * ��ȡ��������
		 }
		{-} function getParameter(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 * ���ù�������<br>
		 * ע��������������У��������ò���
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 * ȡ�����ѻỰ�����ͷ��ڲ���Դ
		 }
		{-} function cancel:Boolean;cdecl;
		
		{!
		 * ����ҵ����£�Ŀǰ֧�ֺϲ���Դ����
		 }
		//+(int) updateWords:(NSString *)action params:(NSString*) params;
		
		{!
		 * д��¼������<br>
		 * ��ʱ����֧�ֻ��ѵ�д�룬ע������в�֧��
		 }
		//-(int) writeAudio:(const void*)buffer offset:(int)offset  length:(int)length;
		
		function isListening:Boolean;cdecl;
		procedure setIsListening(isListening:Boolean);cdecl;
		
	end;
	
	IFlyVoiceWakeuperClass=interface(NSObjectClass)//
	['{A1D6A84E-0F14-4CBB-8BDA-5026D66F1E16}']
		{+} function sharedInstance:IFlyVoiceWakeuper;cdecl;
	end;
	
	TIFlyVoiceWakeuper=class(TOCGenericImport<IFlyVoiceWakeuperClass,IFlyVoiceWakeuper>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyVoiceWakeuper_FakeLoader : IFlyVoiceWakeuper; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyVoiceWakeuper';
{$O+}


{$ENDIF}

end.

