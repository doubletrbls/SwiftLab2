//
//  main.swift
//  lab2
//
//  Created by Sarvar Saidazov on 05.02.2024.
//

import Foundation

MAIN:
    while true {
    print("""
            Chose the task:
            1)Bank account management
            2)Book library management
            0)exit
            """)

    if let choice = readLine() {
        switch choice {
        case "1":
            task1();
            break
        case "2":
            task2()
            break
        case "0":
            break MAIN
        default:
            print("No such task")
            continue
        }
    }
}



