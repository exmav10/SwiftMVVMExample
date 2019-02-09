//
//  ViewController.swift
//  MVVM Example
//
//  Created by Aydın ÜNAL on 9.02.2019.
//  Copyright © 2019 exmav10. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ViewModelDelegate {

    
    func exampleClickFunc(item: String) {
        print("Selected Item = \(item)")
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = viewModel
        tableView.delegate = viewModel
        viewModel.delegate = self
        self.tableView.register(TableViewCell.nib, forCellReuseIdentifier: TableViewCell.identifier)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        exampleClickFunc(item: self.viewModel.viewModelItems[indexPath.row])
    }
}

