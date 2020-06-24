//
//  TableVCellMyGroup.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class TableVCellMyGroup: UITableViewCell {
   
    @IBOutlet weak var myGroopName: UILabel!
    @IBOutlet weak var MyGropuPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        MyGropuPhoto.layer.cornerRadius = MyGropuPhoto.bounds.height/2
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
