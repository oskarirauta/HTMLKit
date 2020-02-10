//
//  Javascript.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import WebKit

public struct Javascript: Equatable, Comparable {
    
    public var name: String
    public var source: String
    public var injectionTime: WKUserScriptInjectionTime
    public var forMainFrameOnly: Bool
    public var enabled: Bool

    public var description: String { get { return self.name }}
    public var content: String { get { return self.source }}
    public var js: String { get { return self.source }}

    public var isEnabled: Bool {
        get { return self.enabled }
        set { self.enabled = newValue }
    }
    
    public var isEmpty: Bool { get { return self.source.isEmpty }}

    public var userScript: WKUserScript { get { return WKUserScript(source: self.source, injectionTime: self.injectionTime, forMainFrameOnly: self.forMainFrameOnly) }}

    public static func create(_ creatorFunc: (inout Self) -> Void) -> Self {
        var retVal = Self(name: "", source: "", injectionTime: .atDocumentEnd, forMainFrameOnly: false, enabled: true)
        creatorFunc(&retVal)
        return retVal
    }
    
    public func properties(_ modifyFunc: (inout Self) -> Void) -> Self {
        var retVal = self
        modifyFunc(&retVal)
        return retVal
    }

    public static func < (lhs: Javascript, rhs: Javascript) -> Bool {
        return lhs.name < rhs.name
    }
    
}
