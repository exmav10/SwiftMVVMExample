//
//  TableViewCell.swift
//  MVVM Example
//
//  Created by Aydın ÜNAL on 9.02.2019.
//  Copyright © 2019 exmav10. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var label:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //Copy paste part for new cell type
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    var item: String?{
        didSet{
            guard let item = item else{
                return
            }
            self.label.text = item
        }
    }
    
}
