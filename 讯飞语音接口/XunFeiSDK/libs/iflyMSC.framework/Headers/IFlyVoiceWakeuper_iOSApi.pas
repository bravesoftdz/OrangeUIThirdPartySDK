//
//  IFlyVoiceWakeuper.h
//  wakeup
//
//  Created by admin on 14-3-18.
//  Copyright (c) 2014年 iflytek. All rights reserved.
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
	 
	  版本描述：唤醒1.0.0.1
	 
	  语音唤醒资源占用（iPhone5s实测）<br>
	  内存占用：3M<br>
	  CPU占用：< 12%
	 
	 
	  唤醒服务接口时序描述
	 
	  sharedInstance 创建唤醒实例<br>
	  setParameter 设置服务参数
	 
	    例：[_voiceWakeuper setParameter:@"wake" forKey:@"sst"];
	        sst 表示服务类型，wake是唤醒，enroll是注册
	 
	    例：[_voiceWakeuper setParameter:@"m_wakeupResPath" forKey:@"ivw_wake_list"];
	        ivw_wake_list 表示唤醒资源的路径
	 
	    例：[_voiceWakeuper setParameter:@"holdValue" forKey:@"ivw_threshold"];
	        ivw_threshold 表示唤醒资源的阀值，holdValue形式：
	            ID：20；15；30
	            每个数字代表对应资源的阀值，15表示资源1阀值，20表示资源2阀值，30表示资源3阀值
	            本demo只有一个资源设置为ID：20 则可
	 
	  startListening启动服务<br>
	  stopListening 取消服务，但是不释放内部资源<br>
	  cancel 终止服务，并释放内部资源
	
	 
	 *参数定义
	
	 * 服务设置参数<br>
	  sst=wake表示唤醒<br>
	  sst=enroll表示注册<br>
	     SESSION_TYPE                @"sst"    //服务类型<br>
	      WAKEUP                  @"wake"             //唤醒<br>
	     ENROLL                  @"enroll"           //注册
	 
	 * 唤醒时，表示资源对应的阀值，为输入值，参数类型为：ID:20;20;3<br>
	    以ID为起始，中间用“;”隔开，表示公三个资源，各自阀值对应为20，20和3<br>
	    IVW_THRESHOLD           @"ivw_threshold"    //唤醒词对应的门限
	
	 
	 * 传入参数<br>
	  主要是没有定义的参数，依赖params传入<br>
	     PARAM                   @"params"
	
	
	 * 训练，合并生成的资源路径
	 
	  例：ivw_word_path=/abc/123/newpath.irf<br>
	     IVW_WORD_PATH               @"ivw_word_path"
	
	
	
	 * 业务成功后的会话持续状态<br>
	    keep_alive 0:唤醒一次就结束，1：唤醒后继续<br>
	     KEEP_ALIVE              @"keep_alive"
	
	
	 * focus_type注册和唤醒的返回参数<br>
	  wake 唤醒<br>
	  enroll 注册<br>
	     FOCUS_TYPE              @"focus_type"       //服务类型
	
	
	 * 服务状态<br>
	  status=success 服务正常<br>
	  status=failed 服务失败<br>
	  status=done 注册完成<br>
	     STATUS                  @"status"     //服务状态<br>
	     SUCESS                  @"success"   //服务成功<br>
	     FAILED                  @"failed"   //服务失败<br>
	     DONE                    @"done"     //训练完成<br>
	
	
	 * 唤醒结果的位置<br>
	     ID                      @"id"     //唤醒结果的id
	
	
	 * 唤醒资源的阀值<br>
	  注册时返回，表示注册资源对应的阀值，为输出值<br>
	     THRESHOLD               @"threshold"  //训练资源的阀值
	
	
	 * 服务结果的可信度<br>
	     SCORE                   @"score"  //服务结果可信度
	
	
	 * 为注册时返回，表示已经注册成功的次数<br>
	     NUM                     @"num"     //已训练成功次数
	
	
	 * 表示服务传入音频对应的起始点和结束点<br>
	     BOS                     @"bos"     //前端点<br>
	     EOS                     @"eos"     //后端点
	
	
	 * 录音方式，如果是外部数据，设置为-1，通过WriteAudio送入音频<br>
	    注意：目前紧紧支持唤醒服务，注册业务尚不支持<br>
	     AUDIO_SOURCE            @"audio_source"
	
	
	 * 表示资源合并操作<br>
	 MERGE_RES_ACTION @"merge"
	
	}
	IFlyVoiceWakeuper=interface(NSObject)//
	['{F4867EDD-A9D4-4CC1-B7CA-302E487208A5}']
		
		
		
		
		{!
		 * 代理
		 }
		function delegate:PIFlyVoiceWakeuperDelegate{id<IFlyVoiceWakeuperDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlyVoiceWakeuperDelegate{id<IFlyVoiceWakeuperDelegate>});cdecl;
		
		{!
		 * 创建唤醒实例，采用单例模式
		 }
		
		
		{!
		 * 启动唤醒
		 * 返回值:YES 成功，NO：失败
		 }
		{-} function startListening:Boolean;cdecl;
		
		{!
		 * 取消唤醒会话<br>
		 * 注意与cancel的区别，紧紧停止服务，并不释放资源
		 }
		{-} function stopListening:Boolean;cdecl;
		
		{!
		 * 获取工作参数
		 }
		{-} function getParameter(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 * 设置工作参数<br>
		 * 注意服务正在运行中，不能设置参数
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 * 取消唤醒会话，并释放内部资源
		 }
		{-} function cancel:Boolean;cdecl;
		
		{!
		 * 唤醒业务更新，目前支持合并资源操作
		 }
		//+(int) updateWords:(NSString *)action params:(NSString*) params;
		
		{!
		 * 写入录音数据<br>
		 * 暂时紧紧支持唤醒的写入，注册服务尚不支持
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

