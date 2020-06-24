//
//  TableViewController.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class TableFriend: UITableViewController,UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    let allFriend = OneUser.massFriend
    // создаем массив для поиска, не забывем поменять везде общий массив на массив поиска и добавить UISearchBarDelegate к классу
    var searchFriend: [OneUser] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        //убираем ошибку конфликтов констрейнов
        self.tableView.rowHeight = 44
        searchFriend = allFriend
        
        
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return searchFriend.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCellFriend", for: indexPath) as!
        TableCellFriend

        // Configure the cell...
        cell.nameFriend.text = ("\(searchFriend[indexPath.row].firstName) \(searchFriend[indexPath.row].lastName)")
//        cell.photoFriend.image. = ("\(allFriend[indexPath.row].photo)")

        cell.photoFriend.image = (searchFriend[indexPath.row].photo)
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
    
    // функция передачи фото пользователя в колекцию(нас ледующий экран) 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            //проверка на какой экрвн переходим
            let photo = segue.destination as?
            CollectionPhoto,
            //получаем индекс нажанай ячейки
            let indexPhoto = self.tableView.indexPathForSelectedRow
            else {return}
        //получаем индекс друга из массива равный индкусу ячейки
        let friend = allFriend[indexPhoto.row]
        // присваеваем массиву фото значение массива из класса друга
        photo.photoMass = friend.allPhoto
        // Pass the selected object to the new view controller.
    }
    // функция рабоыт поиска
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchFriend = allFriend
        }
        else
        {
            searchFriend = allFriend.filter {$0.firstName.lowercased().contains(searchText.lowercased()) || $0.lastName.lowercased().contains(searchText.lowercased()) }
        }
        tableView.reloadData()
    }
    
}
