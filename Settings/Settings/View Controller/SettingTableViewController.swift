//
//  SettingTableViewController.swift
//  Settings
//
//  Created by stanley phillips on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    
    // MARK: - Outlets

    // MARK: - Properties
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions

    // MARK: - Functions
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as?
                SettingTableViewCell else {return UITableViewCell()}
        
        cell.delegate = self
        cell.updateViewFor(setting: SettingController.shared.settings[indexPath.row])
        
        return cell
    }
}

extension SettingTableViewController: SettingCellDelegate {
    func settingSwitchWasToggled(cell: SettingTableViewCell) {
        //print("employee hears")
        //get the idex path for the selected setting
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        //get the setting that was selected
        let setting = SettingController.shared.settings[indexPath.row]
        //call the toggleIsOn function on the setting in the setting model using the indexPath
        SettingController.shared.toggleIsOn(forSetting: setting)
        //update the view for the selected cell
        cell.updateViewFor(setting: setting)
    }
}
