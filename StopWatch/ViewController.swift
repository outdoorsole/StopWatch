//
//  ViewController.swift
//  StopWatch
//
//  Created by Maribel Montejano on 10/24/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    // Create an instance of StopWatch object as a property of ViewController class
    var watch = StopWatch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButton(_ sender: UIButton) {
        print("start button tapped")
        watch.start()
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        print("stop button tapped")
        print(watch.elapsedTime())
        watch.stop()
    }

}

