//
//  FirstViewController.swift
//  CustomSegues
//
//  Created by Pouria Delfanazari on 2017-06-11.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - View Did
    override func viewDidAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    /*override func viewDidDisappear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }*/

   // MARK: - Interactions
    @IBAction func swipeUpGesture(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "segueToSecond", sender: self)
    }

    // MARK: - For Second View Controller
    @IBAction func segueBackToFirst(_ sender: UIStoryboardSegue) {
        
    }

}
