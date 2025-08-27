//
//  TrustCommanderWrapper.swift
//  ens_plugin
//
//  Created by julien.pechon on 20/01/2022.
//

import Foundation
import TCPrivacy

class TrustCommanderWrapper: NSObject {
    
    var channel: FlutterMethodChannel
    
    init(with channel: FlutterMethodChannel) {
        self.channel = channel
    }
    
    public func initSDK(args: Any?, result: @escaping FlutterResult) {
        
        guard let argsMap = args as? NSDictionary else {
            result(FlutterError(code: TrustCommanderConstants.Errors.MISSING_PARAMS, message: nil, details: nil))
            return
        }
        
        if let tcPrivacy = TCMobilePrivacy.sharedInstance(),
           let siteId = argsMap.value(forKey: TrustCommanderConstants.Parameters.SITE_ID) as? Int32,
           let privacyId = argsMap.value(forKey: TrustCommanderConstants.Parameters.PRIVACY_ID) as? Int32 {
            TCDebug.setDebugLevel(TCLogLevel_Info)
            TCDebug.setNotificationLog(true)

            tcPrivacy.setSiteID(siteId, andPrivacyID: privacyId)
            
            result(nil)
        } else {
            result(FlutterError(code: TrustCommanderConstants.Errors.MISSING_PARAMS, message: nil, details: nil))
        }
    }
    
    public func registerCallBacks(result: @escaping FlutterResult) {
        TCMobilePrivacy.sharedInstance().registerCallback(self)
        result(nil)
    }
    
    public func acceptAll(result: @escaping FlutterResult) {
        TCMobilePrivacy.sharedInstance().acceptAllConsent()
        result(nil)
    }
    
    public func refuseAll(result: @escaping FlutterResult) {
        TCMobilePrivacy.sharedInstance().refuseAllConsent()
        result(nil)
    }
    
    public func openPrivacyCenter(result: @escaping FlutterResult) {
        let tcpriv = TCPrivacyCenterViewController()
        tcpriv.modalPresentationStyle = .fullScreen

        let window: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        window.rootViewController?.present(tcpriv, animated: true, completion: nil)
        
        TCMobilePrivacy.sharedInstance()?.statViewBanner()
        
        result(nil)
    }
    
    public func shouldDisplayPrivacy(result: @escaping FlutterResult) {
        result(TCPrivacyAPI.shouldDisplayPrivacyCenter())
    }
    
    public func isCategoryAccepted(args: Any?, result: @escaping FlutterResult) {
        guard let argsMap = args as? NSDictionary, let cat = argsMap.value(forKey: TrustCommanderConstants.Parameters.CAT_ID) as? Int32 else {
            result(FlutterError(code: TrustCommanderConstants.Errors.MISSING_PARAMS, message: nil, details: nil))
            return
        }

        let isCategoryAccepted = TCPrivacyAPI.isCategoryAccepted(cat)
        result(isCategoryAccepted)
    }
}

extension TrustCommanderWrapper: FlutterPlugin {
    static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: TrustCommanderConstants.channel, binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(TrustCommanderWrapper(with: channel), channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
        switch call.method {
        case TrustCommanderConstants.Functions.INIT:
            initSDK(args: call.arguments, result: result)
        case TrustCommanderConstants.Functions.SET_CALLBACK:
            registerCallBacks(result: result)
        case TrustCommanderConstants.Functions.ACCEPT_ALL:
            acceptAll(result: result)
        case TrustCommanderConstants.Functions.REFUSE_ALL:
            refuseAll(result: result)
        case TrustCommanderConstants.Functions.SHOULD_DISPLAY_PRIVACY_CENTER:
            shouldDisplayPrivacy(result: result)
        case TrustCommanderConstants.Functions.IS_CATEGORY_ACCEPTED:
            isCategoryAccepted(args: call.arguments, result: result)
        case TrustCommanderConstants.Functions.OPEN_PRIVACY_CENTER:
            openPrivacyCenter(result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}

//MARK: - TCPrivacyCallbacks
extension TrustCommanderWrapper: TCPrivacyCallbacks {

    func consentUpdated(_ consent: [AnyHashable : Any]!) {
        debugPrint("[TCPrivacyCallbacks] consentUpdated")
        channel.invokeMethod(TrustCommanderConstants.Functions.CONSENT_UPDATED, arguments: consent)
    }

    func consentOutdated() {
        debugPrint("[TCPrivacyCallbacks] consentOutdated")
        channel.invokeMethod(TrustCommanderConstants.Functions.CONSENT_OUTDATED, arguments: nil)
    }

    func consentCategoryChanged() {
        debugPrint("[TCPrivacyCallbacks] consentCategoryChanged")
        channel.invokeMethod(TrustCommanderConstants.Functions.CONSENT_CATEGORY_CHANGED, arguments: nil)
    }

    func significantChangesInPrivacy() {
        debugPrint("[TCPrivacyCallbacks] significantChangesInPrivacy")
        channel.invokeMethod(TrustCommanderConstants.Functions.SIGNIFICANT_CHANGES_IN_PRIVACY, arguments: nil)
    }
}

