<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <activity
            android:name="${relativePackage}.${mainActivityName}"
            android:theme="@style/Theme.AppCompat.NoActionBar" />
        <activity
            android:name="${relativePackage}.${className}"
            android:theme="@style/Theme.AppCompat.NoActionBar" />
    </application>
</manifest>
