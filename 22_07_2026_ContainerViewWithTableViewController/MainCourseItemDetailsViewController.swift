//
//  MainCourseItemDetailsViewController.swift
//  22_07_2026_ContainerViewWithTableViewController
//
//  Created by Vishal Jagtap on 23/09/26.
//

import UIKit

class MainCourseItemDetailsViewController: UIViewController {
    
    @IBOutlet weak var mainCourseItemLabel: UILabel!
    var mainCourseItemContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindData()
    }
    
    func bindData(){
        mainCourseItemLabel.text = mainCourseItemContainer!
    }
}
