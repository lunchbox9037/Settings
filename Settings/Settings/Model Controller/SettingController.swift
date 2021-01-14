//
//  SettingController.swift
//  Settings
//
//  Created by stanley phillips on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    
    static let shared = SettingController()
    
    let settings: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let apps = Setting(name: "Apps", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let books = Setting(name: "Books", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        
        return [music, apps, books]
    }()
    
    // MARK: - CRUD
    //create
    //read
    //upate
    func toggleIsOn(forSetting: Setting) {
        forSetting.isOn.toggle()
        
        //forSetting.isOn = !forSetting.isOn
        //or use an if else statement
    }
    //delete
}
