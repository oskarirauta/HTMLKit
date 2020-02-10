//
//  WKWebView.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import WebKit

public extension WKWebView {

    func load(_ content: WebViewContent) {
        if let request: URLRequest = content.request {
            //print("webView - loading url request: " + request.url!.absoluteString)
            self.load(request)
        } else if let url: URL = content.url {
            //print("webView - loading url: " + url.absoluteString)
            self.load(URLRequest(url: url))
        } else if let html: String = content.html {
            //print("webView - loading computed html content")
            self.loadHTMLString(html, baseURL: content.baseURL)
        } else {
            assertionFailure("content (WebViewContent) does not contain valid data.")
        }
    }
    
}
