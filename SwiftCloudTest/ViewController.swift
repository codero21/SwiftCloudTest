//
//  ViewController.swift
//  SwiftCloudTest
//
//  Created by Rollin Francois on 7/4/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: @IBOutlets
    
    @IBOutlet weak var serviceStatus: UILabel!
    @IBOutlet weak var documentContentView: UITextView!
    
    
    // MARK: @IBActions
    
    @IBAction func onSaveDocument(_ sender: UIButton) {
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

