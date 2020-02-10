//
//  Scripts.swift
//  HTMLKit-Example
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import HTMLKit

public extension HTML {
    
    enum Scripts: Int, CaseIterable, JavascriptProtocol {
        
        case script1 = 0
        case script2 = 1
        case css = 2
        case didFinish = 3
        case emptyJS = 4
        
        public var entry: Javascript {
            get { return HTML.Scripts.allScripts[self.rawValue] }
        }
        
    }
    
}
