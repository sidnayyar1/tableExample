//
//  ViewController.swift
//  tableExample
//
//  Created by Sidharth Nayyar on 11/9/19.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    private var data:[String] = []
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        for i in 0...1000{
        data.append("\(i)")
        }
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cellIdentifier")!
        let text = data[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
}

