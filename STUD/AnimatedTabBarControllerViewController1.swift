//
//  AnimatedTabBarControllerViewController1.swift
//  STUD
//
//  Created by Walid Marfouk on 5/9/17.
//  Copyright © 2017 Walid Marfouk. All rights reserved.
//

import UIKit

class AnimatedTabBarControllerViewController1: UITabBarController {

    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!
    var thirdItemImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstItemView = self.tabBar.subviews[0]
        
        let firstItemImageView = self.tabBar.subviews[0]
        self.firstItemImageView = firstItemView.subviews.first as! UIImageView
        self.firstItemImageView.contentMode = .center
        
        
        let secondItemView = self.tabBar.subviews[1]
        
        let secondItemImageView = self.tabBar.subviews[1]
        self.secondItemImageView = secondItemView.subviews.first as! UIImageView
        self.secondItemImageView.contentMode = .center
        
        
        let thirdItemView = self.tabBar.subviews[2]
        
        let thirdItemImageView = self.tabBar.subviews[2]
        self.thirdItemImageView = thirdItemView.subviews.first as! UIImageView
        self.thirdItemImageView.contentMode = .center
    }


    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0{
            //do our animations
           
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: [.curveEaseIn, .curveEaseOut], animations: { () -> Void in
                let rotation = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
                self.firstItemImageView.transform = rotation
            }, completion: nil)
             self.firstItemImageView.transform = CGAffineTransform.identity
        }
        
        if item.tag == 1{
            //do our animations
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: [.curveEaseIn, .curveEaseOut], animations: { () -> Void in
                let rotation = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
                self.secondItemImageView.transform = rotation
            }, completion: nil)
            self.secondItemImageView.transform = CGAffineTransform.identity
    }
        
        if item.tag == 2{
            //do our animations
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: [.curveEaseIn, .curveEaseOut], animations: { () -> Void in
                let rotation = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
                self.thirdItemImageView.transform = rotation
            }, completion: nil)
            self.thirdItemImageView.transform = CGAffineTransform.identity

}

}
}
