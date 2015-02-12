//
//  FeedItemTableViewCell.swift
//  FacebookDemoSwift
//
//  Created by Brian Jordan on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class FeedItemTableViewCell: UITableViewCell {

    @IBOutlet weak var statusText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
