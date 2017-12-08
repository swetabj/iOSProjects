//
//  ViewController.swift
//  TestApplication
//
//  Created by Sweta Janagoudar on 12/6/17.
//  Copyright © 2017 Sweta Janagoudar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
    
    func randomColor() -> UIColor {
        return UIColor(red:   random(),
                       green: random(),
                       blue:  random(),
                       alpha: 1.0)
    }
    
    @IBAction func changeBackgroundAction(_ sender: UIButton) {
        sender.backgroundColor = randomColor();
        
    }
    
//    @IBAction func ChangeBackgroundAction(_ sender: UIButton) {
//        self.view.backgroundColor = randomColor();
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

