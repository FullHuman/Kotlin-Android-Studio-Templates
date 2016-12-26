package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;

class ${featureActivityClass} : ${superClass} {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.taskdetail_act)

        // Set up the toolbar.
        setSupportActionBar(toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            setDisplayShowHomeEnabled(true)
        }

        // Get the requested task id
        val taskId = intent.getStringExtra(EXTRA_TASK_ID)

        val taskDetailFragment = initFragment(R.id.contentFrame) {
            TaskDetailFragment.newInstance(taskId).apply { addFragmentToActivity(this, R.id.contentFrame) }
        }

        // Create the presenter
        TaskDetailPresenter(
                taskId,
                Injection.provideTasksRepository(applicationContext),
                taskDetailFragment)
    }

    override fun onSupportNavigateUp(): Boolean {
        onBackPressed()
        return true
    }

    companion object {
        val EXTRA_TASK_ID = "TASK_ID"
    }
}
