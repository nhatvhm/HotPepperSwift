//
//  HHManagerBase.swift
//  HotPepper
//
//  Created by Nhat (Norman) H.M. VU on 9/18/17.
//  Copyright © 2017 enclaveit. All rights reserved.
//

import Foundation

@objc class HHManagerBase: NSObject {
    // swiftSharedInstance is not accessible from ObjC
    class var sharedInstanceBase: HHManagerBase {
        struct Singleton {
            static let instance = HHManagerBase()
        }
        return Singleton.instance
    }
    
    // the sharedInstance class method can be reached from ObjC
    class func sharedInstance() -> HHManagerBase {
        return HHManagerBase.sharedInstanceBase
    }

}
