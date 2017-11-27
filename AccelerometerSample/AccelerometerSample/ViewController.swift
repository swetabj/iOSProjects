//
//  ViewController.swift
//  AccelerometerSample
//
//  Created by Sweta Janagoudar on 11/26/17.
//  Copyright © 2017 Sweta Janagoudar. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        motionManager.accelerometerUpdateInterval = 0.01
        motionManager.gyroUpdateInterval = 0.01
        
        motionManager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            if let myData = data
            {
                print(myData)
                if myData.acceleration.x > 5 {
                    print ("Do Something Special")
                }
            }
        }
        
        motionManager.startGyroUpdates(to: OperationQueue.current!) { (data, error) in
            if let myData = data
            {
                print(myData)
                if myData.rotationRate.x > 3 {
                    print("you have tilted your device")
                }
            }
        }
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        print(fromInterfaceOrientation.rawValue)
        if fromInterfaceOrientation == .portrait || fromInterfaceOrientation == .portraitUpsideDown{
            print("Landscape")
        }
        else {
            print("Potrait")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

