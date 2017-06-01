//
//  NewGroceryViewController.swift
//  Pull to Refresh
//
//  Created by Pouria Delfanazari on 2017-05-31.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class NewGroceryViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Interactions
    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {
        
        // to make sure it doesn't add empty input
        if textView.text.characters.count > 0 {
            model.data.append(textView.text)
        }
        navigationController?.popToRootViewController(animated: true)
    }
    

}
