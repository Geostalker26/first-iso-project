//
//  ViewController.swift
//  firstproject
//
//  Created by Brent Smith on 12/6/17.
//  Copyright © 2017 Brent Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var sayhello: UIButton!
    @IBOutlet private var reset: UIButton!
    @IBOutlet private var yell: UILabel!
    @IBOutlet private var cap: UISwitch!
    @IBOutlet private var changecolor: UISegmentedControl!
    @IBOutlet private var hello: UILabel!
    @IBOutlet private var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        hello.text = ""

        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: Any) {
        hello.text = ""
        name.text = ""
    }
    @IBAction func hi(_ sender: Any) {
        hello.text = "Hello " + name.text!
        hello.textColor = UIColor.orange

    }
    func nokeyboard(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func outputtoinput(_ textField: UITextField){
        hello.text = "Hello " + textField.text!
        name.text = nil
    }
    
    @IBAction func capital(_ sender: Any) {
        if cap.isOn {
            hello.text = "Hello " + name.text! + "!"
            hello.text = hello.text?.uppercased()
        }
        else {
            hello.text = "Hello " + name.text!
            hello.text = hello.text?.capitalized
        }
    }
    
    @IBAction func changecolor(_ sender: Any) {
        switch changecolor.selectedSegmentIndex {
            case 0:changecolor.tintColor = UIColor.orange
                   cap.onTintColor = UIColor.orange
                   cap.tintColor = UIColor.orange
                   hello.textColor = UIColor.orange
            
            case 1:changecolor.tintColor = UIColor.red
                   cap.onTintColor = UIColor.red
                   cap.tintColor = UIColor.red
                   hello.textColor = UIColor.red
            
            case 2:changecolor.tintColor = UIColor.blue
                   cap.onTintColor = UIColor.blue
                   cap.tintColor = UIColor.blue
                   hello.textColor = UIColor.blue
            
            case 3:changecolor.tintColor = UIColor.green
                   cap.onTintColor = UIColor.green
                   cap.tintColor = UIColor.green
                   hello.textColor = UIColor.green
            
            default: break
        }
    }
}

