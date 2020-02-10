//
//  Handler.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation

public struct Handler: RawRepresentable, Equatable, Hashable, Comparable, ExpressibleByStringLiteral {
    
    public typealias StringLiteralType = String
            
    public var rawValue: String
    public var hashValue: Int
    public var description: String { get { return self.rawValue }}
    
    public static func < (lhs: Handler, rhs: Handler) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }

    public init(_ rawValue: String) {
        self.rawValue = rawValue
        self.hashValue = rawValue.hashValue
    }
    
    public init(rawValue: String) {
        self.rawValue = rawValue
        self.hashValue = rawValue.hashValue
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.rawValue = value
        self.hashValue = value.hashValue
    }
    
}
