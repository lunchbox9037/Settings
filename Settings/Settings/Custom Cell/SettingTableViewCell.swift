//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by stanley phillips on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit
//1) create the boss (protocol)
//capitalize protocol name and add delegate to the end
//the protocol determines what the delegate(employee) can do
protocol SettingCellDelegate: AnyObject {
    //1.5) specify the tasks that the delegate(employee) needs to do
    func settingSwitchWasToggled(cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    // MARK: - Outlets
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    @IBOutlet weak var settingLabel: UILabel!
    
    // whos its delegate (employee) is
    //2) set the delegate - who is the boss' employee
    weak var delegate: SettingCellDelegate?
    
    // MARK: - Actions
    @IBAction func settingSwitchTapped(_ sender: Any) {
        //3)communicate to the delegate (employee) the tasks
        //employee       do this
        delegate?.settingSwitchWasToggled(cell: self)
    }
    
    // MARK: - Helper Functions
    func updateViewFor(setting: Setting) {
        settingImageView.image = setting.icon
        settingLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
        if setting.isOn {
            self.backgroundColor = .cyan
        } else {
            self.backgroundColor = .white
        }
    }
}
