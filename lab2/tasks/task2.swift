//
//  task2.swift
//  lab2
//
//  Created by Sarvar Saidazov on 07.02.2024.
//

import Foundation

let library: Library = Library()

func task2() {
MAIN:
    while true {
        print("""
                Chose the action:
                1)Add book
                2)Show library info
                3)Remove book
                0)exit
                """)
        if let choice = readLine() {
            switch (choice) {
            case "1":
                print("Enter title of the book")
                let title = readLine()
                print("Enter author of the book")
                let author = readLine()
                print("Enter year of the book")
                guard let yearStr = readLine(), let year = Int(yearStr) else {
                    print("Invalid year format. Please enter a valid year.")
                    continue
                }
                print("Enter number of pages in the book")
                guard let countStr = readLine(), let count = Int(countStr) else {
                    print("Invalid page count format. Please enter a valid number.")
                    continue
                }
                library.addBook(book: Book(title: title!, author: author!, year: year, pageCount: count))
                print("Book added successfully!")
            case "2":
                library.displayLibraryInfo()
            case "3":
                print("Enter title of the book to delete")
                let bookTitle = readLine()
                library.removeBook(bookTitle: bookTitle!)
            case "0":
                break MAIN
            default:
                print("Wrong input")
                continue
            }
        }
    }
}
