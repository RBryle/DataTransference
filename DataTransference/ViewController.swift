//
//  ViewController.swift
//  DataTransference
//
//  Created by Ryan Bryle on 4/19/17.
//  Copyright © 2017 Ryan Bryle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataInput: UITextField!
    @IBOutlet weak var dataOutput: UITextView!
    
    @IBAction func sendButton(_ sender: Any) {
        let dataToTransfer = dataInput.text!
        performSegue(withIdentifier: "DataHub", sender: dataToTransfer)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DataHub" {
        let dataHub = segue.destination as! DataHub
        dataHub.dataReceived = (sender as! String)
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

