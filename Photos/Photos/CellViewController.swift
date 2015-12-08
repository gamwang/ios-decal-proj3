//
//  someViewController.swift
//  Photos
//
//  Created by Jonathan Bai on 12/7/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import UIKit
import Foundation

class CellViewController: UIViewController {
    
    var photo : Photo?
    
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var numLikes: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var heart: UIImageView!
    /**
    var image: UIImageView!
    var username: UILabel!
    var heart: String!
    var numLikes: UILabel!
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.text = photo!.username
        numLikes.text = String(photo!.likes)
        let url = NSURL(string: photo!.url)
        let data = NSData(contentsOfURL: url!)
        image.image = UIImage(data: data!)
        if photo?.liked == true {
            heart.image = UIImage(named:"pink.png")
        } else {
            heart.image = UIImage(named:"white.png")
        }
    }
    
    
    @IBAction func heartPressed(sender: AnyObject) {
        if (photo?.liked == true) {
            heart.image = UIImage(named:"white.png")
            photo!.liked = false
            photo!.likes = photo!.likes - 1
            numLikes.text = String(photo!.likes)
        } else {
            heart.image = UIImage(named:"pink.png")
            photo!.liked = true
            photo!.likes = photo!.likes + 1
            numLikes.text = String(photo!.likes)
        }
    }
   

    
}