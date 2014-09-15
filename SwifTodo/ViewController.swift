//
//  ViewController.swift
//  SwifTodo
//
//  Created by 白濱 伸幸 on 2014/09/15.
//  Copyright (c) 2014年 Nobuyuki Shirahama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var counter: UILabel!
    
    var CountNum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textLabel.delegate = self
        counter.text = String(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        
        self.view.endEditing(true)
        println(self.textLabel.text)
        return false
    }

    @IBAction func PushCountButton(sender: AnyObject) {
        CountNum++
        counter.text = String(CountNum)
    }

    @IBAction func PushResetButton(sender: AnyObject) {
        CountNum = 0
        counter.text = String(CountNum)
    }
}

