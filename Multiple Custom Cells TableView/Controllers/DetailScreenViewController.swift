//
//  DetailScreenViewController.swift
//  Multiple Custom Cells TableView
//
//  Created by Yusuf Karan on 1.04.2023.
//

import UIKit
import SnapKit

// DetailScreenViewController
import UIKit
 class DetailScreenViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

     
     private func configureAppBar() {
         let label = UILabel()
         label.text = "Tweet"
         label.font = .systemFont(ofSize: 16, weight: .bold)
         navigationItem.titleView = label
         
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // tableView oluşturma ve kaydetme
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CodedTableViewCell.self, forCellReuseIdentifier: CodedTableViewCell.identifier)
        tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        view.addSubview(tableView)
        configureAppBar()

    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 5
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if indexPath.row == 0 {
             let cell = tableView.dequeueReusableCell(withIdentifier: CodedTableViewCell.identifier, for: indexPath)
             return cell
         }
         let cell = tableView.dequeueReusableCell(withIdentifier:SimpleTableViewCell.identifier, for: indexPath)
         return cell
     }
}
