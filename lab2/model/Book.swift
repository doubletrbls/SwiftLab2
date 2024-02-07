//
//  Book.swift
//  lab2
//
//  Created by Sarvar Saidazov on 07.02.2024.
//

import Foundation

class Book {
    var title : String = ""
    var author : String = ""
    var year : Int = 0
    var pageCount : Int = 0
    
    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }
    
    func displayBookInfo() {
        print("Title: \(self.title)")
        print("Author: \(self.author)")
        print("Year: \(self.year)")
        print("Page Count: \(self.pageCount)")
       }
    
}
