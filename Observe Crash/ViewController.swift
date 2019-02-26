//
//  ViewController.swift
//  Observe Crash
//
//  Created by Benedek Kozma on 2019. 02. 26..
//  Copyright © 2019. Benedek Kozma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func openPressed(_ sender: Any) {
        let tableVC = TableViewController(nibName: nil, bundle: nil)
        let navC = UINavigationController(rootViewController: tableVC)
        self.present(navC, animated: false, completion: nil)
    }
}

