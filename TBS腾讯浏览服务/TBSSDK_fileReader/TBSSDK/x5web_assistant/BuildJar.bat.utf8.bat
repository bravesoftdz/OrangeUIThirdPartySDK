@echo off

setlocal



rem //要改,这是你希望输出的JAR 文件名。
set JarOutName=x5web_assistant.jar




rem //要改,这个位置是你的 jdk 的目录。可以是 1.6 或 1.7 的。
set JDKDir=C:\Program Files\Java\jdk1.8.0_151





rem //要改,这个位置是你的安卓 SDK 的 SDK 目录。
set ANDROID=C:\Users\Public\Documents\Embarcadero\Studio\17.0\PlatformSDKs\android-sdk-windows

if "x%ANDROID%" == "x" set ANDROID=C:\Users\Public\Documents\Embarcadero\Studio\17.0\PlatformSDKs\android-sdk-windows







rem //要改,这个位置是你的工程的 安卓 ADK 的 LEVEL，不同的 DELPHI ，这里也不同。android-sdk-windows\platforms\
set ANDROID_PLATFORM=%ANDROID%\platforms\android-22





rem //要改,这个位置是你的工程的 安卓版本，不同的 DELPHI ，这里也不同。
set ANDROID_BT=%ANDROID%\build-tools\android-4.2.2






set DX_LIB=%ANDROID_BT%\lib



rem //这个意思是，当前目录是你的工作目录。
set PROJ_DIR=%CD%



rem // verbose 选项就是尽可能多的输出的意思
set VERBOSE=0




rem //下面就是开始合并。

echo.
echo Compiling the Java service activity source files
echo.
mkdir output 2> nul
mkdir output\classes 2> nul
if x%VERBOSE% == x1 SET VERBOSE_FLAG=-verbose



rem //要改,其中的com\ggggcexx\orangeui
"%JDKDir%\bin\javac" %VERBOSE_FLAG% -g -source 1.6 -target 1.6 -Xlint:deprecation -cp "%ANDROID_PLATFORM%\android.jar;%EMBO_LIB%\fmx.jar;E:\tbs_sdk_thirdapp.jar" -d output\classes src\com\ggggcexx\x5web_assistant\*.java




echo.
echo Creating jar containing the new classes
echo.
if x%VERBOSE% == x1 SET VERBOSE_FLAG=v
"%JDKDir%\bin\jar" c%VERBOSE_FLAG%f %JarOutName% -C output\classes com






echo Tidying up
echo.
rem //要改,清理生成的临时文件
rem del output\classes\com\ggggcexx\x5web_assistant\*.class

rem rmdir output\classes\com\ggggcexx\x5web_assistant
rem rmdir output\classes\com\ggggcexx\x5web_assistant
rem rmdir output\classes\com\ggggcexx
rem rmdir output\classes\com
rem rmdir output\classes





echo.
echo Now we have the end result, which is output\jar\%JarOutName%

pause

endlocal
