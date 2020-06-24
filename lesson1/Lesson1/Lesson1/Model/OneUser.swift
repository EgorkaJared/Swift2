//
//  oneUser.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 20.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class OneUser {
    
    var firstName: String
    var lastName: String
    var photo: UIImage?
    var allPhoto: [UIImage?]
    
    // MARK - fake user
    
    static let massFriend: [OneUser] = [OneUser(firstName: "Алеша", lastName: "Попович", photo: UIImage(named: "Алеша.png")!,allPhoto: alesha),
    OneUser(firstName: "Добрыня", lastName: "Никитич", photo: UIImage(named: "Добрыня.png")!,allPhoto: dobrynia),
    OneUser(firstName: "Илья", lastName: "Муромец", photo: UIImage(named: "Илья.png")!,allPhoto: ilia)
    ]
    
    static let dobrynia = [UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Кони.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png")!,UIImage(named: "Добрыня.png" )!]

    static let alesha = [UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,UIImage(named: "Алеша.png")!,]

    static let ilia = [UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!,UIImage(named: "Илья.png")!]
    
     // MARK - fake user end
    
    init(firstName:String, lastName:String,photo: UIImage?, allPhoto: [UIImage?]) {
        self.firstName = firstName
        self.lastName = lastName
        self.photo = photo
        self.allPhoto = allPhoto
    }
}

