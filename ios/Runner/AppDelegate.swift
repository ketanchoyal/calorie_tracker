import UIKit
import Flutter
import HealthKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      let allTypes = Set([
          HKObjectType.quantityType(forIdentifier: .dietaryEnergyConsumed)!,
          HKObjectType.quantityType(forIdentifier: .dietaryFatTotal)!,
          HKObjectType.quantityType(forIdentifier: .dietaryProtein)!,
          HKObjectType.quantityType(forIdentifier: .dietaryCarbohydrates)!
      ])
      HKHealthStore().requestAuthorization(toShare: allTypes, read: allTypes) { success, error in
          print(success, error)
      }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
