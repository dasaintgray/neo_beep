# neo_beep

A fork of flutter_beep plugins, updating into the latest Dart SDK

## Getting Started

A very lite module to play system sound and beep for apps (no sound file included)

NOTE: The pupose of this plugins is to update into the latest SDK.

Shout out to https://pub.dev/publishers/gonoter.com/packages he is the original author of this plugins

import 'package:neo_beep/neo_beep.dart';

RaisedButton( child: Text("Beep Success"), onPressed: ()=> NeoBeep.beep()),
RaisedButton( child: Text("Beep Fail"), onPressed: ()=> NeoBeep.beep(false)),
RaisedButton( child: Text("Beep Android Custom"), onPressed: ()=> NeoBeep.playSysSound(AndroidSoundIDs.TONE_CDMA_ABBR_ALERT)),
RaisedButton( child: Text("Beep somthing"), onPressed: ()=> NeoBeep.playSysSound(41)),
RaisedButton( child: Text("Beep iOS Custom"), onPressed: ()=> NeoBeep.playSysSound(iOSSoundIDs.AudioToneBusy)),
LICENSE: FREE

