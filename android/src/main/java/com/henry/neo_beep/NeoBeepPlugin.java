package com.henry.neo_beep;

import android.media.AudioManager;
import android.media.ToneGenerator;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/** NeoBeepPlugin */
public class NeoBeepPlugin implements FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;
  private final ToneGenerator tonegen = new ToneGenerator(AudioManager.STREAM_SYSTEM, 100);

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "neo_beep");
    channel.setMethodCallHandler(this);
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    switch (call.method) {
      case "playSysSound":
        Integer soundID = call.argument("soundId");
        if (soundID != null) {
          playSysSound(soundID);
          result.success(true);
        } else {
          result.error("INVALID ARGUMENTS", "soundID is null", null);
        }
        break;
      case "stopSysSound":
        stopSysSound();
        result.success(true);
        break;
      case "getPlatformVersion":
        result.success("Android" + android.os.Build.VERSION.RELEASE);
      default:
        result.notImplemented();
        break;
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }

  private void playSysSound(int soundID) {
    tonegen.startTone(soundID);
  }

  private void stopSysSound() {
    tonegen.stopTone();
  }
}
