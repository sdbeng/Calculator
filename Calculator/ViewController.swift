//
//  ViewController.swift
//  Calculator
//
//  Created by admin 33 on 2/18/15.
//  Copyright (c) 2015 sdbwebsolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    @IBAction func digitButton(sender: UIButton) {
        //declare a local variable called digit(in this case a constant)
        let digit = sender.currentTitle!
        
        //In order to avoid appending the zero in the display, 1st ask
        if(userIsInTheMiddleOfTypingANumber){
            //append digit to the display
            display.text = display.text! + digit
        }
        else{
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        
        
        //println("digit = \(digit)")
    }


}

