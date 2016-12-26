package ${packageName}

import android.os.Bundle
import android.support.v7.app.AppCompatActivity

class ${className} : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        bottom_navigation.setOnNavigationItemSelectedListener { item ->
            when (item.itemId) {
                R.id.action_menu_home -> {
                    // User click on home
                }
                R.id.action_menu_favorites -> {
                    // User click on favorites
                }
                R.id.action_menu_settings -> {
                    // User click on settings
                }
                else -> true
            }
            return true
        }
    }

}
