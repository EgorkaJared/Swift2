//
//  OnePhotoFriend.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 24.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit
import Foundation

class OnePhotoFriend: UIViewController {
     
    var bigPhoto = UIImage()
    
    
    @IBOutlet var likeControll: UIView!
//    @IBAction func likeBottom(_ sender: Any) {
//
//        if lokeBottomCollor.tintColor != UIColor.red {
//            lokeBottomCollor.tintColor = UIColor.red
//            let countLike = Int(likeLAbel.text!) ?? 0
//            likeLAbel.text = String(countLike + 1)
//            likeLAbel.textColor = UIColor.red
//        }
//        else if likeLAbel.text != "1"{
//            lokeBottomCollor.tintColor = UIColor.blue
//            likeLAbel.text = String(Int(likeLAbel.text!)!-1)
//            likeLAbel.textColor = UIColor.blue
//        }
//        else {
//            lokeBottomCollor.tintColor = UIColor.blue
//            likeLAbel.text = ""
//
//        }
//    }
    
//    @IBOutlet weak var lokeBottomCollor: UIButton!
//    @IBOutlet weak var likeLAbel: UILabel!
    @IBOutlet weak var onePhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onePhoto.image = bigPhoto
      //  likeLAbel.textColor = UIColor.blue

        // Do any additional setup after loading the view.
    }
    
}
