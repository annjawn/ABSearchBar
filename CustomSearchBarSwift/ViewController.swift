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
    
    func setupNavBar(){
        self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        self.navigationController?.navigationBar.shadowImage = nil
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.tintColor = nil
        
        searchBar.frame = CGRect(x: 0, y: 0, width: 340, height: 34)
        let centeredParagraphStyle = NSMutableParagraphStyle()
        centeredParagraphStyle.alignment = .left
        let attributes = [
            NSAttributedStringKey.foregroundColor: UIColor(hex: "#37474F"),
            NSAttributedStringKey.paragraphStyle: centeredParagraphStyle
        ]
        self.searchBar.layer.cornerRadius = 15
        self.searchBar.backgroundColor = UIColor(hex: "#ECEFF1")
        let centerText = NSMutableAttributedString(string: "Search", attributes: attributes)
        self.searchBar.attributedPlaceholder = centerText
    
        let imageView = UIImageView()
        let image = UIImage(named: "searchfield")
        imageView.image = image
        imageView.frame = CGRect(x: 0, y: 0, width: 25, height: 15)
        imageView.contentMode = .scaleAspectFit
        searchBar.leftViewMode = .always
        searchBar.leftView = imageView
        self.navigationItem.titleView = searchBar
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.searchBar.becomeFirstResponder()
    }

}



