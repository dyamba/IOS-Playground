//
//  ViewController.swift
//  Click Counter
//
//  Created by Unsal Aslan on 14.05.2021.
//

import UIKit

class ViewController: UIViewController {

    var count=0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label=UILabel()
        
        label.frame = CGRect(x: 195, y: 250, width: 60, height: 60)
        label.text="0"
        view.addSubview(label)
        self.label=label
        
        let button=UIButton()
        button.frame=CGRect(x:150,y:350, width:120, height:60)
        button.setTitle("Click Inc (+)", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        let buttonDec=UIButton()
        buttonDec.frame=CGRect(x:150,y:150, width:120, height:60)
        buttonDec.setTitle("Click Dec (-)", for: .normal)
        buttonDec.setTitleColor(UIColor.blue, for: .normal)
        
        view.addSubview(buttonDec)
        
        buttonDec.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
        let buttonColor=UIButton()
        buttonColor.frame=CGRect(x:150,y:550, width:120, height:60)
        buttonColor.setTitle("Change BG Color", for: .normal)
        buttonColor.setTitleColor(UIColor.blue, for: .normal)
        
        view.addSubview(buttonColor)
        
        buttonColor.addTarget(self, action: #selector(ViewController.changeBackground), for: UIControl.Event.touchUpInside)
    
        
    }
    
    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    @objc func changeBackground(){
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

