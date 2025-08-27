/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
    var controller : FlutterViewController!
    let METHOD_CHANNEL_NAME = "com.octo.flutter/scanner_wrapper"
    var scanChannel : FlutterMethodChannel!
    var scanVC : ScanViewController!
    
    override func application(_ application: UIApplication,didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        controller = window?.rootViewController as! FlutterViewController
        
        self.scanChannel = FlutterMethodChannel(name:METHOD_CHANNEL_NAME, binaryMessenger: controller.binaryMessenger)
        
        scanChannel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            switch call.method {
            case "getNativeScanner":
                self.getScanner()
            default: result(FlutterMethodNotImplemented)
            }
        })
       
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func getScanner() {
        scanVC = ScanViewController()
        scanVC.delegate = self
        scanVC.configureDocumentView()
    }

}

extension AppDelegate: ScanDelegate {
    func sendBase64Images(images : [String]) {
        scanChannel.invokeMethod("fromIOS", arguments: images)
    }
}

extension UIApplication {
    class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
}
