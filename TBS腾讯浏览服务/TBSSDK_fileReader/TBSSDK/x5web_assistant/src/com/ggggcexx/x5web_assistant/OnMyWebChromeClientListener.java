package com.ggggcexx.x5web_assistant;

//import android.content.Intent;
//import android.graphics.Bitmap;
//import android.net.Uri;
//import android.os.Message;
import android.view.View;

//import com.tencent.smtt.export.external.interfaces.ConsoleMessage;
//import com.tencent.smtt.export.external.interfaces.GeolocationPermissionsCallback;
//import com.tencent.smtt.export.external.interfaces.JsPromptResult;
import com.tencent.smtt.export.external.interfaces.JsResult;
import com.tencent.smtt.export.external.interfaces.IX5WebChromeClient.CustomViewCallback;
//import com.tencent.smtt.sdk.ValueCallback;
import com.tencent.smtt.sdk.WebView;
//import com.tencent.smtt.sdk.WebChromeClient.FileChooserParams;
//import com.tencent.smtt.sdk.WebStorage.QuotaUpdater;
//
//import android.app.Activity;

public abstract interface OnMyWebChromeClientListener
{


	
//	public abstract Bitmap getDefaultVideoPoster();
//
//	
//	public abstract View getVideoLoadingProgressView();
//
//	
//	public abstract void getVisitedHistory(ValueCallback<String[]> arg0);
//
//	
//	public abstract void onCloseWindow(WebView arg0);
//
//	
//	public abstract boolean onConsoleMessage(ConsoleMessage arg0);
//
//	
//	public abstract boolean onCreateWindow(WebView arg0, boolean arg1, boolean arg2, Message arg3);
//
//	
//	public abstract void onExceededDatabaseQuota(String arg0, String arg1, long arg2, long arg3, long arg4,
//			QuotaUpdater arg5);
//
//	
//	public abstract void onGeolocationPermissionsHidePrompt();
//
//	
//	public abstract void onGeolocationPermissionsShowPrompt(String arg0, GeolocationPermissionsCallback arg1);

	
	public abstract void onHideCustomView();

	
	public abstract boolean onJsAlert(WebView arg0, String arg1, String arg2, JsResult arg3);

	
//	public abstract boolean onJsBeforeUnload(WebView arg0, String arg1, String arg2, JsResult arg3);

	
	public abstract boolean onJsConfirm(WebView arg0, String arg1, String arg2, JsResult arg3);

	
//	public abstract boolean onJsPrompt(WebView arg0, String arg1, String arg2, String arg3, JsPromptResult arg4);
//
//	
//	public abstract boolean onJsTimeout();
	
	public abstract void onProgressChanged(WebView arg0, int arg1);

	
//	public abstract void onReachedMaxAppCacheSize(long arg0, long arg1, QuotaUpdater arg2);
//
//	
//	public abstract void onReceivedIcon(WebView arg0, Bitmap arg1);
//
//	
//	public abstract void onReceivedTitle(WebView arg0, String arg1);
//	
//	public abstract void onReceivedTouchIconUrl(WebView arg0, String arg1, boolean arg2);
//
//	
//	public abstract void onRequestFocus(WebView arg0);
	
	public abstract void onShowCustomView(View arg0, CustomViewCallback arg1);

//	
//	public abstract void onShowCustomView(View arg0, int arg1, CustomViewCallback arg2);
//
//	
//	public abstract boolean onShowFileChooser(WebView arg0, ValueCallback<Uri[]> arg1, FileChooserParams arg2);
//
//	
//	public abstract void openFileChooser(ValueCallback<Uri> arg0, String arg1, String arg2);
	
}
