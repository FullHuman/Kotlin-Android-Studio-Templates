package ${packageName}

import android.content.Intent
import android.os.Bundle
import android.support.v7.app.AppCompatActivity

class ${className} : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // start your main activity
        startActivity(Intent(this, MainActivity::class.java))
        finish()
    }
}
