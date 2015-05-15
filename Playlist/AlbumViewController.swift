//
//  AlbumViewController.swift
//  Playlist
//
//  Created by Duc Tran on 3/20/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {
    
    // Model: an album
    var album: Album?

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var albumCoverImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    // Update the UI with the model
    func updateUI()
    {
        let albumName = "\((album?.coverImageName)!)"
        println(albumName)
        backgroundImageView?.image = UIImage(named: albumName)
        albumCoverImageView?.image = UIImage(named: albumName)
        
        let songList = ((album?.songs)! as NSArray).componentsJoinedByString(", ")
        descriptionTextView.text = "\((album?.description)!) \n\nSome songs in the album:\n\(songList)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // can only updateUI once the view is loaded meaning that all the properties and outlets were just set
        // If they are not set, they are nil. Sending methods to nil object will crash your program
        title = "Album"
        updateUI()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Gets the background image out of the way when the view disappears
        backgroundImageView?.removeFromSuperview()
        
    }

}






























