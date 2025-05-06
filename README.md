# neo_beep

A lightweight Flutter plugin that enables your app to trigger system beeps or vibrations across Android and iOS platforms. Ideal for notifications, alerts, or simple user feedback where an audible or haptic signal is needed.

`neo_beep` provides a simple Dart API to invoke platform-native beeping functionality using a single method call. Easily customizable and extensible for more complex alert patterns.

---

## Getting Started

### Features

- 🔔 Trigger a native beep sound (if supported by the platform)
- 📳 Trigger haptic feedback or vibration
- 🔄 Unified Dart API across Android and iOS
- ⚙️ Minimal dependencies and easy integration

NOTE: The pupose of this plugins is to update into the latest SDK.

Shout out to https://pub.dev/publishers/gonoter.com/packages he is the original author of this plugins

### Supported Platforms

- ✅ Android
- ✅ iOS

import 'package:neo_beep/neo_beep.dart';

RaisedButton( child: Text("Beep Success"), onPressed: ()=> NeoBeep.beep()),
RaisedButton( child: Text("Beep Fail"), onPressed: ()=> NeoBeep.beep(false)),
RaisedButton( child: Text("Beep Android Custom"), onPressed: ()=> NeoBeep.playSysSound(AndroidSoundIDs.TONE_CDMA_ABBR_ALERT)),
RaisedButton( child: Text("Beep somthing"), onPressed: ()=> NeoBeep.playSysSound(41)),
RaisedButton( child: Text("Beep iOS Custom"), onPressed: ()=> NeoBeep.playSysSound(iOSSoundIDs.AudioToneBusy)),

LICENSE: FREE

