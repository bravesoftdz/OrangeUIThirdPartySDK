package com.smartdevice.aidltestdemo;

import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Message;
import android.os.RemoteException;
import android.provider.MediaStore;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewConfiguration;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.smartdevice.aidl.IZKCService;
import com.smartdevice.aidltestdemo.common.CmdDialog;
import com.smartdevice.aidltestdemo.language.LanguageModel;
import com.smartdevice.aidltestdemo.language.SpinnerAdapterLanguage;
import com.smartdevice.aidltestdemo.printer.PrinterHelper;
import com.smartdevice.aidltestdemo.printer.entity.SupermakerBill;
import com.zkc.baseLibrary.MessageType;
import com.zkc.baseLibrary.ZkcManager;

import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class PrinterActivity extends BaseActivity implements OnClickListener, OnCheckedChangeListener, AdapterView.OnItemSelectedListener{
	public static final String TAG = "PrinterActivity";
	private Button btnQrCode, btnBarCode, btnPrintPic, btnPrint, btnUnicode, btn_wordToPic,
			btnSelectPic, btn_normal, btn_vAmaplify, btn_hAmaplify, btn_amaplify,
			btn_wordAlginLeft, btn_wordAlginMiddle, btn_wordAlginRight,
			btn_picAlginLeft, btn_picAlginMiddle, btn_picAlginRight,
			btnPrintModelOne, btnPrintModelTwo, btnPrintModelThree, btnSuperPrinter,
	        btnPrintPicGray, btnPrintPicRaster, btnPrintUnicode1F30,btnOpenPower,btnClosePower;
	private TextView tv_printStatus, tv_printer_soft_version;
	private EditText et_printText;
	private ImageView iv_printPic;
	private Bitmap mBitmap = null;
	RadioGroup rg_fontGroup;
	private static final int REQUEST_EX = 1;
	private int fontType = 0;
	//标签打印标记 the flag of tag print
	private boolean autoOutputPaper = false;
	private String printTextString = "";
	private boolean checkedPicFlag = false;
	String text;
	private Spinner spinnerLanguage, spinner_pic_style;
    /**
     * 图片打印类型
	 * image type of print
     */
    int imageType=0;
    final String[] imageTypeArray=new String[]{"POINT","GRAY","RASTER"};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_printer);
		initView();
		initEvent();
		enableOrDisEnableKey(false);
	}

	@Override
	protected void onResume() {
		//开始检测打印机 begin to detect printer
		if(mIzkcService!=null){
			ZkcManager.getInstance().beginLinkToPrinter();
		}
		super.onResume();
	}

	@Override
	protected void handleStateMessage(Message message) {
		super.handleStateMessage(message);
		switch (message.what){
			//服务绑定成功 service bind success
			case MessageType.BaiscMessage.SEVICE_BIND_SUCCESS:
				Toast.makeText(this, getString(R.string.service_bind_success), Toast.LENGTH_SHORT).show();
				mIzkcService = (IZKCService) message.obj;
				ZkcManager.getInstance().beginLinkToPrinter();
				break;
			//服务绑定失败 service bind fail
			case MessageType.BaiscMessage.SEVICE_BIND_FAIL:
				Toast.makeText(this, getString(R.string.service_bind_fail), Toast.LENGTH_SHORT).show();
				break;
			//打印机连接成功 printer link success
			case MessageType.BaiscMessage.DETECT_PRINTER_SUCCESS:
				String msg = (String) message.obj;
				checkPrintStateAndDisplayPrinterInfo(msg);
				break;
			//打印机连接超时 printer link timeout
			case MessageType.BaiscMessage.PRINTER_LINK_TIMEOUT:
				Toast.makeText(this, getString(R.string.printer_link_timeout), Toast.LENGTH_SHORT).show();
				break;
		}
	}

	private void checkPrintStateAndDisplayPrinterInfo(String msg) {
		enableOrDisEnableKey(true);
		if(!checkedPicFlag)generateBarCode();
		String status;
		String aidlServiceVersion;
		try {
            status = mIzkcService.getPrinterStatus();
            tv_printStatus.setText(status);
            aidlServiceVersion = mIzkcService.getServiceVersion();
            tv_printer_soft_version.setText(msg + "\nAIDL Service Version:" + aidlServiceVersion);
        } catch (RemoteException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}

	private void initView() {
		btnBarCode = (Button) findViewById(R.id.btnBarCode);
		btnBarCode.requestFocus();
		btnQrCode = (Button) findViewById(R.id.btnQrCode);
		btnPrintPic = (Button) findViewById(R.id.btnPrintPic);
		btnPrint = (Button) findViewById(R.id.btnPrint);
		btnUnicode = (Button) findViewById(R.id.btnUnicode);
		btn_wordToPic = (Button) findViewById(R.id.btn_wordToPic);
		btnSelectPic = (Button) findViewById(R.id.btnSelectPic);
		btn_normal = (Button) findViewById(R.id.btn_normal);
		btn_amaplify = (Button) findViewById(R.id.btn_amplify);
		btn_vAmaplify = (Button) findViewById(R.id.btn_vAmaplify);
		btn_hAmaplify = (Button) findViewById(R.id.btn_hAmplify);
		rg_fontGroup = (RadioGroup) findViewById(R.id.rg_fontGroup);
		btn_wordAlginLeft = (Button) findViewById(R.id.btn_wordAlginLeft);
		btn_wordAlginMiddle = (Button) findViewById(R.id.btn_wordAlginMiddle);
		btn_wordAlginRight = (Button) findViewById(R.id.btn_wordAlginRight);
		btn_picAlginLeft = (Button) findViewById(R.id.btn_picAlginLeft);
		btn_picAlginMiddle = (Button) findViewById(R.id.btn_picAlginMiddle);
		btn_picAlginRight = (Button) findViewById(R.id.btn_picAlginRight);
		
		btnPrintModelOne = (Button) findViewById(R.id.btnPrintModelOne);
		btnPrintModelTwo = (Button) findViewById(R.id.btnPrintModelTwo);
		btnPrintModelThree = (Button) findViewById(R.id.btnPrintModelThree);
		btnSuperPrinter = (Button) findViewById(R.id.btnSuperPrinter);
		btnPrintPicGray = (Button) findViewById(R.id.btnPrintPicGray);
		btnPrintPicRaster = (Button) findViewById(R.id.btnPrintPicRaster);
		btnPrintUnicode1F30 = (Button) findViewById(R.id.btnPrintUnicode1F30);
		btnOpenPower = (Button) findViewById(R.id.btnOpenPower);
		btnClosePower = (Button) findViewById(R.id.btnClosePower);
		tv_printer_soft_version = (TextView) findViewById(R.id.tv_printer_soft_version);
		spinnerLanguage = (Spinner) findViewById(R.id.spinner_language);
		spinner_pic_style = (Spinner) findViewById(R.id.spinner_pic_style);

		tv_printStatus = (TextView) findViewById(R.id.tv_printStatus);
		et_printText = (EditText) findViewById(R.id.et_printText);
		iv_printPic = (ImageView) findViewById(R.id.iv_printPic);
		printTextString = getString(R.string.test_print_text);
		et_printText.setText(printTextString);
		text= et_printText.getText().toString()+"\n";
		et_printText.setSelection(et_printText.getText().toString().length());
		SpinnerAdapterLanguage adapter = new SpinnerAdapterLanguage(this, R.layout.adapter_listview, getData());
		spinnerLanguage.setAdapter(adapter);
		spinnerLanguage.setOnItemSelectedListener(this);
        spinner_pic_style.setAdapter(new ArrayAdapter<String>(this,R.layout.adapter_listview, R.id.textview_itemname,imageTypeArray));
        spinner_pic_style.setOnItemSelectedListener(this);
		spinner_pic_style.setSelection(0);
	}

	private List<LanguageModel> getData() {
		Resources res =getResources();
		String[] cmdStr=res.getStringArray(R.array.language);
		List<LanguageModel> languageModelList=new ArrayList<>();
		for(int i=0;i<cmdStr.length;i++)
		{
			String [] cmdArray=cmdStr[i].split(",");
			if(cmdArray.length==3)
			{
				LanguageModel languageModel=new LanguageModel();
				languageModel.code=Integer.parseInt(cmdArray[0]);
				languageModel.language=cmdArray[1];
				languageModel.description=cmdArray[1]+" "+cmdArray[2];
				languageModelList.add(languageModel);
			}
		}
		return languageModelList;
	}

	private void initEvent() {
		btnBarCode.setOnClickListener(this);
		btnQrCode.setOnClickListener(this);
		btnPrintPic.setOnClickListener(this);
		btnPrint.setOnClickListener(this);
		btnUnicode.setOnClickListener(this);
		btnSelectPic.setOnClickListener(this);
		btn_wordToPic.setOnClickListener(this);
		btn_normal.setOnClickListener(this);
		btn_vAmaplify.setOnClickListener(this);
		btn_hAmaplify.setOnClickListener(this);
		btn_amaplify.setOnClickListener(this);
		rg_fontGroup.setOnCheckedChangeListener(this);
		btn_wordAlginLeft.setOnClickListener(this);
		btn_wordAlginMiddle.setOnClickListener(this);
		btn_wordAlginRight.setOnClickListener(this);
		btn_picAlginLeft.setOnClickListener(this);
		btn_picAlginMiddle.setOnClickListener(this);
		btn_picAlginRight.setOnClickListener(this);
		btnPrintModelOne.setOnClickListener(this);
		btnPrintModelTwo.setOnClickListener(this);
		btnPrintModelThree.setOnClickListener(this);
		btnSuperPrinter.setOnClickListener(this);
		btnPrintUnicode1F30.setOnClickListener(this);
		btnPrintPicRaster.setOnClickListener(this);
		btnPrintPicGray.setOnClickListener(this);
		btnClosePower.setOnClickListener(this);
		btnOpenPower.setOnClickListener(this);
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btnBarCode:
			generateBarCode();
			break;
		case R.id.btnQrCode:
			generateQrCode();
			break;
		case R.id.btn_wordToPic:
			wordToPic();
			break;
		case R.id.btnPrintPic:
			printPic();
			break;
		case R.id.btnPrint:
			printGBKText();
			break;
		case R.id.btnUnicode:
			printUnicode();
			break;
		case R.id.btnSelectPic:
			selectPic();
			break;
		case R.id.btn_normal:
			printVamplify(0);
			break;
		case R.id.btn_vAmaplify:
			printVamplify(1);
			break;
		case R.id.btn_hAmplify:
			printVamplify(2);
			break;
		case R.id.btn_amplify:
			printVamplify(3);
			break;
		case R.id.btn_wordAlginLeft:
			printTextAlgin(0);
			break;
		case R.id.btn_wordAlginMiddle:
			printTextAlgin(1);
			break;
		case R.id.btn_wordAlginRight:
			printTextAlgin(2);
			break;
		case R.id.btn_picAlginLeft:
			printBitmapAlgin(0);
			break;
		case R.id.btn_picAlginMiddle:
			printBitmapAlgin(1);
			break;
		case R.id.btn_picAlginRight:
			printBitmapAlgin(2);
			break;
		case R.id.btnPrintModelOne:
			printPurcase(false, false);
			break;
		case R.id.btnPrintModelTwo:
			printPurcase(true, false);
			break;
		case R.id.btnPrintModelThree:
			printPurcase(true, true);
			break;
		case R.id.btnPrintPicGray:
			printBitmapGray();
			break;
		case R.id.btnPrintPicRaster:
			printBitmapRaster();
			 break;
		case R.id.btnPrintUnicode1F30:
			printBitmapUnicode1F30();
			break;
		default:
			break;
		}
	}

	private void enableOrDisEnableKey(boolean enable){
		btnPrint.setEnabled(enable);
		btnUnicode.setEnabled(enable);
		btnPrintPic.setEnabled(enable);
		btnPrintModelOne.setEnabled(enable);
		btnPrintModelTwo.setEnabled(enable);
		btnPrintModelThree.setEnabled(enable);
		spinner_pic_style.setEnabled(enable);
		spinnerLanguage.setEnabled(enable);
	}

	private void printBitmapUnicode1F30() {
		text= et_printText.getText().toString()+"\n";
		try {
			mIzkcService.printUnicode_1F30(text);
			if(autoOutputPaper){
				mIzkcService.generateSpace();
			}
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}

	private void printBitmapRaster() {
		try {
			if(mBitmap!=null){
				mIzkcService.printRasterImage(mBitmap);
				if(autoOutputPaper){
					mIzkcService.generateSpace();
				}
			}
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}

	private void printBitmapGray() {
		try {
			if(mBitmap!=null){
				mIzkcService.printImageGray(mBitmap);
				if(autoOutputPaper){
					mIzkcService.generateSpace();
				}
			}
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}

	private void printPurcase(boolean hasStartPic, boolean hasEndPic) {
		SupermakerBill bill = PrinterHelper.getInstance(this).getSupermakerBill(mIzkcService, hasStartPic, hasEndPic);
		PrinterHelper.getInstance(this).printPurchaseBillModelOne(mIzkcService,bill, imageType);
	}
	private void printBitmapAlgin(int alginStyle) {
		Bitmap bitmap = BitmapFactory.decodeResource(getResources(),R.drawable.zkc);
//		Bitmap bitmap1 = resizeImage(bitmap, 376, 120);
		try {
			mIzkcService.printBitmapAlgin(bitmap, 376, 120, alginStyle);
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void printTextAlgin(int alginStyle) {
		String pString = "智能打印\n";
		try {
			mIzkcService.printTextAlgin( pString, 0, 1, alginStyle);
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	private void printVamplify(int type) {
		try {
			mIzkcService.printTextWithFont(text, fontType, type);
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}


	private void printFont(int type) {
		try {
//			mIzkcService.setTypeface(type);
//			mIzkcService.printGBKText(text);
			mIzkcService.printTextWithFont(text, type, 0);
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
		
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		checkedPicFlag = true;
		if (requestCode == REQUEST_EX && resultCode == RESULT_OK
				&& null != data) {
			Uri selectedImage = data.getData();
			String[] filePathColumn = { MediaStore.Images.Media.DATA };
			Cursor cursor = getContentResolver().query(selectedImage,
					filePathColumn, null, null, null);
			cursor.moveToFirst();
			int columnIndex = cursor.getColumnIndex(filePathColumn[0]);
			String picturePath = cursor.getString(columnIndex);
			iv_printPic.setImageURI(selectedImage);
			mBitmap = BitmapFactory.decodeFile(picturePath);
			iv_printPic.setImageBitmap(mBitmap);
			if (mBitmap.getHeight() > 384) {
				iv_printPic.setImageBitmap(resizeImage(mBitmap, 384, 384));
			}
			cursor.close();
		}
		super.onActivityResult(requestCode, resultCode, data);
	}

	public static Bitmap resizeImage(Bitmap bitmap, int w, int h) {
		Bitmap BitmapOrg = bitmap;
		int width = BitmapOrg.getWidth();
		int height = BitmapOrg.getHeight();
		int newWidth = w;
		int newHeight = h;

		if (width >= newWidth) {
			float scaleWidth = ((float) newWidth) / width;
			Matrix matrix = new Matrix();
			matrix.postScale(scaleWidth, scaleWidth);
			Bitmap resizedBitmap = Bitmap.createBitmap(BitmapOrg, 0, 0, width,
					height, matrix, true);
			return resizedBitmap;
		} else {
			Bitmap bitmap2 = Bitmap.createBitmap(newWidth, newHeight,
					bitmap.getConfig());
			Canvas canvas = new Canvas(bitmap2);
			canvas.drawColor(Color.WHITE);

			canvas.drawBitmap(BitmapOrg, (newWidth - width) / 2, 0, null);

			return bitmap2;
		}
	}

	private void selectPic() {
		Intent intent = new Intent(Intent.ACTION_PICK,
				MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
		startActivityForResult(intent, REQUEST_EX);

	}

	private void generateQrCode() {
		try {
			mBitmap = mIzkcService.createQRCode("http://www.sznewbest.com", 384, 384);
			iv_printPic.setImageBitmap(mBitmap);
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}
	private void generateBarCode() {
		try {
			mBitmap = mIzkcService.createBarCode("4333333367", 1, 384, 120, false);
			iv_printPic.setImageBitmap(mBitmap);
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}

	private void printUnicode() {
		text= et_printText.getText().toString()+"\n";
		try {
			mIzkcService.printUnicodeText(text);
			if(autoOutputPaper){
				mIzkcService.generateSpace();
			}
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}

	private void printGBKText() {
		text= et_printText.getText().toString()+"\r\n";
		try {
			mIzkcService.printGBKText(text);
			//支持标签打印的设备 打印完内容后调用该方法检测间隙
//			mIzkcService.generateSpace();
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}

	private void printPic() {
		try {
			if(mBitmap!=null){
				switch (imageType){
                    case 0:
                        mIzkcService.printBitmap(mBitmap);
                        break;
                    case 1:
                        mIzkcService.printImageGray(mBitmap);
                        break;
                    case 2:
                        mIzkcService.printRasterImage(mBitmap);
                        break;
                }
				if(autoOutputPaper){
					mIzkcService.generateSpace();
				}
			}
		} catch (RemoteException e) {
			Log.e("", "远程服务未连接...");
			e.printStackTrace();
		}
	}

	@Override
	public void onCheckedChanged(RadioGroup group, int checkedId) {
		if(checkedId == R.id.rb_fontOne){
			fontType = 0;
		}else if(checkedId == R.id.rb_fontTwo){
			fontType = 1;
		}
	}
	
	private void wordToPic() {
		String str = et_printText.getText().toString();
		mBitmap = Bitmap.createBitmap(384, 30, Config.ARGB_8888);
		Canvas canvas = new Canvas(mBitmap);
		canvas.drawColor(Color.WHITE);
		TextPaint textPaint = new TextPaint();
		textPaint.setStyle(Paint.Style.FILL);
		textPaint.setColor(Color.BLACK);
		textPaint.setTextSize(25.0F);
		StaticLayout layout = new StaticLayout(str, textPaint,
				mBitmap.getWidth(), Alignment.ALIGN_NORMAL, (float) 1.0,
				(float) 0.0, true);
		layout.draw(canvas);
		iv_printPic.setImageBitmap(mBitmap);
	}

	@Override
	public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
		switch (parent.getId()){
			case R.id.spinner_language:
				setPrinterLanguage(position);
				break;
			case R.id.spinner_pic_style:
			    imageType = position;
				break;
		}
	}

	private void getOverflowMenu() {
		try {
			ViewConfiguration config = ViewConfiguration.get(this);
			Field menuKeyField = ViewConfiguration.class
					.getDeclaredField("sHasPermanentMenuKey");
			if (menuKeyField != null) {
				menuKeyField.setAccessible(true);
				menuKeyField.setBoolean(config, false);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		menu.add(0, 1, 1, "发送指令");
		return super.onCreateOptionsMenu(menu);
	}

	private void showCmd() {
		String path = Environment.getExternalStorageDirectory()
				.getAbsolutePath() + File.separator + "cmd.txt";
		//读取模板数据，按行保存
		File file = new File(path);
		if(!file.exists()){
			Toast.makeText(PrinterActivity.this,
					"请按规定格式将指令保存在名为cmd.txt文件中，并复制在终端根目录下",
					Toast.LENGTH_SHORT).show();
			return;
		}
		CmdDialog cmdDialog = new CmdDialog(this , new CmdDialog.DialogCallBack() {
			@Override
			public void submit(String cmd) {
				String cmds = cmd;
				if(mIzkcService!=null){
					byte[] buffer = hexStringToBytes(cmds);
					try {
						mIzkcService.sendRAWData("printer", buffer);
					} catch (RemoteException e) {
						e.printStackTrace();
					}
				}
			}
		});
		cmdDialog.show();
	}

	public static byte[] hexStringToBytes(String hexString) {
		hexString = hexString.toLowerCase();
		String[] hexStrings = hexString.split(" ");
		byte[] bytes = new byte[hexStrings.length];
		for (int i = 0; i < hexStrings.length; i++) {
			char[] hexChars = hexStrings[i].toCharArray();
			bytes[i] = (byte) (charToByte(hexChars[0]) << 4 | charToByte(hexChars[1]));
		}
		return bytes;
	}

	private static byte charToByte(char c) {
		return (byte) "0123456789abcdef".indexOf(c);
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		if(item.getItemId()==1){
			showCmd();
		}
		return super.onOptionsItemSelected(item);
	}

	private void setPrinterLanguage(int position) {
		LanguageModel map = (LanguageModel)spinnerLanguage.getItemAtPosition(position);
		String languageStr=map.language;
		//语言描述
		String description=map.description;
		//语言指令
		int code=map.code;
		Log.d(TAG, "onItemClick: spinner_language="+description+","+code);

		//发送语言切换指令
		byte[] cmd_language=new byte[]{0x1B,0x74,0x00};
		cmd_language[2]=(byte)code;
		try {
            if(mIzkcService!=null)mIzkcService.sendRAWData("print", cmd_language);
            //设置打印语言
        } catch (RemoteException e) {
            e.printStackTrace();
        }
	}

	@Override
	public void onNothingSelected(AdapterView<?> parent) {

	}
}
