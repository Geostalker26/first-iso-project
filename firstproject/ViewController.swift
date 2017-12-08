//
//  ViewController.swift
//  firstproject
//
//  Created by Brent Smith on 12/6/17.
//  Copyright © 2017 Brent Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var reset: UIButton!
    @IBOutlet var yell: UILabel!
    @IBOutlet var cap: UISwitch!
    @IBOutlet var changecolor: UISegmentedControl!
    @IBOutlet var hello: UILabel!
    @IBOutlet var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        cap.addTarget(self, action: #selector(capital), for: UIControlEvents.valueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func nokeyboard(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func outputtoinput(_ textField: UITextField){
        hello.text = "Hello " + textField.text!
        capital(switchState: cap)
        name.text = nil
    }
    @IBAction func Enter(_ sender: UIButton){
        hello.text = ""
        hello.textColor = UIColor.orange
        changecolor.selectedSegmentIndex = 0
        changecolor.tintColor = UIColor.orange
        reset.backgroundColor = UIColor.orange
        cap.onTintColor = UIColor.orange
        cap.setOn(false, animated: true)
        yell.textColor = UIColor.red
    }
    
    @IBAction func capital(switchState: UISwitch) {
        if cap.isOn {
         hello.text = hello.text?.uppercased()
        }
        else {
            hello.text = hello.text?.capitalized
        }
    }
    @IBAction func changecolor(_ sender: Any) {
        switch changecolor.selectedSegmentIndex {
            case 0:hello.textColor = UIColor.orange
                   changecolor.tintColor = UIColor.orange
                   reset.backgroundColor = UIColor.orange
                   cap.onTintColor = UIColor.orange
            
            case 1:hello.textColor = UIColor.red
                   changecolor.tintColor = UIColor.red
                   reset.backgroundColor = UIColor.red
                   cap.onTintColor = UIColor.red
            
            case 2:hello.textColor = UIColor.blue
                   changecolor.tintColor = UIColor.blue
                   reset.backgroundColor = UIColor.blue
                   cap.onTintColor = UIColor.blue
            
            case 3:hello.textColor = UIColor.green
                   changecolor.tintColor = UIColor.green
                   reset.backgroundColor = UIColor.green
                  cap.onTintColor = UIColor.green
            default: break
        }
    }
}

