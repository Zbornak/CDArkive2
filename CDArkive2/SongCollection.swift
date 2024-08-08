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
    var id: UUID
    var asin: Int
    var releaseDate: Date
    var collectionType: String
    var collectionName: String
    var artistName: String
    var trackListing: [Song]
    var notes: String
    
    init(id: UUID = UUID(), asin: Int = 0, releaseDate: Date = Date.now, collectionType: String = "Album", collectionName: String = "", artistName: String = "", trackListing: [Song] = [Song.example], notes: String = "") {
        self.id = id
        self.asin = asin
        self.releaseDate = releaseDate
        self.collectionType = collectionType
        self.collectionName = collectionName
        self.artistName = artistName
        self.trackListing = trackListing
        self.notes = notes
    }
}
