//
//  Handlers.swift
//  HTMLKit-Example
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import WebKit
import HTMLKit

public extension HTML { // Handlers

    enum Handlers: Handler, CaseIterable, HandlerProtocol {
        case onContentDidFinish = "onContentDidFinish"
    }

}
