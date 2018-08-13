//
//  ViewController.swift
//  Checkmark
//
//  Created by Josh Jaslow on 3/14/17.
//  Copyright © 2017 Jaslow Enterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BEMCheckBoxDelegate {

    @IBOutlet weak var box1: BEMCheckBox!
    @IBOutlet weak var box2: BEMCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        box1.delegate = self
        box2.delegate = self
        
        /*let newBox = BEMCheckBox(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        self.view.addSubview(newBox)*/
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        box1.setOn(true, animated: true)
    }
    
    func didTap(_ checkBox: BEMCheckBox) {
        print("User tapped checkmark \(checkBox.tag): \(checkBox.on)")
    }

}

