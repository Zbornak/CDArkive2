//
//  Song.swift
//  CDArkive2
//
//  Created by Mark Strijdom on 07/08/2024.
//

import Foundation

struct Song: Codable, Identifiable {
    var id = UUID()
    var releaseDate: Date
    var songGenre: String
    var songName: String
    var mainArtist: String
    var supportArtists: [String]
    var writers: [String]
    var producers: [String]
    var rating: Int
    
    static let example = Song(releaseDate: Date.now, songGenre: "pop", songName: "Haru Yo, Koi", mainArtist: "Yumi Matsutoya", supportArtists: ["None"], writers: ["Yumi Matsutoya", "Ryutaro Hirota"], producers: ["Unknown"], rating: 5)
    
}
