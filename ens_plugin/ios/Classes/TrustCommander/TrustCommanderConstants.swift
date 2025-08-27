//
//  TrustCommanderConstants.swift
//  ens_plugin
//
//  Created by julien.pechon on 26/01/2022.
//

import Foundation

struct TrustCommanderConstants {
    
    static let channel = "com.octo.flutter/trustcommander_wrapper"
    
    struct Functions {
        
        // Flutter to iOS
        static let INIT                             = "init"
        static let SET_CALLBACK                     = "setCallback"
        static let ACCEPT_ALL                       = "acceptAll"
        static let REFUSE_ALL                       = "declineAll"
        static let OPEN_PRIVACY_CENTER	            = "openPrivacyCenter"
        static let SHOULD_DISPLAY_PRIVACY_CENTER    = "shouldDisplayPrivacyCenter"
        static let IS_CATEGORY_ACCEPTED             = "isCategoryAccepted"
        
        // iOS to Flutter
        static let CONSENT_UPDATED                  = "consentUpdated"
        static let CONSENT_OUTDATED                 = "consentOutdated"
        static let CONSENT_CATEGORY_CHANGED         = "consentCategoryChanged"
        static let SIGNIFICANT_CHANGES_IN_PRIVACY   = "significantChangesInPrivacy"
    }
    
    struct Errors {
        static let MISSING_PARAMS   = "ERROR_MISSING_PARAMS"
    }
    
    struct Parameters {
        static let PRIVACY_ID   = "PRIVACY_ID"
        static let SITE_ID      = "SITE_ID"
        static let CAT_ID       = "CAT_ID"
    }
}
