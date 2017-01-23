package ${packageName}

import android.util.Log
import com.google.firebase.iid.FirebaseInstanceId
import com.google.firebase.iid.FirebaseInstanceIdService

class FirebaseInstanceId : FirebaseInstanceIdService() {

    override fun onTokenRefresh() {
        super.onTokenRefresh()
        // Get updated InstanceID token.
        val refreshedToken = FirebaseInstanceId.getInstance().token
        Log.d("FirebaseInstanceid", "Refreshed token: " + refreshedToken)

        // TODO: Implement this method to send any registration to your app's servers.
        //sendRegistrationToServer(refreshedToken)
    }

}
