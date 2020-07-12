package sg.vp.owasp_mobile.OMTG_Android;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;


import net.sqlcipher.database.SQLiteDatabase;
import java.io.File;


public class OMTG_DATAST_001_SQLite_Encrypted extends AppCompatActivity {

    String TAG = "OMTG_DATAST_001_SQLITE_Encrypted";

    @TargetApi(Build.VERSION_CODES.M)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_omtg__datast_001__sqlite__secure);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        SQLiteEnc();
    }

//    static {
//        System.loadLibrary("native");
//    }
    static {
        System.loadLibrary("native-lib");
    }


    public native String  stringFromJNI();


    private void SQLiteEnc() {
        SQLiteDatabase.loadLibs(this);

        File database = getDatabasePath("encrypted");
        database.mkdirs();
        database.delete();


//        SQLiteDatabase secureDB = SQLiteDatabase.openOrCreateDatabase(database, "1234", null);
//        Log.e(TAG, "Password to encrypt database: "+ stringFromJNI());
        SQLiteDatabase secureDB = SQLiteDatabase.openOrCreateDatabase(database, stringFromJNI(), null);


        secureDB.execSQL("CREATE TABLE IF NOT EXISTS Accounts(Username VARCHAR,Password VARCHAR);");
        secureDB.execSQL("INSERT INTO Accounts VALUES('admin','AdminPassEnc');");
        secureDB.close();
    }
}