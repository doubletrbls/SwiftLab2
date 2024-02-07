//
//  Library.swift
//  lab2
//
//  Created by Sarvar Saidazov on 07.02.2024.
//

import Foundation

class Library {
    var library: [String:Book] = [:]
    
    func addBook(book: Book) {
        library[book.title] = book
    }
    
    func removeBook(bookTitle: String) {
        library.removeValue(forKey: bookTitle)
    }
    
    func displayLibraryInfo() {
        print("Total number of books in library  \(library.count)")
        library.forEach { book in
            book.value.displayBookInfo()
            print()
        }
    }
    
    
}
