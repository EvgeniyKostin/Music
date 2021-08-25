//
//  SearchResponse.swift
//  Music
//
//  Created by Evgeniy Kostin on 20.08.2021.
//

import Foundation


struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
    var collectionName: String?
    var artistName: String
    var artworkUrl100: String?
}
