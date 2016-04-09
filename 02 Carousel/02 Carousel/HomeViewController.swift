//
//  HomeViewController.swift
//  02 Carousel
//
//  Created by Felipe Assunção on 4/9/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var backgroundImageView : UIImageView!
    @IBOutlet weak var collectionView : UICollectionView!
    
    private var carousel = Carousel.create()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    private struct StoryBoard {
        static let CellIdentifier = "Carousel Cell"
    }

}

extension HomeViewController : UICollectionViewDataSource {
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carousel.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(StoryBoard.CellIdentifier, forIndexPath: indexPath) as! CaroselCollectionViewCell
        
        cell.carousel = self.carousel[indexPath.item]
        
        return cell
    }
}
