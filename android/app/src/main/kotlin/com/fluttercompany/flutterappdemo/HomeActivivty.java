package com.fluttercompany.flutterappdemo;

import android.os.Bundle;
import android.os.PersistableBundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

/**
 * Created by mm on 2018/12/29.
 */

public class HomeActivivty extends FlutterActivity {

    @Override
    public void onCreate(Bundle savedInstanceState, PersistableBundle persistentState) {
        super.onCreate(savedInstanceState, persistentState);
        GeneratedPluginRegistrant.registerWith(this);
    }
}
