//
//  IFlySpeechConstant.h
//  MSCDemo
//
//  Created by iflytek on 5/9/14.
//  Copyright (c) 2014 iflytek. All rights reserved.
//

unit IFlySpeechConstant_iOSApi;

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
	 *  公共常量类<br>
	 *  主要定义参数的key value值
	 }
	IFlySpeechConstant=interface(NSObject)//
	['{3E05CE1C-D8B7-442A-BEF8-517A70E59EDC}']
		
		
		//#pragma mark - 通用参数key
		
		{!
		 *  语音应用ID<br>
		 *  通过开发者网站申请
		 *
		 *  @return 语音应用IDkey
		 }
		
		
		{!
		 *  语言区域。
		 *
		 *  @return 语言区域key。
		 }
		
		{!
		 *  语言区域。
		 *
		 *  @return 普通话value。
		 }
		
		{!
		 *  语言区域。
		 *
		 *  @return 河南话value。
		 }
		
		{!
		 *  语言区域。
		 *
		 *  @return 四川话value。
		 }
		
		{!
		 *  语言区域。
		 *
		 *  @return 粤语value。
		 }
		
		{!
		 *  语言<br>
		 *  支持：zh_cn，zh_tw，en_us<br>
		 *
		 *  @return 语言key
		 }
		
		{!
		 *  语言
		 *
		 *  @return 中文value
		 }
		
		
		{!
		 *  语言
		 *
		 *  @return 中文台湾value
		 }
		
		{!
		 *  语言
		 *
		 *  @return 英文value
		 }
		
		{!
		 *  返回结果的数据格式，可设置为json，xml，plain，默认为json。
		 *
		 *  @return 返回结果的数据格式key
		 }
		
		{!
		 *  应用领域。
		 *
		 *  @return 应用领域key
		 }
		
		{!
		 *  个性化数据上传类型
		 *
		 *  @return 个性化数据上传类型key
		 }
		
		{!
		 *  语音输入超时时间<br>
		 *  单位：ms，默认30000
		 *
		 *  @return 语音输入超时时间key
		 }
		
		{!
		 *  网络连接超时时间<br>
		 *  单位：ms，默认20000
		 *
		 *  @return 网络连接超时时间key
		 }
		
		{!
		 *  业务类型。
		 *
		 *  @return 业务类型key。
		 }
		
		{!
		 *  扩展参数。
		 *
		 *  @return 扩展参数key。
		 }
		
		{!
		 *  加密参数
		 *
		 *  支持类型：ssl 加密  tcp 非加密 默认：tcp<br>
		 *  建议对安全性要求较高时使用ssl。
		 *
		 *  @return 加密参数key
		 }
		
		{!
		 *  ssl证书内容
		 *
		 *  @return ssl证书内容key
		 }
		
		{!
		 *  录音音量返回时间间隔。
		 *
		 *  @return 间隔key。
		 }
		
		{!
		 *  合成、识别、唤醒、评测、声纹等业务采样率。
		 *
		 *  @return 合成及识别采样率key。
		 }
		
		{!
		 *  合成、识别、唤醒、评测、声纹等业务采样率。
		 *
		 *  @return 合成及识别采样率8K Value。
		 }
		
		{!
		 *  合成、识别、唤醒、评测、声纹等业务采样率。
		 *
		 *  @return 合成及识别采样率16K Value。
		 }
		
		{!
		 *  引擎类型。<br>
		 *  可选：local，cloud，auto<br>
		 *  默认：auto
		 *
		 *  @return 引擎类型key。
		 }
		
		{!
		 *  本地识别引擎。
		 *
		 *  @return 本地识别引擎value。
		 }
		
		{!
		 *  云端识别引擎。
		 *
		 *  @return 云端识别引擎value。
		 }
		
		{!
		 *  混合识别引擎。
		 *
		 *  @return 混合识别引擎value。
		 }
		
		{!
		 *  引擎根据当前配置进行选择。
		 *
		 *  @return 引擎根据当前配置进行选择value。
		 }
		
		{!
		 *  输入文本编码格式。
		 *
		 *  @return 编码格式key。
		 }
		
		{!
		 *  结果编码格式。
		 *
		 *  @return 结果编码格式key。
		 }
		
		{!
		 *  是否初始化播放器<br>
		 *  SDK内部播放器采用音频队列实现，有部分外部需求需要自定义音频队列，可以通过此开关控制<br>
		 *  0:不初始化，非0或者参数为空:初始化，默认初始化
		 *
		 *  @return 是否初始化播放器参数key
		 }
		
		{!
		 *  是否播放器结束后发送deactive系统通知<br>
		 *  SDK内部播放器结束后可通过此开关发送deactive系统通知，使其他被中断的音频应用解除中断<br>
		 *  0:不发送，非0或者参数为空:发送，默认发送
		 *
		 *  @return 是否播放器结束后发送deactive系统通知参数key
		 }
		
		{*
		 *  是否初始化录音器<br>
		 *  SDK内部录音器采用音频队列实现，有部分外部需求需要自定义音频队列，可以通过此开关控制<br>
		 *  0:不初始化，非0或者参数为空:初始化，默认初始化
		 *
		 *  @return 是否初始化录音器参数key
		 }
		
		{*
		 *  是否录音器结束后发送deactive系统通知<br>
		 *  SDK内部录音器结束后可通过此开关发送deactive系统通知，使其他被中断的音频应用解除中断<br>
		 *  0:不发送，非0或者参数为空:发送，默认发送
		 *
		 *  @return 是否录音器结束后发送deactive系统通知参数key
		 }
		
		
		//#pragma mark -  合成相关设置key
		{!
		 *  语速<br>
		 *  范围 （0~100） 默认值:50
		 *
		 *  @return 语速key
		 }
		
		{!
		 *  音调<br>
		 *  范围（0~100）默认值:50
		 *
		 *  @return 音调key
		 }
		
		{!
		 *  合成录音保存路径
		 *
		 *  注意:只需要设置文件名则可，会自动拼接到[IFlySetting setLogFilePath]接口设置的目录后
		 *
		 *  @return 合成录音保存路径key
		 }
		
		{*
		 *  启用VAD功能
		 *
		 *  @return 启用VAD功能key
		 }
		
		{!
		 *  VAD前端点超时<br>
		 *  范围：0-10000(单位ms)
		 *
		 *  @return VAD前端点超时key
		 }
		
		{!
		 *  VAD后端点超时。<br>
		 *  可选范围：0-10000(单位ms)
		 *
		 *  @return VAD后端点超时key
		 }
		
		
		{
		 *  云端支持如下发音人：
		 *  对于网络TTS的发音人角色，不同引擎类型支持的发音人不同，使用中请注意选择。
		 *
		 *  |--------|----------------|
		 *  |  发音人 |  参数          |
		 *  |--------|----------------|
		 *  |  小燕   |   xiaoyan     |
		 *  |--------|----------------|
		 *  |  小宇   |   xiaoyu      |
		 *  |--------|----------------|
		 *  |  凯瑟琳 |   catherine   |
		 *  |--------|----------------|
		 *  |  亨利   |   henry       |
		 *  |--------|----------------|
		 *  |  玛丽   |   vimary      |
		 *  |--------|----------------|
		 *  |  小研   |   vixy        |
		 *  |--------|----------------|
		 *  |  小琪   |   vixq        |
		 *  |--------|----------------|
		 *  |  小峰   |   vixf        |
		 *  |--------|----------------|
		 *  |  小梅   |   vixl        |
		 *  |--------|----------------|
		 *  |  小莉   |   vixq        |
		 *  |--------|----------------|
		 *  |  小蓉   |   vixr        |
		 *  |--------|----------------|
		 *  |  小芸   |   vixyun      |
		 *  |--------|----------------|
		 *  |  小坤   |   vixk        |
		 *  |--------|----------------|
		 *  |  小强   |   vixqa       |
		 *  |--------|----------------|
		 *  |  小莹   |   vixyin      |
		 *  |--------|----------------|
		 *  |  小新   |   vixx        |
		 *  |--------|----------------|
		 *  |  楠楠   |   vinn        |
		 *  |--------|----------------|
		 *  |  老孙   |   vils        |
		 *  |--------|----------------|
		 }
		
		{!
		 *  发音人
		 * 
		 *  云端支持如下发音人：<br>
		 *  对于网络TTS的发音人角色，不同引擎类型支持的发音人不同，使用中请注意选择。<br>
		 *
		 *  |  发音人   |  参数             |
		 *  |:--------:|:----------------:|
		 *  |  小燕     |   xiaoyan        |
		 *  |  小宇     |   xiaoyu         |
		 *  |  凯瑟琳   |   catherine      |
		 *  |  亨利     |   henry          |
		 *  |  玛丽     |   vimary         |
		 *  |  小研     |   vixy           |
		 *  |  小琪     |   vixq           |
		 *  |  小峰     |   vixf           |
		 *  |  小梅     |   vixl           |
		 *  |  小莉     |   vixq           |
		 *  |  小蓉     |   vixr           |
		 *  |  小芸     |   vixyun         |
		 *  |  小坤     |   vixk           |
		 *  |  小强     |   vixqa          |
		 *  |  小莹     |   vixyin         |
		 *  |  小新     |   vixx           |
		 *  |  楠楠     |   vinn           |
		 *  |  老孙     |   vils           |
		 *
		 *  @return 发音人key
		 }
		
		{!
		 * 发音人ID key。
		 *
		 * @return 发音人ID key
		 }
		
		{!
		 * 发音人语种 key。
		 *
		 * 参数值：0:Auto 1:中文 2英文 ，默认 0.
		 *
		 * @return 发音人ID key
		 }
		
		{!
		 *  音量<br>
		 *  范围（0~100） 默认值:50
		 *
		 *  @return 音量key
		 }
		
		{!
		 *  合成音频播放缓冲时间<br>
		 *  即缓冲多少秒音频后开始播放，如tts_buffer_time=1000;<br>
		 *  默认缓冲1000ms毫秒后播放。
		 *
		 *  @return 合成音频播放缓冲时间缓冲时间key
		 }
		
		
		{!
		 *  合成数据是否即时返回
		 *
		 *  是否需要数据回调，为1时，当合成一段音频会通过onEvent回调返回，直接合成结束；<br>
		 *  设置为1为即时返回；0为非即时返回；默认值为0；
		 *
		 *  @return 合成数据即时返回key
		 }
		
		{!
		 *  预合成文本
		 *
		 *  @return 预合成文本参数key
		 }
		
		{!
		 *  是否需要打开MPPlayingInfocenter<br>
		 *  是否需要初始化MPPlayerCenter的属性;0:需要初始化，1:不初始化
		 *
		 *  @return 是否需要打开MPPlayingInfocenter 参数key
		 }
		
		//#pragma mark - 识别、听写、语义相关设置key
		
		{!
		 *  录音源<br>
		 *  录音时的录音方式，默认为麦克风，设置为1；<br>
		 *  如果需要外部送入音频，设置为-1，通过WriteAudio接口送入音频。
		 *
		 *  @return 录音源key
		 }
		
		{!
		 *  识别录音保存路径
		 *
		 *  @return 识别录音保存路径key
		 }
		
		{!
		 *  设置是否开启语义
		 *
		 *  @return 设置是否开启语义key
		 }
		
		{!
		 *  设置是否有标点符号
		 *
		 *  @return 设置是否有标点符号key
		 }
		
		{!
		 *  ASR_PTT 参数值：设置带标点符号
		 *
		 *  @return 设置是有标点符号Value
		 }
		
		{!
		 *  ASR_PTT 参数值：设置不带标点符号
		 *
		 *  @return 设置是无标点符号Value
		 }
		
		{!
		 *  本地语法名称。<br>
		 *  本地语法名称，对应云端的有CLOUD_GRAMMAR
		 *
		 *  @return 本地语法名称key。
		 }
		
		{!
		 *  云端语法ID。<br>
		 *  云端编译语法返回的表示，早期版本使用GRAMMAR_ID，仍然兼容，但建议使用新的。
		 *
		 *  @return 云端语法ID key。
		 }
		
		{!
		 *  语法类型
		 *
		 *  @return 语法类型key
		 }
		
		{!
		 *  语法内容。
		 *
		 *  @return 语法内容key。
		 }
		
		{!
		 *  字典内容。
		 *
		 *  @return 字典内容key。
		 }
		
		{!
		 *  字典名字。
		 *
		 *  @return 字典名字key。
		 }
		
		{!
		 *  语法名称列表。
		 *
		 *  @return 语法名称列表key。
		 }
		
		{!
		 *  开放语义协议版本号。<br>
		 *  如需使用请在http://osp.voicecloud.cn/上进行业务配置
		 *
		 *  @return 开放语义协议版本号key。
		 }
		
		//#pragma mark -  唤醒相关设置key
		{!
		 *  唤醒门限值。
		 *
		 *  @return 唤醒门限值key。
		 }
		
		{!
		 *  唤醒服务类型。
		 *
		 *  @return 唤醒服务类型key。
		 }
		
		{!
		 *  唤醒+识别。
		 *
		 *  @return 唤醒+识别key。
		 }
		
		{!
		 *  唤醒工作方式<br>
		 *  1：表示唤醒成功后继续录音，0：表示唤醒成功后停止录音。
		 *
		 *  @return 唤醒工作方式key
		 }
		
		//#pragma mark -  评测相关设置key
		{!
		 *  评测类型<br>
		 *  可选值：read_syllable(英文评测不支持):单字;read_word:词语;read_sentence:句子;read_chapter(待开放):篇章。
		 *
		 *  @return 评测类型 key
		 }
		
		{!
		 *  评测结果等级<br>
		 *  可选值：complete：完整 ；plain：简单
		 *
		 *  @return 评测结果等级 key
		 }
		
		{!
		 *  评测结果格式<br>
		 *  可选值：xml;plain
		 *
		 *  @return 评测结果格式 key
		 }
		
		{!
		 *  评测录音保存路径
		 *
		 *  @return 评测录音保存路径key
		 }
		
		
		{!
		 *  朗读跟踪，只对句子和篇章有效<br>
		 *  可选值：enable:开启;disable:关闭。
		 *
		 *  @return 朗读跟踪 key
		 }
		
		{!
		 *  跟踪模式<br>
		 *  可选值：easy:简单;hard:复杂。
		 *
		 *  @return 跟踪模式 key
		 }
		
		//#pragma mark -  语记SDK业务key
		{!
		 *  本地所有资源
		 *
		 *  @return 本地所有资源key
		 }
		
		{!
		 *  本地合成资源
		 *
		 *  @return 本地合成资源key
		 }
		
		{!
		 *  本地识别资源
		 *
		 *  @return 本地识别资源key
		 }
		
		{!
		 *  本地唤醒资源
		 *
		 *  @return 本地唤醒资源key
		 }
		
		//#pragma mark -  身份验证业务key
		
		{!
		 *  auth_id<br>
		 *  用于用户注册和登录、查询、删除等业务时标识用户身份
		 *
		 *  @return 用户标识
		 }
		
		{!
		 *  请求业务类型，可选值：mfv（默认，融合验证），ivp（声纹），ifr（人脸）
		 *
		 *  @return 请求业务类型key
		 }
		
		{!
		 *  会话类型，不同sub有不同的sst取值。<br>
		 *  ifr：enroll，verify，identify，reenroll，query，delete<br>
		 *  ivp：enroll（train），verify，reenroll，query，delete，download
		 *
		 *  @return 会话类型key
		 }
		
		{!
		 *  融合验证模式，仅在融合验证场景下使用。可选值：sin（单一生物特征数据验证），mix（混合生物特征数据验证），agi（灵活生物特征数据验证）
		 *
		 *  @return 融合验证模式key
		 }
		
		{!
		 *  特征场景，用来说明本次验证将涉及的业务。可选值：ivp，ifr，ivp|ifr
		 *
		 *  @return 特征场景 key
		 }
		
		{!
		 *  确认周期(affirmance cycle，单位：s)，用户设置的确认超时时间（生命周期），仅在灵活融合验证场景下使用
		 *
		 *  @return 确认周期key
		 }
		
		{!
		 *  数据保存路径
		 *
		 *  @return 数据保存路径key
		 }
		
		{!
		 *  训练次数：取值2~9.无默认值，必须明确指定。
		 *
		 *  @return 训练次数key
		 }
		
		{!
		 *  声纹确认门限值，验证得分>=tsd验证通过，否则验证失败（该参数目前不支持,作为保留参数。）却只范围：0~100.
		 *
		 *  @return 声纹确认门限值key
		 }
		
		{!
		 *  密码文本。从服务端下载，比如数字密码所需要的数字串。
		 *
		 *  @return 密码文本key
		 }
		
		{!
		 *  密码类型。取值：1(文本密码),2(自由说),3(数字密码).
		 *
		 *  @return 密码类型key
		 }
		
		{!
		 *  取消注册。取值：0(不取消，即不生效),1(取消本次注册).
		 *
		 *  @return 取消注册key
		 }
		
		{!
		 *  等待超时时间:描述客户端等待结果的超时时间
		 *
		 *  @return 等待超时时间:key
		 }
		
		{!
		 *  数据格式<br>
		 *  声纹为音频采样率支持：16000和8000;人脸为图片格式，支持jpg和gif
		 *
		 *  @return 数据格式key
		 }
		
		{!
		 *  数据压缩编码<br>
		 *  声纹为;人脸支持raw，不对图片压缩
		 *
		 *  @return 数据压缩编码key
		 }
		
		//#pragma mark - 人脸业务key
		
		//1. sub	  取值: wfr	                      用途: 用于区分业务类型,web访问方式中，nginx配置不用使用，但是在结构化日志和染色日志记录中使用。
		//2. sst	  取值: reg、verify、detect、align  用途: 指定本路会话是属于何种性质
		// + 人脸图像注册(reg)：上传图像，验证图像的有效性，然后存储起来，作为数据源。
		// + 人脸图像验证(verify)：通过与指定源图像比较，验证人脸相似性。
		// + 人脸图像检测(detect)：能够检测出不同姿态方位的人脸在图中的位置。
		// + 人脸图像聚焦(align)：在给定人脸框下自动标定出两眼、鼻尖、嘴角的坐标。
		//3. aue	取值: raw	                      用途: 图像压缩格式，现在引擎不支持图像压缩，aue只能取值raw
		//4. pset   取值: 整数	                      用途: 人脸识别验证阈值，取值可以是负数也可以是整数。
		//5. skip   取值: true/false	                  用途: 后台图片处理是否进行过滤。true表示不过滤，false表示过滤
		//6. gid	取值: ***********	              用途: 图像模型id，如：4a6c124ed6b78436ee5aac4563f13eb5
		//7. appid  取值:用户申请的appid                 用途: 验证用户
		
		
		{! 
		 * sub 默认值:wfr<br>
		 * 用于区分业务类型,web访问方式中，nginx配置不用使用，但是在结构化日志和染色日志记录中使用。
		 }
		
		{!
		 * WFR<br>
		 * sub参数的默认值
		 }
		
		{! 
		 * sst<br>
		 * 指定本路会话是属于何种性质
		 }
		
		{! 
		 * REG<br>
		 * 人脸图像注册(reg)：上传图像，验证图像的有效性，然后存储起来，作为数据源。
		 }
		
		{! 
		 * VERIFY<br>
		 * 人脸图像验证(verify)：通过与指定源图像比较，验证人脸相似性。
		 }
		
		{! 
		 * DETECT<br>
		 * 人脸图像检测(detect)：能够检测出不同姿态方位的人脸在图中的位置。
		 }
		
		{! 
		 * ALIGN<br>
		 * 人脸图像聚焦(align)：在给定人脸框下自动标定出两眼、鼻尖、嘴角的坐标。
		 }
		
		{! 
		 * ATTR<br>
		 * 面部属性识别(attr)：对面部属性进行识别：例如秃顶、刘海、大嘴、模糊、眼镜等。
		 }
		
		
		{!
		 * AUE<br>
		 * 图像压缩格式，现在引擎不支持图像压缩，aue只能取值raw
		 }
		
		{! 
		 * RAW<br>
		 * AUE参数的值
		 }
		
		{! 
		 * PSET<br>
		 * 人脸识别验证阈值，取值可以是负数也可以是整数。
		 }
		
		{! 
		 * SKIP<br>
		 * 后台图片处理是否进行过滤。true表示不过滤，false表示过滤，传入字符串@“true”或@“false”
		 }
		
		{! 
		 * GID<br>
		 * 图像模型id，如：4a6c124ed6b78436ee5aac4563f13eb5
		 }
		
		{!
		 *  auth_id<br>
		 *  用于用户注册和登录、查询、删除等业务时标识用户身份
		 *
		 *  @return 用户标识
		 }
		
		{!
		 * DVC<br>
		 * 用户设备编号,用于验证用户
		 }
		
	end;
	
	IFlySpeechConstantClass=interface(NSObjectClass)//
	['{7BC4E10C-0A6D-4F5B-B650-67CAEE657F26}']
		{+} function APPID:NSString{*};cdecl;
		{+} function ACCENT:NSString{*};cdecl;
		{+} function ACCENT_MANDARIN:NSString{*};cdecl;
		{+} function ACCENT_HENANESE:NSString{*};cdecl;
		{+} function ACCENT_SICHUANESE:NSString{*};cdecl;
		{+} function ACCENT_CANTONESE:NSString{*};cdecl;
		{+} function LANGUAGE:NSString{*};cdecl;
		{+} function LANGUAGE_CHINESE:NSString{*};cdecl;
		{+} function LANGUAGE_CHINESE_TW:NSString{*};cdecl;
		{+} function LANGUAGE_ENGLISH:NSString{*};cdecl;
		{+} function RESULT_TYPE:NSString{*};cdecl;
		{+} function IFLY_DOMAIN:NSString{*};cdecl;
		{+} function DATA_TYPE:NSString{*};cdecl;
		{+} function SPEECH_TIMEOUT:NSString{*};cdecl;
		{+} function NET_TIMEOUT:NSString{*};cdecl;
		{+} function SUBJECT:NSString{*};cdecl;
		{+} function PARAMS:NSString{*};cdecl;
		{+} function PROT_TYPE:NSString{*};cdecl;
		{+} function SSL_CERT:NSString{*};cdecl;
		{+} function POWER_CYCLE:NSString{*};cdecl;
		{+} function SAMPLE_RATE:NSString{*};cdecl;
		{+} function SAMPLE_RATE_8K:NSString{*};cdecl;
		{+} function SAMPLE_RATE_16K:NSString{*};cdecl;
		{+} function ENGINE_TYPE:NSString{*};cdecl;
		{+} function TYPE_LOCAL:NSString{*};cdecl;
		{+} function TYPE_CLOUD:NSString{*};cdecl;
		{+} function TYPE_MIX:NSString{*};cdecl;
		{+} function TYPE_AUTO:NSString{*};cdecl;
		{+} function TEXT_ENCODING:NSString{*};cdecl;
		{+} function RESULT_ENCODING:NSString{*};cdecl;
		{+} function PLAYER_INIT:NSString{*};cdecl;
		{+} function PLAYER_DEACTIVE:NSString{*};cdecl;
		{+} function RECORDER_INIT:NSString{*};cdecl;
		{+} function RECORDER_DEACTIVE:NSString{*};cdecl;
		{+} function SPEED:NSString{*};cdecl;
		{+} function PITCH:NSString{*};cdecl;
		{+} function TTS_AUDIO_PATH:NSString{*};cdecl;
		{+} function VAD_ENABLE:NSString{*};cdecl;
		{+} function VAD_BOS:NSString{*};cdecl;
		{+} function VAD_EOS:NSString{*};cdecl;
		{+} function VOICE_NAME:NSString{*};cdecl;
		{+} function VOICE_ID:NSString{*};cdecl;
		{+} function VOICE_LANG:NSString{*};cdecl;
		{+} function VOLUME:NSString{*};cdecl;
		{+} function TTS_BUFFER_TIME:NSString{*};cdecl;
		{+} function TTS_DATA_NOTIFY:NSString{*};cdecl;
		{+} function NEXT_TEXT:NSString{*};cdecl;
		{+} function MPPLAYINGINFOCENTER:NSString{*};cdecl;
		{+} function AUDIO_SOURCE:NSString{*};cdecl;
		{+} function ASR_AUDIO_PATH:NSString{*};cdecl;
		{+} function ASR_SCH:NSString{*};cdecl;
		{+} function ASR_PTT:NSString{*};cdecl;
		{+} function ASR_PTT_HAVEDOT:NSString{*};cdecl;
		{+} function ASR_PTT_NODOT:NSString{*};cdecl;
		{+} function LOCAL_GRAMMAR:NSString{*};cdecl;
		{+} function CLOUD_GRAMMAR:NSString{*};cdecl;
		{+} function GRAMMAR_TYPE:NSString{*};cdecl;
		{+} function GRAMMAR_CONTENT:NSString{*};cdecl;
		{+} function LEXICON_CONTENT:NSString{*};cdecl;
		{+} function LEXICON_NAME:NSString{*};cdecl;
		{+} function GRAMMAR_LIST:NSString{*};cdecl;
		{+} function NLP_VERSION:NSString{*};cdecl;
		{+} function IVW_THRESHOLD:NSString{*};cdecl;
		{+} function IVW_SST:NSString{*};cdecl;
		{+} function IVW_ONESHOT:NSString{*};cdecl;
		{+} function KEEP_ALIVE:NSString{*};cdecl;
		{+} function ISE_CATEGORY:NSString{*};cdecl;
		{+} function ISE_RESULT_LEVEL:NSString{*};cdecl;
		{+} function ISE_RESULT_TYPE:NSString{*};cdecl;
		{+} function ISE_AUDIO_PATH:NSString{*};cdecl;
		{+} function ISE_AUTO_TRACKING:NSString{*};cdecl;
		{+} function ISE_TRACK_TYPE:NSString{*};cdecl;
		{+} function PLUS_LOCAL_ALL:NSString{*};cdecl;
		{+} function PLUS_LOCAL_TTS:NSString{*};cdecl;
		{+} function PLUS_LOCAL_ASR:NSString{*};cdecl;
		{+} function PLUS_LOCAL_IVW:NSString{*};cdecl;
		{+} function MFV_AUTH_ID:NSString{*};cdecl;
		{+} function MFV_SUB:NSString{*};cdecl;
		{+} function MFV_SST:NSString{*};cdecl;
		{+} function MFV_VCM:NSString{*};cdecl;
		{+} function MFV_SCENES:NSString{*};cdecl;
		{+} function MFV_AFC:NSString{*};cdecl;
		{+} function MFV_DATA_PATH:NSString{*};cdecl;
		{+} function MFV_RGN:NSString{*};cdecl;
		{+} function MFV_TSD:NSString{*};cdecl;
		{+} function MFV_PTXT:NSString{*};cdecl;
		{+} function MFV_PWDT:NSString{*};cdecl;
		{+} function MFV_FIN:NSString{*};cdecl;
		{+} function MFV_WTT:NSString{*};cdecl;
		{+} function MFV_DATA_FORMAT:NSString{*};cdecl;
		{+} function MFV_DATA_ENCODING:NSString{*};cdecl;
		{+} function FACE_SUB:NSString{*};cdecl;
		{+} function FACE_WFR:NSString{*};cdecl;
		{+} function FACE_SST:NSString{*};cdecl;
		{+} function FACE_REG:NSString{*};cdecl;
		{+} function FACE_VERIFY:NSString{*};cdecl;
		{+} function FACE_DETECT:NSString{*};cdecl;
		{+} function FACE_ALIGN:NSString{*};cdecl;
		{+} function FACE_ATTR:NSString{*};cdecl;
		{+} function FACE_AUE:NSString{*};cdecl;
		{+} function FACE_RAW:NSString{*};cdecl;
		{+} function FACE_PSET:NSString{*};cdecl;
		{+} function FACE_SKIP:NSString{*};cdecl;
		{+} function FACE_GID:NSString{*};cdecl;
		{+} function FACE_AUTH_ID:NSString{*};cdecl;
		{+} function FACE_DVC:NSString{*};cdecl;
	end;
	
	TIFlySpeechConstant=class(TOCGenericImport<IFlySpeechConstantClass,IFlySpeechConstant>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechConstant_FakeLoader : IFlySpeechConstant; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechConstant';
{$O+}


{$ENDIF}

end.

