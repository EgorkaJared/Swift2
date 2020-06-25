//
//  LikeContoll.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 25.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import Foundation
import UIKit

class LikeContoll: UIControl{
    
    //MARK - View
    
    var likeButtom: UIButton!
    //var likeLabel: UILabel = UILabel()
    
    //MARK - init
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super .init(coder:coder)
        setup()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        likeButtom.frame = bounds
    }

    private func setup(){
        likeButtom = UIButton(type: .system)
        likeButtom.setTitle("", for: .normal)
        likeButtom.setImage(UIImage(systemName: "heart"), for: .normal)
        likeButtom.addTarget(self, action: #selector(selectLike(_:)), for: .touchUpInside)
        likeButtom.tintColor = UIColor.black
        
         
        addSubview(likeButtom)
    }
    
    @objc func selectLike(_ sender: UIButton){
         if likeButtom.tintColor != UIColor.red {
                likeButtom.tintColor = UIColor.red
            let countlike = likeButtom.title(for: .normal)!
            let  count = (Int(countlike) ?? 0) + 1
            likeButtom.setTitle(String(count), for: .normal)
            }
               
            else {
                likeButtom.tintColor = UIColor.blue
            let countlike = likeButtom.title(for: .normal)!
            let  count = (Int(countlike) ?? 0) - 1
            likeButtom.setTitle(String(count), for: .normal)
                   
               }
        
    }
}
