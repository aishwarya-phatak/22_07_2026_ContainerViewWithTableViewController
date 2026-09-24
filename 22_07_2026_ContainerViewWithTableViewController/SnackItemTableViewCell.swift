//
//  SnackItemTableViewCell.swift
//  22_07_2026_ContainerViewWithTableViewController
//
//  Created by Vishal Jagtap on 24/09/26.
//

import UIKit

class SnackItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var snackItemNameLabel: UILabel!
    @IBOutlet weak var snackItemDescriptionLabel: UILabel!
    @IBOutlet weak var snackItemPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
