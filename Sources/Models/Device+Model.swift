//
//  Mapper.swift
//
//
//  Created by Romilson Nunes on 04/01/23.
//

import Foundation
import UIKit

extension Device {

    // MARK: - iPod
    
    enum iPod : String, DeviceType {
        case iPod7 = "iPod touch (7th generation)"
    }
    
    
    // MARK: - iPhone
    
    /// https://support.apple.com/en-us/HT201296
    enum iPhone : String, DeviceType {
        
        /// iPhone 6s
        case iPhone6S           = "iPhone 6S"
        case iPhone6SPlus       = "iPhone 6S Plus"
        /// iPhone SE
        case iPhoneSE           = "iPhone SE"
        /// iPhone 7
        case iPhone7            = "iPhone 7"
        case iPhone7Plus        = "iPhone 7 Plus"
        /// iPhone 8
        case iPhone8            = "iPhone 8"
        case iPhone8Plus        = "iPhone 8 Plus"
        /// iPhone X
        case iPhoneX            = "iPhone X"
        case iPhoneXS           = "iPhone XS"
        case iPhoneXSMax        = "iPhone XS Max"
        case iPhoneXR           = "iPhone XR"
        /// iPhone 11
        case iPhone11           = "iPhone 11"
        case iPhone11Pro        = "iPhone 11 Pro"
        case iPhone11ProMax     = "iPhone 11 Pro Max"
        /// iPhone SE2
        case iPhoneSE2          = "iPhone SE (2nd generation)"
        /// iPhone 12
        case iPhone12Mini       = "iPhone 12 Mini"
        case iPhone12           = "iPhone 12"
        case iPhone12Pro        = "iPhone 12 Pro"
        case iPhone12ProMax     = "iPhone 12 Pro Max"
        /// iPhone 13
        case iPhone13Mini       = "iPhone 13 Mini"
        case iPhone13           = "iPhone 13"
        case iPhone13Pro        = "iPhone 13 Pro"
        case iPhone13ProMax     = "iPhone 13 Pro Max"
        case iPhoneSE3          = "iPhone SE (3rd generation)"
        /// iPhone 14
        case iPhone14           = "iPhone 14"
        case iPhone14Plus       = "iPhone 14 Plus"
        case iPhone14Pro        = "iPhone 14 Pro"
        case iPhone14ProMax     = "iPhone 14 Pro Max"
        /// iPhone 15
        case iPhone15           = "iPhone 15"
        case iPhone15Plus       = "iPhone 15 Plus"
        case iPhone15Pro        = "iPhone 15 Pro"
        case iPhone15ProMax     = "iPhone 15 Pro Max"
        /// iPhone 16
        case iPhone16Pro        = "iPhone 16 Pro"
        case iPhone16ProMax     = "iPhone 16 Pro Max"
        case iPhone16           = "iPhone 16"
        case iPhone16Plus       = "iPhone 16 Plus"
        case iPhone16e          = "iPhone 16e"
        /// iPhone 17
        case iPhone17Pro        = "iPhone 17 Pro"
        case iPhone17ProMax     = "iPhone 17 Pro Max"
        case iPhone17           = "iPhone 17"
        case iPhoneAir          = "iPhone Air"
        
        
        var diagonalSize: CGFloat {
            switch self {
            case .iPhoneSE:
                return 4
            case .iPhoneSE3, .iPhoneSE2, .iPhone6S, .iPhone7, .iPhone8:
                return 4.7
            case .iPhone6SPlus, .iPhone7Plus, .iPhone8Plus:
                return 5.5
            case .iPhone11, .iPhoneXR:
                return 6.1
            case .iPhone11Pro, .iPhoneXS, .iPhoneX:
                return 5.8
            case .iPhone11ProMax, .iPhoneXSMax, .iPhoneAir:
                return 6.5
            case .iPhone13Mini, .iPhone12Mini:
                return 5.4
            case .iPhone12, .iPhone12Pro, .iPhone13, .iPhone13Pro, .iPhone14, .iPhone15Pro, .iPhone16, .iPhone15, .iPhone14Pro, .iPhone16e:
                return 6.1
            case .iPhone13ProMax, .iPhone12ProMax, .iPhone14Plus, .iPhone15ProMax, .iPhone15Plus, .iPhone16Plus, .iPhone14ProMax:
                return 6.7
            case .iPhone16ProMax, .iPhone17ProMax:
                return 6.9
            case .iPhone16Pro, .iPhone17Pro, .iPhone17:
                return 6.3
            }
        }
    }
       
    
    // MARK: - iPad
    
    /// https://support.apple.com/en-us/HT201471#ipad
    enum iPad : String, DeviceType, DiagonalSize {
        case iPad               = "iPad"
        case iPad2              = "iPad 2"
        case iPad3              = "iPad (3rd generation)"
        case iPad4              = "iPad (4th generation)"
        case iPad5              = "iPad (5th generation)"
        case iPad6              = "iPad (6th generation)"
        case iPad7              = "iPad (7th generation)"
        case iPad8              = "iPad (8th generation)"
        case iPad9              = "iPad (9th generation)"
        case iPad10             = "iPad (10th generation)"
        case iPadA16            = "iPad (A16)"
        
        var diagonalSize: CGFloat {
            switch self {
            case .iPad, .iPad2, .iPad3, .iPad4, .iPad5, .iPad6:
                return 9.7
            case .iPad7, .iPad8, .iPad9:
                return 10.2
            case .iPad10:
                return 10.9
            case .iPadA16:
                return 10.86
            }
        }
    }
    
