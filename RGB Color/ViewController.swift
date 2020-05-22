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
    
    @IBOutlet weak var switchOutlet: UISwitch!
    
    @IBOutlet weak var redNamelabel: UILabel!
    @IBOutlet weak var greenNamelabel: UILabel!
    @IBOutlet weak var blueNamelabel: UILabel!
    @IBOutlet weak var darkModelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultSetting()
    }
    
    @IBAction func sliderAction() {
        
        var color: UIColor {
            return UIColor(
                red: CGFloat(redSliderOutlet.value),
                green: CGFloat(greenSliderOutlet.value),
                blue: CGFloat(blueSliderOutlet.value),
                alpha: 1
            )
        }
        
        screenView.backgroundColor = color
        
        redValueLabel.text = String(format: "%.2f", redSliderOutlet.value)
        greenValueLabel.text = String(format: "%.2f", greenSliderOutlet.value)
        blueValueLabel.text = String(format: "%.2f", blueSliderOutlet.value)
    }
    
    @IBAction func switchAction() {
        
        if switchOutlet.isOn {
            let navigationBar = self.navigationController?.navigationBar
            navigationBar?.barStyle = UIBarStyle.black
//            navigationBar?.tintColor = UIColor.black
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            
            redNamelabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            greenNamelabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            blueNamelabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            darkModelabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            
            redValueLabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            greenValueLabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            blueValueLabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            
            redSliderOutlet.maximumTrackTintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            greenSliderOutlet.maximumTrackTintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            blueSliderOutlet.maximumTrackTintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            
        } else {
            let navigationBar = self.navigationController?.navigationBar
            navigationBar?.barStyle = UIBarStyle.default
//            navigationBar?.tintColor = UIColor.white
            view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            
            redNamelabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            greenNamelabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            blueNamelabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            darkModelabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            
            redValueLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            greenValueLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            blueValueLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            
            redSliderOutlet.maximumTrackTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            greenSliderOutlet.maximumTrackTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            blueSliderOutlet.maximumTrackTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            
        }
    }
    
    private func setDefaultSetting() {
        redValueLabel.text = String(redSliderOutlet.value)
        greenValueLabel.text = String(greenSliderOutlet.value)
        blueValueLabel.text = String(blueSliderOutlet.value)
        
        switchOutlet.layer.cornerRadius = 15
        
        screenView.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        screenView.layer.cornerRadius = 20
    }
}
