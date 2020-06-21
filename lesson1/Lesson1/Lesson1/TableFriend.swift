//
//  TableViewController.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class TableFriend: UITableViewController {
    
    let allFriend: [oneUser] =
   [oneUser(firstName: "Алеша", lastName: "Попович", photo: UIImage(named: "Алеша.png")!,allPhoto: alesha),
    oneUser(firstName: "Добрыня", lastName: "Никитич", photo: UIImage(named: "Добрыня.png")!,allPhoto: dobrynia),
    oneUser(firstName: "Илья", lastName: "Муромец", photo: UIImage(named: "Илья.png")!,allPhoto: ilia)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allFriend.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCellFriend", for: indexPath) as!
        TableCellFriend

        // Configure the cell...
        cell.nameFriend.text = ("\(allFriend[indexPath.row].firstName) \(allFriend[indexPath.row].lastName)")
//        cell.photoFriend.image. = ("\(allFriend[indexPath.row].photo)")

        cell.photoFriend.image = (allFriend[indexPath.row].photo)
        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let photo = segue.destination as?
            CollectionPhoto,
            let indexPhoto = self.tableView.indexPathForSelectedRow
            else {return}
        
        photo.photo = allFriend[indexPhoto.row].allPhoto
        // Pass the selected object to the new view controller.
    }
    
}
