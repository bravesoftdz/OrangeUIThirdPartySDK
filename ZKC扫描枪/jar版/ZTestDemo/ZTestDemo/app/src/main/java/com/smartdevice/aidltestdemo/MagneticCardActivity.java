package com.smartdevice.aidltestdemo;

import android.os.Bundle;
import android.os.Message;
import android.os.RemoteException;
import android.widget.EditText;
import android.widget.Toast;

import com.smartdevice.aidl.ICallBack;
import com.smartdevice.aidl.IZKCService;
import com.zkc.baseLibrary.MessageType;

public class MagneticCardActivity extends BaseActivity {

	private EditText et_receiver;
	private boolean runFlag = true;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_magneticcard);
		et_receiver = (EditText) findViewById(R.id.editText1);
		et_receiver.setCursorVisible(false);
		et_receiver.setFocusable(false);
		et_receiver.setFocusableInTouchMode(false);
	}

	@Override
	protected void handleStateMessage(Message message) {
		super.handleStateMessage(message);
		try {
			switch (message.what){
				case MessageType.BaiscMessage.SEVICE_BIND_SUCCESS:
					Toast.makeText(this, getString(R.string.service_bind_success), Toast.LENGTH_SHORT).show();
					mIzkcService = (IZKCService) message.obj;
					mIzkcService.setModuleFlag(2);
					mIzkcService.registerCallBack("IC", mCallBack);
					break;
				case MessageType.BaiscMessage.SEVICE_BIND_FAIL:
					Toast.makeText(this, getString(R.string.service_bind_fail), Toast.LENGTH_SHORT).show();
					break;
			}

		} catch (RemoteException e) {
			e.printStackTrace();
		}

	}

	private ICallBack mCallBack = new ICallBack.Stub() {

		@Override
		public void onReturnValue(byte[] data, int size) throws RemoteException {

		}
	};
	
	protected void onStop() {
		try {
			mIzkcService.unregisterCallBack("IC", mCallBack);
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		super.onStop();
	}

}
