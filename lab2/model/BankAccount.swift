//
//  BankAccount.swift
//  lab2
//
//  Created by Sarvar Saidazov on 05.02.2024.
//

import Foundation


class BankAccount {
    var accountNumber: String = ""
    var accountOwner: String = ""
    var balance: Double = 0.0
    
    init(accountNumber: String, accountOwner: String, balance: Double) {
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = balance
    }
    
    func getBalance() -> Double {
        return self.balance
    }
    
    func deposit(amount: Double) {
        self.balance += amount
    }
    
    func withdraw(amount: Double) {
        if amount > self.balance {
            print("Not enough balance to withdraw.Available sum \(self.balance)")
        } else {
            self.balance -= amount
        }
    }
    
    func displayInfo() {
        print("Account Information")
        print("Account number  \(self.accountNumber)")
        print("Account owner  \(self.accountOwner)")
        print("Current balance  \(self.balance)")
    }

    
}
