//
//  ViewController.swift
//  Is It Prime
//
//  Created by Erin Moon on 12/12/16.
//  Copyright © 2016 Erin Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num: UITextField!
    
    @IBOutlet weak var isPrime: UILabel!
    
    @IBAction func isPrime(_ sender: Any) {
        
        if num.text == "" {
            
            isPrime.text = "Please enter a positive number."
            
        } else {
            
            var i = 2
        
            let j = Int(num.text!)!
            
            var answer: String = "\(j) is a prime."
            
            if j <= 0 {
                
                isPrime.text = "Please enter a positive number."
            
            } else if j == 1 {
                
                answer = "\(j) is not a prime."
                
            } else {
                
                while i < j {
                    
                    if j % i == 0{
                        
                        i = j
                        
                        answer = "\(j) is not a prime."
                        
                    } else {
                        
                        i += 1
                        
                    }
                    
                }
            
                isPrime.text = answer
                
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

