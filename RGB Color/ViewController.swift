//
//  ViewController.swift
//  RGB Color
//
//  Created by Виталий Сосин on 22.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var screenView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultSetting()
    }
    
    @IBAction func sliderAction() {
        getsColor()
        roundingValues()
    }
    
    // MARK: - Default setting viewDidLoad
    private func setDefaultSetting() {
        redValueLabel.text = String(redSliderOutlet.value)
        greenValueLabel.text = String(greenSliderOutlet.value)
        blueValueLabel.text = String(blueSliderOutlet.value)
        
        screenView.layer.cornerRadius = screenView.frame.width / 15
    }
    
    // MARK: - Gets color from RGB
    private func getsColor() {
        let color = UIColor(
            red: CGFloat(redSliderOutlet.value),
            green: CGFloat(greenSliderOutlet.value),
            blue: CGFloat(blueSliderOutlet.value),
            alpha: 1
        )
        screenView.backgroundColor = color
    }
    
    // MARK: - Rounding values
    private func roundingValues() {
        redValueLabel.text = String(format: "%.2f", redSliderOutlet.value)
        greenValueLabel.text = String(format: "%.2f", greenSliderOutlet.value)
        blueValueLabel.text = String(format: "%.2f", blueSliderOutlet.value)
    }
}
