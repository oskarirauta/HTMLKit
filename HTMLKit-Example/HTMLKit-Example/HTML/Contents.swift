//
//  Contents.swift
//  HTMLKit-Example
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import HTMLKit

public extension HTML {
     
    enum Contents: Int, CaseIterable, HTMLContentProtocol {
        case content1 = 0
        case content2 = 1

        public var entry: HTMLContent {
            get { return HTML.Contents.allContents[self.rawValue] }
        }

    }
}
