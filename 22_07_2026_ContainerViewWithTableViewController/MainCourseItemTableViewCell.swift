//
//  MainCourseItemTableViewCell.swift
//  22_07_2026_ContainerViewWithTableViewController
//
//  Created by Vishal Jagtap on 24/09/26.
//

import UIKit

class MainCourseItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainCourseItemNameLabel: UILabel!
    @IBOutlet weak var mainCourseItemDescriptionLabel: UILabel!
    @IBOutlet weak var mainCourseItemPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
