//
//  NewsObject.swift
//  NewsReaderApp
//
//  Created by Cristina Radulescu on 1/20/17.
//  Copyright © 2017 Cristina Radulescu. All rights reserved.
//

import Foundation
import UIKit

class NewsObject {
    
    var title: String!
    var image: UIImage!
    var description: String?

    init(title: String!, image: UIImage!, description: String?) {
        self.title = title
        self.image = image
        self.description = description
    }
}

