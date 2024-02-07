//
//  Library.swift
//  lab2
//
//  Created by Sarvar Saidazov on 07.02.2024.
//

import Foundation

class Library {
    var library: [Book] = []
    
    func addBook(book: Book) {
        library.append(book)
    }
    
    func removeBook(book: Book) {
        if let index = library.firstIndex(where: { $0 === book }) {
            library.remove(at: index)
        }
    }
    
    func displayLibraryInfo() {
        library.forEach { book in 
            book.displayBookInfo()
            print()
        }
    }
    
    
}
