//
//  TableCellFriend.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class TableCellFriend: UITableViewCell {

    @IBOutlet weak var nameFriend: UILabel!
    
    @IBOutlet weak var photoFriend: Avatar!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //photoFriend.layer.cornerRadius = photoFriend.bounds.height/2
        //photoFriend.backgroundColor = .clear
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
