//
//  TableMyGroup.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class TableMyGroup: UITableViewController {
    
    var myGroop:[oneGroup] = []
    
    
    // перемещение выбраного элемента
    @IBAction func addGroup(group: UIStoryboardSegue){
        guard
            let allgroup = group.source as? TableAllGroup,
            let indexGroup = allgroup.tableView.indexPathForSelectedRow
            else {return}
        
        let ChengeGroup = allgroup.allGroup[indexGroup.row]
        
        guard  !myGroop.contains(ChengeGroup.groupName) else {return}
        
        myGroop.append(ChengeGroup)
        tableView.reloadData()
    }
    //

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myGroop.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableVCellMyGroup", for: indexPath) as! TableVCellMyGroup
        
        cell.myGroopName .text = myGroop[indexPath.row].groupName
        
        cell.MyGropuPhoto.image = myGroop[indexPath.row].photo

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroop.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } 
    }
    
}
