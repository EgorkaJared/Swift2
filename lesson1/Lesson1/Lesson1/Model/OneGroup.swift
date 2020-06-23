//
//  oneGroop.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class OneGroup {
    
    var groupName: String
    var photo: UIImage
    
    // MARK fake group
    
    static let massGroup: [OneGroup] =
       [OneGroup(groupName: "Драконы",photo:UIImage(named: "Драконы.png")!),
        OneGroup(groupName: "Принцессы", photo:UIImage(named: "Принцессы.png")!),
        OneGroup(groupName: "Кони", photo:UIImage(named: "Кони.png")!)]
    
     // MARK fake group end
  
    init(groupName:String, photo: UIImage) {
        self.groupName = groupName
        self.photo = photo
        }
    }


// не стал описывать все тк нужно было только сравнение пока что
extension OneGroup: Comparable{
static func < (lhs: OneGroup, rhs: OneGroup) -> Bool{
    return lhs.groupName < rhs.groupName
    }

static func == (lhs: OneGroup, rhs: OneGroup) -> Bool{
    return lhs.groupName == rhs.groupName
    }
}

