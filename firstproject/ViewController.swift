//
//  ViewController.swift
//  firstproject
//
//  Created by Brent Smith on 12/6/17.
//  Copyright © 2017 Brent Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var yell: UILabel!
    @IBOutlet weak var capital: UISwitch!
    @IBOutlet weak var changecolor: UISegmentedControl!
    @IBOutlet weak var hello: UILabel!
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
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
        name.text = nil
    }
    @IBAction func Submit(_ sender: UIButton){
        hello.text = " "
        hello.textColor = UIColor.orange
        changecolor.selectedSegmentIndex = 0
        changecolor.tintColor = UIColor.orange
        reset.backgroundColor = UIColor.orange
        capital.onTintColor = UIColor.orange
        yell.textColor = UIColor.red
    }
    
    @IBAction func capital(_ sender: Any) {
        if capital.isOn {
         hello.text = hello.text?.uppercased()
        }
        else {
            hello.text = hello.text?.capitalized
        }
    }
    @IBAction func changecolor(_ sender: Any) {
        if changecolor.selectedSegmentIndex == 0 {
            hello.textColor = UIColor.orange
            changecolor.tintColor = UIColor.orange
            reset.backgroundColor = UIColor.orange
            capital.onTintColor = UIColor.orange
        }
        else if changecolor.selectedSegmentIndex == 1{
            hello.textColor = UIColor.red
            changecolor.tintColor = UIColor.red
            reset.backgroundColor = UIColor.red
            capital.onTintColor = UIColor.red
        }
        else if changecolor.selectedSegmentIndex == 2{
            hello.textColor = UIColor.blue
            changecolor.tintColor = UIColor.blue
            reset.backgroundColor = UIColor.blue
            capital.onTintColor = UIColor.blue
        }
        else {
            hello.textColor = UIColor.green
            changecolor.tintColor = UIColor.green
            reset.backgroundColor = UIColor.green
            capital.onTintColor = UIColor.green
        }
    }
    
}

