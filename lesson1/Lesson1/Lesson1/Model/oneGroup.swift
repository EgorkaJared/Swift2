//
//  oneGroop.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class oneGroup {
    
    var groupName: String
    var photo: UIImage
  
    init(groupName:String, photo: UIImage) {
        self.groupName = groupName
        self.photo = photo
        }
    }
// не стал описывать все тк нужно было только спавнениеб пока что
extension oneGroup: Comparable{
static func < (lhs: oneGroup, rhs: oneGroup) -> Bool{
    return lhs.groupName < rhs.groupName
    }

static func == (lhs: oneGroup, rhs: oneGroup) -> Bool{
    return lhs.groupName == rhs.groupName
    }
}

