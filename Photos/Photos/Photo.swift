//
//  Photo.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Photo {
    /* The number of likes the photo has. */
    var likes : Int!
    /* The string of the url to the photo file. */
    var url : String!
    /* The username of the photographer. */
    var username : String!
    
    var liked: Bool!

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        // FILL ME IN
        // HINT: use nested .valueForKey() calls, and then cast using 'as! TYPE'
        username = (data.valueForKey("user") as! NSDictionary).valueForKey("username") as! String
        url = ((data.valueForKey("images") as! NSDictionary).valueForKey("low_resolution") as! NSDictionary).valueForKey("url") as! String
        likes = (data.valueForKey("likes") as! NSDictionary).valueForKey("count") as! Int
    }

}