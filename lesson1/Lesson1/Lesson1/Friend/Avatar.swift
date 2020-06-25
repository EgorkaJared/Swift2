//
//  AvatarМшуц.swift
//  Lesson1
//
//  Created by Егор Ненастьев on 25.06.2020.
//  Copyright © 2020 Егор Ненастьев. All rights reserved.
//

import UIKit

class Avatar: UIView {
    
    //@IBInspectable
    var shadowMargin: CGFloat = 10
    //задаем прозрачность тени от 0 до 10
    //@IBInspectable - разкоментить  чтобы настраивать из сториборда
    var shadowOpacity: CGFloat = 6
    // задаем цвет тени
    //@IBInspectable
    var shadowColor:UIColor = UIColor.red
    //@IBInspectable
    var avatarImage: UIImage = UIImage(){
    didSet{
        imageView.image = avatarImage
            }
        }
    var imageView: UIImageView!
    let shadowView: UIView = UIView()
        
        // переопределяем инит для возможности вызова кастомного метоода
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.setupComponent()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.setupComponent()
        }
        // вызывается для настройки из сториборда
        override func prepareForInterfaceBuilder() {
            super.prepareForInterfaceBuilder()
            self.setupComponent()
        }

        override func layoutSubviews() {
            super.layoutSubviews()
            updateComponent()
            
        }
        
        func updateComponent(){
            
            // координаты внутри родительской view
            
            // аватрака расположение
            imageView.frame =  CGRect(x: 0, y: 0,
                                  width:(self.bounds.width),
                                  height:(self.bounds.height))
            // аватрака закругление
            imageView.layer.cornerRadius =
                imageView.bounds.size.height / 2
            // обрезание содержимого image по форме
            imageView.clipsToBounds = true
            
            // расположение тени
            shadowView.frame = CGRect(x: 0, y: 0,
            width:(self.bounds.width),
            height:(self.bounds.height))
            // закругление тени
            shadowView.layer.cornerRadius =
                shadowView.frame.size.height / 2
        
            // определение цвета тение
            shadowView.layer.shadowColor =
                shadowColor.cgColor
            /* переводим значение из задонго в
            приемлеиое от 0 до 1 */
            shadowView.layer.shadowOpacity =
                Float(shadowOpacity)/10
            //задаем размер тени
            shadowView.layer.shadowRadius = shadowMargin
        }
        
        func  setupComponent() {
           
                // устанавливаем дефолтное значение что- бы не получить nill
                imageView = UIImageView(image: avatarImage)
                // обрезаем содержимое без изменения без растягиваний и тдю
                imageView.contentMode = .scaleAspectFill
            
                updateComponent()
                // задаем цвет фона тени
                shadowView.backgroundColor = .white
                //обрезание по форме
                shadowView.clipsToBounds = true
                //отлючаем обрезадние тени
                shadowView.layer.masksToBounds = false
                // сдвиш тени равный
                shadowView.layer.shadowOffset =
                    CGSize(width: 0, height: 0)
                //добавляем элементы на view
                self.addSubview(shadowView)
                self.addSubview(imageView)
            
        }

    }
