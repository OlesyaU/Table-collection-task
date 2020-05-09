//
//  TableViewController.swift
//  Course2Week3Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var photoTableView: UITableView!
    
    private let cellData = PhotoProvider().photos()
    private let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoTableView.separatorStyle = .singleLine
        photoTableView.rowHeight = 60
        photoTableView.register(TableViewCell.self, forCellReuseIdentifier: String(describing: TableViewCell.self))
        photoTableView.delegate = self
        photoTableView.dataSource = self
        
        label.backgroundColor = .brown
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self)) as! TableViewCell
        
        cell.cellInfo(cellData[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("Accessory selected")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected")
        tableView.deselectRow(at: indexPath, animated: true)
        print("Photo name is \(cellData[indexPath.row].name), indexPath: \(indexPath)")
    }
    
}


