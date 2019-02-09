//
//  ModelView.swift
//  MVVM Example
//
//  Created by Aydın ÜNAL on 9.02.2019.
//  Copyright © 2019 exmav10. All rights reserved.
//

import Foundation
import UIKit

//Create functions that view controller can implement
protocol ViewModelDelegate {
    func exampleClickFunc(item: String)
}

class ViewModel: NSObject {
    var viewModelItems = [String]() // To keep models
    var delegate: ViewModelDelegate?
    override init(){//Fill items
        super.init()
        viewModelItems.append("Aydın")
        viewModelItems.append("Ünal")
    }
    
}

//Fill your table view
extension ViewModel: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.item = viewModelItems[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.exampleClickFunc(item: viewModelItems[indexPath.row])
    }
}
