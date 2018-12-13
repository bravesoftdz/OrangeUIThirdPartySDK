package com.smartdevice.fmx_assistant;

import android.os.RemoteException;

import com.smartdevice.aidl.ICallBack;

/**
 * Created by Administrator on 2017-10-31.
 */

public class MyCallBackStub extends  ICallBack.Stub{

    public static MyCallBackStubListener mMyCallBackStubListener;

    @Override
    public void onReturnValue(byte[] buffer, int size)
            throws RemoteException {

        if (mMyCallBackStubListener!=null)
        {
            mMyCallBackStubListener.onReturnValue(buffer,size);
        }

    }

    public void setMyCallBackStubListener(MyCallBackStubListener aMyCallBackStubListener){
        mMyCallBackStubListener = aMyCallBackStubListener;
    }

}
