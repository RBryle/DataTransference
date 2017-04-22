//
//  DataHub.swift
//  DataTransference
//
//  Created by Ryan Bryle on 4/19/17.
//  Copyright © 2017 Ryan Bryle. All rights reserved.
//

import UIKit

protocol Responder {
    func resondToData(data: String)
}

class DataHub: UIViewController {
    @IBOutlet weak var data: UITextField!
    var dataReceived: String?
    var delegate: Responder?
    
    @IBAction func ridKeyboard(_ sender: Any) {
        data.resignFirstResponder()
    }
    
    @IBAction func sendDataButton(_ sender: Any) {
        delegate?.resondToData(data: data.text!)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        data.text = dataReceived!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if delegate == nil {
            print("We do not have a delegate!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
