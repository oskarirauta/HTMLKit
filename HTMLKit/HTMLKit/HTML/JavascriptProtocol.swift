//
//  JavascriptProtocol.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import WebKit

public protocol JavascriptProtocol {
    
    var rawValue: Int { get }
    var entry: Javascript { get }
    var name: String { get }
    var description: String { get }
    var source: String { get }
    var content: String { get }
    var js: String { get }
    var isEmpty: Bool { get }
    var enabled: Bool { get }
    var isEnabled: Bool { get }
    var injectionTime: WKUserScriptInjectionTime { get }
    var forMainFrameOnly: Bool { get }
    var userScript: WKUserScript { get }
}

public extension JavascriptProtocol {
    /*
    var entry: Javascript {
        get { return HTML.Scripts.allScripts[self.rawValue] }
    }
    */
    
    var name: String {
        get { return self.entry.name }
    }
    
    var description: String {
        get { return self.entry.name }
    }
    
    var source: String {
        get { return self.entry.source }
    }
    
    var content: String {
        get { return self.entry.source }
    }

    var js: String {
        get { return self.entry.source }
    }

    var isEmpty: Bool {
        get { return self.entry.isEmpty }
    }
    
    var enabled: Bool {
        get { return self.entry.enabled }
    }

    var isEnabled: Bool {
        get { return self.entry.enabled }
    }

    var injectionTime: WKUserScriptInjectionTime {
        get { return self.entry.injectionTime }
    }

    var forMainFrameOnly: Bool {
        get { return self.entry.forMainFrameOnly }
    }
    
    var userScript: WKUserScript {
        get { return WKUserScript(source: self.source, injectionTime: self.injectionTime, forMainFrameOnly: self.forMainFrameOnly) }
    }

}
