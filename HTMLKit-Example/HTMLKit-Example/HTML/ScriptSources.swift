//
//  ScriptSources.swift
//  HTMLKit-Example
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import HTMLKit

public extension HTML.Scripts {
    
    static var allScripts: [Javascript] {
        get {
            return [
                Javascript.create {
                    $0.name = "script1"
                    $0.source = "document.body.style.backgroundColor = 'black';"
                    $0.isEnabled = true
                },
                Javascript.create {
                    $0.name = "script2"
                    $0.source = "document.title = 'test';"
                    $0.isEnabled = true
                },
                Javascript.create {
                    $0.name = "css"
                    $0.source = {
                        let content: String = "body, html { background-color: #000000; }"
                        return String(format: """
                    var styleNode = document.createElement('style');
                    var styleText = document.createTextNode('%@');
                    styleNode.type = 'text/css';
                    styleNode.appendChild(styleText);
                    document.getElementsByTagName('head')[0].appendChild(styleNode);
                    """, content)
                    }()
                    $0.forMainFrameOnly = true
                },
                Javascript.create {
                    $0.name = "didFinish"
                    $0.source = """
                    function didFinishLoading() {
                        window.webkit.messageHandlers.\(HTML.Handlers.onContentDidFinish.name).postMessage('true');
                    }
                    """
                    $0.forMainFrameOnly = true
                },
                Javascript.create {
                    $0.name = "emptyJS"
                    $0.source = ""
                }
                
            ]
        }
    }

    
}
