import 'package:flutter/material.dart';
import 'package:neo_beep/neo_beep.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Neo Beep Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text("Beep Success"),
                onPressed: () => NeoBeep.beep(),
              ),
              ElevatedButton(
                child: Text("Beep Fail"),
                onPressed: () => NeoBeep.beep(false),
              ),
              ElevatedButton(
                child: Text("Beep Android Custom"),
                onPressed: () => NeoBeep.playSysSound(
                    AndroidSoundIDs.TONE_CDMA_ABBR_ALERT),
              ),
              ElevatedButton(
                child: Text("Beep something"),
                onPressed: () => NeoBeep.playSysSound(41),
              ),
              ElevatedButton(
                child: Text("Beep iOS Camera Shutter"),
                onPressed: () =>
                    NeoBeep.playSysSound(iOSSoundIDs.CameraShutter),
              ),
              ElevatedButton(
                child: Text("Beep iOS JBL Ambigous"),
                onPressed: () =>
                    NeoBeep.playSysSound(iOSSoundIDs.SIMToolkitTone2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}