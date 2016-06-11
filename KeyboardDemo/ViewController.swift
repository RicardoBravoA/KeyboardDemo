//
//  ViewController.swift
//  KeyboardDemo
//
//  Created by Ricardo Bravo Acuña on 11/06/16.
//  Copyright © 2016 Ricardo Bravo Acuña. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txt.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func show(sender: AnyObject) {
        showMessage()
    }
    
    func showMessage(){
        self.lbl.text = txt.text
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        switch textField {
            case txt:
                showMessage()
                break
            default: break
            
        }
        
        textField.resignFirstResponder()
        return true
    }
    

}

