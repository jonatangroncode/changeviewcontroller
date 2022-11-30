//
//  ResultViewController.swift
//  PassData
//
//  Created by ITHS on 2022-11-29.
//  Copyright © 2022 ITHS. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var displayMassageView: UILabel!
    
    var recivingMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // if let recivingMessage = recivingMessage {     alternativt sätt
        displayMassageView.text = "Hej \(recivingMessage ?? "" )"
       // }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
