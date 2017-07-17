//
//  addMeVC.swift
//  HubbyList
//
//  Created by Zhe Chen on 7/17/17.
//  Copyright © 2017 Zhe Chen. All rights reserved.
//

import UIKit

class addMeVC: UIViewController {
    
    @IBOutlet weak var today: UISwitch!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func sendToHubbyTapped(_ sender: Any) {
        
        let guest = UIApplication.shared.delegate as! AppDelegate
        let context = guest.persistentContainer.viewContext
        let task = Task(context: context)
        if let name = textField.text {
            task.name = name
        }
        task.today = today.isOn
        
        //save the data to core data
        
        guest.saveContext()
        
        navigationController!.popToRootViewController(animated: true)
    }
    
    
}
