//
//  ViewController.swift
//  TodoList
//
//  Created by Chris Syrette on 2018-01-06.
//  Copyright © 2018 Chris Syrette. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController{

    let itemArray = ["Find Tofu", "Buy Beer", "Buy Snackes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    //MARK: - TableView Delegrate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            // remove checkmark
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            // add checkmark
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}

