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
	 *  ����������<br>
	 *  ��Ҫ���������key valueֵ
	 }
	IFlySpeechConstant=interface(NSObject)//
	['{3E05CE1C-D8B7-442A-BEF8-517A70E59EDC}']
		
		
		//#pragma mark - ͨ�ò���key
		
		{!
		 *  ����Ӧ��ID<br>
		 *  ͨ����������վ����
		 *
		 *  @return ����Ӧ��IDkey
		 }
		
		
		{!
		 *  ��������
		 *
		 *  @return ��������key��
		 }
		
		{!
		 *  ��������
		 *
		 *  @return ��ͨ��value��
		 }
		
		{!
		 *  ��������
		 *
		 *  @return ���ϻ�value��
		 }
		
		{!
		 *  ��������
		 *
		 *  @return �Ĵ���value��
		 }
		
		{!
		 *  ��������
		 *
		 *  @return ����value��
		 }
		
		{!
		 *  ����<br>
		 *  ֧�֣�zh_cn��zh_tw��en_us<br>
		 *
		 *  @return ����key
		 }
		
		{!
		 *  ����
		 *
		 *  @return ����value
		 }
		
		
		{!
		 *  ����
		 *
		 *  @return ����̨��value
		 }
		
		{!
		 *  ����
		 *
		 *  @return Ӣ��value
		 }
		
		{!
		 *  ���ؽ�������ݸ�ʽ��������Ϊjson��xml��plain��Ĭ��Ϊjson��
		 *
		 *  @return ���ؽ�������ݸ�ʽkey
		 }
		
		{!
		 *  Ӧ������
		 *
		 *  @return Ӧ������key
		 }
		
		{!
		 *  ���Ի������ϴ�����
		 *
		 *  @return ���Ի������ϴ�����key
		 }
		
		{!
		 *  �������볬ʱʱ��<br>
		 *  ��λ��ms��Ĭ��30000
		 *
		 *  @return �������볬ʱʱ��key
		 }
		
		{!
		 *  �������ӳ�ʱʱ��<br>
		 *  ��λ��ms��Ĭ��20000
		 *
		 *  @return �������ӳ�ʱʱ��key
		 }
		
		{!
		 *  ҵ�����͡�
		 *
		 *  @return ҵ������key��
		 }
		
		{!
		 *  ��չ������
		 *
		 *  @return ��չ����key��
		 }
		
		{!
		 *  ���ܲ���
		 *
		 *  ֧�����ͣ�ssl ����  tcp �Ǽ��� Ĭ�ϣ�tcp<br>
		 *  ����԰�ȫ��Ҫ��ϸ�ʱʹ��ssl��
		 *
		 *  @return ���ܲ���key
		 }
		
		{!
		 *  ssl֤������
		 *
		 *  @return ssl֤������key
		 }
		
		{!
		 *  ¼����������ʱ������
		 *
		 *  @return ���key��
		 }
		
		{!
		 *  �ϳɡ�ʶ�𡢻��ѡ����⡢���Ƶ�ҵ������ʡ�
		 *
		 *  @return �ϳɼ�ʶ�������key��
		 }
		
		{!
		 *  �ϳɡ�ʶ�𡢻��ѡ����⡢���Ƶ�ҵ������ʡ�
		 *
		 *  @return �ϳɼ�ʶ�������8K Value��
		 }
		
		{!
		 *  �ϳɡ�ʶ�𡢻��ѡ����⡢���Ƶ�ҵ������ʡ�
		 *
		 *  @return �ϳɼ�ʶ�������16K Value��
		 }
		
		{!
		 *  �������͡�<br>
		 *  ��ѡ��local��cloud��auto<br>
		 *  Ĭ�ϣ�auto
		 *
		 *  @return ��������key��
		 }
		
		{!
		 *  ����ʶ�����档
		 *
		 *  @return ����ʶ������value��
		 }
		
		{!
		 *  �ƶ�ʶ�����档
		 *
		 *  @return �ƶ�ʶ������value��
		 }
		
		{!
		 *  ���ʶ�����档
		 *
		 *  @return ���ʶ������value��
		 }
		
		{!
		 *  ������ݵ�ǰ���ý���ѡ��
		 *
		 *  @return ������ݵ�ǰ���ý���ѡ��value��
		 }
		
		{!
		 *  �����ı������ʽ��
		 *
		 *  @return �����ʽkey��
		 }
		
		{!
		 *  ��������ʽ��
		 *
		 *  @return ��������ʽkey��
		 }
		
		{!
		 *  �Ƿ��ʼ��������<br>
		 *  SDK�ڲ�������������Ƶ����ʵ�֣��в����ⲿ������Ҫ�Զ�����Ƶ���У�����ͨ���˿��ؿ���<br>
		 *  0:����ʼ������0���߲���Ϊ��:��ʼ����Ĭ�ϳ�ʼ��
		 *
		 *  @return �Ƿ��ʼ������������key
		 }
		
		{!
		 *  �Ƿ񲥷�����������deactiveϵͳ֪ͨ<br>
		 *  SDK�ڲ��������������ͨ���˿��ط���deactiveϵͳ֪ͨ��ʹ�������жϵ���ƵӦ�ý���ж�<br>
		 *  0:�����ͣ���0���߲���Ϊ��:���ͣ�Ĭ�Ϸ���
		 *
		 *  @return �Ƿ񲥷�����������deactiveϵͳ֪ͨ����key
		 }
		
		{*
		 *  �Ƿ��ʼ��¼����<br>
		 *  SDK�ڲ�¼����������Ƶ����ʵ�֣��в����ⲿ������Ҫ�Զ�����Ƶ���У�����ͨ���˿��ؿ���<br>
		 *  0:����ʼ������0���߲���Ϊ��:��ʼ����Ĭ�ϳ�ʼ��
		 *
		 *  @return �Ƿ��ʼ��¼��������key
		 }
		
		{*
		 *  �Ƿ�¼������������deactiveϵͳ֪ͨ<br>
		 *  SDK�ڲ�¼�����������ͨ���˿��ط���deactiveϵͳ֪ͨ��ʹ�������жϵ���ƵӦ�ý���ж�<br>
		 *  0:�����ͣ���0���߲���Ϊ��:���ͣ�Ĭ�Ϸ���
		 *
		 *  @return �Ƿ�¼������������deactiveϵͳ֪ͨ����key
		 }
		
		
		//#pragma mark -  �ϳ��������key
		{!
		 *  ����<br>
		 *  ��Χ ��0~100�� Ĭ��ֵ:50
		 *
		 *  @return ����key
		 }
		
		{!
		 *  ����<br>
		 *  ��Χ��0~100��Ĭ��ֵ:50
		 *
		 *  @return ����key
		 }
		
		{!
		 *  �ϳ�¼������·��
		 *
		 *  ע��:ֻ��Ҫ�����ļ�����ɣ����Զ�ƴ�ӵ�[IFlySetting setLogFilePath]�ӿ����õ�Ŀ¼��
		 *
		 *  @return �ϳ�¼������·��key
		 }
		
		{*
		 *  ����VAD����
		 *
		 *  @return ����VAD����key
		 }
		
		{!
		 *  VADǰ�˵㳬ʱ<br>
		 *  ��Χ��0-10000(��λms)
		 *
		 *  @return VADǰ�˵㳬ʱkey
		 }
		
		{!
		 *  VAD��˵㳬ʱ��<br>
		 *  ��ѡ��Χ��0-10000(��λms)
		 *
		 *  @return VAD��˵㳬ʱkey
		 }
		
		
		{
		 *  �ƶ�֧�����·����ˣ�
		 *  ��������TTS�ķ����˽�ɫ����ͬ��������֧�ֵķ����˲�ͬ��ʹ������ע��ѡ��
		 *
		 *  |--------|----------------|
		 *  |  ������ |  ����          |
		 *  |--------|----------------|
		 *  |  С��   |   xiaoyan     |
		 *  |--------|----------------|
		 *  |  С��   |   xiaoyu      |
		 *  |--------|----------------|
		 *  |  ��ɪ�� |   catherine   |
		 *  |--------|----------------|
		 *  |  ����   |   henry       |
		 *  |--------|----------------|
		 *  |  ����   |   vimary      |
		 *  |--------|----------------|
		 *  |  С��   |   vixy        |
		 *  |--------|----------------|
		 *  |  С��   |   vixq        |
		 *  |--------|----------------|
		 *  |  С��   |   vixf        |
		 *  |--------|----------------|
		 *  |  С÷   |   vixl        |
		 *  |--------|----------------|
		 *  |  С��   |   vixq        |
		 *  |--------|----------------|
		 *  |  С��   |   vixr        |
		 *  |--------|----------------|
		 *  |  Сܿ   |   vixyun      |
		 *  |--------|----------------|
		 *  |  С��   |   vixk        |
		 *  |--------|----------------|
		 *  |  Сǿ   |   vixqa       |
		 *  |--------|----------------|
		 *  |  СӨ   |   vixyin      |
		 *  |--------|----------------|
		 *  |  С��   |   vixx        |
		 *  |--------|----------------|
		 *  |  ��   |   vinn        |
		 *  |--------|----------------|
		 *  |  ����   |   vils        |
		 *  |--------|----------------|
		 }
		
		{!
		 *  ������
		 * 
		 *  �ƶ�֧�����·����ˣ�<br>
		 *  ��������TTS�ķ����˽�ɫ����ͬ��������֧�ֵķ����˲�ͬ��ʹ������ע��ѡ��<br>
		 *
		 *  |  ������   |  ����             |
		 *  |:--------:|:----------------:|
		 *  |  С��     |   xiaoyan        |
		 *  |  С��     |   xiaoyu         |
		 *  |  ��ɪ��   |   catherine      |
		 *  |  ����     |   henry          |
		 *  |  ����     |   vimary         |
		 *  |  С��     |   vixy           |
		 *  |  С��     |   vixq           |
		 *  |  С��     |   vixf           |
		 *  |  С÷     |   vixl           |
		 *  |  С��     |   vixq           |
		 *  |  С��     |   vixr           |
		 *  |  Сܿ     |   vixyun         |
		 *  |  С��     |   vixk           |
		 *  |  Сǿ     |   vixqa          |
		 *  |  СӨ     |   vixyin         |
		 *  |  С��     |   vixx           |
		 *  |  ��     |   vinn           |
		 *  |  ����     |   vils           |
		 *
		 *  @return ������key
		 }
		
		{!
		 * ������ID key��
		 *
		 * @return ������ID key
		 }
		
		{!
		 * ���������� key��
		 *
		 * ����ֵ��0:Auto 1:���� 2Ӣ�� ��Ĭ�� 0.
		 *
		 * @return ������ID key
		 }
		
		{!
		 *  ����<br>
		 *  ��Χ��0~100�� Ĭ��ֵ:50
		 *
		 *  @return ����key
		 }
		
		{!
		 *  �ϳ���Ƶ���Ż���ʱ��<br>
		 *  �������������Ƶ��ʼ���ţ���tts_buffer_time=1000;<br>
		 *  Ĭ�ϻ���1000ms����󲥷š�
		 *
		 *  @return �ϳ���Ƶ���Ż���ʱ�仺��ʱ��key
		 }
		
		
		{!
		 *  �ϳ������Ƿ�ʱ����
		 *
		 *  �Ƿ���Ҫ���ݻص���Ϊ1ʱ�����ϳ�һ����Ƶ��ͨ��onEvent�ص����أ�ֱ�Ӻϳɽ�����<br>
		 *  ����Ϊ1Ϊ��ʱ���أ�0Ϊ�Ǽ�ʱ���أ�Ĭ��ֵΪ0��
		 *
		 *  @return �ϳ����ݼ�ʱ����key
		 }
		
		{!
		 *  Ԥ�ϳ��ı�
		 *
		 *  @return Ԥ�ϳ��ı�����key
		 }
		
		{!
		 *  �Ƿ���Ҫ��MPPlayingInfocenter<br>
		 *  �Ƿ���Ҫ��ʼ��MPPlayerCenter������;0:��Ҫ��ʼ����1:����ʼ��
		 *
		 *  @return �Ƿ���Ҫ��MPPlayingInfocenter ����key
		 }
		
		//#pragma mark - ʶ����д�������������key
		
		{!
		 *  ¼��Դ<br>
		 *  ¼��ʱ��¼����ʽ��Ĭ��Ϊ��˷磬����Ϊ1��<br>
		 *  �����Ҫ�ⲿ������Ƶ������Ϊ-1��ͨ��WriteAudio�ӿ�������Ƶ��
		 *
		 *  @return ¼��Դkey
		 }
		
		{!
		 *  ʶ��¼������·��
		 *
		 *  @return ʶ��¼������·��key
		 }
		
		{!
		 *  �����Ƿ�������
		 *
		 *  @return �����Ƿ�������key
		 }
		
		{!
		 *  �����Ƿ��б�����
		 *
		 *  @return �����Ƿ��б�����key
		 }
		
		{!
		 *  ASR_PTT ����ֵ�����ô�������
		 *
		 *  @return �������б�����Value
		 }
		
		{!
		 *  ASR_PTT ����ֵ�����ò���������
		 *
		 *  @return �������ޱ�����Value
		 }
		
		{!
		 *  �����﷨���ơ�<br>
		 *  �����﷨���ƣ���Ӧ�ƶ˵���CLOUD_GRAMMAR
		 *
		 *  @return �����﷨����key��
		 }
		
		{!
		 *  �ƶ��﷨ID��<br>
		 *  �ƶ˱����﷨���صı�ʾ�����ڰ汾ʹ��GRAMMAR_ID����Ȼ���ݣ�������ʹ���µġ�
		 *
		 *  @return �ƶ��﷨ID key��
		 }
		
		{!
		 *  �﷨����
		 *
		 *  @return �﷨����key
		 }
		
		{!
		 *  �﷨���ݡ�
		 *
		 *  @return �﷨����key��
		 }
		
		{!
		 *  �ֵ����ݡ�
		 *
		 *  @return �ֵ�����key��
		 }
		
		{!
		 *  �ֵ����֡�
		 *
		 *  @return �ֵ�����key��
		 }
		
		{!
		 *  �﷨�����б�
		 *
		 *  @return �﷨�����б�key��
		 }
		
		{!
		 *  ��������Э��汾�š�<br>
		 *  ����ʹ������http://osp.voicecloud.cn/�Ͻ���ҵ������
		 *
		 *  @return ��������Э��汾��key��
		 }
		
		//#pragma mark -  �����������key
		{!
		 *  ��������ֵ��
		 *
		 *  @return ��������ֵkey��
		 }
		
		{!
		 *  ���ѷ������͡�
		 *
		 *  @return ���ѷ�������key��
		 }
		
		{!
		 *  ����+ʶ��
		 *
		 *  @return ����+ʶ��key��
		 }
		
		{!
		 *  ���ѹ�����ʽ<br>
		 *  1����ʾ���ѳɹ������¼����0����ʾ���ѳɹ���ֹͣ¼����
		 *
		 *  @return ���ѹ�����ʽkey
		 }
		
		//#pragma mark -  �����������key
		{!
		 *  ��������<br>
		 *  ��ѡֵ��read_syllable(Ӣ�����ⲻ֧��):����;read_word:����;read_sentence:����;read_chapter(������):ƪ�¡�
		 *
		 *  @return �������� key
		 }
		
		{!
		 *  �������ȼ�<br>
		 *  ��ѡֵ��complete������ ��plain����
		 *
		 *  @return �������ȼ� key
		 }
		
		{!
		 *  ��������ʽ<br>
		 *  ��ѡֵ��xml;plain
		 *
		 *  @return ��������ʽ key
		 }
		
		{!
		 *  ����¼������·��
		 *
		 *  @return ����¼������·��key
		 }
		
		
		{!
		 *  �ʶ����٣�ֻ�Ծ��Ӻ�ƪ����Ч<br>
		 *  ��ѡֵ��enable:����;disable:�رա�
		 *
		 *  @return �ʶ����� key
		 }
		
		{!
		 *  ����ģʽ<br>
		 *  ��ѡֵ��easy:��;hard:���ӡ�
		 *
		 *  @return ����ģʽ key
		 }
		
		//#pragma mark -  ���SDKҵ��key
		{!
		 *  ����������Դ
		 *
		 *  @return ����������Դkey
		 }
		
		{!
		 *  ���غϳ���Դ
		 *
		 *  @return ���غϳ���Դkey
		 }
		
		{!
		 *  ����ʶ����Դ
		 *
		 *  @return ����ʶ����Դkey
		 }
		
		{!
		 *  ���ػ�����Դ
		 *
		 *  @return ���ػ�����Դkey
		 }
		
		//#pragma mark -  �����֤ҵ��key
		
		{!
		 *  auth_id<br>
		 *  �����û�ע��͵�¼����ѯ��ɾ����ҵ��ʱ��ʶ�û����
		 *
		 *  @return �û���ʶ
		 }
		
		{!
		 *  ����ҵ�����ͣ���ѡֵ��mfv��Ĭ�ϣ��ں���֤����ivp�����ƣ���ifr��������
		 *
		 *  @return ����ҵ������key
		 }
		
		{!
		 *  �Ự���ͣ���ͬsub�в�ͬ��sstȡֵ��<br>
		 *  ifr��enroll��verify��identify��reenroll��query��delete<br>
		 *  ivp��enroll��train����verify��reenroll��query��delete��download
		 *
		 *  @return �Ự����key
		 }
		
		{!
		 *  �ں���֤ģʽ�������ں���֤������ʹ�á���ѡֵ��sin����һ��������������֤����mix�������������������֤����agi�������������������֤��
		 *
		 *  @return �ں���֤ģʽkey
		 }
		
		{!
		 *  ��������������˵��������֤���漰��ҵ�񡣿�ѡֵ��ivp��ifr��ivp|ifr
		 *
		 *  @return �������� key
		 }
		
		{!
		 *  ȷ������(affirmance cycle����λ��s)���û����õ�ȷ�ϳ�ʱʱ�䣨�������ڣ�����������ں���֤������ʹ��
		 *
		 *  @return ȷ������key
		 }
		
		{!
		 *  ���ݱ���·��
		 *
		 *  @return ���ݱ���·��key
		 }
		
		{!
		 *  ѵ��������ȡֵ2~9.��Ĭ��ֵ��������ȷָ����
		 *
		 *  @return ѵ������key
		 }
		
		{!
		 *  ����ȷ������ֵ����֤�÷�>=tsd��֤ͨ����������֤ʧ�ܣ��ò���Ŀǰ��֧��,��Ϊ������������ȴֻ��Χ��0~100.
		 *
		 *  @return ����ȷ������ֵkey
		 }
		
		{!
		 *  �����ı����ӷ�������أ�����������������Ҫ�����ִ���
		 *
		 *  @return �����ı�key
		 }
		
		{!
		 *  �������͡�ȡֵ��1(�ı�����),2(����˵),3(��������).
		 *
		 *  @return ��������key
		 }
		
		{!
		 *  ȡ��ע�ᡣȡֵ��0(��ȡ����������Ч),1(ȡ������ע��).
		 *
		 *  @return ȡ��ע��key
		 }
		
		{!
		 *  �ȴ���ʱʱ��:�����ͻ��˵ȴ�����ĳ�ʱʱ��
		 *
		 *  @return �ȴ���ʱʱ��:key
		 }
		
		{!
		 *  ���ݸ�ʽ<br>
		 *  ����Ϊ��Ƶ������֧�֣�16000��8000;����ΪͼƬ��ʽ��֧��jpg��gif
		 *
		 *  @return ���ݸ�ʽkey
		 }
		
		{!
		 *  ����ѹ������<br>
		 *  ����Ϊ;����֧��raw������ͼƬѹ��
		 *
		 *  @return ����ѹ������key
		 }
		
		//#pragma mark - ����ҵ��key
		
		//1. sub	  ȡֵ: wfr	                      ��;: ��������ҵ������,web���ʷ�ʽ�У�nginx���ò���ʹ�ã������ڽṹ����־��Ⱦɫ��־��¼��ʹ�á�
		//2. sst	  ȡֵ: reg��verify��detect��align  ��;: ָ����·�Ự�����ں�������
		// + ����ͼ��ע��(reg)���ϴ�ͼ����֤ͼ�����Ч�ԣ�Ȼ��洢��������Ϊ����Դ��
		// + ����ͼ����֤(verify)��ͨ����ָ��Դͼ��Ƚϣ���֤���������ԡ�
		// + ����ͼ����(detect)���ܹ�������ͬ��̬��λ��������ͼ�е�λ�á�
		// + ����ͼ��۽�(align)���ڸ������������Զ��궨�����ۡ��Ǽ⡢��ǵ����ꡣ
		//3. aue	ȡֵ: raw	                      ��;: ͼ��ѹ����ʽ���������治֧��ͼ��ѹ����aueֻ��ȡֵraw
		//4. pset   ȡֵ: ����	                      ��;: ����ʶ����֤��ֵ��ȡֵ�����Ǹ���Ҳ������������
		//5. skip   ȡֵ: true/false	                  ��;: ��̨ͼƬ�����Ƿ���й��ˡ�true��ʾ�����ˣ�false��ʾ����
		//6. gid	ȡֵ: ***********	              ��;: ͼ��ģ��id���磺4a6c124ed6b78436ee5aac4563f13eb5
		//7. appid  ȡֵ:�û������appid                 ��;: ��֤�û�
		
		
		{! 
		 * sub Ĭ��ֵ:wfr<br>
		 * ��������ҵ������,web���ʷ�ʽ�У�nginx���ò���ʹ�ã������ڽṹ����־��Ⱦɫ��־��¼��ʹ�á�
		 }
		
		{!
		 * WFR<br>
		 * sub������Ĭ��ֵ
		 }
		
		{! 
		 * sst<br>
		 * ָ����·�Ự�����ں�������
		 }
		
		{! 
		 * REG<br>
		 * ����ͼ��ע��(reg)���ϴ�ͼ����֤ͼ�����Ч�ԣ�Ȼ��洢��������Ϊ����Դ��
		 }
		
		{! 
		 * VERIFY<br>
		 * ����ͼ����֤(verify)��ͨ����ָ��Դͼ��Ƚϣ���֤���������ԡ�
		 }
		
		{! 
		 * DETECT<br>
		 * ����ͼ����(detect)���ܹ�������ͬ��̬��λ��������ͼ�е�λ�á�
		 }
		
		{! 
		 * ALIGN<br>
		 * ����ͼ��۽�(align)���ڸ������������Զ��궨�����ۡ��Ǽ⡢��ǵ����ꡣ
		 }
		
		{! 
		 * ATTR<br>
		 * �沿����ʶ��(attr)�����沿���Խ���ʶ������ͺ�������������졢ģ�����۾��ȡ�
		 }
		
		
		{!
		 * AUE<br>
		 * ͼ��ѹ����ʽ���������治֧��ͼ��ѹ����aueֻ��ȡֵraw
		 }
		
		{! 
		 * RAW<br>
		 * AUE������ֵ
		 }
		
		{! 
		 * PSET<br>
		 * ����ʶ����֤��ֵ��ȡֵ�����Ǹ���Ҳ������������
		 }
		
		{! 
		 * SKIP<br>
		 * ��̨ͼƬ�����Ƿ���й��ˡ�true��ʾ�����ˣ�false��ʾ���ˣ������ַ���@��true����@��false��
		 }
		
		{! 
		 * GID<br>
		 * ͼ��ģ��id���磺4a6c124ed6b78436ee5aac4563f13eb5
		 }
		
		{!
		 *  auth_id<br>
		 *  �����û�ע��͵�¼����ѯ��ɾ����ҵ��ʱ��ʶ�û����
		 *
		 *  @return �û���ʶ
		 }
		
		{!
		 * DVC<br>
		 * �û��豸���,������֤�û�
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

