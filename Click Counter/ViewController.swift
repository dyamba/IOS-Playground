//
//  ViewController.swift
//  Click Counter
//
//  Created by Unsal Aslan on 14.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label=UILabel()
        
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text="0"
        view.addSubview(label)
    }


}

