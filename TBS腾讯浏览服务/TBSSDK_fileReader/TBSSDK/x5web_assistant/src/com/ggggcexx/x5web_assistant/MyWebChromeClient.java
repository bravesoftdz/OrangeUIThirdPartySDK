package com.ggggcexx.x5web_assistant;

//import com.tencent.smtt.export.external.interfaces.ConsoleMessage;
//import com.tencent.smtt.export.external.interfaces.GeolocationPermissionsCallback;
//import com.tencent.smtt.export.external.interfaces.JsPromptResult;
import com.tencent.smtt.export.external.interfaces.JsResult;
import com.tencent.smtt.export.external.interfaces.IX5WebChromeClient.CustomViewCallback;
//import com.tencent.smtt.sdk.ValueCallback;
import com.tencent.smtt.sdk.WebChromeClient;
import com.tencent.smtt.sdk.WebView;
//import com.tencent.smtt.sdk.WebChromeClient.FileChooserParams;
//import com.tencent.smtt.sdk.WebStorage.QuotaUpdater;

//import android.graphics.Bitmap;
//import android.net.Uri;
//import android.os.Message;
import android.view.View;


public class MyWebChromeClient extends WebChromeClient{
	
	
	private OnMyWebChromeClientListener mListener;
	
	public void setListener(OnMyWebChromeClientListener Listener)
	{
		mListener = Listener;
	}
	public final OnMyWebChromeClientListener getListener()
	{
		return mListener;
	}
	
	
//	
//	@Override
//	public Bitmap getDefaultVideoPoster() {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.getDefaultVideoPoster();
//        }
//		return super.getDefaultVideoPoster();
//	}
//
//	@Override
//	public View getVideoLoadingProgressView() {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.getVideoLoadingProgressView();
//        }
//		return super.getVideoLoadingProgressView();
//	}
//
//	@Override
//	public void getVisitedHistory(ValueCallback<String[]> arg0) {
//		// TODO Auto-generated method stub
//		super.getVisitedHistory(arg0);
//		
//        if (mListener!=null)
//        {
//        	mListener.getVisitedHistory(arg0);
//        }
//	}
//
//	@Override
//	public void onCloseWindow(WebView arg0) {
//		// TODO Auto-generated method stub
//		super.onCloseWindow(arg0);
//		
//        if (mListener!=null)
//        {
//        	mListener.onCloseWindow(arg0);
//        }
//	}
//
//	@Override
//	public boolean onConsoleMessage(ConsoleMessage arg0) {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.onConsoleMessage(arg0);
//        }
//		return super.onConsoleMessage(arg0);
//	}
//
//	@Override
//	public boolean onCreateWindow(WebView arg0, boolean arg1, boolean arg2, Message arg3) {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.onCreateWindow(arg0,arg1, arg2, arg3);
//        }
//		return super.onCreateWindow(arg0, arg1, arg2, arg3);
//	}
//
//	@Override
//	public void onExceededDatabaseQuota(String arg0, String arg1, long arg2, long arg3, long arg4,
//			QuotaUpdater arg5) {
//		// TODO Auto-generated method stub
//		super.onExceededDatabaseQuota(arg0, arg1, arg2, arg3, arg4, arg5);
//		
//        if (mListener!=null)
//        {
//        	mListener.onExceededDatabaseQuota(arg0,arg1,arg2,arg3, arg4, arg5);
//        }
//	}
//
//	@Override
//	public void onGeolocationPermissionsHidePrompt() {
//		// TODO Auto-generated method stub
//		super.onGeolocationPermissionsHidePrompt();
//		
//        if (mListener!=null)
//        {
//        	mListener.onGeolocationPermissionsHidePrompt();
//        }
//	}
//
//	@Override
//	public void onGeolocationPermissionsShowPrompt(String arg0, GeolocationPermissionsCallback arg1) {
//		// TODO Auto-generated method stub
//		super.onGeolocationPermissionsShowPrompt(arg0, arg1);
//		
//        if (mListener!=null)
//        {
//        	mListener.onGeolocationPermissionsShowPrompt(arg0,arg1);
//        }
//	}

