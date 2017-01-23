//
//  ViewController.swift
//  NewsReaderApp
//
//  Created by Cristina Radulescu on 1/20/17.
//  Copyright © 2017 Cristina Radulescu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiView: UIView!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let storyboard = UIStoryboard(name: "NewsReader", bundle: nil)
        //Present DetailedViewController
        self.presentDetailedViewController(storyboard: storyboard)
        
        //Present NewsTableViewController
        //self.presentNewsTableViewController(storyboard: storyboard)
    }
    
    
    //MARK: - Private
    
    private func presentDetailedViewController(storyboard: UIStoryboard) {
        let newsReaderVC = storyboard.instantiateViewController(withIdentifier: "DetailedViewController") as! DetailedViewController
        newsReaderVC.news = mockNews()
        self.present(newsReaderVC, animated: true, completion: nil)
    }
    
    private func presentNewsTableViewController(storyboard: UIStoryboard) {
        let newsReaderVC = storyboard.instantiateViewController(withIdentifier: "NewsTableViewController")
        self.present(newsReaderVC, animated: true, completion: nil)
    }
    
    private func mockNews() -> NewsObject! {
        let title = "Big Sur"
        let image = UIImage(named: "ocean")
        let description = "Big Sur, described as the greatest meeting of land and water in the world, is an undeveloped, lightly populated, unincorporated region on California's Central Coast where the Santa Lucia Mountains rise abruptly from the Pacific Ocean. The coast is frequently praised for its rugged coastline and mountain views. As the longest and most scenic stretch of undeveloped coastline in the continental United States, it has been described as a national treasure that demands extraordinary procedures to protect it from development, and one of the most beautiful coastlines anywhere in the world, an isolated stretch of road, mythic in reputation. Big Sur's Cone Peak at 5,155 feet (1,571 m) is only 3 miles (5 km) from the ocean.[5] The stunning views make Big Sur a popular tourist destination. Big Sur, described as the greatest meeting of land and water in the world, is an undeveloped, lightly populated, unincorporated region on California's Central Coast where the Santa Lucia Mountains rise abruptly from the Pacific Ocean. The coast is frequently praised for its rugged coastline and mountain views. As the longest and most scenic stretch of undeveloped coastline in the continental United States, it has been described as a national treasure that demands extraordinary procedures to protect it from development, and one of the most beautiful coastlines anywhere in the world, an isolated stretch of road, mythic in reputation. Big Sur's Cone Peak at 5,155 feet (1,571 m) is only 3 miles (5 km) from the ocean.[5] The stunning views make Big Sur a popular tourist destination."
        
       return NewsObject(title: title, image: image, description: description)
    }
    
}

