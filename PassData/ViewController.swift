//
//  ViewController.swift
//  PassData
//
//  Created by ITHS on 2022-11-29.
//  Copyright © 2022 ITHS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    let segueToResult = "segueToResultView"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueToResult, sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueToResult {
            if let destinationVC = segue.destination as? ResultViewController {
            destinationVC.recivingMessage = textField.text
            }
            
        }
    }
    
    @IBAction func unwindToStartView(segue: UIStoryboardSegue) {
  }

}
