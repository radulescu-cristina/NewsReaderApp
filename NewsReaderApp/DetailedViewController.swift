//
//  DetailedViewController.swift
//  NewsReaderApp
//
//  Created by Cristina Radulescu on 1/20/17.
//  Copyright © 2017 Cristina Radulescu. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    var news: NewsObject!
    @IBOutlet var titlelabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initNews(news: news)
        titlelabel.font = UIFont(name: "Helvetica-Bold", size: 20)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        descriptionTextView.setContentOffset(CGPoint.zero, animated: false) //set the uitextview content to start from the top
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - Private
    private func initNews(news: NewsObject!) {
        self.titlelabel.text = news.title
        self.imageView.image = news.image
        self.descriptionTextView.text = news.description
    }

}
