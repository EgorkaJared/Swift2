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
    
    
    @IBAction func likeBottom(_ sender: Any) {
        
        if lokeBottomCollor.tintColor != UIColor.red {
            lokeBottomCollor.tintColor = UIColor.red
            let countLike = Int(likeLAbel.text!) ?? 0
            likeLAbel.text = String(countLike + 1)
            likeLAbel.textColor = UIColor.red
        }
        else {
            lokeBottomCollor.tintColor = UIColor.blue
            likeLAbel.text = String(Int(likeLAbel.text!)!-1)
            likeLAbel.textColor = UIColor.blue
            
        }
    }
    
    @IBOutlet weak var lokeBottomCollor: UIButton!
    @IBOutlet weak var likeLAbel: UILabel!
    @IBOutlet weak var onePhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onePhoto.image = bigPhoto
        likeLAbel.textColor = UIColor.blue

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
