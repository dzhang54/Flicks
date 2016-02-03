//
//  DetailsViewController.swift
//  MovieViewer
//
//  Created by Daniel Zhang on 2/1/16.
//  Copyright © 2016 Daniel Zhang. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    
    var movie: NSDictionary!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        
        
        
        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"]
        overviewLabel.text = overview as? String
        
        overviewLabel.sizeToFit()
        
        
        let baseURL = "https://image.tmdb.org/t/p/w500"
        
        if let posterPath = movie["poster_path"] as? String {
            
            let imageURL = NSURL(string: baseURL + posterPath)
            posterView.setImageWithURL(imageURL!)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
