//
//  SongCollection.swift
//  CDArkive2
//
//  Created by Mark Strijdom on 07/08/2024.
//

import Foundation
import SwiftData

@Model
class SongCollection {
    enum CollectionType {
        case single, ep, album
    }
    
    let id: UUID
    let asin: Int
    let releaseDate: Date
    let collectionType: CollectionType
    let collectionName: String
    let artistName: String
    let trackListing: [Song]
    
    init(id: UUID = UUID(), asin: Int = 0, releaseDate: Date = Date.now, collectionType: CollectionType = .album, collectionName: String = "", artistName: String = "", trackListing: [Song] = [Song.example]) {
        self.id = id
        self.asin = asin
        self.releaseDate = releaseDate
        self.collectionType = collectionType
        self.collectionName = collectionName
        self.artistName = artistName
        self.trackListing = trackListing
    }
}
