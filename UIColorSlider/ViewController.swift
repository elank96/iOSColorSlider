//
//  ViewController.swift
//  UIColorSlider
//
//  Created by Elan Kainen on 11/11/19.
//  Copyright © 2019 Elan Kainen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorComponent()
    }
    
    func setMinAndMaxValue(slider: UISlider) -> UISlider {
        slider.minimumValue = 0.0
        slider.maximumValue = 1.0
        slider.isContinuous = false
        return slider
    }
    
    @IBAction func changeColorComponent() {
        
        let redInit = setMinAndMaxValue(slider: redSlider)
        let blueInit = setMinAndMaxValue(slider: blueSlider)
        let greenInit = setMinAndMaxValue(slider: greenSlider)

        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
                       
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        }
}
