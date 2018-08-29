//
//  ViewController.swift
//  Hello World App
//
//  Created by Mando Quintana on 8/28/18.
//  Copyright © 2018 Mando Quintana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    var backgroundColor: UIColor!
    var originalText: String?
    var originalColor: UIColor!
 
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColor = view.backgroundColor
        originalText = "Hello From Armando"
        originalColor = UIColor.black
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textColorChangeButton(_ sender: Any) {
        textLabel.textColor = UIColor(red:CGFloat(arc4random_uniform(2)) , green: CGFloat(arc4random_uniform(2)), blue: CGFloat(arc4random_uniform(2)), alpha: 1)
    }
    
    @IBAction func changeBackgroundColor(_ sender: Any) {
        self.view.backgroundColor = UIColor(red:CGFloat(arc4random_uniform(2)) , green: CGFloat(arc4random_uniform(2)), blue: CGFloat(arc4random_uniform(2)), alpha: 1)
    }
    
    @IBAction func changeTextButton(_ sender: Any) {
       
        if (textField.text?.isEmpty)!{
            textLabel.text = originalText
        }
        else{
            textLabel.text = textField.text
            textField.text = ""
            view.endEditing(true)
        
    }
    
    }
    
    @IBAction func backToDefault(_ sender: Any) {
        view.backgroundColor = backgroundColor
        textLabel.text = originalText
        textLabel.textColor = originalColor
    }
    
}

