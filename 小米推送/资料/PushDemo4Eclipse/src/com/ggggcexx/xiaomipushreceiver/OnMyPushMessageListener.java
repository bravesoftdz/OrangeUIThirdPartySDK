package com.ggggcexx.xiaomipushreceiver;

import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;

import android.content.Context;


public abstract interface OnMyPushMessageListener {

	
    public void onReceivePassThroughMessage(Context context, MiPushMessage message);

    public void onNotificationMessageClicked(Context context, MiPushMessage message);

    public void onNotificationMessageArrived(Context context, MiPushMessage message);

    public void onCommandResult(Context context, MiPushCommandMessage message);

    public void onReceiveRegisterResult(Context context, MiPushCommandMessage message);
	
}
