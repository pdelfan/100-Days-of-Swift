//
//  ViewController.swift
//  UiSlider
//
//  Created by Pouria Delfanazari on 2017-05-21.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARKL - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: CGFloat(slider.value)) // label colour set to slider value upon starting the app
    }

    // MARK: - Outlets
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
   // MARK: - Interactions
    @IBAction func dragSlider(_ sender: UISlider) {
        
    // change colour based on slider's number value
    helloLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: CGFloat(sender.value))

        print("\(sender.value)")
    }


}

