//
//  ViewController.swift
//  FizzBuzz
// hi
//  Created by Shrey Patel on 10/15/19.
//  Copyright © 2019 Shrey Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    var fizzVal = 0
    var buzzVal = 0
    var bangVal = 0
    var output = ""
    
    
    @IBOutlet weak var TEXTFIELD: UITextField!
    
    @IBOutlet weak var enterBut: UIButton!
    @IBOutlet weak var outputRICK: UITextField!
    
    
    
@IBAction func buttonPress(_ sender: Any) {
    let num = Int(TEXTFIELD.text!)
    
    outputRICK.text = fizzBuzz(num: num!)
    
    
}
    
    
    func fizzBuzz (num: Int)-> String{
        for num in 1...num{
            fizzVal = num % 3
            buzzVal = num % 5
            bangVal = num % 7
            
            if fizzVal == 0 && buzzVal != 0{
                output += ("fizz, ")
            } else if buzzVal == 0 && fizzVal != 0 {
                output += ("bang, ")
            } else if bangVal == 0 {
                output += ("fizzbuzz, ")
            } else if bangVal == 0 && fizzVal == 0 && buzzVal == 0 {
                output += ("fizzbuzzbang, ")
            } else {
                output += String(num) + ", "
            }
            
            
            
        }
        return output
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

