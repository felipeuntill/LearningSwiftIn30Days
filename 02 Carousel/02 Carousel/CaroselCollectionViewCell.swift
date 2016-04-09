//
//  CaroselCollectionViewCell.swift
//  02 Carousel
//
//  Created by Felipe Assunção on 4/9/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class CaroselCollectionViewCell: UICollectionViewCell {

    var carousel : Carousel! {
    
        didSet {
            updateUI()
        }
    }
    
    
    @IBOutlet weak var featuredImageView : UIImageView!
    @IBOutlet weak var titleLabel : UILabel!
    
    func updateUI () {
        featuredImageView?.image! = carousel.featuredImage
        titleLabel?.text! = carousel.title
    
    }
}
