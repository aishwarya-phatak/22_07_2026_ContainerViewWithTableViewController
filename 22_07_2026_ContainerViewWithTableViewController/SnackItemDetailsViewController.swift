//
//  SnackItemDetailsViewController.swift
//  22_07_2026_ContainerViewWithTableViewController
//
//  Created by Vishal Jagtap on 23/09/26.
//

import UIKit

class SnackItemDetailsViewController: UIViewController {
    
    @IBOutlet weak var snackItemLabel: UILabel!
    var snackItemContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
    
    func bindData(){
        snackItemLabel.text = snackItemContainer
    }
}
