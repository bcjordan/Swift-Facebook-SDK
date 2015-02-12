//
//  SettingsTableViewCell.swift
//  FacebookDemoSwift
//
//  Created by Brian Jordan on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit


//protocol SettingsTableViewCellProtocol : class {
//    func cell
//}

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var settingsSwitch: UISwitch!
    @IBOutlet weak var settingsName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = UITableViewCellSelectionStyle.None
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
