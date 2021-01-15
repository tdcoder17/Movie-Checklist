//
//  ModelController.swift
//  Movie Checklist
//
//  Created by Theo Davis on 1/14/21.
//

import Foundation

class MovieController {
    
    static let shared = MovieController()
    var movie: [Movie] = []
    
    //Put my CRUD functions here
    func createMovie(title: String, director: String, genre: String, releaseDate: Int, watchDate: Date?) {
        let newMovie = Movie (title: title, director: director, genre: genre, releaseDate: 0, watchDate: Date?, isWatched: <#Bool#>)
        saveToPersistenceStore()
    }
    
    func update() {
        
    }
    
    func delete() {
        
    }
    
    //MARK: - Persistence
    
    //fileURL
    func fileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileURL = urls[0].appendingPathComponent("Movie.json")
        return fileURL
    }
    
    //save
    func saveToPersistenceStore() {
        do {
            let data = try JSONEncoder().encode(movie)
            try data.write(to: fileURL())
        } catch {
            print(error)
            print(error.localizedDescription)
        }
        
    }
    //load
    func loadFromPersistanceStore() {
        do {
            let data = try Data(contentsOf: fileURL())
            let foundMovie = try JSONDecoder().decode([Movie].self, from: data)
            movie = foundMovie
        } catch {
            print(error)
            print(error.localizedDescription)
        }
    }
}//END OF CLASS
