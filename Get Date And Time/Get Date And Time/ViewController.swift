//
//  ViewController.swift
//  Get Date And Time
//
//  Created by Pouria Delfanazari on 2017-05-21.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDateAndTime()
    }

    // MARK: - Outlets
    
    @IBOutlet weak var dateLabel: UILabel!
    
    // MARK: - Properties
    let dateFormatter = DateFormatter()
    
    // MARK: - Interactions
    @IBAction func tapRefreshButton(_ sender: UIButton) {
        updateDateAndTime()
            }
    
    // MARK: - Functions
    func updateDateAndTime() {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        dateLabel.text = dateFormatter.string(from: Date())
    }

}

