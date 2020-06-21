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
    var photo: UIImage?
    var allPhoto: [UIImage?]
    
    init(firstName:String, lastName:String,photo: UIImage?, allPhoto: [UIImage?]) {
        self.firstName = firstName
        self.lastName = lastName
        self.photo = photo
        self.allPhoto = allPhoto
    }
}
let dobrynia = [UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!]

let alesha = [UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,]

let ilia = [UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!]
