//
//  Movie.swift
//  Movie Checklist
//
//  Created by Theo Davis on 1/14/21.
//

import Foundation

class Movie: Codable {

    var title: String
    var director: String
    var genre: String
    var releaseDate: Int
    var watchDate: Date?
    var isWatched: Bool
    
    init(title: String, director: String, genre: String, releaseDate: Int, watchDate: Date?, isWatched: Bool) {
        self.title = title
        self.director = director
        self.genre = genre
        self.releaseDate = releaseDate
        self.watchDate = watchDate
        self.isWatched = isWatched
    }
}//END OF CLASS

extension Movie: Equatable {
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.title == rhs.title && lhs.director == rhs.director && lhs.genre == rhs.genre
    }
    
    
    
    
    
}//END OF CLASS
