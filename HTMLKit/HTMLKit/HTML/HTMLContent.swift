//
//  HTMLContent.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation

public struct HTMLContent: Equatable, Comparable {

    public var name: String
    public var content: String
    
    public var description: String { get { return self.name }}
    public var source: String { get { return self.content }}

    public var isEmpty: Bool { get { return self.content.isEmpty }}

    public static func create(_ creatorFunc: (inout Self) -> Void) -> Self {
        var retVal = Self(name: "", content: "")
        creatorFunc(&retVal)
        return retVal
    }
    
    public func properties(_ modifyFunc: (inout Self) -> Void) -> Self {
        var retVal = self
        modifyFunc(&retVal)
        return retVal
    }

    public static func < (lhs: HTMLContent, rhs: HTMLContent) -> Bool {
        return lhs.name < rhs.name
    }

}
