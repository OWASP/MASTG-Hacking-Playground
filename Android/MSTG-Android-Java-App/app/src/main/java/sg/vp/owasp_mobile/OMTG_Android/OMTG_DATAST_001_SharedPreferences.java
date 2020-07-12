package sg.vp.owasp_mobile.OMTG_Android;

import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import static android.content.Context.MODE_WORLD_READABLE;

public class OMTG_DATAST_001_SharedPreferences extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_omtg__datast_001__shared_preference);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        SharedPreferences sharedPref = getSharedPreferences("key", MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putString("username", "administrator");
        editor.putString("password", "supersecret");
        editor.commit();

    }




}
