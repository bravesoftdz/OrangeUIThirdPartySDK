package com.ggggcexx.x5web_assistant;


//import com.tencent.smtt.export.external.interfaces.ClientCertRequest;
//import com.tencent.smtt.export.external.interfaces.HttpAuthHandler;
//import com.tencent.smtt.export.external.interfaces.SslError;
//import com.tencent.smtt.export.external.interfaces.SslErrorHandler;
//import com.tencent.smtt.export.external.interfaces.WebResourceError;
//import com.tencent.smtt.export.external.interfaces.WebResourceRequest;
//import com.tencent.smtt.export.external.interfaces.WebResourceResponse;
//import com.tencent.smtt.sdk.QbSdk;
//import com.tencent.smtt.sdk.WebSettings;
//import com.tencent.smtt.sdk.WebSettings.LayoutAlgorithm;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;

//import android.graphics.Bitmap;
//import android.os.Bundle;
//import android.os.Message;
//import android.util.Log;
//import android.view.KeyEvent;



public class MyWebViewClient extends WebViewClient {

	
	
	private  OnMyWebViewClienListener mListener;
	
	public void setListener(OnMyWebViewClienListener Listener)
	{
		mListener = Listener;
	}
	public final OnMyWebViewClienListener getListener()
	{
		return mListener;
	}
	
	
	
	
	@Override
	public boolean shouldOverrideUrlLoading(WebView view, String url) {
		
        if (mListener!=null)
        {
        	return mListener.shouldOverrideUrlLoading(view,url);
        }
    	return mListener.shouldOverrideUrlLoading(view,url);
	}
//
//	@Override
//	public void doUpdateVisitedHistory(WebView arg0, String arg1, boolean arg2) {
//		// TODO Auto-generated method stub
//		super.doUpdateVisitedHistory(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.doUpdateVisitedHistory(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onDetectedBlankScreen(String arg0, int arg1) {
//		// TODO Auto-generated method stub
//		super.onDetectedBlankScreen(arg0, arg1);
//		
//        if (mListener!=null)
//        {
//        	mListener.onDetectedBlankScreen(arg0,arg1);
//        }
//	}
//
//	@Override
//	public void onFormResubmission(WebView arg0, Message arg1, Message arg2) {
//		// TODO Auto-generated method stub
//		super.onFormResubmission(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onFormResubmission(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onLoadResource(WebView arg0, String arg1) {
//		// TODO Auto-generated method stub
//		super.onLoadResource(arg0, arg1);
//		
//        if (mListener!=null)
//        {
//        	mListener.onLoadResource(arg0,arg1);
//        }
//	}
//
//	@Override
//	public void onPageStarted(WebView arg0, String arg1, Bitmap arg2) {
//		// TODO Auto-generated method stub
//		super.onPageStarted(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onPageStarted(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onReceivedClientCertRequest(WebView arg0, ClientCertRequest arg1) {
//		// TODO Auto-generated method stub
//		super.onReceivedClientCertRequest(arg0, arg1);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedClientCertRequest(arg0,arg1);
//        }
//	}
//
//	@Override
//	public void onReceivedError(WebView arg0, int arg1, String arg2, String arg3) {
//		// TODO Auto-generated method stub
//		super.onReceivedError(arg0, arg1, arg2, arg3);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedError(arg0,arg1,arg2,arg3);
//        }
//	}
//
//	@Override
//	public void onReceivedError(WebView arg0, WebResourceRequest arg1, WebResourceError arg2) {
//		// TODO Auto-generated method stub
//		super.onReceivedError(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedError(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onReceivedHttpAuthRequest(WebView arg0, HttpAuthHandler arg1, String arg2, String arg3) {
//		// TODO Auto-generated method stub
//		super.onReceivedHttpAuthRequest(arg0, arg1, arg2, arg3);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedHttpAuthRequest(arg0,arg1,arg2,arg3);
//        }
//	}
//
//	@Override
//	public void onReceivedHttpError(WebView arg0, WebResourceRequest arg1, WebResourceResponse arg2) {
//		// TODO Auto-generated method stub
//		super.onReceivedHttpError(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedHttpError(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onReceivedLoginRequest(WebView arg0, String arg1, String arg2, String arg3) {
//		// TODO Auto-generated method stub
//		super.onReceivedLoginRequest(arg0, arg1, arg2, arg3);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedLoginRequest(arg0,arg1,arg2,arg3);
//        }
//	}
//
//	@Override
//	public void onReceivedSslError(WebView arg0, SslErrorHandler arg1, SslError arg2) {
//		// TODO Auto-generated method stub
//		super.onReceivedSslError(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onReceivedSslError(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onScaleChanged(WebView arg0, float arg1, float arg2) {
//		// TODO Auto-generated method stub
//		super.onScaleChanged(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onScaleChanged(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onTooManyRedirects(WebView arg0, Message arg1, Message arg2) {
//		// TODO Auto-generated method stub
//		super.onTooManyRedirects(arg0, arg1, arg2);
//		
//        if (mListener!=null)
//        {
//        	mListener.onTooManyRedirects(arg0,arg1,arg2);
//        }
//	}
//
//	@Override
//	public void onUnhandledKeyEvent(WebView arg0, KeyEvent arg1) {
//		// TODO Auto-generated method stub
//		super.onUnhandledKeyEvent(arg0, arg1);
//		
//        if (mListener!=null)
//        {
//        	mListener.onUnhandledKeyEvent(arg0,arg1);
//        }
//	}
//
//	@Override
//	public WebResourceResponse shouldInterceptRequest(WebView arg0, String arg1) {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.shouldInterceptRequest(arg0,arg1);
//        }
//        return super.shouldInterceptRequest(arg0, arg1);
//	}
//
//	@Override
//	public WebResourceResponse shouldInterceptRequest(WebView arg0, WebResourceRequest arg1, Bundle arg2) {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.shouldInterceptRequest(arg0,arg1,arg2);
//        }
//        return super.shouldInterceptRequest(arg0, arg1, arg2);
//	}
//
//	@Override
//	public WebResourceResponse shouldInterceptRequest(WebView arg0, WebResourceRequest arg1) {
//		// TODO Auto-generated method stub
//
//        if (mListener!=null)
//        {
//        	return mListener.shouldInterceptRequest(arg0,arg1);
//        }
//		return super.shouldInterceptRequest(arg0, arg1);
//			
//	}
//
//	@Override
//	public boolean shouldOverrideKeyEvent(WebView arg0, KeyEvent arg1) {
//		// TODO Auto-generated method stub
//		
//        if (mListener!=null)
//        {
//        	return mListener.shouldOverrideKeyEvent(arg0,arg1);
//        }
//		return super.shouldOverrideKeyEvent(arg0, arg1);
//	}

	@Override
	public void onPageFinished(WebView view, String url) {
		super.onPageFinished(view, url);
		
        if (mListener!=null)
        {
        	mListener.onPageFinished(view,url);
        }

	}

}
