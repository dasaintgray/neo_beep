import Flutter
import UIKit
import AudioToolbox

public class NeoBeepPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "neo_beep", binaryMessenger: registrar.messenger())
    let instance = NeoBeepPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "playSysSound":
      if let args = call.arguments as? Dictionary<String, Any>,
         let soundId = args["soundId"] as? UInt32 {
        AudioServicesPlaySystemSound(soundId)
        result(true)
      } else {
        result(FlutterError(code: "INVALID_ARGUMENTS", message: "soundId is missing or invalid", details: nil))
      }
    case "stopSysSound":
        //Add your stop sound logic here.
        result(true)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}