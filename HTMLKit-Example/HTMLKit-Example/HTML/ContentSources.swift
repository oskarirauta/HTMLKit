//
//  ContentSources.swift
//  HTMLKit-Example
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import HTMLKit

public extension HTML.Contents {

    static var allContents: [HTMLContent] {
        get {
            return [
                HTMLContent.create {
                    $0.name = "content1"
                    $0.content = """
                    <html><head>
                    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
                    </head><body>
                        <h1>Hello world</h1>
                    </body></html>
                    """
                },
                
                HTMLContent.create {
                    $0.name = "content2"
                    $0.content = """
                    <html><head>
                    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
                    </head><body>
                        <h2>Hello world</h2>
                    </body></html>
                    """
                }

            ]
        }
    }
    
}
