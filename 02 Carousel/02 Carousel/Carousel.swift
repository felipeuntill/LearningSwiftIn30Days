//
//  Carousel.swift
//  02 Carousel
//
//  Created by Felipe Assunção on 4/9/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation
import UIKit

class Carousel {

    var title = ""
    var description = ""
    var numberOfMembers = 0
    var numberOfPosts = 0
    var featuredImage: UIImage!
    
    init(title : String, description: String, featuredImage: UIImage!)
    {
        self.title = title
        self.description = description
        self.featuredImage = featuredImage
        numberOfPosts = 1
        numberOfMembers = 1
    }

    static func create () -> [Carousel]
    {
        return [
            Carousel(title: "We 1 love travel arount the world", description: "we realy1 love travel for the entire world", featuredImage: UIImage(named: "r1")!),
            Carousel(title: "We 2 love travel arount the world", description: "we realy2 love travel for the entire world", featuredImage: UIImage(named: "r2")!),
            Carousel(title: "We 3 love travel arount the world", description: "we realy3 love travel for the entire world", featuredImage: UIImage(named: "r3")!),
            Carousel(title: "We 4 love travel arount the world", description: "we realy4 love travel for the entire world", featuredImage: UIImage(named: "r4")!),
            Carousel(title: "We 5 love travel arount the world", description: "we realy5 love travel for the entire world", featuredImage: UIImage(named: "r5")!),
            Carousel(title: "We 6 love travel arount the world", description: "we realy6 love travel for the entire world", featuredImage: UIImage(named: "r6")!)
        ]
    }
}
