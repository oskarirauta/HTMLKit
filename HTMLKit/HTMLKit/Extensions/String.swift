//
//  String.swift
//  HTMLKit
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import Foundation
import UIKit

public extension String {
    
    var verifyAsURL: Bool {
        get {
            guard let url: URL = URL(string: self) else { return false }
            return UIApplication.shared.canOpenURL(url)
        }
    }
    
}
