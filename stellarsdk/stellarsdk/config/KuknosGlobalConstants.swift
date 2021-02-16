//
//  KuknosGlobalConstants.swift
//  stellarsdk
//
//  Created by Mohammad Samadi on 2/16/21.
//  Copyright © 2021 Soneso. All rights reserved.
//

import UIKit
public struct KuknosGlobalConstants {
    public struct PassPhrase{
        public static let Production = "Kuknos Foundation, Feb 2019"
        public static let Test = "Kuknos-NET"
        public static func getPassPhrase()->Network{
            if let network = UserDefaults.standard.string(forKey: "setting.network"), network == "Testnet" {
                return Network.testnet
            }else{
                return Network.public
            }
        }
    }
//    public static let APIVersion = "v3.4.0"
    public static let APIVersion = "v4.0.0"
//    public static let APIVersion = "v2.0.0"
    public struct Base {
        public struct Url {
            
            public static let ProductionURL = "https://esb-proxy.kuknos.org"
            public static let TestURL = "https://esb-proxy.kuknos.org"
//            public static let ProductionURL = "https://esb.kuknos.ir"
//            public static let TestURL = "https://esb.kuknos.ir"
        }
        public static func getURL() -> String{
            if let network = UserDefaults.standard.string(forKey: "setting.network"), network == "Testnet" {
                return KuknosGlobalConstants.Base.Url.TestURL
            }else{
                return KuknosGlobalConstants.Base.Url.ProductionURL
            }
        }
    }
    public struct Wallet {
        public struct Url {
            public static let ProductionURL = KuknosGlobalConstants.Base.Url.ProductionURL + "/api/wallet/" + KuknosGlobalConstants.APIVersion
            public static let TestURL = KuknosGlobalConstants.Base.Url.TestURL + "/api/wallet-test/" + KuknosGlobalConstants.APIVersion
        }
        public static func getURL() -> String{
            if let network = UserDefaults.standard.string(forKey: "setting.network"), network == "Testnet" {
                return KuknosGlobalConstants.Wallet.Url.TestURL
            }else{
                return KuknosGlobalConstants.Wallet.Url.ProductionURL
            }
        }
    }
    public struct Trend {
        public static func getURL(with publicAddress: String, for lang: String = "en") -> String{
            if let network = UserDefaults.standard.string(forKey: "setting.network"), network == "Testnet" {
                return "https://trends.kuknos.ir/?public=\(publicAddress)&lang=\(lang)"
            }else{
                return "https://trends.kuknos.ir/?public=\(publicAddress)&lang=\(lang)"
            }
        }
    }
    public struct Horizon {
        public struct Url {
            public static let ProductionURL = KuknosGlobalConstants.Wallet.Url.ProductionURL + "/horizon"
            public static let TestURL = KuknosGlobalConstants.Wallet.Url.TestURL + "/horizon"
        }
        public static func getURL() -> String{
            if let network = UserDefaults.standard.string(forKey: "setting.network"), network == "Testnet" {
                return KuknosGlobalConstants.Horizon.Url.TestURL
            }else{
//                return "https://horizon.kuknos.org"
                return KuknosGlobalConstants.Horizon.Url.ProductionURL
            }
        }
    }
    public struct Federation {
        public struct Url {
            public static let ProductionURL = KuknosGlobalConstants.Wallet.Url.ProductionURL + "/federation"
            public static let TestURL = KuknosGlobalConstants.Wallet.Url.TestURL + "/federation"
        }
        public static func getURL() -> String{
            if let network = UserDefaults.standard.string(forKey: "setting.network"), network == "Testnet" {
                return KuknosGlobalConstants.Federation.Url.TestURL
            }else{
                return KuknosGlobalConstants.Federation.Url.ProductionURL
            }
        }
    }
    public struct Mpl {
        public struct Url {
            public static let ProductionURL = KuknosGlobalConstants.Wallet.Url.ProductionURL + "/mpl"
            public static let TestURL = KuknosGlobalConstants.Wallet.Url.TestURL + "/mpl"
        }
        public static func getURL() -> String{
            if let network = UserDefaults.standard.string(forKey: "setting.network"), network == "Testnet" {
                return KuknosGlobalConstants.Mpl.Url.TestURL
            }else{
                return KuknosGlobalConstants.Mpl.Url.ProductionURL
            }
        }
    }
    public struct AppVersion{
        public static func getString()->String{
            if let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,
                let bundleVersion = Bundle.main.infoDictionary?[kCFBundleVersionKey as String] as? String {
                return String(format: "ios_v%@", appVersion, bundleVersion)
            } else {
                return ""
            }
        }
        
    }
}

