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

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
