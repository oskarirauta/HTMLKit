//
//  WebViewContent.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation

public struct WebViewContent {
    
    public var url: URL? = nil
    public var request: URLRequest? = nil
    public var html: String? = nil
    public var baseURL: URL? = nil

    public init(_ url: URL) {
        self.url = url
        self.request = nil
        self.html = nil
        self.baseURL = nil
    }

    public init(_ urlRequest: URLRequest) {
        self.url = nil
        self.request = urlRequest
        self.html = nil
        self.baseURL = nil
    }

    public init(_ html: String, baseURL: URL? = nil) {
        self.html = html
        self.request = nil
        self.url = nil
        self.baseURL = baseURL
    }
    
}
