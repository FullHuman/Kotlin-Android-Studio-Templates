<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>

        <service
            android:name="${relativePackage}.FirebaseMessaging"
            android:enabled="true"
            android:exported="true">
            <intent-filter>
                <action android:name="com.google.firebase.MESSAGING_EVENT" />
            </intent-filter>
        </service>
        <service android:name="${relativePackage}.FirebaseInstanceId">
            <intent-filter>
                <action android:name="com.google.firebase.INSTANCE_ID_EVENT" />
            </intent-filter>
        </service>

    </application>
</manifest>
