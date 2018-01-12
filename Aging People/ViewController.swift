//
//  ViewController.swift
//  Aging People
//
//  Created by Omar Ihmoda on 1/12/18.
//  Copyright © 2018 Omar Ihmoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var names = [
        "George",
        "Betty",
        "Fran",
        "Joe",
        "Helda",
        "Winifred",
        "Zed",
        "Sara",
        "Jeffy",
        "Abraham",
        "Anna",
        "Melinda"
        ]
    var tasks: [(String, String)] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        self.getPeople()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getPeople(){
        var random_num: Int = 0
        var age_string: String = ""
        for name in self.names {
            random_num = Int(arc4random_uniform((90)) + 6)
            age_string = "\(random_num) years old"
            self.tasks.append((name, age_string))
        }
        print(self.tasks)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = self.tasks[indexPath.row].0
        cell.detailTextLabel?.text = self.tasks[indexPath.row].1
        return cell
    }


}

