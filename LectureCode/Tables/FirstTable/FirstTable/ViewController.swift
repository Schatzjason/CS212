//
//  ViewController.swift
//  FirstTable
//
//  Created by Jason Schatz on 10/19/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5000
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")!
        cell.textLabel?.text = "Hello \(indexPath.row)"
        print("Get Cell Number \(indexPath.row)")
        return cell
    }
    
}

