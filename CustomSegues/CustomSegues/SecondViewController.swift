//
//  SecondViewController.swift
//  CustomSegues
//
//  Created by Pouria Delfanazari on 2017-06-11.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Interactions
    @IBAction func swipeDownGesture(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "segueBackToFirst", sender: self)
    }
    
    @IBAction func swipeUpGesture(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "segueToThird", sender: self)
    }
    
   // MARK: - For Third View Controller
    @IBAction func segueBackToSecond(_ sender: UIStoryboardSegue) {
        
    }
    
}
