//
//  ViewController.swift
//  Tap Counter
//
//  Created by Pouria Delfanazari on 2017-05-21.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var countLabel: UILabel!
    
    // MARK: - Properties
    var count = 0

    // MARK: - Interactions
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCount()
    }

    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0
    }

    @IBAction func longPressTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    // MARK: - Functions
    func increaseCount() {
        count += 1
        countLabel.text = String(count)
    }
    
}

