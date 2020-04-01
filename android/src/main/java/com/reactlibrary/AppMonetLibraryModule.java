package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.monet.bidder.AppMonet;
import com.monet.bidder.AppMonetConfiguration;

public class AppMonetLibraryModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public AppMonetLibraryModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "AppMonetLibrary";
    }

    @ReactMethod
    public void initialize(String applicationId) {
        AppMonetConfiguration config = new AppMonetConfiguration.Builder()
          .applicationId(applicationId)
          .build();
        AppMonet.init(getReactApplicationContext(), config);
    }
}
