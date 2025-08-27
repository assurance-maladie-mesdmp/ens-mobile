//
//  AtInternetWrapper.swift
//  ens_plugin
//
//  Created by julien.pechon on 17/01/2022.
//

import Foundation
import Tracker

class ATInternetWrapper: NSObject {
    
    public func createTracker(args: Any?, result: @escaping FlutterResult) {
        guard let argsMap = args as? NSDictionary else {
            result(FlutterError(code: ATInternetConstants.Errors.PARAMS_NOT_FOUND, message: nil, details: nil))
            return
        }
        
        if let name = argsMap.value(forKey: ATInternetConstants.Parameters.TRACKER_NAME) as? String,
           let siteId = argsMap.value(forKey: ATInternetConstants.Parameters.SITE_ID) as? String,
           let storage = argsMap.value(forKey: ATInternetConstants.Parameters.STORAGE) as? String,
           let domain = argsMap.value(forKey: ATInternetConstants.Parameters.DOMAIN) as? String,
           let log = argsMap.value(forKey: ATInternetConstants.Parameters.COLLECT_URL) as? String,
           let secureLog = argsMap.value(forKey: ATInternetConstants.Parameters.SECURE_COLLECT_URL) as? String {
        
            _ = ATInternet.sharedInstance.tracker(name, configuration: ["log":log,
                                                                        "logSSL":secureLog,
                                                                        "secure":"true",
                                                                        "domain":domain,
                                                                        "site":siteId,
                                                                        "storage":storage])
            result(nil) // return for .dart -> Success
        } else {
            result(FlutterError(code: ATInternetConstants.Errors.TRACKER_CREATION, message: nil, details: nil))
        }
    }
    
    public func tagScreen(args: Any?, result: @escaping FlutterResult) {
        guard let argsMap = args as? NSDictionary else {
            result(FlutterError(code: ATInternetConstants.Errors.PARAMS_NOT_FOUND, message: nil, details: nil))
            return
        }
        
        let trackerName = argsMap.value(forKey: ATInternetConstants.Parameters.TRACKER_NAME) as? String ?? ""
        let screenName = argsMap.value(forKey: ATInternetConstants.Parameters.TAG_NAME) as? String ?? ""
        let chapter1 = argsMap.value(forKey: ATInternetConstants.Parameters.CHAPTER_1) as? String
        let chapter2 = argsMap.value(forKey: ATInternetConstants.Parameters.CHAPTER_2) as? String
        let chapter3 = argsMap.value(forKey: ATInternetConstants.Parameters.CHAPTER_3) as? String
        
        let res = [chapter1, chapter2, chapter3, screenName]
            .compactMap{$0}
            .joined(separator: "::")
        
        ATInternet.sharedInstance.tracker(trackerName).screens.add(res).sendView()
        
        result(nil) // return for .dart -> Success
    }
    
    public func tagClick(args: Any?, result: @escaping FlutterResult) {
        guard let argsMap = args as? NSDictionary else {
            result(FlutterError(code: ATInternetConstants.Errors.PARAMS_NOT_FOUND, message: nil, details: nil))
            return
        }
        
        let trackerName = argsMap.value(forKey: ATInternetConstants.Parameters.TRACKER_NAME) as? String ?? ""
        let clickName = argsMap.value(forKey: ATInternetConstants.Parameters.TAG_NAME) as? String ?? ""
        let chapter1 = argsMap.value(forKey: ATInternetConstants.Parameters.CHAPTER_1) as? String
        let chapter2 = argsMap.value(forKey: ATInternetConstants.Parameters.CHAPTER_2) as? String
        let chapter3 = argsMap.value(forKey: ATInternetConstants.Parameters.CHAPTER_3) as? String
        
        let res = [chapter1, chapter2, chapter3, clickName]
            .compactMap{$0}
            .joined(separator: "::")
        
        ATInternet.sharedInstance.tracker(trackerName).gestures.add(res).sendTouch()
        
        result(nil) // return for .dart -> Success
    }
}

//MARK: - FlutterPlugin Protocol Methods
extension ATInternetWrapper: FlutterPlugin {
    static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: ATInternetConstants.channel, binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(ATInternetWrapper(), channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
        switch call.method {
        case ATInternetConstants.Functions.CREATE_TRACKER:
            createTracker(args: call.arguments, result: result)
        case ATInternetConstants.Functions.TAG_SCREEN:
            tagScreen(args: call.arguments, result: result)
        case ATInternetConstants.Functions.TAG_CLICK:
            tagClick(args: call.arguments, result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
