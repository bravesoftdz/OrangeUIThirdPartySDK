package com.ggggcexx.x5web_assistant;

//import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;

import com.tencent.smtt.export.external.interfaces.ClientCertRequest;
import com.tencent.smtt.export.external.interfaces.HttpAuthHandler;
import com.tencent.smtt.export.external.interfaces.SslError;
import com.tencent.smtt.export.external.interfaces.SslErrorHandler;
import com.tencent.smtt.export.external.interfaces.WebResourceError;
import com.tencent.smtt.export.external.interfaces.WebResourceRequest;
import com.tencent.smtt.export.external.interfaces.WebResourceResponse;
import com.tencent.smtt.sdk.WebView;

//import android.app.Activity;

public abstract interface OnMyWebViewClienListener
{
	
	public abstract boolean shouldOverrideUrlLoading(WebView view, String url);

	
	public abstract void doUpdateVisitedHistory(WebView arg0, String arg1, boolean arg2);

	
	public abstract void onDetectedBlankScreen(String arg0, int arg1);

	
	public abstract void onFormResubmission(WebView arg0, Message arg1, Message arg2);

	
	public abstract void onLoadResource(WebView arg0, String arg1);

	
	public abstract void onPageStarted(WebView arg0, String arg1, Bitmap arg2);

	
	public abstract void onReceivedClientCertRequest(WebView arg0, ClientCertRequest arg1);

	
	public abstract void onReceivedError(WebView arg0, int arg1, String arg2, String arg3);
	
	public abstract void onReceivedError(WebView arg0, WebResourceRequest arg1, WebResourceError arg2);

	
	public abstract void onReceivedHttpAuthRequest(WebView arg0, HttpAuthHandler arg1, String arg2, String arg3);

	
	public abstract void onReceivedHttpError(WebView arg0, WebResourceRequest arg1, WebResourceResponse arg2);

	
	public abstract void onReceivedLoginRequest(WebView arg0, String arg1, String arg2, String arg3);

	
	public abstract void onReceivedSslError(WebView arg0, SslErrorHandler arg1, SslError arg2);
	
	public abstract void onScaleChanged(WebView arg0, float arg1, float arg2);

	
	public abstract void onTooManyRedirects(WebView arg0, Message arg1, Message arg2);

	
	public abstract void onUnhandledKeyEvent(WebView arg0, KeyEvent arg1);

	
	public abstract WebResourceResponse shouldInterceptRequest(WebView arg0, String arg1);

	
	public abstract WebResourceResponse shouldInterceptRequest(WebView arg0, WebResourceRequest arg1, Bundle arg2);

	
	public abstract WebResourceResponse shouldInterceptRequest(WebView arg0, WebResourceRequest arg1);
	
	public abstract boolean shouldOverrideKeyEvent(WebView arg0, KeyEvent arg1);

	
	public abstract void onPageFinished(WebView view, String url);
  
}
