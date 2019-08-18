//
//  BookController.swift
//  Reading List
//
//  Created by Aaron on 8/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class BookController {
    
    var books: [Book] = []
    
    var readingListURL: URL?  {
       
        let userDoc = FileManager.default
        guard let list = userDoc.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        return list.appendingPathComponent("ReadingList.plist")
    
    }
    
    func saveToPersistentStore() {
        guard let url = readingListURL else { return }
        do {
            let encoder = PropertyListEncoder()
            let booksData = try encoder.encode(books)
            try booksData.write(to: url)
        } catch {
            print("error saving: \(error)")
        }
        
    }
    
    func loadFromPersistentStore() {
        let userDoc = FileManager.default
        guard let url = readingListURL, userDoc.fileExists(atPath: url.path) else { return }
        do {
            let decoder = PropertyListDecoder()
            let booksData = try Data(contentsOf: url)
            let decodedBooks = try decoder.decode([Book].self, from: booksData)
            books = decodedBooks
        } catch  {
            print("Cant find Books: \(error)")
        }
    }
    
    func create(title: String, reasonToRead: String) {
        let newBook = Book(title: title, reasonToRead: reasonToRead)
        books.append(newBook)
        saveToPersistentStore()
    }
    
    func delete() {
//        let deleteBookEntry = 
    }
    
    
}



