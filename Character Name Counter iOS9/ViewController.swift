//
//  ViewController.swift
//  Character Name Counter iOS9
//
//  Created by Nurulazrad Bin Murad on 10/10/16.
//  Copyright © 2016 Herbalife Product. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblTotalCharacters: UILabel!
    
    var nameData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCalculate(sender: UIButton) {
        calculate()
    }
    
    @IBAction func btnClear(sender: UIButton) {
        clear()
    }
    
    @IBAction func txtNameACTION(sender: UITextField) {
        calculate()
    }
    
    func calculate() {
        nameData = txtName.text!
        
        printCharacters()
        hideKeyboard()
    }

    func clear() {
        txtName.text = ""
        lblTotalCharacters.text = "0"
        
        hideKeyboard()
    }
    
    func printCharacters() {
        let nameArray = Array(nameData.characters)
        lblTotalCharacters.text = "\(nameArray.count)"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboard()
    }
    
    func hideKeyboard() {
        txtName.resignFirstResponder()
    }
}

