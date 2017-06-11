//
//  ViewController.swift
//  BasicSegmentedControl
//
//  Created by Pouria Delfanazari on 2017-06-10.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        secondView.isHidden = true
    }

    // MARK: - Outlets
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!

    // MARK: - Interactions
    @IBAction func tapSegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            firstView.isHidden = false
            secondView.isHidden = true
        } else {
            firstView.isHidden = true
            secondView.isHidden = false
        }
    }
}

