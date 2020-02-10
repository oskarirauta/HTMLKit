//
//  URLSession.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation

public extension URLSession {
    
    static func create(_ creatorFunc: (URLSession) -> Void) -> URLSession {
        let retval = URLSession.shared
        creatorFunc(retval)
        return retval
    }
    
    func properties(_ modifyFunc: (URLSession) -> Void) -> URLSession {
        let retVal = self
        modifyFunc(retVal)
        return retVal
    }
}