    /// https://support.apple.com/en-us/HT201471#ipadair
    enum iPadAir : String, DeviceType, DiagonalSize {
        case iPadAir            = "iPad Air"
        case iPadAir2           = "iPad Air 2"
        case iPadAir3           = "iPad Air (3rd generation)"
        case iPadAir4           = "iPad Air (4th generation)"
        case iPadAir5           = "iPad Air (5th generation)"
        case iPadAir6Inch11M2     = "iPad Air 11-inch (M2)"
        case iPadAir6Inch13M2     = "iPad Air 13-inch (M2)"
        case iPadAir6Inch11M3     = "iPad Air 11-inch (M3)"
        case iPadAir6Inch13M3     = "iPad Air 13-inch (M3)"
        
        var diagonalSize: CGFloat {
            switch self {
            case .iPadAir, .iPadAir2:
                return 9.7
            case .iPadAir3:
                return 10.5
            case .iPadAir4, .iPadAir5:
                return 10.9
            case .iPadAir6Inch11M2, .iPadAir6Inch11M3:
                return 11
            case .iPadAir6Inch13M2, .iPadAir6Inch13M3:
                return 13
            }
        }
    }
    
    // https://support.apple.com/en-us/HT201471#ipadmini
    enum iPadMini : String, DeviceType, DiagonalSize {
        case iPadMini           = "iPad mini"
        case iPadMini2          = "iPad mini 2"
        case iPadMini3          = "iPad mini 3"
        case iPadMini4          = "iPad mini 4"
        case iPadMini5          = "iPad mini (5th generation)"
        case iPadMini6          = "iPad mini (6th generation)"
        case iPadMiniA17Pro     = "iPad mini (A17 Pro)"
        
        var diagonalSize: CGFloat {
            switch self {
            case .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4:
                return 7.9
            case .iPadMini5:
                return 7.9
            case .iPadMini6, .iPadMiniA17Pro:
                return 8.3
            }
        }
    }
    
    /// https://support.apple.com/en-us/HT201471#ipadpro
    enum iPadPro : String, DeviceType, DiagonalSize {
        
        case iPadPro12Inch      = "iPad Pro (12.9-inch)"
        case iPadPro9Inch       = "iPad Pro (9.7-inch)"
        case iPadPro10Inch      = "iPad Pro (10.5-inch)"
        
        case iPadPro12Inch2     = "iPad Pro 12.9-inch (2nd generation)"
        case iPadPro11Inch      = "iPad Pro (11-inch)"

        case iPadPro12Inch3     = "iPad Pro 12.9-inch (3rd generation)"
        case iPadPro11Inch2     = "iPad Pro 11-inch (2nd generation)"
        
        case iPadPro12Inch4     = "iPad Pro 12.9-inch (4th generation)"
        case iPadPro11Inch3     = "iPad Pro 11-inch (3rd generation)"
        
        case iPadPro12Inch5     = "iPad Pro 12.9-inch (5th generation)"
        case iPadPro11Inch4     = "iPad Pro 11-inch (4th generation)"
        
        case iPadPro12Inch6     = "iPad Pro 12.9-inch (6th generation)"
        
        case iPadPro11InchM4    = "iPad Pro 11-inch (M4)"
        case iPadPro13InchM4    = "iPad Pro 13-inch (M4)"
        case iPadPro11InchM5    = "iPad Pro 11-inch (M5)"
        case iPadPro13InchM5    = "iPad Pro 13-inch (M5)"
        
        
        var diagonalSize: CGFloat {
            switch self {
            case .iPadPro9Inch:
                return 9.7
            case .iPadPro10Inch:
                return 10.5
            case .iPadPro11Inch, .iPadPro11Inch2, .iPadPro11Inch3, .iPadPro11Inch4, .iPadPro11InchM4, .iPadPro11InchM5:
                return 11
            case .iPadPro12Inch, .iPadPro12Inch2, .iPadPro12Inch3, .iPadPro12Inch4, .iPadPro12Inch5, .iPadPro12Inch6:
                return 12.9
            case .iPadPro13InchM4, .iPadPro13InchM5:
                return 13
            }
        }
    }
    
    
    // MARK: - AppleTV
    
    /// https://support.apple.com/en-us/HT200008
    enum AppleTV : String, DeviceType {
        case appleTV1           = "Apple TV (1st generation)"
        case appleTV2           = "Apple TV (2nd generation)"
        case appleTV3           = "Apple TV (3rd generation)"
        case appleTVHD          = "Apple TV HD"
        case appleTV_4K         = "Apple TV 4K (1st generation)"
        case appleTV2_4K        = "Apple TV 4K (2nd generation)"
        case appleTV3_4K        = "Apple TV 4K (3rd generation)"
    }
    
    
    // MARK: - Simulator and Unknown
    
    enum Default: DeviceType {
        case simulator
        case unknown(String)
        
        var marketingName: String {
            switch self {
            case .simulator:
                return "Simulator"
            case .unknown(let identifier):
                return identifier
            }
        }
        
        static func == (lhs: Default, rhs: Default) -> Bool {
            return lhs.marketingName == rhs.marketingName
        }
    }
    
    static var width: CGFloat {
        let bounds = UIScreen.main.bounds
        let width = min(bounds.width, bounds.height)
        return width
    }
    
}

