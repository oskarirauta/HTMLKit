//
//  HTMLContentProtocol.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation

public protocol HTMLContentProtocol {
    var rawValue: Int { get }
    var entry: HTMLContent { get }
    var name: String { get }
    var description: String { get }
    var content: String { get }
    var source: String { get }
    var html: String { get }
}

public extension HTMLContentProtocol {
    
    /*
    var entry: HTMLContent {
        get { return HTML.Contents.allContents[self.rawValue] }
    }
    */
    
    var name: String {
        get { return self.entry.name }
    }
    
    var description: String {
        get { return self.entry.name }
    }
    
    var content: String {
        get { return self.entry.content }
    }

    var source: String {
        get { return self.entry.content }
    }

    var html: String {
        get { return self.entry.content }
    }

}
