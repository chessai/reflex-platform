{ applicationId
, version
, iconPath
, intentFilters
, services
, permissions
}:
''
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
      package="${applicationId}"
      android:versionCode="${version.code}"
      android:versionName="${version.name}">
    <application android:label="@string/app_name"
                 android:icon="${iconPath}"
                 android:hardwareAccelerated="true">
        <activity android:name="systems.obsidian.HaskellActivity"
                  android:label="@string/app_name"
                  android:configChanges="orientation|screenSize"
                  android:windowSoftInputMode="adjustResize">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
            ${intentFilters}
        </activity>
        ${services}
    </application>
    <uses-sdk android:minSdkVersion="25" />
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    ${permissions}
</manifest>
''
