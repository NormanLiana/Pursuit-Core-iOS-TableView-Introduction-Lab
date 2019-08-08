//
//  ViewController.swift
//  TableViewIntroductionLab
//
//  Created by Benjamin Stone on 8/6/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var taskModel = Task.allTasks
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let name = tableView.dequeueReusableCell(withIdentifier: "Names", for: indexPath)
        if indexPath.section == 0 {
            name.textLabel?.text = taskModel[indexPath.row].name
            name.detailTextLabel?.text = taskModel[indexPath.row].dueDate.description(with: .current)
            
        }
        return name
    }
    


    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
           myTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }


}

