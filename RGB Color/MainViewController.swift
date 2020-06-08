//
//  MainViewController.swift
//  RGB Color
//
//  Created by Виталий Сосин on 05.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationVC = segue.destination as! UINavigationController
        let settingsVC = navigationVC.viewControllers.first as! SettingsViewController
        settingsVC.mainColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func saveSettings(_ color: UIColor) {
        view.backgroundColor = color
    }
}
