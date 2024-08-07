//
//  Song.swift
//  CDArkive2
//
//  Created by Mark Strijdom on 07/08/2024.
//

import Foundation

struct Song {
    enum SongGenre {
        case jazz, opera, classical, pop, rock, metal, hipHop, alternative, techno, emo, comedy
    }
    
    let id = UUID()
    let releaseDate: Date
    let songGenre: SongGenre
    let songName: String
    let mainArtist: String
    let supportArtists: [String]
    let writers: [String]
    let producers: [String]
    let rating: Int
    
    static let example = Song(releaseDate: Date.now, songGenre: .pop, songName: "Haru Yo, Koi", mainArtist: "Yumi Matsutoya", supportArtists: ["None"], writers: ["Yumi Matsutoya", "Ryutaro Hirota"], producers: ["Unknown"], rating: 5)
    
}
