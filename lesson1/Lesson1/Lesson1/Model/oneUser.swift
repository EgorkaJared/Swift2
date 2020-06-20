//
//  oneUser.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class oneUser {
    
    var firstName: String
    var lastName: String
    var photo: UIImage
    
    init(firstName:String, lastName:String, photo: UIImage) {
        self.firstName = firstName
        self.lastName = lastName
        self.photo = photo
    }
}
