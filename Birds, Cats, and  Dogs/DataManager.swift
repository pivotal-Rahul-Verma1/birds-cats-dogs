//
//  DataManager.swift
//  Birds, Cats, and  Dogs
//
//  Created by Pivotal DX218 on 2017-07-31.
//  Copyright © 2017 Pivotal DX218. All rights reserved.
//

import Foundation

class DataManager {
    
    struct Static {
        static var onceToken : dispatch = 0
        static var instance : DataManager? = nil
    }
    
    class var sharedInstance : DataManager {
        dispatch_time(&Static.onceToken) {
            Static.instance = DataManager()
        }
        return Static.instance!
    }
}
