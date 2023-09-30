//
//  StartViewController.swift
//  ColorizedApp
//
//  Created by Максим Удальцов on 30.09.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SetupColorViewController else { return }
        settingsVC.delegate = self
        settingsVC.viewColor
    }

 

      
    }
    
//MARK: - SetupViewControllerDelegate
extension SetupColorViewController: SetupViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
