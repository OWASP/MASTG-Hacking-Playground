package sg.vp.owasp_mobile.OMTG_Android;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

import sg.vp.owasp_mobile.OMTG_Android.R;

public class OMTG_DATAST_006_Clipboard extends AppCompatActivity {

    EditText sensitiveInformation;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_omtg__datast_006__clipboard);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        sensitiveInformation = (EditText) findViewById(R.id.ClipboardEditText);

// NOT WORKING ATM
//
//        sensitiveInformation.setCustomSelectionActionModeCallback(new ActionMode.Callback() {
//
//            public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
//                return false;
//            }
//
//            public void onDestroyActionMode(ActionMode mode) {
//            }
//
//            public boolean onCreateActionMode(ActionMode mode, Menu menu) {
//                return false;
//            }
//
//            public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
//                return false;
//            }
//        });

    }

//    @Override
//    protected void onCreateContextMenu(ContextMenu menu)
//    {
//        //super.onCreateContextMenu(menu); //Be sure to comment this line or remove it completely.
//        // menu.clear();
//    }
}
