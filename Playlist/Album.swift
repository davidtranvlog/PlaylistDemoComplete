//
//  Album.swift
//  Playlist
//
//  Created by Duc Tran on 3/20/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import Foundation

public struct AlbumKeys
{
    static let title = "title"
    static let description = "description"
    static let coverImageName = "coverImageName"
    static let songs = "songs"
}

class Album
{
    var title: String?
    var description: String?
    var coverImageName: String?
    var songs: [String]?
    
    // provide an index -> give me an album in the library
    init(index: Int)
    {
        // this is an valid index
        if index >= 0 && index < TheBeatlesLibrary().albums.count {
            let album = TheBeatlesLibrary().albums[index]
            
            // start to initialize the album properties
            title = album[AlbumKeys.title] as? String
            description = album[AlbumKeys.description] as? String
            coverImageName = album[AlbumKeys.coverImageName] as? String
            songs = album[AlbumKeys.songs] as? [String]
        }
    }

}

























