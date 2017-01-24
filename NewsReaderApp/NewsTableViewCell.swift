//
//  NewsTableViewCell.swift
//  NewsReaderApp
//
//  Created by Cristina Radulescu on 1/24/17.
//  Copyright © 2017 Cristina Radulescu. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet var titleCellLabel: UILabel!
    @IBOutlet var imageCellView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
