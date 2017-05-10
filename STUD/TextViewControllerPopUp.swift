//
//  TextViewControllerPopUp.swift
//  STUD
//
//  Created by Walid Marfouk on 5/10/17.
//  Copyright © 2017 Walid Marfouk. All rights reserved.
//

import UIKit

class TextViewControllerPopUp: UIViewController, UITextViewDelegate {

   
    @IBOutlet weak var textfield: CustomTextField!
    
    @IBAction func textFieldOver(_ sender: Any) {
        
        let alert = UIAlertController(title: "Message Sent", message: "Thank you for your message. We'll get back to you ASAP.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in self.performSegue(withIdentifier: "messageSent", sender: self)} ))
        self.present(alert, animated: true, completion: nil)
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
