//
//  MainCourseItemsTableViewController.swift
//  22_07_2026_ContainerViewWithTableViewController
//
//  Created by Vishal Jagtap on 23/09/26.
//

import UIKit

class MainCourseItemsTableViewController: UITableViewController {
    
    var mainCourseItems : [MainCourseItem] = [
                           MainCourseItem(itemName: "Pavbhaji", itemDescription: "Yummy & Tasty", itemPrice: 120.00),
                           MainCourseItem(itemName: "Navratan Kurma", itemDescription: "Yummy & Tasty", itemPrice: 240.00),
                           MainCourseItem(itemName: "Chole Bhature", itemDescription: "Yummy & Tasty", itemPrice: 150.00),
                           MainCourseItem(itemName: "Pulav", itemDescription: "Yummy & Tasty", itemPrice: 180.00),
                           MainCourseItem(itemName: "Biryani", itemDescription: "Yummy & Tasty", itemPrice: 240.00)
    ]
    let reuseIdentifierForMainCourseItemCell = "MainCourseItemTableViewCell"
    let reuseIdentifierForMainCourseItemDetailsViewCOntroller = "MainCourseItemDetailsViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load for main course table view controller")
        registerCellWithTableView()
    }
    
    func registerCellWithTableView(){
        let uinib = UINib(nibName: reuseIdentifierForMainCourseItemCell, bundle: nil)
        self.tableView.register(uinib, forCellReuseIdentifier: reuseIdentifierForMainCourseItemCell)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mainCourseItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mainCourseItemTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: reuseIdentifierForMainCourseItemCell, for: indexPath) as? MainCourseItemTableViewCell

        mainCourseItemTableViewCell?.mainCourseItemNameLabel.text = mainCourseItems[indexPath.row].itemName
        mainCourseItemTableViewCell?.mainCourseItemDescriptionLabel.text = mainCourseItems[indexPath.row].itemDescription
        mainCourseItemTableViewCell?.mainCourseItemPriceLabel.text = "\(mainCourseItems[indexPath.row].itemPrice)"
        
        return mainCourseItemTableViewCell ?? UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var mainCourseItemDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForMainCourseItemDetailsViewCOntroller) as? MainCourseItemDetailsViewController
        
//        mainCourseItemDetailsViewController?.mainCourseItemContainer = mainCourseItems[indexPath.row]
        self.navigationController?.pushViewController(mainCourseItemDetailsViewController!, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125.0
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
