//
//  PlaylistViewController.swift
//  Playlist
//
//  Created by Duc Tran on 3/14/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class PlaylistViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var coverImage0: UIImageView!
    @IBOutlet weak var coverImage1: UIImageView!
    @IBOutlet weak var coverImage2: UIImageView!
    @IBOutlet weak var coverImage3: UIImageView!
    @IBOutlet weak var coverImage4: UIImageView!
    @IBOutlet weak var coverImage5: UIImageView!
    @IBOutlet weak var coverImage6: UIImageView!
    @IBOutlet weak var coverImage7: UIImageView!
    @IBOutlet weak var coverImage8: UIImageView!
    @IBOutlet weak var coverImage9: UIImageView!
    @IBOutlet weak var coverImage10: UIImageView!
    @IBOutlet weak var coverImage11: UIImageView!
    
    var coverImages: [UIImageView]!
    
    // MARK: - View Controller Life Cycle

    // gets called when the view is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // append all the cover images into the coverImages array
        coverImages = [coverImage0, coverImage1, coverImage2, coverImage3, coverImage4, coverImage5, coverImage6, coverImage7, coverImage8, coverImage9, coverImage10, coverImage11]
        
        // a method to set the cover images for those IBOutlets
        updateUI()
        
    }
    
    
    func updateUI()
    {
        for i in 0..<coverImages.count {
            var coverImage = coverImages[i]
            // Get the album
            let album = Album(index: i)
            coverImage.image = UIImage(named: album.coverImageName!)
        }
    }
    
    // MARK: - Target / Action
    
    @IBAction func showAlbum(sender: UITapGestureRecognizer) {
        performSegueWithIdentifier("Show Album", sender: sender)
    }
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if let identifier = segue.identifier {
            
            switch identifier {
            case "Show Album":      // sender is UITapGestureRecognizer
                // do something
                let albumViewController = segue.destinationViewController as AlbumViewController
                let albumImageView = sender?.view as UIImageView
                if let index = find(coverImages, albumImageView) {
                    let album = Album(index: index)
                    albumViewController.album = album
                }
                
            default:
                break
            }
            
        }
    }

}




























