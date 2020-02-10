//
//  HandlerProtocol.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation

public protocol HandlerProtocol {
    var rawValue: Handler { get }
    var description: String { get }
    var hashValue: Int { get }
    var name: String { get }
}

extension HandlerProtocol {
    
    public var description: String {
        get { return self.rawValue.description }
    }
    
    public var hashValue: Int {
        get { return self.rawValue.hashValue }
    }

    public var name: String {
        get { return self.rawValue.rawValue}
    }
}
