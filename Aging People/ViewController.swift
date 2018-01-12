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
        "Red",
        "Yellow",
        "Orange",
        "Blue",
        "Green",
        "Purple"
    ]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        let color = self.names[indexPath.row]
        
        switch color {
            case "Green":
                cell.backgroundColor = .green
            case "Red":
                cell.backgroundColor = .red
            case "Yellow":
                cell.backgroundColor = .yellow
            case "Orange":
                cell.backgroundColor = .orange
            case "Blue":
                cell.backgroundColor = .blue
            case "Purple":
                cell.backgroundColor = .purple
            default:
                print("no color")
        }
        
        
        cell.textLabel?.text = ""
        cell.detailTextLabel?.text = ""

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let tHeight = tableView.bounds.height
        let temp = tHeight/CGFloat(names.count)
        return temp
    
    }

}

