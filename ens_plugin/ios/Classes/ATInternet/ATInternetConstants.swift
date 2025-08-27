//
//  ATInternetConstants.swift
//  ens_plugin
//
//  Created by julien.pechon on 24/01/2022.
//

import Foundation

struct ATInternetConstants {
    
    static let channel = "com.octo.flutter/atinternet_wrapper"
    
    struct Functions {
        static let CREATE_TRACKER   = "createTracker"
        static let TAG_SCREEN       = "tagScreen"
        static let TAG_CLICK        = "tagClick"
    }
    
    struct Errors {
        static let TRACKER_CREATION = "ERROR_TRACKER_CREATION"
        static let PARAMS_NOT_FOUND = "ERROR_PARAMS_NOT_FOUND"
    }
    
    struct Parameters {
        static let TRACKER_NAME         = "PARAM_TRACKER_NAME"
        static let SITE_ID              = "PARAM_SITE_ID"
        static let STORAGE              = "PARAM_STORAGE"
        static let DOMAIN               = "PARAM_DOMAIN"
        static let COLLECT_URL          = "PARAM_COLLECT_URL"
        static let SECURE_COLLECT_URL   = "PARAM_SECURE_COLLECT_URL"
        static let TAG_NAME             = "PARAM_TAG_NAME"
        static let CHAPTER_1            = "PARAM_CHAPTER_1"
        static let CHAPTER_2            = "PARAM_CHAPTER_2"
        static let CHAPTER_3            = "PARAM_CHAPTER_3"
    }
}
