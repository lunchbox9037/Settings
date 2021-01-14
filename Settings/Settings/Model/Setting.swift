//
//  Setting.swift
//  Settings
//
//  Created by stanley phillips on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

class Setting {
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
