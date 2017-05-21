//
//  ViewController.swift
//  Writer
//
//  Created by Pouria Delfanazari on 2017-05-21.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder() // makes the keyboard slide up
        NotificationCenter.default.addObserver(self, selector: #selector(detectIfSettingsChanged), name: UserDefaults.didChangeNotification, object: nil)
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Functions
    func detectIfSettingsChanged() {
        //print("Night Mode setting is: \(UserDefaults.standard.bool(forKey: "nightMode"))")
        
        // if night mode is on
        // apply theme
        // else restore default theme
        
        if UserDefaults.standard.bool(forKey: "nightMode") == true {
            // apply night theme
            view.backgroundColor = .black
            textView.textColor = .white
            textView.keyboardAppearance = .dark // keyboard colour
            UIApplication.shared.statusBarStyle = .lightContent
            
        } else {
            // restore default theme
            view.backgroundColor = .white
            textView.textColor = .black
            textView.keyboardAppearance = .default
            UIApplication.shared.statusBarStyle = .default
        }
    }

}

