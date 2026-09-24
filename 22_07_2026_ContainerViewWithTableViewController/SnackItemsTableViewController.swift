//
//  SnackItemsTableViewController.swift
//  22_07_2026_ContainerViewWithTableViewController
//
//  Created by Vishal Jagtap on 23/09/26.
//

import UIKit

class SnackItemsTableViewController: UITableViewController {
    
    var snackItems = [
        SnackItem(itemName: "Samosa", itemDescription: "Tasty", itemPrice: 25.0),
        SnackItem(itemName: "Kachori", itemDescription: "Tasty", itemPrice: 25.0),
        SnackItem(itemName: "Dhokla", itemDescription: "Delicious", itemPrice: 45.0),
        SnackItem(itemName: "Vag puff", itemDescription: "Crispy", itemPrice: 30.0),
        SnackItem(itemName: "Vadapav", itemDescription: "Tasty", itemPrice: 20.0)
    ]
    
    let reuseIdentifierForSnackItemCell = "SnackItemTableViewCell"
    let reuseIdentifierForSnackItemDetailsViewController = "SnackItemDetailsViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load for sncak items table view controller")
        registerCellWithTableView()
    }
    
    func registerCellWithTableView(){
        let uinib = UINib(nibName: reuseIdentifierForSnackItemCell, bundle: nil)
        self.tableView.register(uinib, forCellReuseIdentifier: reuseIdentifierForSnackItemCell)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return snackItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let snackItemTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: reuseIdentifierForSnackItemCell, for: indexPath) as? SnackItemTableViewCell

        snackItemTableViewCell?.snackItemNameLabel.text = snackItems[indexPath.row].itemName
        snackItemTableViewCell?.snackItemDescriptionLabel.text = snackItems[indexPath.row].itemDescription
        snackItemTableViewCell?.snackItemPriceLabel.text = "\(snackItems[indexPath.row].itemPrice)"

        return snackItemTableViewCell ?? UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var snackItemDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForSnackItemDetailsViewController) as? SnackItemDetailsViewController
        
//        snackItemDetailsViewController?.snackItemContainer = snackItems[indexPath.row]
        self.navigationController?.pushViewController(snackItemDetailsViewController!, animated: true)
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
