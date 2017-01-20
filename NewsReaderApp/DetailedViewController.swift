//
//  DetailedViewController.swift
//  NewsReaderApp
//
//  Created by Cristina Radulescu on 1/20/17.
//  Copyright © 2017 Cristina Radulescu. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet var titlelabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "ocean")
        titlelabel.text = "Big Sur"
        titlelabel.font = UIFont(name: "Helvetica-Bold", size: 20)
        descriptionTextView.text = "Big Sur, described as the greatest meeting of land and water in the world, is an undeveloped, lightly populated, unincorporated region on California's Central Coast where the Santa Lucia Mountains rise abruptly from the Pacific Ocean. The coast is frequently praised for its rugged coastline and mountain views. As the longest and most scenic stretch of undeveloped coastline in the continental United States, it has been described as a national treasure that demands extraordinary procedures to protect it from development, and one of the most beautiful coastlines anywhere in the world, an isolated stretch of road, mythic in reputation. Big Sur's Cone Peak at 5,155 feet (1,571 m) is only 3 miles (5 km) from the ocean.[5] The stunning views make Big Sur a popular tourist destination."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        descriptionTextView.setContentOffset(CGPoint.zero, animated: false)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
