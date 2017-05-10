//
//  ViewController.swift
//  STUD
//
//  Created by Walid Marfouk on 5/8/17.
//  Copyright © 2017 Walid Marfouk. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore

class ViewController: UIViewController,  LoginButtonDelegate {
    
    @IBOutlet weak var logoWhite: UIImageView!
   
    @IBOutlet weak var logoBlack: UIImageView!
   
    @IBOutlet weak var nameBlack: UIImageView!
    
    @IBOutlet weak var login: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
let loginButton = LoginButton(readPermissions: [ .publicProfile ])
loginButton.center = login.center//CGPoint(x: -500, y: -500)
loginButton.delegate = self
        if (AccessToken.current != nil) {
           AccessToken.current = nil
        }

        
view.addSubview(loginButton)
        

        // login.addTarget(self, action: #selector(handleFBLogin), for: .touchUpInside)
    }
    
    

        
//  let timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
   
//    
//    func timeToMoveOn() {
//        self.performSegue(withIdentifier: "toSecondTitle", sender: self)
  
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.nameBlack.alpha = 0.0
        self.logoBlack.alpha = 0.0
        self.login.alpha = 0.0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       super.viewDidAppear(animated)
        
        
        UIView.animate(withDuration: 2.0) {
            self.logoWhite.center.y = 220
        }
         UIView.animate(withDuration: 2.0) {
            self.logoWhite.alpha = 0.0
        }
        
         UIView.animate(withDuration: 2.0) {
            self.logoBlack.center.y = 220
        }
         UIView.animate(withDuration: 2.0) {
            self.logoBlack.alpha = 1.0
        }
        UIView.animate(withDuration: 2.0) {
            self.view.backgroundColor = UIColor.white
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
            
            UIView.animate(withDuration: 1.0) {
                self.nameBlack.alpha = 1.0
            }
            UIView.animate(withDuration: 1.5) {
                self.login.alpha = 1.0
            }
            
        })
            
        
        
        
}
    
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        switch result {
        case .failed(let error):
            print("Failed Authentication Error")
            print(error)
            break
        case .cancelled:
            print("Facebook Authentication Cancelled")
            break
        case .success(_,_,_):
            performSegue(withIdentifier: "postLogin", sender: nil)
            
        }
    }
   
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        
    }
    
    
    
// MARK : Actions
    
//    @IBAction func clickFbLogin(_ sender: UIButton) {
//        let pointOnTheScreen = CGPoint(x: -500, y: -500)
//        view.hitTest(pointOnTheScreen, with: nil)
//        
//    }

}



        // Do any additional setup after loading the view, typically from a nib.
    


