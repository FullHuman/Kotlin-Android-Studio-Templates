<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <activity
            android:name="${relativePackage}.${className}"
            android:theme="@style/SplashScreenTheme">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>

</manifest>
