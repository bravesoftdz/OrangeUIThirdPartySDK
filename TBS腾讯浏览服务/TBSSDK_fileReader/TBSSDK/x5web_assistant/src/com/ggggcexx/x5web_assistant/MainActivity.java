package com.ggggcexx.x5web_assistant;

import com.tencent.smtt.sdk.QbSdk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class MainActivity extends Activity {

	private Button button2,button3;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		button2 = (Button)findViewById(R.id.button2);
		button2.setOnClickListener(new OnClickListener() {
				
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(MainActivity.this,
						MyBrowserActivity.class);
				MainActivity.this.startActivity(intent);				
			}
			
			
		});
		
		
		
		button3 = (Button)findViewById(R.id.button3);
		button3.setOnClickListener(new OnClickListener() {
				
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub


				
				
			}
			
			
		});
		
	
		
		QbSdk.PreInitCallback cb = new QbSdk.PreInitCallback() {
			
			@Override
			public void onViewInitFinished(boolean arg0) {
				// TODO Auto-generated method stub
				//x5�Ⱥ˳�ʼ����ɵĻص���Ϊtrue��ʾx5�ں˼��سɹ��������ʾx5�ں˼���ʧ�ܣ����Զ��л���ϵͳ�ںˡ�
				Log.d("OrangeUI", " onViewInitFinished is " + arg0);
			}
			
			@Override
			public void onCoreInitFinished() {
				// TODO Auto-generated method stub
			}
		};
		//x5�ں˳�ʼ���ӿ�
		QbSdk.initX5Environment(getApplicationContext(),  cb);		
		
		
	}

}
