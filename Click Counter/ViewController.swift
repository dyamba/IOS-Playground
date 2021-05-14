//
//  ViewController.swift
//  Click Counter
//
//  Created by Unsal Aslan on 14.05.2021.
//

import UIKit

class ViewController: UIViewController {

    var count=0
    @ IBOutlet var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
        
    }
    
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func changeBackground(){
        view.backgroundColor=makeRandomColor()
    }
    
    func makeRandomColor() -> UIColor {

        let fullRange : ClosedRange<CGFloat> = 0...255
        let pastelRange : ClosedRange<CGFloat> = 127...255

        let randomPastelRed     = CGFloat.random(in: pastelRange) / 255
        let randomPastelGreen   = CGFloat.random(in: pastelRange) / 255
        let randomPastelBlue    = CGFloat.random(in: pastelRange) / 255

        let randomRed           = CGFloat.random(in: fullRange) / 255
        let randomGreen         = CGFloat.random(in: fullRange) / 255
        let randomBlue          = CGFloat.random(in: fullRange) / 255

        let randomAlpha         = CGFloat.random(in: 0.6...1)

        return UIColor.init(dynamicProvider: { traitCollection in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: randomRed,
                    green: randomGreen,
                    blue: randomBlue,
                    alpha: randomAlpha
                )
            } else {
                return UIColor(
                    red: randomPastelRed,
                    green: randomPastelGreen,
                    blue: randomPastelBlue,
                    alpha: randomAlpha
                )
            }
        })

    }


}

