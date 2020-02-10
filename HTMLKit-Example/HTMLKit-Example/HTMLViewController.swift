//
//  HTMLViewController.swift
//  HTMLKit-Example
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import UIKit
import WebKit
import HTMLKit

class HTMLViewController: UIViewController, WKScriptMessageHandler, WKNavigationDelegate {
    
    lazy var webview_conf: WKWebViewConfiguration = {
        var _webview_conf: WKWebViewConfiguration = WKWebViewConfiguration()

        HTML.Scripts.allCases.filter { !$0.isEmpty}.filter { $0.enabled }.forEach {
            //print("\nwebView - applying script: " + $0.name + "\n" + $0.js + "\n")
            _webview_conf.userContentController.addUserScript($0.userScript)
        }

        HTML.Handlers.allCases.forEach {
            _webview_conf.userContentController.add(self, name: $0.name)
        }
        
        return _webview_conf
    }()
    
    lazy var webview: WKWebView = {
        var _webview: WKWebView = WKWebView(frame: .zero, configuration: self.webview_conf)
        _webview.navigationDelegate = self
        _webview.translatesAutoresizingMaskIntoConstraints = false
        return _webview
    }()

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.evaluateJavaScript("didFinishLoading()", completionHandler: nil)
        print("webView didFinish")
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
           
        guard
            let messageBody: String = message.body as? String,
            messageBody == "true"
            else { return }
        
        func doNothing() {}
        
        switch message.name {
        
            case HTML.Handlers.onContentDidFinish.name:
                print("webView handler message: onContentDidFinish")

            default: doNothing()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.webview)
        
        self.webview.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true

        self.webview.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true

        self.webview.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true

        self.webview.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        self.title = "WebView"
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.webview.load(URLRequest(url: URL(string: "https://www.google.com")!))
    }

}
