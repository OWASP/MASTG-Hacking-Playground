package sg.vp.owasp_mobile.OMTG_Android;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;

public class OMTG_DATAST_004_SharedPreferences extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_omtg__datast_004__shared_preference);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        SharedPreferences sharedPref = getSharedPreferences("key", MODE_WORLD_READABLE);
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putString("username", "administrator");
        editor.putString("password", "supersecret");
        editor.commit();

    }




}
