//
//  TableViewController.swift
//  Observe Crash
//
//  Created by Benedek Kozma on 2019. 02. 26..
//  Copyright © 2019. Benedek Kozma. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var observation: NSKeyValueObservation?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        observation = observe(\.tableView.contentOffset, options: .new, changeHandler: { (`self`, change) in
            print(change)
        })
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
    }
    
    @objc func done() {
        self.dismiss(animated: false, completion: nil)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
}
