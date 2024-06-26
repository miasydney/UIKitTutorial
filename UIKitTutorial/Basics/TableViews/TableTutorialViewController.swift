//
//  TableTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 26/6/2024.
//

import UIKit

class TableTutorialViewController: UITableViewController {
    
    private lazy var footerView: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Update Table", for: .normal)
        button.addTarget(self, action: #selector(updateTable), for: .touchUpInside)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private var constructors = [
        "Mercedes",
        "Ferrari",
        "Aston Martin",
        "Red Bull",
        "Williams Racing"
    ]
    
    private var drivers = [
        "Lewis Hamilton",
        "George Russell",
        "Charles Leclerc",
        "Carlos Sainz",
        "Fernando Alonso",
        "Lance Stroll",
        "Max Verstappen",
        "Checo Perez"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // amount of rows to render
        switch section {
        case 0:
            return constructors.count
        case 1:
            return drivers.count
        default:
            return 0
        }
       
    }

    
    // described how to render each individual cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        print("DEBUG: Index path is \(indexPath)")
        
        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.section {
        case 0:
            content.text = constructors[indexPath.row]
        case 1:
            content.text = drivers[indexPath.row]
        default:
            break
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // table view header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Constructors"
        case 1:
            return "Drivers"
        default:
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("DEBUG: Did select \(indexPath)")
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        footerView.backgroundColor = .systemPurple
        return section == 1 ? footerView : nil
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return section == 1 ? 50 : 0
    }
    
    @objc func updateTable() {
        print("DEBUG: Update Table")
        constructors.removeFirst()
        drivers.removeLast()
        tableView.reloadData()
    }
}
