//
//  ViewController.swift
//  RGB Color
//
//  Created by Виталий Сосин on 22.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func saveSettings(_ color: UIColor)
}

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var screenView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    var delegate: SettingsViewControllerDelegate!
    var mainColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValueForSlider()
        setDefaultSetting()
    }
    
    // MARK: - Slider
    @IBAction func slider(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            redLabel.text = roundingValues(sender.value)
            redTextField.text = roundingValues(sender.value)
        case 1:
            greenLabel.text = roundingValues(sender.value)
            greenTextField.text = roundingValues(sender.value)
        case 2:
            blueLabel.text = roundingValues(sender.value)
            blueTextField.text = roundingValues(sender.value)
        default:
            break
        }
        setDefaultSetting()
    }
    
    // MARK: - Set Value For Slider
    private func setValueForSlider() {
        let sliderVaiue = CIColor(color: mainColor ?? .white)
        
        redSlider.value = Float(sliderVaiue.red)
        greenSlider.value = Float(sliderVaiue.green)
        blueSlider.value = Float(sliderVaiue.blue)
        
        screenView.backgroundColor = mainColor
    }
    
    // MARK: - Exit
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        delegate.saveSettings(screenView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    
    // MARK: - Default setting viewDidLoad 
    private func setDefaultSetting() {
        
        redLabel.text = roundingValues(redSlider.value)
        redTextField.text = roundingValues(redSlider.value)
        
        greenLabel.text = roundingValues(greenSlider.value)
        greenTextField.text = roundingValues(greenSlider.value)
        
        blueLabel.text = roundingValues(blueSlider.value)
        blueTextField.text = roundingValues(blueSlider.value)
        
        screenView.layer.cornerRadius = screenView.frame.width / 15
        getsColor()
    }
    
    // MARK: - Gets color from RGB
    private func getsColor() {
        
        let color = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        screenView.backgroundColor = color
    }
    
    // MARK: - Rounding values
    private func roundingValues(_ value: Float) -> String {
        String(format: "%.2f", value)
    }
}
