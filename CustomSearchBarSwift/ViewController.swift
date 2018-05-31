//
//  ViewController.swift
//  CustomSearchBarSwift
//
//  Created by Anjan Biswas on 5/31/18.
//  Copyright © 2018 Ivyvine Apps. All rights reserved.
//

import UIKit
import Hue

class ViewController: UIViewController, UITextFieldDelegate {
    
    let searchBar = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavBar()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.searchBar.becomeFirstResponder()
    }

}