	@Override
	public void onHideCustomView() {
		// TODO Auto-generated method stub
		super.onHideCustomView();
		
        if (mListener!=null)
        {
        	mListener.onHideCustomView();
        }
	}

	@Override
	public boolean onJsAlert(WebView arg0, String arg1, String arg2, JsResult arg3) {
		// TODO Auto-generated method stub
		
        if (mListener!=null)
        {
        	return mListener.onJsAlert(arg0,arg1, arg2, arg3);
        }
		return super.onJsAlert(arg0, arg1, arg2, arg3);
	}
//
//	@Override
//	public boolean onJsBeforeUnload(WebView arg0, String arg1, String arg2, JsResult arg3) {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.onJsBeforeUnload(arg0,arg1, arg2, arg3);
//        }
//		return super.onJsBeforeUnload(arg0, arg1, arg2, arg3);
//	}

	@Override
	public boolean onJsConfirm(WebView arg0, String arg1, String arg2, JsResult arg3) {
		// TODO Auto-generated method stub
		
        if (mListener!=null)
        {
        	return mListener.onJsConfirm(arg0, arg1, arg2, arg3);
        }
		return super.onJsConfirm(arg0, arg1, arg2, arg3);
	}
//
//	@Override
//	public boolean onJsPrompt(WebView arg0, String arg1, String arg2, String arg3, JsPromptResult arg4) {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.onJsPrompt(arg0, arg1, arg2, arg3, arg4);
//        }
//		return super.onJsPrompt(arg0, arg1, arg2, arg3, arg4);
//	}
//
//	@Override
//	public boolean onJsTimeout() {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.onJsTimeout();
//        }
//		return super.onJsTimeout();
//	}

	@Override
	public void onProgressChanged(WebView arg0, int arg1) {
		// TODO Auto-generated method stub
		super.onProgressChanged(arg0, arg1);
		
        if (mListener!=null)
        {
        	mListener.onProgressChanged(arg0,arg1);
        }
	}

//	@Override
//	public void onReachedMaxAppCacheSize(long arg0, long arg1, QuotaUpdater arg2) {
//		// TODO Auto-generated method stub
//		super.onReachedMaxAppCacheSize(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReachedMaxAppCacheSize(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onReceivedIcon(WebView arg0, Bitmap arg1) {
//		// TODO Auto-generated method stub
//		super.onReceivedIcon(arg0, arg1);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedIcon(arg0,arg1);
//        }
//	}
//
//	@Override
//	public void onReceivedTitle(WebView arg0, String arg1) {
//		// TODO Auto-generated method stub
//		super.onReceivedTitle(arg0, arg1);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedTitle(arg0,arg1);
//        }
//	}
//
//	@Override
//	public void onReceivedTouchIconUrl(WebView arg0, String arg1, boolean arg2) {
//		// TODO Auto-generated method stub
//		super.onReceivedTouchIconUrl(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedTouchIconUrl(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onRequestFocus(WebView arg0) {
//		// TODO Auto-generated method stub
//		super.onRequestFocus(arg0);
//		
//        if (mListener!=null)
//        {
//        	mListener.onRequestFocus(arg0);
//        }
//	}

	@Override
	public void onShowCustomView(View arg0, CustomViewCallback arg1) {
		// TODO Auto-generated method stub
		super.onShowCustomView(arg0, arg1);
		
        if (mListener!=null)
        {
        	mListener.onShowCustomView(arg0,arg1);
        }
	}
//
//	@Override
//	public void onShowCustomView(View arg0, int arg1, CustomViewCallback arg2) {
//		// TODO Auto-generated method stub
//		super.onShowCustomView(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onShowCustomView(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public boolean onShowFileChooser(WebView arg0, ValueCallback<Uri[]> arg1, FileChooserParams arg2) {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.onShowFileChooser(arg0, arg1, arg2);
//        }
//		return super.onShowFileChooser(arg0, arg1, arg2);
//	}
//
//	@Override
//	public void openFileChooser(ValueCallback<Uri> arg0, String arg1, String arg2) {
//		// TODO Auto-generated method stub
//		super.openFileChooser(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.openFileChooser(arg0,arg1,arg2);
//        }
//	}
//	
	
}
