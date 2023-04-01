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

    override func viewDidLoad() {
        super.viewDidLoad()

        // tableView oluşturma ve kaydetme
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CodedTableViewCell.self, forCellReuseIdentifier: "CodedCell")
        tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: "SimpleCell")
        view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // özelleştirilmiş hücreler için dequeue işlemi yapın
        if indexPath.row % 5 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CodedCell", for: indexPath) as! CodedTableViewCell
            cell.configure()
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleCell", for: indexPath) as! SimpleTableViewCell
            cell.configure()
            return cell
        }
    }
}
